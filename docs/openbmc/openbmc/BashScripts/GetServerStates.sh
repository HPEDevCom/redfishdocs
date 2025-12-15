#!/usr/bin/bash
#
# Version 0.12
#
# This script retrieves the states of a list of systems.

# ToDo:
#    * Integrate Atmos/Axis agent (reachability test?)

# Variables
NUMARGS=3
NUMMINARGS=1
PING="/cygdrive/c/windows/system32/ping"
NC="nc -vz"
iLOrest="ilorest --nologo --cache-dir=/tmp/cache-%h"
iLOUser="demopaq"
iLOPassword="password"
CLUSH="clush -n -R exec"
NODESET="nodeset"
ConfigFile="~/.local/etc/clustershell/groups.d/local.cfg"
wd=$PWD
StartLioVpn=0
StartHstVpn=0
VirtualIntranetPath="C:\Program Files\HPE Aruba Networking\Virtual Intranet Access"
PulsePath="C:\Program Files (x86)\Common Files\Pulse Secure\JamUI"
HpeGuestGw="192.168.160.1"
HpeGw="10.95.180.1"  # HPE WiFi GW when in Sophia
HomeGw="TBD"

# Functions
function Usage() {
  echo -e "Usage: $0 TargetList [ilo-user password]\n"
  echo -e "Examples:\n${0##/*/} @all-fdz\n"
  echo -e "${0##/*/} @iLO6-fdz,@toybox\n"
  echo -e "${0##/*/} @iLO7-telco Administrator compaq\n"
  echo -e "The list of possible targets is:\n"
  $NODESET -ll
  echo -e "\nThe default configuration file is:\n\t~/.local/etc/clustershell/groups.d/local.cfg"
  echo -e "\t(link toward /Git-Repo/CloneOfFdzPerso/etc/clustershell/groups.d/local.cfg)"
}

function GetStates() {
$iLOrest serverstate
$iLOrest get Oem/Hpe/DeviceDiscoveryComplete BootProgress --select ComputerSystem.
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

TargetList="$($NODESET -f ${1})"
echo -e "\nTarget list: $TargetList\n"

[ ! -z $$2 ] && iLOUser="${2}"
[ ! -z $$3 ] && iLOPassword="${3}"

# Need to test if we are in Sophia (HPE Guest WiFi?). If this is the case, 
# Need to start Pulse manually. Not VIA!

# Am I in Sophia, connected to HPE Guest ?
NextDefaultHop="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | awk '/0.0.0.0\/0/ {print $3}')" 
case $NextDefaultHop in
   $HpeGuestGw )
     Vpn="Pulse"
     # To do: Kill Pulse, just in case
     cd "$(cygpath -u "${PulsePath}")"
     ./Pulse.exe -show
     ;;
   $HpeGw )
     Vpn="None"
     OpenVPN="None"
     ;;
   *)
     Vpn="Via"
     ;;
esac

echo "VPN to start: $Vpn"

# Exit if elsewhere. May be use a case expression to find out where we are:
# Home (192.168.33.8 ?)

echo -n "Testing connectivity to HPE Intranet..."

IsVIAStarted="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | grep -q '10.0.0.0/8' ; echo $?)"
if [ "$IsVIAStarted" -eq "0" ] ; then
   echo -e "Good!\n"
else
   echo -e "\n\nNeed to start tunnel to HPE not started."
   echo -e "Starting HPE Intranet VPN\n"
   if ps -W | grep -q anuacui.exe ; then
       pwsh -c Stop-Process -Name anuacui -Force &> /dev/null
   fi
   cd "$(cygpath -u "${VirtualIntranetPath}")"
   ./anuacui.exe &
   echo -n "Waiting for HPE intranet connectivity ..."
   
   IsVIAStarted="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | grep -q '10.0.0.0/8' ; echo $?)"
   while [[ "$IsVIAStarted" -ne "0" ]] ; do
     IsVIAStarted="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | grep -q '10.0.0.0/8' ; echo $?)"
     echo -n "."
     sleep 3
   done
   echo -e " Done\n"
   sleep 1
   # Double check 
   ping ilo-toybox &> /dev/null
   if [ "$?" -ne "0" ] ; then
      echo -e "\n\nBig problem reaching ilo-toybox in ETC lab... Exiting\n"
      exit 3
   fi
