#!/usr/bin/bash
#
# Version 0.60
#
# This script power-on or off a list of systems.
# in order to save energy

# ToDo:
#    * Integrate Atmos/Axis connector only when 
#      Morpheus is reachable from EMEA and nc -vz works fine!
#    * Process HST iLOs
#    * Prefer shutdown from OS when possible or wait for iLOrest
#      to be fixed with option Graceful shutdown


# Variables
NUMARGS=2
NUMMINARGS=2
TimeOut=80 # in seconds
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
HomeGw="192.168.33.254"
#DefaultVpnToHpe="AxisAgentManager" ; VpnToHpeExecutable="axis_manager.exe"
DefaultVpnToHpe="anuacui.exe" ; VpnToHpeExecutable="anuacui"

# Functions
function Usage() {
  echo -e "Usage: $0 TargetList {on,off}\n"
  echo -e "Examples:\n${0##/*/} @all-fdz off\n"
  echo -e "${0##/*/} @iLO6-fdz,@toybox on\n"
  echo -e "The list of possible targets is:\n"
  $NODESET -ll
  echo -e "\nThe default configuration file is:\n\t~/.local/etc/clustershell/groups.d/local.cfg"
  echo -e "\t(link toward /Git-Repo/CloneOfFdzPerso/etc/clustershell/groups.d/local.cfg)"
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

TargetList="$($NODESET -f ${1})"
echo -e "\nTarget list: $TargetList\n"

case $2 in
  On|ON|on|oN)
    PowerType="On"
    DesiredState="FinishedPost"
    ;;
  Off|off|OFF|ForceOff)
    PowerType="ForceOff"
    DesiredState="PowerOff"
    ;;
  *)
    Usage
    exit 5
esac

if [ "$PowerType" != "On" -a "$PowerType" != "ForceOff" ] ; then
  echo -e "\nProblem with second arg: ${PowerType}\n"
   Usage
   echo "Exiting"
   exit 4
fi


# May need to look
# for the existence of process ZSATunnel.exe with:
# if ps -W | grep -q ZSATunnel.exe ; then ping ilo-toybox &> /dev/null ; else IVIAStarted... fi

# Need to test if we are in Sophia (HPE Guest WiFi?). If this is the case, 
# Need to start Pulse manually. Not VIA or Atmos/Axis.

# Am I in Sophia, connected to HPE Guest ?
NextDefaultHop="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | awk '/0.0.0.0\/0/ {print $3}')" 
case $NextDefaultHop in
   $HpeGuestGw )
     # Connected to HPE Guest WiFi
     VpnToHpe="Pulse"
     # To do: Kill Pulse, just in case
     cd "$(cygpath -u "${PulsePath}")"
     ./Pulse.exe -show
     ;;
   $HpeGw )
     # Connected to internal HPE network
     VpnToHpe="None"
     OpenVPN="None"
     ;;
   *)
     # Connected elsewhere 
     # ToDo: 
     #     * Need to test $DefaultVpnToHpe and then set VpnToHpe
     VpnToHpe="VIA"
     ;;
esac

echo "VPN to HPE: $VpnToHpe"

# Exit if elsewhere. May be use a case expression to find out where we are:
# Home (192.168.33.8 ?)

echo -n "Testing connectivity to HPE Intranet..."

IsVpnToHpeStarted="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | grep -q '10.0.0.0/8' ; echo $?)"
if [ "$IsVpnToHpeStarted" -eq "0" ] ; then
   echo -e "Good!\n"
