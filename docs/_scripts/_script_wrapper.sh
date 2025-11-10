#!/usr/bin/bash

# Version 1.02


# Script name: _script_wrapper.sh 
# This script is a wrapper to the other scripts contained in this folder, except
# to the standalone `_python_library.sh` script.

# It creates configuration variables and calls the other scripts in the right order in 
# order to convert raw and automaticaly generated files into Redocly MD files.

# This script must be executed when new versions of the automatically generated 
# files are posted, and before the Redocly rendering process (GitHub PR merge).

# NOTE: Automatically generated files are created in the internal GitHub:
#     https://github.hpe.com/HPE-iLO-Redfish-API/tools/tree/master/RedfishRefDoc

# Requirements (if G is the iLO generation and VVV its firmware version (i.e. 110)):
#        
#        * The automatically generated _iloG_resourcedefns.md, 
#          _iloG_resmap.md and _iloG_msgregs.md files MUST be stored respectively as:
# 
#          docs/redfishServices/ilos/iloG/iloG_VVV/_raw_iloG_resourcedefnsVVV.md-bck and
#          docs/redfishServices/ilos/iloG/iloG_VVV/_raw_iloG_resmapVVV.md-bck
#          docs/redfishServices/ilos/iloG/iloG_VVV/_raw_iloG_msgregsVVV.md-bck
#
#        * The list of utilities in $required_executables must be present in the PATH.
#          

# ToDo:
#       * Include `events.md` when possible
#       * Set keepCC7 version when iLO 7 is Common Criteria Certified.
#      

#
###  Variable definitions
#

# Note: The following $scriptList variable is ordered. Don't modify this order!
# scriptList="_lintFiles.sh"
scriptList="_split_resourcedefns.sh _resourcedefns.sh _resmap.sh _msgregs.sh _excludeFromSearch.sh _lintFiles.sh"
required_executables="dos2unix sed awk"

# Don't forget to update the following variables to process the right iLO version !

export ilogen="iLO 5"
export iLOFwVersion=3.09

export iLOGen=$(echo ${ilogen,,} | tr -d ' ')
export ILOGEN="$(echo ${iLOGen^^} )"
export iLOVersion=$(echo $iLOFwVersion | tr -d '.')
export let Gen=$(echo $iLOGen | tr -d '[:alpha:]'  )

#export RepoLocation="C:/api_redocly/hpe-ilo-redocly"
export RepoLocation="/cygdrive/c/Git-repo/CloneOfPrivate-hpe-ilo-redocly"
export WorkingDirectory="$RepoLocation/docs/redfishServices/ilos/${iLOGen}/${iLOGen}_${iLOVersion}"

export ResourcesFile_bck="${WorkingDirectory}/_raw_${iLOGen}_resourcedefns${iLOVersion}.md-bck"
export ResourcesFile="${WorkingDirectory}/_raw_${iLOGen}_resourcedefns${iLOVersion}.md"
export OtherResourcesFile="${WorkingDirectory}/_${iLOGen}_other_resourcedefns${iLOVersion}.md"

export ResmapFile_bck="${WorkingDirectory}/_raw_${iLOGen}_resmap${iLOVersion}.md-bck"
export ResmapFile="${WorkingDirectory}/_raw_${iLOGen}_resmap${iLOVersion}.md"

export MsgRegistryFile_bck="${WorkingDirectory}/_raw_${iLOGen}_msgregs${iLOVersion}.md-bck"
export MsgRegistryFile="${WorkingDirectory}/_raw_${iLOGen}_msgregs${iLOVersion}.md"

export TmpFile="/tmp/TmpFile"   ; rm $TmpFile &> /dev/null
export TmpFile2="/tmp/TmpFile2" ; rm $TmpFile2 &> /dev/null
export keepOldVersions=6     # Number of old versions to keep in the repo, excluding latest Common Criteria version.
                             # Having a too high number may generate a Realm Build failure due too High Memory needed.
export keepCC5="ilo5_273"    # Keep iLO 5 version 2.73 as it is Common Criteria certified version
export keepCC6="ilo6_111"    # Keep iLO 6 version 1.11 as it is Common Criteria certified version
#export keepCC7="ilo7_TBD"   # Keep iLO 7 version TBD as it is Common Criteria certified version