fi

# Check if list of targets contains one or more ilOs in Lio's infra
# Only if Lio's VPN is not already started

Lio_iLOs_List="$(${NODESET} -e @lio)"
ExpandedList="$($NODESET -e $TargetList)"
#set -x
for ilo in $ExpandedList ; do
    echo -n "Is $ilo in Lio's infra?..."
    if echo "$Lio_iLOs_List" | grep -q "$ilo" ; then
       # TBD: Avoid starting OpenVPN to Lio's infra if connected to HPE WiFi in Sophia!
       echo "Yes!"
       IsLioVpnStarted="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | grep -q '192.168.0.0/22' ; echo $?)"
       if [ "$IsLioVpnStarted" -ne "0" ] ; then
         echo "Need to start VPN to Lio's infra"
         StartLioVpn=1
       else
         echo "No Need to start VPN to Lio's infra"
       fi
       break
    else
       echo "No!"
    fi
done

if [ $StartLioVpn -eq 1 ] ; then
    echo -n "Starting VPN to Lio's infra..." 
    /cygdrive/c/windows/System32/WindowsPowerShell/v1.0/powershell.exe \
      -WindowStyle Hidden -ExecutionPolicy Bypass                       \
      -File "c:\Users\DonzeF\OpenVPN\config\pfSense-LJ.LAB\OpenVPN-connect-to-LJ.LAB.ps1"
    echo -e "Done\n"
    
    # Would be nice to check if route to Lio's infra is up
    sleep 3
    
    # Double check that iLO VPN is started
    $NC ilo-fdz360g10-2 22 &>/dev/null
    if [ "$?" -ne "0" ] ; then
       echo -e "\n\nProblem reaching ilo-fdz360g10-2 in Lio's lab.... Exiting\n"
       exit 3
    fi
fi


# Check if list of targets contains one or more ilOs in HST infra
# ???? Only if Lio's VPN is already started ????

# Are targets valid and reachable ?
# When Axis/Atmos or ZScaler is active, nc -vz always
# return "succeeded"!
echo -n "Verifying targets are reachable...."
$CLUSH -S -w "$TargetList" nc -vz %h 443 &>/dev/null
if [ "$?" -ne "0" ] ; then
    echo -e "\n\n\tProblem reaching targets... Exiting\n"
    echo -e "Run the following command to identify the problem and edit $ConfigFile accordingly:\n\t"
    echo -e "$CLUSH -w "$TargetList" nc -vz %h 443"
    exit 1
fi
echo -e " Done\n"

[ -z $TargetList ] && exit

echo -e "Login"
$CLUSH -w "$TargetList" $iLOrest login %h -u $iLOUser -p $iLOPassword
echo

# ilorest serverstate; ilorest get Oem/Hpe/DeviceDiscoveryComplete BootProgress --select ComputerSystem. --refresh
$CLUSH -n -b -w "$TargetList" "$iLOrest serverstate ; \
       $iLOrest get Oem/Hpe/DeviceDiscoveryComplete/DeviceDiscovery Oem/Hpe/DeviceDiscoveryComplete/AMSDeviceDiscovery BootProgress/LastState --select ComputerSystem. | \
       awk '/LastState/ {print  $NF}\
            /DeviceDiscovery=/ {print $NF}' | tr -d ' '"


echo -e "\nLogout from iLOrest sessions"
#set -x
$CLUSH -w "$TargetList" $iLOrest logout
echo

exit 0