else
   echo -e "\n\nNeed to start tunnel to HPE."
   echo -e "Starting HPE Intranet VPN\n"
   if ps -W | grep -q $VpnToHpeExecutable ; then
       # Stop VPN process/service, just in case
       pwsh -c Stop-Process -Name $VpnToHpeExecutable -Force &> /dev/null
   fi
   sleep 2

   case $VpnToHpe in
     "Atmos" )
       pwsh -command Start-Service -Name "$DefaultVpnToHpe"
      ;;
     "VIA" ) 
       # Kill VPN process just in case
       #pwsh -c Stop-Process -Name $VpnToHpeExecutable -Force &> /dev/null
       cd "$(cygpath -u "${VirtualIntranetPath}")"
       ./${VpnToHpeExecutable} &
       ;;
      * )
        ;;
   esac

   echo -n "Waiting for HPE intranet connectivity ..."
   
   IsVpnToHpeStarted="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | grep -q '10.0.0.0/8' ; echo $?)"
   while [[ "$IsVpnToHpeStarted" -ne "0" ]] ; do
     IsVpnToHpeStarted="$(pwsh -c Get-NetRoute -AddressFamily IPv4 | grep -q '10.0.0.0/8' ; echo $?)"
     echo -n "."
     sleep 3
   done
   echo -e " Done\n"
   sleep 1
   # Double check 
   #ping ilo-toybox &> /dev/null
   nc -vz ilo-toybox 443 &>/dev/null
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
    
    # Double check that Lio VPN is started
    $NC ilo-fdz360g10-2 22 &>/dev/null
    if [ "$?" -ne "0" ] ; then
       echo -e "\n\nProblem reaching ilo-fdz360g10-2 in Lio's lab.... Exiting\n"
       exit 3
    fi
fi

# Are targets valid and reachable ?
echo -n "Verifying targets are reachable...."
#$CLUSH -S -w "$TargetList" nc -vz %h 443 &>/dev/null
$CLUSH -S -w "$TargetList" ping %h &>/dev/null
if [ "$?" -ne "0" ] ; then
    echo -e "\n\n\tProblem reaching targets... Exiting\n"
    echo -e "Run the following command to identify the problem and edit $ConfigFile accordingly:\n\t"
    echo -e "$CLUSH -w "$TargetList" nc -vz %h 443"
    exit 1
fi
echo -e " Done\n"

# If PowerType = ForeceOff, need to extract toybox and shutdown it separately
# to perform a **real** graceful shutdown!
if [[ "$PowerType" =~ "ForceOff" && "$TargetList" =~ "ilo-toybox" ]] ; then
   echo "Excluding ilo-toybox from TargetList"
   TargetList="$(NODESET -f $TargetList -x ilo-toybox)"
   echo $TargetList
   ssh root@toybox 'echo "Toybox is going down...";  shutdown -h now'
fi

[ -z $TargetList ] && exit

echo -e "Login into targets"
$CLUSH -w "$TargetList" $iLOrest login %h -u $iLOUser -p $iLOPassword
echo

echo -e "Powering to ${PowerType}"
$CLUSH -w "$TargetList" $iLOrest reboot $PowerType 2>/dev/null

echo  "Waiting for servers to be in ${DesiredState} state"
# May need to test InPostDiscoveryComplete in addition to DesiredState
ExcludeList=""
ServerState="$($CLUSH -w "$TargetList" $iLOrest serverstate | cut -d: -f1,3 | tr -d ' ')"
NewTargetList="$TargetList"
let i=0
while [ ! -z "$NewTargetList" -a $i -lt $TimeOut ] ; do
  array=(${ServerState})
  for e in "${array[@]}" ; do
    if [[ "${e##*:}" == *"${DesiredState}"* ]] ; then
      ExcludeList="${ExcludeList},${e%%:*}" # Remove ':*' suffix
      ExcludeList="${ExcludeList#,}"        # Remove ','  prefix
    fi
  done
  if [ -z $ExcludeList ] ; then
     NewTargetList="$($NODESET --expand $TargetList)"
  else
    NewTargetList="$($NODESET --expand $TargetList -x ${ExcludeList})"
  fi
  
  echo -n "."
  sleep 1
  ServerState="$($CLUSH -w "$NewTargetList" $iLOrest serverstate 2>/dev/null | cut -d: -f1,3 | tr -d ' ')"
  ((i++))
  if [ $i == $TimeOut ] ; then
    echo -e "\nReached TimeOut for ${NewTargetList}."
  fi
done

echo 
$CLUSH -w "$TargetList" $iLOrest serverstate | cut -d: -f1,3 | tr -d ' '

echo -e "\nLogout from iLOrest sessions"
#set -x
$CLUSH -w "$TargetList" $iLOrest logout
echo

exit 0
