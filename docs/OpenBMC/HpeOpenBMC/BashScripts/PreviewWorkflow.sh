#!/usr/bin/bash

# version: 0.23
#
# ToDo:
#     - TBD

# Variables
NUMARGS=2
NUMMINARGS=1
BrowserPath="/cygdrive/c/Program Files/BraveSoftware/Brave-Browser/Application"
Browser="./brave.exe"
PreviewCreds='preview:iLO6RefDocPreview!'
PreviewURL="https://${PreviewCreds}@preview.redoc.ly/redfish"
Branch="$1"
SubURI="$2"

# Functions
function Usage() {
  echo -e "\nUsage: $0 GitBranch [SubURI]\n"
  echo -e "Examples:\n\t${0##/*/} iLO7RedfishService"
  echo -e "\t${0##/*/} iLO7RedfishService /docs/redfishservices/ilos/ilo7"
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

PreviewURL="${PreviewURL}/${Branch}${SubURI}"
echo -e "Preview URL:\n\t${PreviewURL}"

# Get the ball rolling
cd "$(cygpath -u "${BrowserPath}")"
$Browser ${PreviewURL}