#
## Need validation of the iLO Generation and firmware version to process
# 

answer="N"
bold=$(tput bold)
normal=$(tput sgr0)
echo -n "Ok to process ${bold}${ilogen}${normal} version ${bold}${iLOFwVersion}${normal} (y|N) ?  "
IFS= read -r answer

case $answer in
  yes|y|Y*)
    echo "Great... Let's continue"
    ;;
  *)
    echo -e "\nEdit $0 and modify appropriate variables if needed."
    echo 'Exiting...'
    exit 11
    ;;
esac

# 
# Need to know if we are formatting files for Redocly/Workflows
# or for Redocly/Realm/Reunite
#
# The diference is that the Realm/Reunite environment contains a
# redocly.yaml file while Workflows contains siteConfig.yaml.
export RedoclyRealm="false"
[ -f "${RepoLocation}/redocly.yaml" ]    && RedoclyRealm="true"  && echo -e "\nReunite/Realm environment detected.\n"
[ -f "${RepoLocation}/siteConfig.yaml" ] && RedoclyRealm="false" && echo -e "\nWorkflows environment detected.\n"

#
### Environment preparation
#
echo -e "Environment preparation for processing reference docs of ${ilogen} v${iLOFwVersion}\n\n"

for exec in $required_executables ; do
  if [[ ! $(which $exec 2>/dev/null) ]] ; then
    echo "Could not find the $exec utility."
    echo "Please, install it and make sure it is in your PATH environment variable."
    echo "Exiting."
    exit 9
  fi
done

# Make sure original auto-generated files are present
if [ ! -f ${ResourcesFile_bck} -o ! -f ${ResmapFile_bck} -o ! -f ${MsgRegistryFile_bck} ] ; then
  echo "ERROR: $(basename ${ResourcesFile_bck}) or $(basename ${ResmapFile_bck}) or $(basename ${MsgRegistryFile_bck}) not found. Exiting."
  exit 8
fi

# Cleanup working files in case of leftover from previous aborted runs of this script
rm $ResourcesFile $ResmapFile $MsgRegistryFile                                     &> /dev/null
rm ${WorkingDirectory}/${iLOGen}_*_resourcedefns$(echo $iLOVersion | tr -d '.').md &>/dev/null
rm ${WorkingDirectory}/_${iLOGen}_resourcedefns$(echo $iLOVersion | tr -d '.').*   &>/dev/null

# Copy original backuped files into working files and
# remove CR chars if any (sed may not like CRLF terminated lines)
for f in ${ResourcesFile} ${ResmapFile} ${MsgRegistryFile}; do
  cp ${f}-bck $f 
  dos2unix $f &> /dev/null
done

# Delete the "^### BootOptionEnabled" section (9 lines) from the resource file,
# if PR 306 has not been merged (https://github.com/HewlettPackard/hpe-ilo-redocly/pull/306)
sed -i '/^### BootOptionEnabled/,+9d'  ${ResourcesFile}

# In iLO 7+, if missing, append HpeiLOAppAccountCollection to the resource definitions file.
if [[ $Gen -ge 7  && ! $(grep -q "HpeiLOAppAccountCollection" ${ResourcesFile}) ]] ; then 
  echo -e "\nAdding HpeiLOAppAccountCollection to ${ResourcesFile}\n"
  cat >> ${ResourcesFile} << '__EOF__'
## HpeiLOAppAccountCollection.HpeiLOAppAccountCollection
```@odata.type: "#HpeiLOAppAccountCollection.HpeiLOAppAccountCollection"```

A Collection of HpeiLOAppAccount resource instances.
### Resource Instances

|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/AccountService/Oem/Hpe/AppAccounts```|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[HpeiLOAppAccount](#hpeiloappaccount-v1_0_0-hpeiloappaccount)|

### Members (array)
Member of HpeiLOAppAccountCollection.HpeiLOAppAccountCollection

```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOAppAccountCollection.HpeiLOAppAccountCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Members@odata.count
Member of HpeiLOAppAccountCollection.HpeiLOAppAccountCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|
__EOF__
fi

