#!/bin/bash

#  RESTful Interface Tool Sample Script for HPE iLO Products      #
#  Copyright 2014, 2024 Hewlett Packard Enterprise Development LP #

# Description: This is a sample bash script to retrieve the       #
# IML/IEL/SL logs in JSON format.

# NOTES:                                                           #
#        * This script is an adaptation of                        #
#        https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_iLO_Log.sh
#
#        * The iLOrest serverlog command documentation is at:     #
#          https://servermanagementportal.ext.hpe.com/docs/redfishclients/ilorest-userguide/ilocommands/#serverlogs-command


#        Firmware support information for this script:            #
#            iLO 6 - All versions                                 #
#            iLO 5 - All versions                                 #

# version: fdz-0.31

# Variables
iLOrest="ilorest --nologo" 

# Functions
runLocal(){
  for l in IEL IML SL ; do
      echo -e -n "Retrieving local ${l} into ${l}log.json ..."
      # To use in-band/local management In HighSecurity/FIPS modes,
      # need to be root/Administrator and
      # need to provide creds for each command 
      $iLOrest serverlogs --selectlog=IEL -f ${l}log.json --user $1 --password $2 > /dev/null
      $iLOrest logout > /dev/null
      echo "Done" 
  done
  
}

runRemote(){
  $iLOrest login $1 -u $2 -p $3 > /dev/null
  for l in IEL IML SL ; do
      echo -e -n "Retrieving ${l} from $1 into ${l}log.json ..."   
      $iLOrest serverlogs --selectlog=$l -f ${l}log.json > /dev/null
      echo "Done"
  done
  $iLOrest logout > /dev/null
}

error(){
  echo "Usage:"
  echo        "remote: Get_iLO_Log.sh <iLO ip> <iLO username>  <iLO password>"
  echo        "local:  Get_iLO_Log.sh"
}

# Main
if [ "$#" -eq "3" ]
then 
  runRemote "$1" "$2" "$3"
elif [ "$#" -eq "2" ]
then
  runLocal "$1" "$2"
else
  echo -e "Wrong number of arguments."
  error
  exit 1
fi
