#!/usr/bin/bash
#
# Version 0.1

# This script retrieves the security state of the supplied BMC address

# ToDo:
#     * Verify the supplied address is an iLO (check /redfish/v1)
#     *

# Variables
NUMARGS=1
NUMMINARGS=1
BmcIp=$1
user='demopaq'
passwd='password'
CURL="curl -k -s -L -u ${user}:${passwd}"
Target="https://${BmcIp}"
BaseUrl="${Target}/redfish/v1/Managers/1/SecurityService/?\$select=SecurityState"

# Functions
function Usage() {
  echo -e "\nUsage: $0 iLO-IP\n"
  echo -e "Example:\n${0##/*/} 192.168.98.125"
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

#set -x
# Retrieve `SecurityState`
SecurityState="$($CURL ${BaseUrl} | jq -r '.SecurityState')"
echo "${BmcIp} Security State: ${SecurityState}"


