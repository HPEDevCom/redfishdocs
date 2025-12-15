#!/usr/bin/bash

# version 0.1 

# Cleanup RMC CSUS 3200 simulators

echo "Entering ${0}"
# Load configuration
echo -e "\tLoading configuration" 
source ./InfraConfig.sh


# Kill Web servers
echo -e "\tStopping simulator web servers.\n"
for Id in $(seq $StartId $EndId) ; do
	pkill -f ${GuiPortPrefix}${Id}           &> /dev/null
	pkill -f ${RedfishMockupPortPrefix}${Id} &> /dev/null
done

# Remove directories
echo -e "\tRemoving Python venv and simulator directories."
rm -r $Venv    &> /dev/null
rm -r $RootDir &> /dev/null


# Remove TCP ports
echo -e "\tClose GUI TCP ports."
sudo firewall-cmd --remove-port=${GuiPortPrefix}${StartId}-${GuiPortPrefix}${EndId}/tcp \
	--permanent --zone=public &>/dev/null
echo -e "\tClose Redfish TCP ports."
sudo firewall-cmd --remove-port=${RedfishMockupPortPrefix}${StartId}-${RedfishMockupPortPrefix}${EndId}/tcp \
	--permanent --zone=public &>/dev/null
echo -e "\tReload firewall rules."
sudo firewall-cmd --reload &> /dev/null

