#!/usr/bin/bash

# Version 0.23
# This script returns the URIs of all the members of the specified collection.

# Source file: https://github.com/donzef/FdzPerso/tree/main

### Arguments
# 0: --silent
# 1: BMC IP
# 2: bmc user
# 3: bmc password
# 4: Collection (un-versioned json schema definition)
#    ex: TBD

# ToDo:
#      * Check if some URIs are not deprecated.
#        Ex: URI /redfish/v1/Managers/{item}/VirtualMedia is deprecated as per
#        https://redfish.dmtf.org/schemas/v1/VirtualMediaCollection.json

# Required executables
CURL=$(which curl 2>/dev/null) || (echo "Please, install curl(1). Exiting" ; exit 1 )
CURL="$CURL --silent --insecure --location"
SORT=$(which sort 2>/dev/null) || (echo "Please, install sort(1). Exiting" ; exit 1 )
SORT="$SORT -u"

Silent=""
if [ "$1" == "--silent" ] ; then
   Silent=1
   shift
fi

VerySilent=""
if [ "$1" == "--verysilent" ] ; then
   VerySilent=1
   shift
fi 

# Test connection to the DMTF site
[  -z $Silent ] && [ -z $VerySilent ] && echo -n "Testing connection to the DMTF site..."
DmtfSchemaURL="http://redfish.dmtf.org/schemas/v1/"

$CURL $DmtfSchemaURL &>/dev/null || (echo "Problem to reach DMTF schema URL at ${DmtfSchemaURL}. Exiting" ; exit 2)
PossibleCollections=$($CURL $DmtfSchemaURL | grep '^.*Collection.json<' |  sed -e 's/^.*>\(.*Collection\)\.json<.*$/\1/')

[ -z $Silent ] && [ -z $VerySilent ] && echo -e "Connection Ok."

# Test arguments
NUMARGS=4
NUMMINARGS=1
#Bmc="ilo-scott380g11-1"
#Bmc="ilo-fdz360g10-1"
Bmc="ilo-lio365g11-2"
#if [ $# -eq $NUMMINARGS ] ; then
   Collection=$1
   BmcUser="demopaq"
   BmcPassword="password"
#fi

