#!/usr/bin/bash
#
#
# This script validates the collections retrieved by iLOrest against the cURL collection.
#    ilorest list Members --select $c | awk -F= '{print $NF}' | dos2unix | sed -e 's?/ ? ?g ; s?/$??g' | tr -d '\n' | sed 's/         / /g'
#    CollectionMembers.sh --verysilent $Bmc $iLOUser $iLOPasswd $c
# version 0.2

# Log into remote BMC
Bmc="ilo-fdz360g12-hst"
iLOUser="demopaq"
iLOPasswd="password"

echo "Logging into remote BMC: $Bmc"
ilorest --nologo login $Bmc -u $iLOUser -p $iLOPasswd
echo

# Need to test if Login is Ok
# TBD

# Retrieve Collection members with iLOrest

# Create collection list
#CollectionList="ChassisCollection ManagerCollection CertificateCollection"
CollectionList="$(ilorest types | grep -i collection | dos2unix)"
#echo "CollectionList: $CollectionList"

for c in $CollectionList ; do
  echo "Processing $c"
  iLOrestList="$(ilorest --nologo list Members --select $c | awk -F= '{print $NF}' | dos2unix | sed -e 's?/ ? ?g ; s?/$??g' | tr -d '\n' | sed 's/         / /g')"
  iLOrestArray=($iLOrestList)
  #echo "iLOrestArray: ${iLOrestArray[@]}"

  # Retrieve Collection members with cURL
  curlList="$(CollectionMembers.sh --verysilent $Bmc $iLOUser $iLOPasswd $c | sed 's?^ /?/?' )"
  curlArray=($curlList)
  #echo "curlArray: ${curlArray[@]}"

  if [ "${#iLOrestArray[@]}" -ne "${#curlArray[@]}" ] ; then
	echo "Member count problem with $c." 
  else
	for i in "${!iLOrestArray[@]}"; do
        if [ "${iLOrestArray[i]}" != "${curlArray[i]}" ]; then
            echo "Problem with $c : Arrays are not equal: Element ${i} differs (${iLOrestArray[i]} != ${curlArray[i]})"
            exit 1
        fi
    done
    echo "No problem with $c"
  fi
  echo 
done

ilorest --nologo logout
