#!/usr/bin/bash

# This script adapts the Slate-markdown formated resourcedefns.md file 
# into a Redocly-markdown formated file. 

# Requirements:
#        * Input files corresponding to the split of the _raw_iloG_resourcedefnsVVV.md file
#          into several smaller files. The _raw_iloG_resourcedefnsVVV.md is too big for Redocly !

# This script MUST be launched by _script_wrapper.sh, which contains 
# configuration variables.

# ToDo:
#        * Test that the $InputFiles variable is not empty !


# Local Variables
InputFiles=$(ls ${WorkingDirectory}/_${iLOGen}_resourcedefns${iLOVersion}.*)
if [ "${InputFiles}X" == "X" ] ; then
   echo "${0}: ERROR - Could not find input files. Exiting."
   exit 9
fi
unset OutputFiles

# For each Slate-markdown file, convert it to Redocly-markdown

# Adapt the maxTocDepth if needed
for file in $InputFiles ; do
  ResourceType=${file#*.}
  case $file in
      *bios)
        maxTocDepth=3
        ;;
      *)
        maxTocDepth=2
        ;;
  esac
    
  echo -n "  Converting $ResourceType to Redocly MD ...  "
  OutputFile="${WorkingDirectory}/${iLOGen}_${ResourceType}_resourcedefns${iLOVersion}.md"
  OutputFiles="${OutputFiles} $(basename ${OutputFile})"

  # The following SEO variable contains Redocly front end matter directives
  SEO="---
seo:
  title: ${ResourceType^} resource definitions
toc:
  enable: true
  maxDepth: $maxTocDepth
disableLastModified: false
---\n
"
  Header1Title="# ${ResourceType^} resource definitions of ${ilogen} v${iLOFwVersion}\n\n"
  FileDescription="For each data type provided by the HPE ilO Redfish service, \
find below its description including the list of possible instances (URIs), \
links to related other resources, described properties and many other details. \
\n\n\
Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.\n\n"

  # Output file creation with seo, title and description.
  echo -e "${SEO}${Header1Title}${FileDescription}" > $OutputFile

  # The following sed commands perform:
  #    1. Replace triple back-ticks with single back-ticks
  #    2. Insert an empty line after header3 lines
  #    3. Remove the .vX_Y_Z.DataType suffix of header2 lines and insert a blank line
  #    4. Escape italics (_) chars in href text. Ex: [AccountService.v1\_5\_0.AccountService]
  #    5. Remove of "-version-resourcetype" in fragments: (#accountservice) to get a nicer/cleaner TOC
  #    6. Remove "\..*Collection" suffix in header2 lines: "## BootOptionCollection.BootOptionCollection" becomes "## BootOptionColletion"
  #    7. Insert a blank line before "Resource Instances"
  #    8. Insert a blank line before "is an array containing elements of:"
  #    9. Fix fragment in tables like "Links to Other Resources" tables: "|`.*`|Collection of [.*](#.*)|"
  sed -e 's/```/`/g'                                                                    \
      -e 's/^\(### .*\)$/\1\n/'                                                         \
      -e 's/^\(## .*\)\.v.*\..*$/\1\n/'                                                 \
      -e 's/\[\(.*\.v.\)_\(.*\)_\(.*\..*\)\]\(.*\)$/\[\1\\_\2\\_\3\]\4/'                \
      -e 's/(\(#.*\)-v.*-.*)/(\1)/'                                                     \
      -e 's/^\(## .*Collection\)\..*Collection$/\1/'                                    \
      -e '/### Resource Instances/i\\'                                                  \
      -e '/is an array containing elements of:/i\\'                                     \
      $file >> $OutputFile
  echo "Done."
done

# Fix URIs in "Links to other Resources" tables.
cd $WorkingDirectory

# Create a TmpFile with records: filename collectionName
awk -F.  '/`@odata.type: "#.*Collection\..*"`/ {print FILENAME,  $NF}' $OutputFiles  | \
sed -e 's/\(.*\)Collection../\1/'                                                    | \
sort -u                                                                                \
> $TmpFile
collectionList=$(cut -d " " -f 2 ${TmpFile})

# Create TmpFile2 with records: filename resourceName
awk     '/^## [A-Z].*$/ && !/Collection/ {print FILENAME, $NF}' $OutputFiles        | \
sort -u                                                                               \
> $TmpFile2
noncollectionList=$(cut -d " " -f 2 ${TmpFile2})

for file in $OutputFiles ; do
  echo -e "\n\n*******************************************"
  echo "Fixing 'Links to other Resources' table in ${file}"

  echo -e "  ******* Processing Collections *********"
  for collection in $collectionList ; do
    echo "  Processing ${collection}Collection"
    collectionIsIn=$(awk '/ '${collection}$'/ {print $1}' $TmpFile | sort -u)
    # Replace string 'Collection of [${collection}](#collection)' with 'Collection of [.*](../filename/#collectioncollection'   
    sed -i -e "s?\(^|.*|Collection of \[${collection}\](\)\(#.*\))|?\1../${collectionIsIn%.*}/\2collection)|?" $file &> /dev/null
    ret="$?"
    if [ ! "${ret}" == "0" ] ; then
       echo "Problem with sed command"
       echo -e "Dumping relevant variables.\n\tcollection: ${collection}\n\tcollectionIsIn: ${collectionIsIn%.*}\n\tfile: ${file}\n"
       echo "Exiting."
       break 2
    fi
  done

  echo -e "\n  ************ Processing non Collection resources *****************"
  for resource in $noncollectionList ; do
    echo "  Processing ${resource} resource"
    resourceIsIn=$(awk '/ '${resource}$'/ {print $1}' $TmpFile2 | sort -u)
    # Replace string '[${resource}](#${resource})' with '[${resource}](../filename/#resource'  
    sed -i -e "s?\(^|.*|\[${resource}\](\)\(#.*\))|?\1../${resourceIsIn%.*}/\2)|?" $file &> /dev/null
    ret="$?"
    if [ ! "${ret}" == "0" ] ; then
       echo "Problem with sed command"
       echo -e "Dumping relevant variables.\n\tcollection: ${collection}\n\tcollectionIsIn: ${collectionIsIn%.*}\n\tfile: ${file}\n"
       echo "Exiting."
       break 2
    fi
  done
  echo  "Done"
  echo -e "*******************************************\n\n"                   
  done

echo "Cleanup" 
rm $TmpFile $TmpFile2 &> /dev/null

# Need to investigate how to return an exit code if problem above...
#if [ ! "${ret}X" == X ] ; then
#   exit 3
#fi
#exit 0


