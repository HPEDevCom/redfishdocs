#!/usr/bin/bash
#
# This script processes the internal links in the changelog file.
# When adding a new iLO firmware version, some firmware version files
# may be removed. See the `keepOldVersions` in the `_script_wrapper.sh` file.
# As a consequence, the links in the changelog file become invalid. 
# This script updates the links to point to the latest iLO firmware version,
# hoping that the link will still be valid.
#
# As an example, when iLO 6 1.64 files are removed, the following link:
# [link](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_manager_resourcedefns164/#dedicatednetworkports)
# must be updated to:
#
# {% link-internal href=concat("/docs/redfishservices/ilos/ilo6_", $env.PUBLIC_LATEST_${ILOGEN}_FW_VERSION", "/", "${iLOGen}_", "manager_resourcedefns", $env.PUBLIC_LATEST_${ILOGEN}_FW_VERSION), \"/\", "#dedicatednetworkports" %} link {% /link-internal %}
#
#
# version: 0.21

#echo "Starting $0 script..."
#export ilogen="iLO 6"
#export iLOFwVersion=1.69
#export iLOGen=$(echo ${ilogen,,} | tr -d ' ')
#ILOGEN="$(echo ${iLOGen^^} )"

#export iLOVersion=$(echo $iLOFwVersion | tr -d '.')
#export let Gen=$(echo $iLOGen | tr -d '[:alpha:]'  )
#export RepoLocation="/cygdrive/c/Git-repo/CloneOfPrivate-hpe-ilo-redocly"
#export WorkingDirectory="$RepoLocation/docs/redfishServices/ilos/${iLOGen}/${iLOGen}_${iLOVersion}"

# Identify and count the number of firmware versions documented
cd $WorkingDirectory/..
#iLOVersions="$(ls -d ${iLOGen}_??? | sort -u)"
#NbiLOVersions=$(echo $iLOVersions | wc -w)
#export iLOVersions=($iLOVersions)  # convert to array
#echo "iLO Versions Array: ${iLOVersions[@]}"
#export keepOldVersions=5
#nbOfVersionsToRemove=$((NbiLOVersions - keepOldVersions))
#if [ $nbOfVersionsToRemove -le 0 ]; then
#  echo "No versions to remove. Exiting."
#  exit 0
#fi
#index=$((nbOfVersionsToRemove - 1))

#export TmpFile="/tmp/TmpFile"    ; rm $TmpFile  &> /dev/null
#export TmpFile2="/tmp/TmpFile2"  ; rm $TmpFile2 &> /dev/null

# Need to calculate the first section to be removed.
#firstiLOVersionToRemove=$(echo ${iLOVersions[$index]})
#firstiLOVersionToRemove="$(echo $firstiLOVersionToRemove | awk -F_ '{print $NF}' | sed 's/^\(.\)/\1./')"
#echo "First iLO Firmware Version to remove: $firstiLOVersionToRemove"

# export sections to be processed into temporary file.
changelogFile="${RepoLocation}/docs/redfishServices/ilos/${iLOGen}/${iLOGen}_changelog.md"
dos2unix $changelogFile &> /dev/null
PATTERN="^## ${ilogen} v${firstiLOVersionToRemove}"
echo -e "Links below this pattern should be updated: $PATTERN\n"
sed -n "/${PATTERN}/,\$p" $changelogFile > $TmpFile

# Create an array with the internal links lines.
# Exclude lines with links to `adapting` files.
sed -n 's/.*\(\[.*\](.*)\).*/\1/p' $TmpFile | grep -v 'adaptation' > $TmpFile2
linkArray=()
while IFS= read -r line; do 
  linkArray+=("$line")
done < $TmpFile2

