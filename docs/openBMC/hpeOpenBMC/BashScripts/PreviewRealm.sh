#!/usr/bin/bash

# version: 0.22
#
# ToDo:
#     - TBD

# Variables
NUMARGS=2
NUMMINARGS=1
BrowserPath="/cygdrive/c/Program Files/BraveSoftware/Brave-Browser/Application"
Browser="./brave.exe"
#PreviewCreds='preview:iLO6RefDocPreview!'
# https://servermanagementportal--migrate-ilo7-113.preview.redocly.app/
PreviewURL="https://servermanagementportal--"
PreviewURLSuffix="preview.redocly.app"
Branch="$1"
SubURI="$2"

# Functions
function Usage() {
  echo -e "\nUsage: $0 GitBranch [SubURI]\n"
  echo -e "Examples:\n\t${0##/*/} migrate-ilo7-113"
  echo -e "\t${0##/*/} migrate-ilo7-113 /docs/redfishservices/ilos/ilo7/ilo7_113/ilo7_manager_resourcedefns113"

}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

PreviewURL="${PreviewURL}${Branch}.${PreviewURLSuffix}${SubURI}"
echo -e "Preview URL:\n\t${PreviewURL}"

# Get the ball rolling
cd "$(cygpath -u "${BrowserPath}")"
$Browser ${PreviewURL}