# Move admonitions to Markdoc format if in Redocly/Realm/Reunite environment
if [ "$RedoclyRealm" == "true" ] ; then
  # Fix potential typos. ToDo: need to fix when there
  # is a space (or more) after the third colon.
  echo -e "Fixing potential typos and admonitions in the resource definition files."
  sed -i -E  \
    's/::::/:::/g' $ResourcesFile  $ResmapFile $MsgRegistryFile
  # Fix admonition syntax. 
  sed -i -E  \
    's/:::([^ ]+) ([^ ]+)/{% admonition type="\1" name="\2" %}/g ; s?::: *$?{% /admonition %}?g' \
    $ResourcesFile $ResmapFile $MsgRegistryFile
fi
 
# Build the list of all resource types identified as second level headers (^##) in the resourcedefns Slate file.
export TypeList=$(awk '/^## / {print $NF}' $ResourcesFile | cut -d'.' -f 1 | sort -u)

# Group resoure types in a "coherent" way. This is needed to produce
# several small output resourcedefns files that can be processed by Redocly.
export serviceroot="ServiceRoot"
export bios="Bios"
export chassis="ChassisCollection Chassis"
export manager="ManagerCollection Manager ManagerAccountCollection ManagerAccount ManagerNetworkProtocol"
export network="NetworkAdapterCollection NetworkAdapter                                                       \
                NetworkDeviceFunctionCollection NetworkDeviceFunction                                         \
                NetworkInterfaceCollection NetworkInterface EthernetInterfaceCollection EthernetInterface     \
                NetworkPortCollection NetworkPort"
export hpe="$(echo $TypeList | grep -o 'Hpe[[:alpha:]]*[[:space:]]')"
export storage="StorageCollection Storage StorageControllerCollection StorageController VolumeCollection Volume DriveCollection Drive"
export computersystem="ComputerSystemCollection ComputerSystem"
export typeLists="serviceroot bios manager chassis network hpe computersystem storage"

#
### Launch scripts sequentially
#
for script in $scriptList ; do
  echo "++++++++++++++++++++++++++++++++++++"
  echo "Launching  $script"
  echo "++++++++++++++++++++++++++++++++++++"
  ./$script
  ret=$?
  if [ ! "$ret" == "0" ] ; then
     #echo "./${script} exited with code: ${ret}. Exiting from ${0}"
     #break
     echo "./${script} exited with code: ${ret}. Continuing anyway !"
  fi
  echo    "+++++++++++++++++++++++++++++++++"
  echo -e "Finished with $script"
  echo -e "++++++++++++++++++++++++++++++++\n\n"
done

#
### Cleanup
#
echo -e "\n\nCleanup"
echo -e "\t$ResourcesFile \n\t$OtherResourcesFile"
echo -e "\t$ResmapFile \n\t$MsgRegistryFile"
echo -e "\t$WorkingDirectory/_${iLOGen}_*_resourcedefns$(echo $iLOVersion | tr -d '.').md"
echo -e "\t$WorkingDirectory/_${iLOGen}_resourcedefns$(echo $iLOVersion | tr -d '.').*"

rm $ResourcesFile $OtherResourcesFile                                              &> /dev/null
rm $ResmapFile $MsgRegistryFile                                                    &> /dev/null
rm $WorkingDirectory/_${iLOGen}_*_resourcedefns$(echo $iLOVersion | tr -d '.').md  &> /dev/null
rm $WorkingDirectory/_${iLOGen}_resourcedefns$(echo $iLOVersion | tr -d '.').*     &> /dev/null

# Identify and count the number of firmware versions documented
cd $WorkingDirectory/..
export iLOVersions="$(ls -d ${iLOGen}_??? | sort -u)"
export NbiLOVersions=$(echo $iLOVersions | wc -w)
export iLOVersions=($iLOVersions)  # convert to array
echo "iLO $Gen documented versions: ${iLOVersions[@]}"

