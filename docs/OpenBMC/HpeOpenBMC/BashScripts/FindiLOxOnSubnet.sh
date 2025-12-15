#!/usr/bin/bash
#
# Version 0.25

# This script find all iLO x on the specified subnet
# ToDo:
#      * Investigate if ZScaler is a problem ?
#      * Would be nice to provide subnets with strings
#        and not IP subnets: ex: hst="172.30.231.0/24", 
#        rd="10.132.194.0/24", lio="tbd/22"

# Variables
MyName="$(basename ${0})"

NUMARGS=2
NUMMINARGS=2
Subnet=$1 # ex: 10.132.194.0/24 ; 172.30.231.0/24
iLOGen="$2"
TempFileDir="/tmp"
TempFileName="${MyName}-temp-file-{$$}.txt"
TempFile="${TempFileDir}/${TempFileName}"
TacTempFile="${TempFileDir}/tac${TempFileName}"
CURL="curl -k -s -L "

# Functions
function Usage() {
  echo -e "\nUsage: $0 Subnet iLO_Generation\n"
  echo -e "Examples:\n${0##/*/} 172.30.231.0/24 7 \t# HST"
  echo -e "${0##/*/} 192.168.97.0/24 7 \t# HST"
  echo -e "${0##/*/} 192.168.98.0/24 7 \t# HST"
  echo -e "${0##/*/} 10.132.194.0/24 6 \t# RdD"
  echo -e "${0##/*/} 10.22.24.0/24 7 \t# RdD"
  echo -e "${0##/*/} 10.22.25.0/24 7 \t# RdD"
  echo -e "${0##/*/} 10.14.111.0/24 7 \t# RdD"
  echo -e "${0##/*/} 192.168.0.21/22 6 \t# Lio"
  echo -e "${0##/*/} 10.30.164.0/24 7 \t# Telco"
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

echo Searching for iLO $iLOGen in subnet $Subnet
echo -e -n "\tGathering IP addresses listening on port 443..."
nmap --unprivileged -p 443 $Subnet > $TempFile
echo -e "Done."

tac $TempFile > ${TacTempFile}
rm $TempFile

TempList="$(awk '/open  h/ {getline; getline; getline; getline ; print $NF }' ${TacTempFile} | tr -d '()' )"
List="$(echo $TempList | tr '\r\n' " ")"
unset TempList

echo -e "\tRetrieving iLO ${iLOGen} addresses...\n"
#set -x
for i in $List ; do
  timeout 10s curl -k -s https://${i}/redfish/v1 | jq '.Oem.Hpe.Manager[] | .ManagerType' 2>/dev/null |\
       awk '/iLO '"$iLOGen"'/ {found=1 ; printf "\t%s",  ""} END {exit !found}' && echo -n -e " ${i}\t" && \
       curl -k -s https://${i}/redfish/v1 | jq '.Product' 2>/dev/null && \
       FoundList="${FoundList}${i} "
done
echo -e "\nList of iLO ${iLOGen} on subnet ${Subnet}:"
echo -e "List=\"${FoundList}\""

rm $TacTempFile

