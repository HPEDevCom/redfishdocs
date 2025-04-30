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
mdFileList="$rootDir/docs/internallinks.md ../redfishServices/ilos/supplementDocuments/tfa.md ../redfishServices/ilos/supplementDocuments/backupAndRestore.md ../redfishServices/ilos/supplementDocuments/logServices.md" 

for file in $mdFileList
do
  echo Processing $file
  dos2unix $file &> /dev/null

  if grep -q "^[ ]\+\[.*LATEST.*)" $file; then
    echo "***Warning**: file contains spaces before the link. Need to process it manually."
  fi  

  # Insert a newline just before `[` chars when this char is not the first char of the line
  sed -i 's/ \(\[.*\](.*LATEST.*)\)/\n\1/g' $file
  
  # Insert a newline after the last `)` char of the internal link.
  # Don't forget to remove the trailing space.
  sed -i 's/^\(\[.*\](.*LATEST.*)\) /\1\n/g' $file

  # Create a list of the lines containing LATEST
  #grep '^\[.*\](.*LATEST.*)$' $file
  # Process each line containing LATEST var
  #grep -o "\[.*\]" $file | tr -d '[]'

  
  echo -e "Done \n"
done
echo