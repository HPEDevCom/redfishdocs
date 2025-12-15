#!/usr/bin/bash

# This quick and dirty script creates CSUS RMC simulators
# providing a suitable kit compressed .zip kit (i.e. MfwGui-1.10.342.zip)
# in current directory.

# Companion scripts:
#      * CleanupRmcSimul.sh (Completely remove simulators)
#      * InfraConfig.sh

# Usage: 
#      CreateRMC3200Simulators.sh

# Version 0.2

# Infrastructure:
# Hardware / VM:
# 2 CPUs / 12 cores/cpu (24 cores total)
#    Memory: 25 GB  (1 GB per simulator)

# Linux OS CentOS / Rocky Linux
# login as a regular user

# Where are we ?
Home=$(pwd)

# Load infra config
source ./InfraConfig.sh

# Cleanup, just in case
echo -e -n "Cleaning infra ... " 
./CleanupRmcSimul.sh  &>/dev/null
echo -e "Done\n"

# Make sure Python 3.6 (or higher) is installed:
echo "Checking Python version"
python --version
echo

# Create Python virtual environment and source it:
echo "Python venv creation and activation"
python -m venv $Venv
source ${Venv}/bin/activate
echo

# Update pip:
echo "pip update"
python -m pip install --upgrade pip
echo

# Install requirements:
echo "Python requirements installation"
pip install grequests
echo


# Open TCP ports (suitable for 25 students):
echo "Open GUI TCP port range: ${GuiPortPrefix}${StartId}-${GuiPortPrefix}${EndId} " 
sudo firewall-cmd --add-port=${GuiPortPrefix}${StartId}-${GuiPortPrefix}${EndId}/tcp \
     --permanent --zone=public &> /dev/null 

echo "Open Redfish TCP port range: ${RedfishMockupPortPrefix}${StartId}-${RedfishMockupPortPrefix}${EndId}"
sudo firewall-cmd --add-port=${RedfishMockupPortPrefix}${StartId}-${RedfishMockupPortPrefix}${EndId}/tcp \
	--permanent --zone=public &> /dev/null

echo -e "Reload firewall rules.\n"
sudo firewall-cmd --reload &> /dev/null

# Prepare simulator seed
echo -e "\nUnzipping original simulator"
mkdir $RootDir
cp $Kit $RootDir
cd $RootDir
unzip $Kit &> /dev/null

# Rename unzipped kit directory
mv ${Kit%.*} $Original
echo 

# Create and start student simulators
for Id in $(seq $StartId $EndId) ; do
    echo -e -n "Processing student ${Id} ... "
    cp -r $Original student${Id}
    cd student${Id}/dist

    # Adjust Redfish Mockup address:port in GUI file (index.js). Unsing HTTP because certificat is
    # not valid anymore!
    # Use the following command to verify the validity of the certificate:
    # cd server
    # openssl x509 -in redfish-mockup-server.cert -inform pem -noout -text

    # Use the following in case of valid certificate:
    #sed -i -e "s?http://localhost:8000?https://${IP_Simul}:${RedfishMockupPortPrefix}${Id}?g" index.js

    # Use the following when certificate is over:
    sed -i -e "s?http://localhost:8000?http://${IP_Simul}:${RedfishMockupPortPrefix}${Id}?g" index.js

    # Start GUI web server (http)
    python -m http.server --bind $IP_Simul ${GuiPortPrefix}${Id} &> /dev/null &

    # Start Redfish Mockup server 
    cd ../server
    # Use the following in case of valid certificate:
    #python redfishMockupServer.py  \
        #--ssl \
        #--cert redfish-mockup-server.cert  \
        #--key  redfish-mockup-server.key  \
        #--host $IP_Simul --port ${RedfishMockupPortPrefix}${Id}  \
        #-D ../data &>/dev/null &
    # Use the following in case of non-valid certificate.
    python redfishMockupServer.py  \
        --host $IP_Simul --port ${RedfishMockupPortPrefix}${Id}  \
        -D ../data &>/dev/null &
    echo "Done"
    cd ../..
    sleep 1
done
echo

# Verify web servers are reachable
cd $Home
echo "Sleep for 5 seconds and verify connectivity"
sleep 5
./VerifySimulatorsConnectivity.sh

exit 0


