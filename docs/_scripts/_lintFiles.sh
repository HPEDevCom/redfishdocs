#!/usr/bin/bash

# Version 0.1

# This script must be called/launched by _script_wrapper.sh

# This script attempts to fix the maximum 
# linting errors detected during the Redocly rendering process 
# in auto-generated files.

# The overall goal is to minimize the numer of
# Redocly linting errors. 

# The list of linting errors found by Redocly can be viewed with the
# following process:

#  * Log into Redocly: https://app.redocly.com/login
#  * In the Portals tabulation, select the
#    servermanagementportal.ext.hpe.com (https://app.redocly.com/org/hpe/portal/redfish)
#  * Select any build (Green or not)
#  * Search (CTRL-F) for string "linting"

# Variables

# Get list of files to process
cd ${RepoLocation}/docs/redfishServices/ilos/${iLOGen}/

allDirs=$(ls -d [^_]*/) # exclude _iloX_review
unset fileList
for d in $allDirs ; do
    # if $d is not (less than <) the processed firmware version
    # then add files in the file list
    if [ "$d" \< "$(basename $WorkingDirectory)" ] ; then
        fileList="$fileList ${d}${iLOGen}*md" 
    fi
done

# Process _iloX_r* special dirs like _iloX_review
allDirs=$(ls -d _ilo?_r*/)

for d in $allDirs ; do
    fileList="$fileList ${d}_${iLOGen}*md"
done

# Remove trailing spaces if any (MD009/no-trailing-spaces)
sed -i -e 's/ \{1,\}$//' $fileList

# Remove multiple consecutive blank lines (MD012/no-multiple-blanks)
sed -i -e '/^$/N;/^\n$/D' $fileList

# Make sure there is one blank line below headings (MD022/blanks-around-headings)
# sed -e '/^#\+/{N;/\n$/!s/$/\n/;}' $fileList 

# Make sure there is one blank line above headings (MD022/blanks-around-headings)
