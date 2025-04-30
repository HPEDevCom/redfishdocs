#!/usr/bin/bash
#
# This script updates Redocly/Workflows internal links/fragments like:
# [text](/docs/path/{{process.env.VAR}}/#fragment)
# to the new format:
# {% link-internal href=concat("/docs/path/", $env.PUBLIC_VAR, "/#fragment",) %} text {% /link-internal %}
#
# Version 0.2

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

#mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md" -not -path "*/.github/*")
mdFileList="$rootDir/docs/internallinks.md ../redfishServices/ilos/supplementDocuments/tfa.md ../redfishServices/ilos/supplementDocuments/backupAndRestore.md ../redfishServices/ilos/supplementDocuments/logServices.md" 

for file in $mdFileList
do
  echo "Processing file $file"
  dos2unix $file &> /dev/null

  if grep -q "^[ ]\+\[.*LATEST.*)" $file; then
    echo "***Warning**: file contains spaces before the link. Need to process it manually."
  fi  

  # Insert a newline just before `[` chars when this char is not the first char of the line
  sed -i 's/ \(\[.*\](.*LATEST.*)\)/\n\1/g' $file
  
  # Insert a newline after the last `)` char of the internal link.
  # Don't forget to remove the trailing space.
  sed -i 's/^\(\[.*\](.*LATEST.*)\) /\1\n/g' $file

  # Create an array with the internal links lines.
  # Elements are wrapped into double quotes.
  lineList=($(awk '/^\[.*\](.*LATEST.*)$/ {print "\"" $0 "\"" }' $file))

  # Transform the space separators into commas and spaces into asterisks.
  lineList=($(echo ${lineList[@]} | sed 's/" "/","/g' | tr ' ' '*'))

  # Remove the double quotes and transform the commas into spaces.
  lineList=($(echo ${lineList[@]} | tr ',' ' ' | tr -d \"))
  
  # Process each line containing LATEST var
  #for l in "${lineList[@]}" ; do
    #echo -e "\tProcessing array element: $l ********\n"
    # Extract the link text
    #linkText="$(echo $l | grep -o "\[.*\]" | tr -d '[]')"
    #echo -e "\tLink text: $linkText\n\n"
    # Extract the link path
    #linkPath="$(echo $l | grep -o "(.*LATEST.*)" | tr -d '()')"
    
    # Extract the fragment
    #fragment="$(echo $linkPath | grep -o "#.*" | tr -d '#')"
    
    # Extract the path without the fragment
    #path="$(echo $linkPath | sed 's/#.*//')"
    
    # Extract the env var name
    #envVar="$(echo $path | grep -o "{{process.env.VAR}}" | tr -d '{}')"
    
    # Create the new link format
    #newLink="{% link-internal href=concat(\"$path\", \$env.$envVar, \"/$fragment\") %} $linkText {% /link-internal %}"
    
    # Replace the old link with the new one in the file
    #sed -i "s|$l|$newLink|g" $file
    #echo
  #done
  #grep -o "\[.*\]" $file | tr -d '[]'

  
  echo -e "Done \n"
done
echo