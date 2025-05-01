#!/usr/bin/bash
#
# This script updates Redocly/Workflows internal links/fragments like:
# [text](/docs/path/{{process.env.VAR}}/#fragment)
# to the new format:
# {% link-internal href=concat("/docs/path/", $env.PUBLIC_VAR, "/#fragment",) %} text {% /link-internal %}
#
# Version 0.23

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

#mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md" -not -path "*/.github/*")
mdFileList="$rootDir/docs/internallinks.md ../redfishServices/ilos/supplementDocuments/tfa.md ../redfishServices/ilos/supplementDocuments/backupAndRestore.md ../redfishServices/ilos/supplementDocuments/logServices.md" 

# Example of a target string:
target='"/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "/logservicecollection'


for file in $mdFileList
do
  echo "Processing file $file"
  dos2unix $file &> /dev/null

  if grep -q "^[ ]\+\[.*LATEST.*)" $file; then
    echo -e "***Warning***: file contains spaces before the link. Need to process it manually.\n"
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
  for l in "${lineList[@]}" ; do
    echo -e "\tProcessing array element: $l ********\n"

    # Extract the link text and remove the asterisks
    linkText="$(echo $l | grep -o "\[.*\]" | tr -d '[]' | tr '*' ' ')"
    #echo -e "\tLink text: $linkText\n"
    
    # Extract the link path
    linkPath="$(echo $l | grep -o "(.*LATEST.*)" | tr -d '()')"
    #echo -e "\tLink path: $linkPath\n"
    # Move variables into new format
    linkPath="$(echo $linkPath | sed 's/{{process\.env\./$env.PUBLIC_/g')"
    linkPath="$(echo $linkPath | tr -d })"

    # Extract the path prefix before first variable
    # Something like "/docs/redfishservices/ilos/"
    prefix="$(echo ${linkPath%%\$env.*})"
    #echo -e "\tPrefix: $prefix\n"

    # Extract the path suffix after first variable,
    # and remove "$env.". It will be added back later.
    suffix="\$$(echo ${linkPath#*\$})"
    suffix="$(echo $suffix | sed 's/\$env\.//g')"
    #echo -e "\tSuffix: $suffix\n"

    # Remove directory separators from the suffix
    # and place result into an array
    suffixArray=($(echo $suffix | tr '/' ' '))
    #echo -e "\tSuffix array: ${suffixArray[@]}\n"

    # Replace '_' with '*' when located between two uppercase letters
    suffixArray=($(echo ${suffixArray[@]} | sed -E 's/([A-Z])_([A-Z])/\1*\2/g'))
    echo -e "\tSuffix array: ${suffixArray[@]}\n"
    
    
    # Create the new link format
    #newLink="{% link-internal href=concat(\"$path\", \$env.$envVar, \"/$fragment\") %} $linkText {% /link-internal %}"
    
    # Replace the old link with the new one in the file
    #sed -i "s|$l|$newLink|g" $file
    echo
  done
  
  echo -e "Done \n"
done
echo