if [ $# -eq $NUMARGS ] ; then
   Bmc=$1
   BmcUser=$2
   BmcPassword=$3
   Collection=$4
fi

if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   echo -e "Usage: $0 [--silent|--verysilent] [bmc-IP bmc-user password] collection\n"
   echo "       collection is a un-versionned collection schema file"
   echo "       from http://redfish.dmtf.org/schemas/v1/"
   echo "       example: VolumeCollection" 
   echo ""
   echo "	Default iLO is: $Bmc"
   exit 2
fi

# The Collection arg must end with "Collection".
[ "$(echo $Collection | grep -c Collection)" -eq 0 ] && \
echo -e "\nThe Collection argument must end with \"Collection\".\nPossible collections are:\n\n${PossibleCollections}\n\nExiting" && \
exit 9

# Retrieve the list of member URIs. Read paragraph 5.2 of DSP2046 https://www.dmtf.org/dsp/DSP2046
[ -z $Silent ] && [ -z $VerySilent ] && \
   echo -n "Retrieving list of URIs from DMTF for collection ${Collection}..."
CollectionURIs=$($CURL ${DmtfSchemaURL}${Collection}.json | \
               jq -r ".definitions.${Collection}.uris[]" 2>/dev/null) \
               || (echo "Problem retrieving URIs. cURL exit code: $?" ; echo -e "\nPossible collections:\n" ; echo "$PossibleCollections" | tr '\n' ' ')
 [ -z "$CollectionURIs" ] && echo -e "\n\nNo URIs to proceed. Exiting\n" && exit 3

[ -z $Silent ] && [ -z $VerySilent ] && echo -e "Done."

# The following function crawls the Redfish tree to discover {itemId} present in all 
# the members of the $CollectionURIs variable.
FinalList=""
UriExpansion() {
List="$*"
NewList=""
for uri in $List  ; do
   suffix="${uri#*\}*/}"
	uri="${uri%%{*}"
	members=$($CURL --header "X-Auth-Token: $Token" \
	                --header 'Content-Type: application/json' \
	                "https://${Bmc}${uri}" 2>/dev/null | \
	        jq -r '.Members[] | ."@odata.id"' 2>/dev/null)
    for m in $members ; do
	    # Need to normalize found members URIs. Say with no trailing "/".
	    m=$(echo ${m%%/})
	    NewList="${NewList} ${m}/${suffix}"
	done
done

echo "$NewList"
}

# Create BMC session and collect the Token and the Session location 
# from the headers of the response.
# Note that the target Sessions URI does not contain a trailing "/" 
# to avoid a permanent 308 redirect that would break the SessionLocation
# retrieval. 
[ -z $Silent ] && [ -z $VerySilent ] && echo -n "Creating Bmc session..."
string=$($CURL --include \
               --request POST  --header 'Content-Type: application/json' \
               --data "{\"UserName\": \"${BmcUser}\", \"Password\": \"${BmcPassword}\"}" \
               "https://${Bmc}/redfish/v1/SessionService/Sessions" | \
               awk  '/^Location/ || /^X-Auth-Token/ {print $NF}' | \
               $SORT | tr '\r\n' ' ')

# Verify $string is populated.
[ -z "$string" ] && [ -z $VerySilent ] && echo -e "\n\tProblem during session creation. Verify BMC address and credentials. Exiting...\n" && exit 4
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

[ -z $Silent ] && [ -z $VerySilent ] && echo -e "Done."

# Need to verify the state of the remote server. If OFF or if RDE devices
# are not fully discovered, the output of this script may not be accurate.
# Hence, need to warn the user.

# TBD. Need to find how to get a fine-grained state for device
# discovery in Dell, Lenovo and Supermicro.

# Main loop:
[ -z $VerySilent ] && echo "CollectionURIs: ${CollectionURIs}"
[ -z $Silent ] && [ -z $VerySilent ] && echo -e "Processing...\n"

if [[ ! "$CollectionURIs" =~ "/{" ]] ; then
   # No placeholders in the URIs. No need to expand them.
   FinalList="${CollectionURIs}"
fi

# If there are placeholders in the URIs, we need to expand them.
while [[ "$CollectionURIs" =~ "/{" ]] ; do
    CollectionURIs=$(UriExpansion $CollectionURIs)
    #Extract elements with no placeholder like {item}
	TempList=""
	for uri in $CollectionURIs ; do
	    if [[ ! "$uri" =~ "/{" ]] ; then
		    # $uri does not contain {. Adding it to FinalList.
		    FinalList="${FinalList} ${uri}"
		else
		    # $uri contains a placeholder {item}. Adding it to TempList.
		    TempList="${uri}"
		fi
	done
	CollectionURIs=${TempList}
done


# Make sure we have no duplicate URIs
CollectionURIs=$(echo ${FinalList} | $SORT)

# echo -e "URIs of the ${Collection} that may contain members:\n\t${CollectionURIs}\n"

# For each URI, gather their members and optionally print them.
RawList=""
for uri in $CollectionURIs ; do
   [ -z $Silent ] && [ -z $VerySilent ] && echo -e "\n${uri} contains the following members:"
   Var=$($CURL --header "X-Auth-Token: $Token" \
       --header 'Content-Type: application/json' \
		 --request GET "https://${Bmc}${uri}" | \
		 jq -r '.Members[] | ."@odata.id"' 2>/dev/null)
	[ -z $Silent ] && [ -z $VerySilent ] && echo -e "${Var}"
   RawList="${RawList} ${Var}"
done

[ -z $Silent ] && [ -z $VerySilent ] && echo -e "\n\nAggregated output:"
echo -e "${RawList}\n"

# Delete Session
[ -z $Silent ] && [ -z $VerySilent ] && echo -e "\nDeleting session...."
$CURL --header 'Content-Type: application/json' \
      --header "X-Auth-Token: $Token" \
	  --request DELETE "https://${Bmc}${SessionLocation}" \
	  --data '' | jq . &> /dev/null
[ -z $Silent ] && [ -z $VerySilent ] && echo -e "Done."

# Cleanup in case jq had problems !
rm jq.exe.stackdump &>/dev/null
