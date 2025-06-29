#!/usr/bin/bash
#
# This script updates Redocly/Workflows tabbed examples
# into Reunite/Realm tabbed examples.
#
# Version 0.4

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md" -not -path "*/.github/*")
#mdFileList="$rootDir/docs/redfishservices/ilos/supplementDocuments/managingUsers.md"

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null

# No need to process if "{% tab %}" already exists
  if grep -q "{% tab label=" $file; then
    echo -e "Already processed. Double check for manual process\n"
    continue
  fi

  # Add label to single examples
  sed -i -E 's/^( *)```([[:alpha:]]+)[ ]*$/\1```\2 Example/' $file

  # Wrap all examples with markdoc tab tag
  sed -i -E 's/^( *)```([[:alpha:]]+) ([[:alnum:] ()]+)/\1{% tab label="\3" %}\n\1```\2 \3/'  $file
  sed -i -E '/```$/a\
  {% \/tab %}

  ' $file

  # Insert empty line after tab tag and before closing tag
  sed -i -E 's/\{% tab label=(.+)$/{% tab label=\1\n/' $file
  sed -i -E '/\{% \/tab %}/i\
  
  ' $file

  # Wrap all examples with markdoc tabs tag
  sed -i -E '/\{% tab label=/i\
  {% tabs %}
  ' $file
  
  sed -i -E '/\{% \/tab %}/a\
  {% \/tabs %}
  ' $file

  # Remove empty lines after /tabs
  sed -i '/{% \/tabs %}/{N;s/\n$//;}' $file

  # Remove consecutive "/tabs" "tabs" lines
  sed -i -E '/\{% \/tabs /{N;/\{% tabs %}/d}' $file
  
  echo -e "Done \n"
done
echo