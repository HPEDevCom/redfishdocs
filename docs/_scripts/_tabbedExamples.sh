#!/usr/bin/bash
#
# This script updates Redocly/Workflows tabbed examples
# into Reunite/Realm tabbed examples.
#
# Version 0.1

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

#mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md -not -path */.github/*")
mdFileList="$rootDir/docs/redfishservices/ilos/supplementdocuments/securityService.md" 

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null

  # Wrap all examples with markdoc tab tag
  sed -i -E 's/```([[:alpha:]]+) ([[:alnum:] ]+)/{% tab label="\2" %}\n```\1 \2/'  $file
  sed -i -E '/```$/a\
  {% \/tab %}
  ' $file

  # Replace the placeholder with the original code block
  #sed -i 's/```label_placeholder/```/' $file

  echo -e "Done \n"
done
echo