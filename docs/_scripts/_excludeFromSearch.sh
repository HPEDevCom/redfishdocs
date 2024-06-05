#!/usr/bin/bash

# Version 0.1

# This script must be called/launched by _script_wrapper.sh

# This script excludes from the Redocly search engine all
# auto-generated files prior to the iLO firmware version
# in process.

# The overall goal is to minimize the list of found locations
# for a given searched string. 

# As an example, if $ilogen=6 and $iLOFwVersion=1.40, then,
# all iLO 6 auto-generated files with a version less than 1.40
# and only those files will be excluded of the Redocly search engine.

# Variables
excludeKeyword="excludeFromSearch"
excludeString="${excludeKeyword}: true"

# Get list of files to process
cd ${RepoLocation}/docs/redfishServices/ilos/${iLOGen}/

allDirs=$(ls -d */)
unset fileList
for d in $allDirs ; do
    if [ "$d" \< "$(basename $WorkingDirectory)" ] ; then
        fileList="$fileList ${d}${iLOGen}*md" 
    fi
done

# Remove lines containing "excludeFromSearch" if any
sed -i -e "/${excludeKeyword}/d" $fileList

# Insert ${excludeString} line after line 1 (---)
sed -i -e "2i${excludeString}" $fileList
