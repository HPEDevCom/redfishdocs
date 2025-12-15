#!/usr/bin/bash

# For each Pass of iLO firmware, this scripts retrieves its log.txt file
# which contains the delta of fixed JIRA issues.
# The output is written in /usr/kits

# ToDo:
#      * Provide a method to get authenticated if not authenticated !

# Version: 0.07
# Args:
#     1. iLO generation
#     2. firmware version

# Variables
ServerAddress="lights-out2.americas.hpqcorp.net"
BuildLocation="//${ServerAddress}/Deliverables"
OutputDir="/usr/kits"

NC=$(which nc 2>/dev/null) || echo "Please, install ncat/nc. Exiting"
[ -z "$NC" ] && exit 1

# Verify arguments
if [ "$1" = "--goodforuseonly" ] ; then
   GoodForUseOnly="1"
   echo "Checking if the last Pass produces an image Ok for production"
   shift
fi

NUMARGS=2
if [ $# -ne  $NUMARGS ] ; then
   echo -e "\nUsage: $0 [--goodforuseonly] <iLOGen> <FwVersion> \n"
   echo -e "\twhere:\n\t\t--goodforuseonly will only verify if the firmware is good for use on a production system (not an R&D)"
   echo -e "\t\t<iLOGen> is 5 or 6"
   echo -e "\t\t<FwVersion> is something like 1.55"
   echo -e "Exiting..."
   exit 2
fi
iLOGen=$1
FwVersion=$2
if [ $iLOGen -ne 5 -a $iLOGen -ne 6 ] ; then
   echo "iLOGen must be 5 or 6. Exiting..."
   exit 3
fi

echo $FwVersion | grep -q '^[[:digit:]]\{1\}\.[[:digit:]]\{2\}$'
if [ $? != 0 ] ; then 
   echo "Firmware version bad format; Exiting..."
   exit 4
fi

FwVersionWithNoDot=$(tr -d '.' <<< $FwVersion)
BuildLocation="${BuildLocation}/iLO${iLOGen}/${FwVersion}"
OutputFile="${OutputDir}/iLOFwLogsOf-iLO${iLOGen}-v${FwVersion}.txt"

# Verify connectivity with remote server
$NC -vz ${ServerAddress} 445 &>/dev/null
if [ $? != 0 ] ; then
   echo "Problem connecting to ${ServerAddress} ; Exiting"
   exit 5
fi

# Verify if we are authenticated remotely
echo "Attempting to cd to $(tr '/'  '\\' <<< $BuildLocation)"
cd ${BuildLocation}  # &> /dev/null || (echo "Problem. Exiting" && exit 10)
#ls -l ${BuildLocation}/Pass01 &> /dev/null || echo "Authentication problem. Exiting" && exit 10

# Retrieve Pass list
[ -z "$GoodForUseOnly" ] && echo -n "Retrieving Pass list from " "$(echo ${BuildLocation} | tr '/' '\\')" "...."
PassList=$(ls -d Pass*)

if [ $? != 0 ] ; then
   echo -e "\n\tProblem retrieving pass list ; Exiting"
   exit 6
fi
[ -z "$GoodForUseOnly" ] &&  echo -e "Done\n" 

isGoodForUse () {
    LastPass=$(tail -1 <<< ${PassList} | sort)
    ProdFileName="${LastPass}/ilo${iLOGen}_${FwVersionWithNoDot}.bin"
    ls ${ProdFileName} &>/dev/null && \
        echo -e "${BuildLocation}/${LastPass}/Components/ilo${iLOGen}_${FwVersionWithNoDot}.fwpkg is GOOD for use !\n\n" || \
        echo -e "${LastPass} is NOT good for use !\n\n"
}

[ ! -z "$GoodForUseOnly" ] && isGoodForUse && exit 0

# Process each Pass
rm $OutputFile &>/dev/null
for P in $PassList ; do
   p=$(basename $P)
   echo -e -n "\tSaving log.txt from ${p} ..."
   cat ${P}/log.txt 2>&1 >> $OutputFile
   echo -e "Done"
done

# OutputFile Cleanup
echo -n -e "\nCleaning ${OutputFile} ... "
dos2unix -q $OutputFile
sed -i -e 's/\\r// ; s/\\n// ; /Update GUI binary/d ; /Automated/d ; /^[[:space:]]*$/d' $OutputFile
echo -n -e "Done\n\n"

echo -e "Output File content: ${OutputFile}\n"
cat $OutputFile
echo

# Check if last Pass is ready for use in a Production system (not R&D iLO !)
isGoodForUse

exit 0
