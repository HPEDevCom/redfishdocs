#!/usr/bin/bash
#
# This script updates Redocly/Workflows admonitions
# into Reunite/Realm admonitions.
#
# ToDo
#     * Investigate if this script should be incorporated
#       in a script called by _script_wrapper.sh 
# Version 0.32

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md" -not -path "*/.github/*")
#mdFileList="$rootDir/docs/redfishservices/ilos/supplementDocuments/managingUsers.md" 

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null
  
  # Fix typos
  sed -i -E  \
    's/::::/:::/g' $file   
  # Fix admonition syntax. 
  sed -i -E  \
    's/:::([^ ]+) ([^ ]+)/{% admonition type="\1" name="\2" %}/g ; s?::: *$?{% /admonition %}?g' $file
done
echo
