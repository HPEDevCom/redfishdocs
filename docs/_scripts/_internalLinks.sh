#!/usr/bin/bash
#
# This script updates Redocly/Workflows internal links/fragments like:
# [text](/docs/path/{{process.env.VAR}}/#fragment)
# to the new format:
# {% link-internal href=concat("/docs/path/", $env.PUBLIC_VAR, "/#fragment",) %} text {% /link-internal %}
#
# Version 0.27

 
rootDir="/Git-Repo/ProtoRedfishDocs"
cd $rootDir/docs/_scripts

#mdFileList=$(find $rootDir -type f -name "*.md" -not -path "*/node_modules/*" -not -path "*/.git/*" -not -path "*/README.md" -not -path "*/.github/*")
mdFileList="$rootDir/docs/internallinks.md ../redfishServices/ilos/supplementDocuments/tfa.md ../redfishServices/ilos/supplementDocuments/backupAndRestore.md ../redfishServices/ilos/supplementDocuments/logServices.md"
#mdFileList="../redfishServices/ilos/supplementDocuments/backupAndRestore.md ../redfishServices/ilos/supplementDocuments/logServices.md" 

# Example of a target string:
target='"/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "/logservicecollection'


for file in $mdFileList
do
  echo "Processing file $file"
  dos2unix $file &> /dev/null

  if grep -q "^[ ]\+\[.*LATEST.*)" $file; then
    echo -e "***Warning***: file contains spaces before the link. Need to process it manually."
  fi  

  # Insert a newline just before `[` chars when this char is not the first char of the line
  sed -i 's/ \(\[.*\](.*LATEST.*)\)/\n\1/g' $file
  
  # Insert a newline after the last `)` char of the internal link.
  # Don't forget to remove the trailing space.
  sed -i 's/^\(\[.*\](.*LATEST.*)\) /\1\n/g' $file

  # Create an array with the internal links lines.
  # Array elements are wrapped into double quotes.
  lineList=($(awk '/^\[.*\](.*LATEST.*)$/ {print "\"" $0 "\"" }' $file))

  # Transform the space separators into commas and spaces into asterisks.
  lineList=($(echo ${lineList[@]} | sed 's/" "/","/g' | tr ' ' '*'))

  # Remove the double quotes and transform the commas into spaces.
  lineList=($(echo ${lineList[@]} | tr ',' ' ' | tr -d \"))

  # Process each element of the array 
  for l in "${lineList[@]}" ; do
    #echo -e "\tProcessing array element: $l ********\n"

    # Extract the link text and remove the asterisks
    linkText="$(echo $l | grep -o "\[.*\]" | tr -d '[]' | tr '*' ' ')"
    #echo -e "\tLink text: $linkText\n"
    
    # Remove line trailing dot if any
    l="$(echo $l | sed 's/\.$//g')"

    echo -e "\tLink with fragment: $l\n"
    # Extract the fragment, if any
    fragment="$(echo $l | grep -o '#.*$' | tr -d ')')"
    oldFragment="$fragment"
    echo -e "\tFragment: $fragment"

    # Wrap the fragment with double quotes
    if [ -n "$fragment" ]; then
      fragment="$(echo $fragment | sed 's/#\(.*\)/\"#\1\"/g')"
      echo -e "\tWrapped Fragment: $fragment\n"
    fi

    # If the fragment contains 'oemhpe', insert a dot before after oem and after hpe
    if [[ $fragment == *oemhpe* ]]; then
      fragment="$(echo $fragment | sed 's/oemhpe/oem.hpe./g')"
      echo -e "\tOem Fragment: $fragment\n"
    fi

    # If fragment is not empty, remove it from the link
    if [ -n "$oldFragment" ]; then
      l="$(echo $l | sed "s|$oldFragment||g")"
    fi
    echo -e "\tLink without fragment: $l\n"

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
    #echo -e "\tSuffix array: ${suffixArray[@]}\n"
    
    # Insert a space before the _lower case string and after it
    suffixArray=($(echo ${suffixArray[@]} | sed -E 's/VERSION(_.*)PUBLIC/VERSION \1 PUBLIC/g'))
    #echo -e "\tSuffix array: ${suffixArray[@]}\n"

    # Replace * back into _
    suffixArray=($(echo ${suffixArray[@]} | sed 's/\*/_/g'))
    #echo -e "\tSuffix array: ${suffixArray[@]}\n"

    # Prepend "$env." before each "PUBLIC" string
    suffixArray=($(echo ${suffixArray[@]} | sed 's/PUBLIC/\$env.PUBLIC/g'))
    #echo -e "\tSuffix array: ${suffixArray[@]}\n"

    # Insert ', "/", between variables'
    suffixArray=($(echo ${suffixArray[@]} | sed 's?VERSION \$env?VERSION, "/", \$env?g'))
    #echo -e "\tSuffix array: ${suffixArray[@]}\n"
    
    # Enclose the remaining '_' with double quotes
    suffixArray=($(echo ${suffixArray[@]} | sed 's/VERSION_/VERSION, \"_\", /g'))
    #echo -e "\tSuffix array: ${suffixArray[@]}\n"
    
    # Extract "_string"
    string="$(echo ${suffixArray[@]} | sed -n 's/.*VERSION \(_.*\) \$env.*/\1/p')"
    #echo -e "\tString: $string\n"
    
    # Wrap "_string " with double quotes
    suffixArray=($(echo ${suffixArray[@]} | sed 's/VERSION _\(.*\) \$/VERSION, \"_\1\", \$/g'))
    #echo -e "\tSuffix array: ${suffixArray[@]}\n"

    # Create the new link when fragment
    if [ -n "$fragment" ]; then
      newLink="{% link-internal href=concat(\"$prefix\", ${suffixArray[@]}, ${fragment}) %} $linkText {% /link-internal %}"
    else
      newLink="{% link-internal href=concat(\"$prefix\", ${suffixArray[@]}) %} $linkText {% /link-internal %}"
    fi
    echo -e "\tnewLink: $newLink\n"
    #set -x
    # Replace the old link with the new one in the file
    sed -i "s|^\[$linkText\](.*LATEST.*${string}.*)|$newLink|g" $file
    #set +x
  done
  
  echo -e "Done \n"
done
echo