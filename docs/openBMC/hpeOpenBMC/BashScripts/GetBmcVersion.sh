#!/usr/bin/bash
#
# Version 0.11

# This script retrieves the firmware version of the supplied BMC address

# ToDo:
#     * Verify the supplied address is a BMC (check /redfish/v1)
#     * Verify that creds are Ok, to avoid jq to throw errors

# Variables
NUMARGS=1
NUMMINARGS=1
BmcIp=$1
user='administrator'
passwd='hpent123'
CURL="curl -k -s -L -u ${user}:${passwd}"
Target="https://${BmcIp}"
BaseUrl="${Target}/redfish/v1/Managers"

# Functions
function Usage() {
  echo -e "\nUsage: $0 Bmc-IP\n"
  echo -e "Example:\n${0##/*/} 192.168.98.125"
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

#set -x
# Retrieve `ManagerId`
ManagerUri="$($CURL ${BaseUrl} | jq -r '.Members[] | ."@odata.id"')"
ManagerId="${ManagerUri##*/}"
ManagerURL="${BaseUrl}/${ManagerId}"

# Print Product

# Retrieve FirmwareVersion
echo -e "${BmcIp}: "
curl -k -s -L "${Target}/redfish/v1" | jq '.Product'
$CURL $ManagerURL | jq '.FirmwareVersion'

