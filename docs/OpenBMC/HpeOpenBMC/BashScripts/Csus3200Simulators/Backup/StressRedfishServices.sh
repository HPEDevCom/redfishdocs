#!/usr/bin/bash

# This script is a quick and dirty way to stress several Redfish services.
# It is primarily intended to verify Jupyter students CSUS 3200 simulators.
# 
# It can be run from anywhere with an Internet connection.

# Version 0.11

# ToDo:
#      * Test return code from the VerifySimulatorConnectivity.sh
#      * Print the number of processes processed.
# Variables
source InfraConfig.sh
CURL="curl --insecure --silent -u ${RmcUser}:${RmcPasswd}"

# Functions
Requests () {
    URIs="Managers/RMC Systems/Partition0 Systems/Partition1 Systems/Partition0/Storage Systems/Partition1/Storage"
    #URIs="Systems/Partition1/Storage"
    for u in $URIs ; do
      $CURL "https://${IP_Simul}:${RedfishMockupPortPrefix}${Id}/redfish/v1/${u}"        &>/dev/null
    done
}

# Verify it is possible to access simulators
#
echo "There are  $(($EndId - $StartId + 1)) students to process"
VerifySimulatorsConnectivity.sh &> /dev/null
ret=$?
if [ "$ret" -ne "0"  ] ; then
  echo "Problem reaching some simulators. Exiting"
  exit 1
fi

# Load simulators in background with Redfish requests
for Id in $(seq $StartId $EndId) ; do
  echo -n "Processing student${Id} "
  Requests &
  pids[$Id]=$!
  echo "in process ${pids[-1]}"
done
echo

# Wait background requests to be finished.
let i=0
for pid in "${pids[@]}"; do
    wait $pid
    echo "Process $pid is over with status $?"
    let i++
done

echo "$i processes processed"