for l in "${linkArray[@]}" ; do
  echo -e "\tProcessing link: $l"

  # Don't process links not containing $iLOGen
  if [[ $l != *"$iLOGen"* ]]; then
    echo -e "\t\tSkipping."
    continue
  fi
  
  # Extract the link text, remove any asterisks and escape underscores
  # to avoid issues in the newLink `sed` command down below.
  linkText="$(echo $l | grep -o "\[.*\]" | tr -d '[]' | tr '*' ' ')"

  # Remove line trailing dot and colon if any
  l="$(echo $l | sed 's/\.$//g')"
  l="$(echo $l | sed 's/:$//g')"

  # Extract the fragment, if any
  fragment="$(echo $l | grep -o '#.*$' | tr -d ')')"
  oldFragment="$fragment"
  #echo -e "\tFragment: $fragment"

  # Extract the link path
  linkPath="$(echo $l | grep -o "(.*)" | tr -d '()')"
  echo -e "\tLink path: $linkPath"
  
  # Remove the frament from the link path if it exists
  if [[ -n $fragment &&  $linkPath == *"$fragment"* ]]; then
    linkPath="$(echo $linkPath | sed "s|$fragment||g")"
    #echo -e "\tLink path without fragment: $linkPath"
  fi


  # Wrap the fragment with double quotes
  if [ -n "$fragment" ]; then
    fragment="$(echo $fragment | sed 's/#\(.*\)/\"#\1\"/g')"
    #echo -e "\tWrapped Fragment: $fragment\n"
  fi

  # Extract the iLO version from the link path
  # The iLO version is the first occurrence of a number followed by an underscore.
  # For example, in "/docs/redfishservices/ilos/ilo6_164/ilo6_manager_resourcedefns164/",
  # the iLO version is "164".
  linkiLOVersion="$(echo $linkPath | grep -o '_[0-9]\+' | head -n 1 | tr -d '_')"
  
  

  # Extract the path prefix before the first iLO version occurence.
  # Something like "/docs/redfishservices/ilos/ilo6_"
  prefix="$(echo ${linkPath%%$linkiLOVersion*})"
  prefix="$(echo $prefix | sed 's/^/"/g ; s/$/"/g')"
  #echo -e "\tPrefix: $prefix"

  # Extract the path suffix after the first iLO version occurence
  # Then, remove the trailing version number and the trailing slash, to get
  # Something like "/ilo6_manager_resourcedefns"
  suffix="$(echo ${linkPath#*$linkiLOVersion})"
  suffix="$(echo $suffix | sed 's/^/"/g ; s/$/"/g')"
  suffix="$(echo $suffix | sed -e 's|[0-9]*/||g')"
  #echo -e "\tSuffix: $suffix\n"

  LATEST="\$env.PUBLIC_LATEST_${ILOGEN}_FW_VERSION"
  #echo -e "\tLATEST: $LATEST"
  #echo -e "\tSuffix: $suffix"
  #echo -e "\tFragment: $fragment\n"

  # Create the new link with or without fragment
  if [ -n "$fragment" ]; then
    newLink="{% link-internal href=concat(${prefix}, $LATEST, \"/\", ${suffix}, ${LATEST}, \"/\", ${fragment}) %} $linkText {% /link-internal %}"
  else
    newLink="{% link-internal href=concat(${prefix}, $LATEST, \"/\", ${suffix}, ${LATEST}) %} $linkText {% /link-internal %}"
  fi
  #echo -e "\tNew link: $newLink\n"
  
  # Replace the old link with the new one.
  # Need first to escape the square brackets in the link text for sed.
  # Also, escape the underscores to avoid issues with sed. 
  L=$(echo $l | sed -e 's/\[/\\[/g ; s/\]/\\]/g')
  L=$(echo $L | sed -e 's?\\_?\\\\\\_?g') # Not sure why 6x backslashes are needed...
  #echo -e "\tReplacing: $L"
  #echo -e "\tWith: $newLink"
  sed -i -e "s|$L|$newLink|g" $changelogFile
done

#### NOTE It seems this not needed any more with new Realm?
# Process the entire Changelog file to change '#oemhpefragment' into '#oem.hpe.fragment',
# where ever they are.
#sed -i -e 's/#oemhpe/#oem.hpe./g' $changelogFile

echo "\nLinks updated in $changelogFile"
exit 0