#!/usr/bin/bash

# This script adapts the Slate-markdown formated resmap.md (autogenerated) file 
# into a Redocly-markdown formated file. The main purpose is to:
#  * Prepend the Redocly front matter section (toc...)
#  * Change fragments: The rendered Slate document is a single html document.
#                      The Redocly document is composed of several html files. Hence fragments mus be re-aligned.

# Requirements: 
# * Input file ($resmapFile=_raw_iloG_resmap.md) automatically generated using the tools/make.ps1 script.

# This script MUST be launched by _script_wrapper.sh, which contains 
# suitable configuration variables.

# ToDo:
#     * test return codes of important commands (i.e. sed)

# version: 0.5

# Local Variables
ResourceFiles=$(ls ${WorkingDirectory}/${iLOGen}_*_resourcedef*.md)
InputFile=$ResmapFile
OutputFile="${WorkingDirectory}/${iLOGen}_resmap${iLOVersion}.md"

# Remove CR chars in InputFile if any
dos2unix $InputFile

# The following SEO variable contains Redocly front-end matter directives
SEO="---
seo:
  title: ${ilogen} version ${iLOFwVersion} Resource map
toc:
  enable: false
disableLastModified: false
---\n
"
Header1Title="# Resource map of ${ilogen} v${iLOFwVersion}\n\n"
FileDescription="The following table lists HPE iLO Redfish resource types and their associated URIs.\
\n\n\
Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.\n\n"

# The following variable lists duplicated types pointing to the same URI in the resourcedefns file.
# We will have to keep only one URI.
ExcludeTypeList="JsonSchemaFile"

# OutputFile creation with seo, title and description strings.
echo -e "${SEO}${Header1Title}${FileDescription}" > $OutputFile
cat $InputFile >> $OutputFile

# For each resource type, find its resource definitions file:
for type in $TypeList ; do
  echo -e "  Processing $type"
 
  if [ $? != 0 ] ; then
    echo "Problem with ${type}. Discarding"
    continue
  fi

  # find where is described this type of resource.
  TmpVar=$(grep -l "^## ${type}$" $ResourceFiles)

  # if $type is present in the ExcludeTypeList, because it is listed
  # several times as a "## type" header, then we need to select
  # only one file (i.e. the first one). If we don't do that, the following 
  # basename command fails.
  if [[ "$ExcludeTypeList" =~ "$type"  ]] ; then
     TmpVar=$(grep -l "^## ${type}$" $ResourceFiles | head -1)
     echo -e "${type} is mentioned in several files. Selecting the first one:\n $TmpVar "
  fi

  IsIn=$(basename -s ".md" $TmpVar 2>/dev/null)
  if [ $? != 0 ] ; then
    echo -e "Problem with ${type}. Discarding.\n${TmpVar}"
    continue
  fi


#  The following sed command modifies links/fragments pointing to the resource definition files:
# 1. from [ServiceRoot](#serviceroot-v1_13_0-serviceroot) to [ServiceRoot](../${iLOGen}_other_resourcedefns105/#serviceroot).
# 2. from: "|Collection of [Certificate](#certificate-v1.0.0_certificate)" to "|Collection of [Certificate](#certificatecollection)"

sed -i -e "s?\(|\[${type}\]\)(\(#.*\)-\(v.*\)-\(.*\))?\1(../${IsIn}/\2)?"                            \
       -e "s?\(|Collection of \[${type}\]\)(\(#.*\)-\(v.*\)-\(.*\))?\1(../${IsIn}/\2collection)?"    \
    $OutputFile
done

# Fix Oem/Hpe collections that don't follow the schema/schemacollection paradigm.
sed -i -e '1,$s?/#hpeusbportcollection)|$?/#hpeusbportscollection)|?g ;
           1,$s?/#hpecomponentupdatetaskcollection)|$?/#hpecomponentupdatetaskqueuecollection)|?g ;
           1,$s?/#hpeusbdevicecollection)|$?/#hpeusbdevicescollection)|?g ;
           1,$s?/#hpesnmpusercollection)|?/#hpesnmpuserscollection)|?g' $OutputFile

echo -e "Cleanup: Removing:\n"
echo -e "\t$ResourcesFile"
rm $ResourcesFile #&> /dev/null

