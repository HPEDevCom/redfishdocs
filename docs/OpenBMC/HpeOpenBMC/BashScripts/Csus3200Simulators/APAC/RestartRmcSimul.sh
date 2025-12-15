#!/usr/bin/bash

# version 0.1 

# Restart RMC CSUS 3200 simulators

echo "Entering ${0}"
# Load configuration
echo -e "\tLoading configuration" 
source ./InfraConfig.sh
echo "Python venv activation"
python -m venv $Venv
source ${Venv}/bin/activate

cd $RootDir


# Kill Web servers
echo -e -n "\nStopping simulator web servers."
for Id in $(seq $StartId $EndId) ; do
	pkill -f ${GuiPortPrefix}${Id}           &> /dev/null
	pkill -f ${RedfishMockupPortPrefix}${Id} &> /dev/null
	sleep 1
	echo -n "." 
done
echo " Done" 


# Start Web servers
echo -e "\nStarting simulators"
for Id in $(seq $StartId $EndId) ; do
    echo -e -n "\tProcessing student ${Id} ... "
    cd student${Id}/dist

    # Start GUI web server (http)
    python -m http.server --bind $IP_Simul ${GuiPortPrefix}${Id} &> /dev/null &

    # Start Redfish Mockup server 
    cd ../server

    # ToDo: 
    #  Check if Redfish service will listen on http or https
    #  For now, defaulting to http.
    # Use the following in case of valid certificate:
    #python redfishMockupServer.py  \
        #--ssl \
        #--cert redfish-mockup-server.cert  \
        #--key  redfish-mockup-server.key  \
        #--host $IP_Simul --port ${RedfishMockupPortPrefix}${Id}  \
        #-D ../data &>/dev/null &
    # Use the following in case of http:
    python redfishMockupServer.py  \
        --host $IP_Simul --port ${RedfishMockupPortPrefix}${Id}  \
        -D ../data &>/dev/null &
    echo "Done"
    cd ../..
    sleep 1
done

echo
exit 0
