#!/usr/bin/bash
#
# Version 0.1

# This script retrieves the SystemIAK certificate, if any.

# ToDo:
#     * Verify the supplied address is a BMC (check /redfish/v1)
#     * Should not assume the certificate locations list

# Variables
NUMARGS=1
NUMMINARGS=1
BmcIp=$1
user='administrator'
passwd='hpent123'
#user="demopaq"
#passwd="password"
CURL="curl -k -s -L -u ${user}:${passwd}"
Target="https://${BmcIp}"
BaseUrl="${Target}/redfish/v1/CertificateService/CertificateLocations"

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
# Retrieve `SystemIAK` locations, if any
SystemIAKLocations="$($CURL ${BaseUrl} | jq -e '.Links !=null' &>/dev/null && $CURL ${BaseUrl} | jq -r '.Links.Certificates[] | ."@odata.id"' | grep 'Managers.*IAK')"

echo "$BmcIp $SystemIAKLocations"


