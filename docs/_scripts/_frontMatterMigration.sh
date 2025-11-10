#!/usr/bin/bash
#
# This script updates Redocly/Workflows front matter
# into Reunite/Realm front matter.
#
#  ToDo:
#  - Investigate the insertion breadcrumbs with decent prefix, and not just the label
#  - Should be incorporated in _resourcedefns.sh and _resmap.sh
#
# Version 0.66

 
#RepoLocation="/Git-Repo/ProtoRedfishDocs"
RepoLocation="/cygdrive/c/Git-repo/CloneOfPrivate-hpe-ilo-redocly"
cd $RepoLocation/docs/_scripts

#mdFileList=$(find $RepoLocation -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/* -not -path -not -path */.github/*" -not -path "*/README.md")
#mdFileList="$RepoLocation/docs/redfishServices/ilos/supplementDocuments/securityService.md $RepoLocation/docs/redfishservices/ilos/ilo7/ilo7_111/ilo7_bios_resourcedefns111.md"
mdFileList="$*"

for file in $mdFileList
do
  echo "Processing $file ..."
  dos2unix $file &> /dev/null
  
  # Replace `exclude` into `excludeFromSearch`
  sed -i 's/^exclude:/excludeFromSearch:/g' $file
  
  # Check if processing is really needed
  if grep -q "^markdown:" $file; then
    echo -e "No processing needed.\n"
    continue
  fi

  # Capture and cleanup various front matter fields
  lastUpdateBlock="$(awk '/^disableLastModified:/ {print $NF}' $file)"
  if [ -z "$lastUpdateBlock" ]; then
    lastUpdateBlock="false"
  fi
  sed -i "/^disableLastModified:/d" $file

  tocDepth="$(awk '/maxDepth:/ {print $NF}' $file)"
  if [ -z "$tocDepth" ]; then
    tocDepth="3"
  fi
  sed -i "/maxDepth:/d" $file

  if [ "$(awk '/  enable:/ {print $NF}' $file)" == "true" ]; then
    hideToc="false"
  else
    hideToc="true"
  fi
  sed -i '/^toc:/d ; /enable:/d' $file

  # Add new front matter fields.
  # Show breadcrumbs only for reference documents.

  if [[ $file =~ ilo[5-9] ]] ; then
  sed -i "/^seo:/i\
  markdown:\n\
  toc:\n\
    hide: $hideToc\n\
    depth: $tocDepth\n\
  lastUpdateBlock:\n\
    hide: $lastUpdateBlock\n\
breadcrumbs:\n\
  hide: false" $file
  else
  sed -i "/^seo:/i\
  markdown:\n\
  toc:\n\
    hide: $hideToc\n\
    depth: $tocDepth\n\
  lastUpdateBlock:\n\
    hide: $lastUpdateBlock\n\
breadcrumbs:\n\
  hide: true" $file
  fi

  echo "Done"
  echo
  
done
echo
