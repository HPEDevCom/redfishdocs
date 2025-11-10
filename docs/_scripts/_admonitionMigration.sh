#!/usr/bin/bash
#
# This script updates Redocly/Workflows admonitions
# into Reunite/Realm admonitions.
#
# ToDo
#     * Investigate if this script should be incorporated
#       in a script called by _script_wrapper.sh 
# Version 0.34


export RepoLocation="/cygdrive/c/Git-repo/CloneOfPrivate-hpe-ilo-redocly"
export WorkingDirectory="$RepoLocation/docs/redfishServices/ilos/${iLOGen}/${iLOGen}_${iLOVersion}"

export ResourcesFile_bck="${WorkingDirectory}/_raw_${iLOGen}_resourcedefns${iLOVersion}.md-bck"
export ResourcesFile="${WorkingDirectory}/_raw_${iLOGen}_resourcedefns${iLOVersion}.md"
export OtherResourcesFile="${WorkingDirectory}/_${iLOGen}_other_resourcedefns${iLOVersion}.md"

export ResmapFile_bck="${WorkingDirectory}/_raw_${iLOGen}_resmap${iLOVersion}.md-bck"
export ResmapFile="${WorkingDirectory}/_raw_${iLOGen}_resmap${iLOVersion}.md"

export MsgRegistryFile_bck="${WorkingDirectory}/_raw_${iLOGen}_msgregs${iLOVersion}.md-bck"
export MsgRegistryFile="${WorkingDirectory}/_raw_${iLOGen}_msgregs${iLOVersion}.md"

cd ${RepoLocation}/docs/_scripts

#mdFileList=$(find $RepoLocation -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md" -not -path "*/.github/*")
#mdFileList="$RepoLocation/docs/redfishservices/ilos/supplementDocuments/managingUsers.md" 
mdFileList="$*"

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null
  
  # Fix potential typos. ToDo: need to fix when there
  # is a space (or more) after the third colon.
  sed -i -E  \
    's/::::/:::/g' $file   
  # Fix admonition syntax. 
  sed -i -E  \
    's/:::([^ ]+) ([^ ]+)/{% admonition type="\1" name="\2" %}/g ; s?::: *$?{% /admonition %}?g' $file
done
echo
