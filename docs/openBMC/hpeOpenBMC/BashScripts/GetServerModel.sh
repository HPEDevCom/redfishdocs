#!/usr/bin/bash
#
# Version 0.1

# This script retrieves the Server Model (Product). 
# No creds needed, as Product property is in /redfish/v1

# ToDo:
#     * Verify the supplied address is a BMC (check /redfish/v1)

# Variables
NUMARGS=1
NUMMINARGS=1
BmcIp=$1
CURL="curl -k -s -L "
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

# Print Product property

# Retrieve FirmwareVersion
echo -e -n "${BmcIp}: "
$CURL  "${Target}/redfish/v1" | jq '.Product'

