#!/usr/bin/bash

# Version 0.991

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
#        

#
###  Variable definitions
#

# Note: The following $scriptList variable is ordered. Don't modify this order!
# scriptList="_lintFiles.sh"
scriptList="_split_resourcedefns.sh _resourcedefns.sh _resmap.sh _msgregs.sh _excludeFromSearch.sh _lintFiles.sh"
required_executables="dos2unix sed awk"

# Don't forget to update the following variables to process the right iLO version !

export ilogen="iLO 6"
export iLOFwVersion=1.68

export iLOGen=$(echo ${ilogen,,} | tr -d ' ')
export iLOVersion=$(echo $iLOFwVersion | tr -d '.')

#export RepoLocation="C:/api_redocly/hpe-ilo-redocly"
export RepoLocation="/cygdrive/c/Git-repo/ProtoRedfishDocs"
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
export keepOldVersions=5 # Number of old versions to keep in the repo

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
# Need to know if we are formatting file for Redocly/Workflows
# or for Redocly/Realm/Reunite
#

answer="N"
bold=$(tput bold)
normal=$(tput sgr0)
echo -n "Are we in a Redocly/Realm/Reunite environment (y|N) ?  "
IFS= read -r answer
case $answer in
  yes|y|Y*)
    echo "Great... Let's adjust the environment"
    export RedoclyRealm="true"
    ;;
  *)
    echo -e "Awesome... Let's continue"
    export RedoclyRealm="false"
    ;;
esac

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

# Make sure original Slate auto-generated files are present
if [ ! -f ${ResourcesFile_bck} -o ! -f ${ResmapFile_bck} -o ! -f ${MsgRegistryFile_bck} ] ; then
  echo "ERROR: $(basename ${ResourcesFile_bck}) or $(basename ${ResmapFile_bck}) or $(basename ${MsgRegistryFile_bck}) not found. Exiting."
  exit 8
fi

# Cleanup working files in case of leftover from previous aborted runs of this script
rm $ResourcesFile $ResmapFile $MsgRegistryFile                                     &> /dev/null
rm ${WorkingDirectory}/${iLOGen}_*_resourcedefns$(echo $iLOVersion | tr -d '.').md &>/dev/null
rm ${WorkingDirectory}/_${iLOGen}_resourcedefns$(echo $iLOVersion | tr -d '.').*   &>/dev/null

# Copy Slate original backuped files into working files and
# remove CR chars if any (sed may not like CRLF terminated lines)
for f in ${ResourcesFile} ${ResmapFile} ${MsgRegistryFile}; do
  cp ${f}-bck $f 
  dos2unix $f &> /dev/null
done

# Delete the "^### BootOptionEnabled" section (9 lines) from the resource file,
# if PR 306 has not been merged (https://github.com/HewlettPackard/hpe-ilo-redocly/pull/306)
sed -i '/^### BootOptionEnabled/,+9d'  ${ResourcesFile}

# Move admonitions to Markdoc format if in Redocly/Realm/Reunite environment
if [ "$RedoclyRealm" == "true" ] ; then
  # Fix potential typos. ToDo: need to fix when there
  # is a space (or more) after the third colon.
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
iLOVersions="$(ls -d ${iLOGen}_??? | sort -u)"
NbiLOVersions=$(echo $iLOVersions | wc -w)
iLOVersions=($iLOVersions)  # convert to array

if [ "$RedoclyRealm" == "false" ] ; then
exit 0
fi

# Remove the oldest versions of firmware to keep only the last N versions
# Keep the "_raw*bck" files, just in case...
nbOfVersionsToRemove=$((NbiLOVersions - keepOldVersions))
index=$((nbOfVersionsToRemove - 1)) 

sidebarsFile="${iLOGen}.sidebars.yaml"
if [ ! -f $sidebarsFile ] ; then
  echo -e "\nWARNING: $sidebarsFile not found. No update done."
  exit 0
fi

# Cleanup only if we are processing the last version
lastVersionIndex=$(( ${#iLOVersions[@]} - 1 ))
lastVersion=${iLOVersions[$lastVersionIndex]}

if [ ! "${iLOGen}_${iLOVersion}" == "${lastVersion}" ] ; then
  echo -e "\nNo version cleanup needed. We are not processing the last version."
  exit 0
fi

i=0
while [ $i -le $index ] ; do
  echo -e "\nRemoving formatted files in ${iLOVersions[$i]} directory"
  rm -f ${iLOVersions[$i]}/${iLOGen}_*.md &> /dev/null
  echo -e "\nUpdating $sidebarsFile"
  startPattern=$(echo "v${iLOVersions[$i]##*_}"  | sed 's/^v\(.\)/v\1./g' )
  startPattern="group: $ilogen $startPattern Reference documents"
  endPattern="page: ${iLOVersions[0]}.${iLOGen}_msgregs${iLOVersion}.md"
  sed -i "/$startPattern/,/$endPattern/d" $sidebarsFile
  i=$((i + 1))
done

# Uncomment the following line in case of broken links in the Changelog file.
# Removal of the internal links Changelog file to avoid broken links.
# Note: awk is used to search for lines between @startPattern and 
# the next "## iLO n new".
#startPattern="## ${ilogen} v${iLOFwVersion} new"
#endPattern="$(awk -v sp="$startPattern" -v ig="## $ilogen new" '$0 ~ sp {found=1; next} found && $0 ~ ig {print; found=0}' ${iLOGen}_changelog.md)"
#sed -i "/$startPattern/,/$endPattern/ s/\[\(.*\)\](.*)/\1/g" ${iLOGen}_changelog.md


exit 0
