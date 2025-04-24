#!/usr/bin/bash
#
# This script update Redocly/Workflows admonitions
# into Reunite/Realm admonitions.
#
# It is inspired from the migrateMarkdown function 
# in https://github.com/redocly-demo/migrate-portal/blob/main/bin.ts#L795
# from Redocly.
#
# Version 0.2

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md")
#mdFileList="$rootDir/docs/redfishServices/ilos/supplementDocuments/securityService.md"

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null
  sed -i -E  \
    's/::::/:::/g' $file   
  sed -i -E  \
    's/:::([^ ]+) ([^ ]+)/{% admonition type="\1" name="\2" %}/g ; s?::: *$?{% /admonition %}?g' $file
done
echo
