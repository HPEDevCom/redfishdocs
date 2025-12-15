#!/usr/bin/bash

# Version 0.22
# This script prints the properties of the drives in a system.
# It calls the CollectionMembers.sh companion scripts. The
# DriveCollection returned by the CollectionMembers.sh script
# contains empty drive slots that need to be discarded.

# Todo:
# 	Optimize the Redfish session creation. It may be possible 
# 	to use the session token used by the CollectionMembers.sh
# 	companion script.

# Source: https://github.com/donzef/FdzPerso/tree/main

### Arguments
# 0: TBD
# 1: BMC IP
# 2: bmc user
# 3: bmc password

# Required executables
CM=$(which CollectionMembers.sh 2>/dev/null) || (echo "Please, install CollectionMemebers.sh. Exiting" ; exit 1 )
#echo $CM ; exit 0
CURL=$(which curl 2>/dev/null) || (echo "Please, install curl(1). Exiting" ; exit 1 )
CURL="$CURL --silent --insecure --location"
SORT=$(which sort 2>/dev/null) || (echo "Please, install sort(1). Exiting" ; exit 1 )
SORT="$SORT -u"

Silent=""
if [ "$1" == "--silent" ] ; then
   Silent=1
   shift
fi

###  Test arguments
NUMARGS=3
NUMMINARGS=0
#Bmc="ilo-scott380g11-1"
#Bmc="ilo-fdz360g10-1"
Bmc="ilo-lio365g11-2"
if [ $# -eq $NUMMINARGS ] ; then
   #Collection=$1
   BmcUser="demopaq"
   BmcPassword="password"
fi

if [ $# -eq $NUMARGS ] ; then
   Bmc=$1
   BmcUser=$2
   BmcPassword=$3
fi

if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   echo -e "Usage: $0 [bmc-IP bmc-user password]\n"
   echo 
   echo "	Default iLO: $Bmc"
   exit 2
fi

#### Variables
Collection="DriveCollection"

echo -e "Retrieving Drive Collection from $Bmc\n"

# Retrieve the drive collection members
DriveURIs=$($CM --silent $Bmc $BmcUser $BmcPassword $Collection)

[ -z $Silent ] && echo -n "Creating Bmc session..."
string=$($CURL --include \
               --request POST  --header 'Content-Type: application/json' \
               --data "{\"UserName\": \"${BmcUser}\", \"Password\": \"${BmcPassword}\"}" \
               "https://${Bmc}/redfish/v1/SessionService/Sessions" | \
               awk  '/^Location/ || /^X-Auth-Token/ {print $NF}' | \
               $SORT | tr '\r\n' ' ')

# Verify $string is populated.
[ -z "$string" ] && echo -e "\n\tProblem during session creation. Verify BMC address and credentials. Exiting...\n" && exit 4
TokenAndUrl=( $string )

if [[ "$TokenAndUrl[0]" =~ "v1" ]] ; then
   SessionLocation="${TokenAndUrl[0]}"
   Token="${TokenAndUrl[1]}"
else
   SessionLocation="${TokenAndUrl[1]}"
   Token="${TokenAndUrl[0]}"
fi

# Need to normalize the session Url:
# HPE iLO returns an URL (https://<bmc-ip>/redfish/v1/....)
# Others return an URI (/redfish/v1/....)
SessionLocation=$(echo "/${SessionLocation#https://*/}" | sed 's?//?/?')

[ -z $Silent ] && echo -e "Done."



# Main loop:
let UriCount=$(wc -w <<< "$DriveURIs")
echo "["
let i=0
for uri in $DriveURIs ; do
   let i++
   TmpVar=$($CURL --header "X-Auth-Token: $Token" \
         --header 'Content-Type: application/json' \
         --request GET "https://${Bmc}${uri}")
   [ "$(grep -c 'ResourceMissingAtURI' <<< $TmpVar)" -eq 0 ] && \
      echo $TmpVar | jq '.' && ( [ ${i} -lt $UriCount ] && echo ',')
done 
echo "]"

[ -z $Silent ] && echo -e "\nDeleting session...."
$CURL --header 'Content-Type: application/json' \
      --header "X-Auth-Token: $Token" \
	   --request DELETE "https://${Bmc}${SessionLocation}" \
	   --data '' | jq . &> /dev/null
[ -z $Silent ] && echo -e "Done."

# Cleanup in case jq had problems !
rm jq.exe.stackdump &>/dev/null






# Logout
#$iLOrest logout