if [ "$RedoclyRealm" == "false" ] ; then
  echo "RedoclyRealm: $RedoclyRealm"
  echo -e "\n\nExiting from ${0} with code 0, as we are not in a Reunite/Realm environment. We are done.\n\n"
  exit 0
fi

# Remove the oldest versions of firmware and keep only the last N versions
# Keep the "_raw*bck" files, just in case we want to restore them.

# Cleanup only if we are processing the lastest version
echo -e "Entering version cleanup section"
export lastVersionIndex=$(( ${#iLOVersions[@]} - 1 ))
export lastVersion=${iLOVersions[$lastVersionIndex]}
echo -e "\tLast documented version: $lastVersion"

if [ ! "${iLOGen}_${iLOVersion}" == "${lastVersion}" ] ; then
  echo -e "\n\tNo version cleanup needed. We are not processing the lastest version."
  exit 0
fi

export nbOfVersionsToRemove=$((NbiLOVersions - keepOldVersions))
#echo -e "\tNeed to remove $nbOfVersionsToRemove out of $NbiLOVersions versions."
if [ $nbOfVersionsToRemove -le 0 ]; then
  echo -e "\tNo versions to remove. Exiting."
  exit 0
fi
export index=$((nbOfVersionsToRemove - 1)) 

sidebarsFile="${iLOGen}.sidebars.yaml"
if [ ! -f $sidebarsFile ] ; then
  echo -e "\n\tWARNING: $sidebarsFile not found. No update done. Exiting"
  exit 0
fi

# Need to calculate the first section to be removed.
export firstiLOVersionToRemove=$(echo ${iLOVersions[$index]})
export firstiLOVersionToRemove="$(echo $firstiLOVersionToRemove | awk -F_ '{print $NF}' | sed 's/^\(.\)/\1./')"
echo -e "\tFirst iLO Firmware Version to remove: $firstiLOVersionToRemove"

i=0
while [ $i -le $index ] ; do
  case "${iLOVersions[$i]}" in 
    ${keepCC5})
      echo -e "\tKeeping ${iLOVersions[$i]} as it is a Common Criteria Certified version"
      i=$((i + 1))
      sleep 2
      continue
      ;;
    ${keepCC6})
      echo -e "\tKeeping ${iLOVersions[$i]} as it is a Common Criteria Certified version"
      i=$((i + 1))
      continue
      ;;
    ${keepCC7})
      echo -e "\tKeeping ${iLOVersions[$i]} as it is a Common Criteria Certified version"
      i=$((i + 1))
      continue
      ;;
    *)
      ;;
  esac

  echo -e "\n\tRemoving formatted files in ${iLOVersions[$i]} directory"
  echo -e "\t\tFiles to remove:"
  ls ${iLOVersions[$i]}/${iLOGen}_*.md
  rm -f ${iLOVersions[$i]}/${iLOGen}_*.md &> /dev/null
  echo -e "\n\tUpdating $sidebarsFile"
  startPattern=$(echo "v${iLOVersions[$i]##*_}"  | sed 's/^v\(.\)/v\1./g' )
  startPattern="group: $ilogen $startPattern Reference documents"
  endPattern="page: ${iLOVersions[0]}.${iLOGen}_msgregs${iLOVersion}.md"
  sed -i "/$startPattern/,/$endPattern/d" $sidebarsFile
  # Rename index.md file into _index.md to avoid processing by Redocly. 
  # This would generate broken links.
  mv ${iLOVersions[$i]}/{,_}index.md    &> /dev/null
  i=$((i + 1))
done

# Remove relative links like "../iloN_" to the new format: "iloN_" in all .md files
# This modification should be done in each _*sh scripts.
echo -e "\nRemoving relative links like '../iloN_' to the new format: 'iloN_' in all .md files"
FileList=$(ls ${WorkingDirectory}/*md)
sed -i 's?(../\(ilo[5-9]\)?(\1?g' $FileList

# Update changelog links of removed versions, and fix '#oemhpefragments' fragments
echo -e "\nUpdating changelog links of removed versions"
cd ${RepoLocation}/docs/_scripts
./_changelogLinks.sh

# Cleanup
  rm $TmpFile  &> /dev/null
  rm $TmpFile2 &> /dev/null

exit 0
