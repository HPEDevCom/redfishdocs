#!/usr/bin/bash
#
# This script updates Redocly/Workflows tabbed examples
# into Reunite/Realm tabbed examples.
#
#
# Version 0.1

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md -not -path */.github/*")

# Check if processing is really needed

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null
  
  echo -e "Done \n"
done
echo
