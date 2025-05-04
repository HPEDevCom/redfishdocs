#!/usr/bin/bash
#
# This script updates Redocly/Workflows front matter
# into Reunite/Realm front matter.
#
#  ToDo:
#  - Investigate the insertion breadcrumbs with decent prefix, and not just the label
#
# Version 0.61

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/* -not -path -not -path */.github/*" -not -path "*/README.md")
#mdFileList="$rootDir/docs/redfishservices/ilos/supplementDocuments/managingUsers.md" 

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
    hide: $lastUpdateBlock
  breadcrumbs:
    hide: true" $file

  echo "Done"
  echo

done
echo
