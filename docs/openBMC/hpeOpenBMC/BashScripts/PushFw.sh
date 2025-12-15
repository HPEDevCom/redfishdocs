#!/usr/bin/bash
#
# Version 0.21
#
# This script pushes the provided firmware
# to a list of commonly used systems.

# ToDo:
#    * Make sure the file to uploaded is found


# Variables
NUMARGS=2
NUMMINARGS=2
iLOrest="ilorest --nologo --cache-dir=/tmp/cache-%h"
iLOUser="demopaq"
iLOPassword="password"
CLUSH="clush -n -R exec"
NODESET="nodeset"
ConfigFile="~/.local/etc/clustershell/groups.d/local.cfg"
wd=$PWD

# Functions
function Usage() {
  echo -e "Usage: $0 TargetList FwFile\n"
  echo -e "Examples:\n${0##/*/} @iLO6-lio ilo6_160.fwpkg\n"
  echo -e "${0##/*/} @iLO6-lio,@iLO6-hst /usr/kits/ilo6_160.fwpkg\n"
  echo -e "The list of possible targets is:\n"
  $NODESET -ll
  echo -e "\nThe default configuration file is:\n\t~/.local/etc/clustershell/groups.d/local.cfg"
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

TargetList=$($NODESET -f ${1})
echo $TargetList
FwFile=$2

# Target valid and reachable ?
echo -n "Verifying targets are reachable...."
$CLUSH -S -w "$TargetList" nc -vz %h 443 &>/dev/null
if [ "$?" -ne "0" ] ; then
    echo -e "\n\n\tProblem reaching targets... Exiting\n"
    echo -e "Run the following command to identify the problem and edit $ConfigFile accordingly:\n\t"
    echo -e "$CLUSH -w "$TargetList" nc -vz %h 443"
    exit 1
fi
echo -e " Done\n"

# Firmware file reachable ?
cd $(dirname $FwFile)
FwFile="$(basename $FwFile)"

# Let's go
echo -e "Login"
$CLUSH -w "$TargetList" $iLOrest login %h -u $iLOUser -p $iLOPassword
echo

echo -e "Pushing $FwFile"
$CLUSH -w "$TargetList" $iLOrest uploadcomp --component $FwFile  --forceupload
#echo "$CLUSH -w \"$TargetList\" $iLOrest uploadcomp --component $FwFile  --forceupload"
echo

echo -e "Logout"
$CLUSH -w "$TargetList" $iLOrest logout
echo

exit 0
