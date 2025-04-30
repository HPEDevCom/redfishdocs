#!/usr/bin/bash
#
# This script updates Redocly/Workflows front matter
# into Reunite/Realm front matter.
#
# It is inspired from the migrateMarkdown function 
# in https://github.com/redocly-demo/migrate-portal/blob/main/bin.ts#L795
# from Redocly.
#
#  Reunite front matter: tbd
# Version 0.4

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

# mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/* -not -path -not -path */.github/*" -not -path "$rootDir/README.md")
mdFileList="$rootDir/docs/redfishservices/ilos/supplementDocuments/backupAndRestore.md  $rootDir/docs/redfishservices/ilos/supplementDocuments/tfa.md"

for file in $mdFileList
do
  echo "Processing $file ..."
  dos2unix $file &> /dev/null

  # Replace `exclude` into `excludeFromSearch`
  sed -i 's/^exclude:/excludeFromSearch:/g' $file
  
  # Check if processing is really needed
  if grep -q "^markdown:" $file; then
    echo -e "No processing needed. \n"
    continue
  fi

  # Capture and cleanup various front matter fields
  lastUpdateBlock="$(awk '/^disableLastModified:/ {print $NF}' $file)"
  sed -i "/^disableLastModified:/d" $file

  tocDepth="$(awk '/maxDepth:/ {print $NF}' $file)"
  sed -i "/maxDepth:/d" $file


  if [ "$(awk '/  enable:/ {print $NF}' $file)" == "true" ]; then
    hideToc="false"
  else
    hideToc="true"
  fi
  sed -i '/^toc:/d ; /enable:/d' $file

  # Add new front matter fields
  sed -i "/^seo:/i\
  markdown:\n\
  toc:\n\
    hide: $hideToc\n\
    depth: $tocDepth\n\
  lastUpdateBlock:\n\
    hide: $lastUpdateBlock" $file

  echo "Done"
  # Front matter afer fix
  #echo "Front matter after fix:"
  #sed -n '/^---$/,/^---$/p' $file
  echo

done
echo
