#!/usr/bin/bash
#
# This script updates Redocly/Workflows internal links/fragments like:
# [text](/docs/path/{{process.env.VAR}}/#fragment)
# to the new format:
# {% link-internal href=concat("/docs/path/", $env.PUBLIC_VAR, "/#fragment",) %} text {% /link-internal %}
#
# Version 0.1

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

#mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md" -not -path "*/.github/*")
mdFileList="$rootDir/docs/internallinks.md" 

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null

  # For each line containing internal links with env variables
  # Insert a newline just before `[` chars
  # and may be print a message to 
  # re-run a second time to process those lines
  # and skip the rest of the file.

  # Insert a newline just before `[` chars when this char is not the first char of the line
  sed 's/ \(\[.*\](.*)\)/\n\1/g' $file
  

  # Extract text between brackets
  #grep -o "\[.*\]" $file | tr -d '[]'

  
  echo -e "Done \n"
done
echo