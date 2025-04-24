#!/usr/bin/bash
#
# This script update Redocly/Workflows front matter
# into Reunite/Realm front matter.
#
# It is inspired from the migrateMarkdown function 
# in https://github.com/redocly-demo/migrate-portal/blob/main/bin.ts#L795
# from Redocly.
#
#  Reunite front matter: tbd
# Version 0.2

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

#mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/* -not -path -not -path */.github/*" -not -path "$rootDir/README.md")

mdFileList="/Git-Repo/ProtoRedfishDocs/docs/redfishClients/ilorest-userguide/changelog.md"

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null

  # front matter before fix
  echo "Front matter before fix:"
  sed -n '/^---$/,/^---$/p' $file
  echo

  # Move `exclude`into `excludeFromSearch`
  sed -i 's/^exclude:/excludeFromSearch:/g' $file
  
  # Capture and cleanup various front matter fields
  lastUpdateBlock="$(awk '/^disableLastModified:/ {print "    hide: $NF"}' $file)"
  sed -i "/^disableLastModified:/d" $file

  tocDepth="$(awk '/maxDepth:/ {print "    depth: $NF"}' $file)"
  sed -i "/maxDepth:/d" $file


  if [ "$(awk '/  enable:/ {print $NF}' $file)" == "true" ]; then
    hideToc="false"
  else
    hideToc="true"
  fi
  echo "hideToc: $hideToc"
  sed -i "/^toc:/d ; /enable:/d" $file

  # Front matter afer fix
  echo "Front matter after fix:"
  sed -n '/^---$/,/^---$/p' $file
  echo

done
echo
