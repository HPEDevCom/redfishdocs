#!/bin/bash
# 
# Given an internal generic link, this script will convert it into a Markdoc link
# with latest environment variables usable in the Redocly/Realm documentation, 
# by calling the `link-internal` or `link-external` Markdoc functions

# Example of output:
# {% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.virtualnicenabled") %} subsystem {% /link-internal %}
# property
# {% /link-internal %}

# version 0.3

# ToDo
#     * Better check of arguments

# Variables
NUMARGS=4
NUMMINARGS=4


# Functions
function Usage() {
  echo -e "\nUsage: $0 '[internal|external] [latest|supplied] /doc/redfishServices/ilos/iLOGen/iLOGen_iLOVersion/textiLOVersion#hash'\n 'some text'"
  echo -e "\nExample: \n${0##/*/} external supplied '/docs/redfishservices/ilos/ilo6/ilo6_163/ilo6_computersystem_resourcedefns163/#oemhpepoststate' 'Oem Hpe PostState'"
  echo -e "\nWith:"
  echo -e "internal: Link displays in the same browser tabulation\nexternal: Link displays in a new browser tabulation"
  echo -e "latest: latest firmware version of of latest iLO Gen"
  echo -e "supplied: latest firmware version of iLO Gen found in link"
}

# Arg verification
if [ $# -ne  $NUMARGS -a $# -ne $NUMMINARGS ] ; then
   Usage
   exit 1
fi

# Main
LINK_TYPE="$1"
ILOGEN="$2"
LINK="$3"
TEXT="$4"

# Extract the hash and insert dots if OEM extension
HASH=$(echo "$LINK" | sed -n 's/.*#\(.*\)/#\1/p')
HASH=$(echo "$HASH" | sed 's/oemhpe/oem.hpe./g')
#echo -e "Hash: $HASH"

# Extract the subsystem
SUBSYSTEM=$(echo "$LINK" | sed -n 's/.*\(_.*_\)resourcedefns.*$/\1/p')
#echo -e "Subsystem: $SUBSYSTEM\n"

case $ILOGEN in
  latest)
    OUTPUT="{% link-${LINK_TYPE} href=concat(\"/docs/redfishservices/ilos/\", \$env.PUBLIC_LATEST_ILO_GEN_VERSION, \"/\", \$env.PUBLIC_LATEST_ILO_GEN_VERSION, \"_\", \$env.PUBLIC_LATEST_FW_VERSION, \"/\", \$env.PUBLIC_LATEST_ILO_GEN_VERSION, \"${SUBSYSTEM}resourcedefns\", \$env.PUBLIC_LATEST_FW_VERSION, \"${HASH}\") %} ${TEXT} {% /link-${LINK_TYPE} %}"
    ;;
  supplied)
    # Extract iLO Generation
    iLO_Gen="$(echo $LINK | awk -F/ '{print $5}')"
    OUTPUT="{% link-${LINK_TYPE} href=concat(\"/docs/redfishservices/ilos/${iLO_Gen}/\", \"${iLO_Gen}_\", \$env.PUBLIC_LATEST_${iLO_Gen^^}_FW_VERSION, \"/\", \"${iLO_Gen}\", \"${SUBSYSTEM}resourcedefns\", \$env.PUBLIC_LATEST_${iLO_Gen^^}_FW_VERSION, \"${HASH}\") %} ${TEXT} {% /link-${LINK_TYPE} %}"
    ;;
  *)
    echo "ìLO Gen option should be \"latest\" or \"supplied\". Exiting"
    exit 1
    ;;
esac

echo -e "\n$OUTPUT"

exit 0