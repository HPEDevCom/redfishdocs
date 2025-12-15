#!/usr/bin/bash

# Version 0.2

# ToDo:
#       * nc -vz is a little bit light to test the validity of a remote server.
#         May be investigate with something like:
#          echo -e "GET / HTTP/1.1\r\nHost: 10.85.235.132\r\n\r\n" | ncat 10.85.235.132 48790
#          echo -e "GET /redfish/v1 HTTP/1.1\r\nHost: 10.85.235.132\r\n\r\n" | ncat 10.85.235.132 47790
#  
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


