#!/usr/bin/bash

# Version 0.11

# This script can be run from anywhere with an Internet connection.
#
# Todo:
#     * Test nc return code and exit accordingly

# Variables
source InfraConfig.sh

echo "Verifying web servers are reachable"
for Id in $(seq $StartId $EndId) ; do
	echo -e "\tProcessing Student${Id}"
	echo -e -n "\t\t"
	nc -vz $IP_Simul ${RedfishMockupPortPrefix}${Id} |& grep Connect
	echo -e -n "\t\t"
	nc -vz $IP_Simul ${GuiPortPrefix}${Id}           |& grep Connect
done

exit 0


