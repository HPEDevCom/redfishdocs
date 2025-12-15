#!/usr/bin/bash
#
# Version 0.12

# This script retrieves NIC info present on the GUI.
# Should work only against Gen10 Plus and Gen11 servers.

# Variables
# Gen11:   ilo-hst320g11-169
# Gen10p:  ilo-lio360g10p-1
# Gen10p:  ilo-rd385g10p-139
iLO="$1"
User="$2"
Password="$3"
iLOrest="ilorest --nologo"
$iLOrest login $iLO -u $User -p $Password

# Retrieve list of all PCI Device URIs of NICs in an OCP slot
# HpeServerDeviceCollection is at: /redfish/v1/chassis/{item}/devices/
PCIDeviceUri="$($iLOrest list DeviceInstances/@odata.id --select HpeServerDevice.v --filter DeviceType="LOM/NIC" --filter Location="OCP*" | \
            awk -F=  '/PCID/ {print $NF}' | sort -u)"

# For each PCIDeviceUri, fetch DeviceResourceId from HpeServerPciDevice (Collection at: /redfish/v1/Systems/1/PCIDevices/)
# and retrieve associated Network Device Function URIs.
# If DeviceResourceId is not present, fetch UefiDevicePath and use it for retrieving info EthernetInterface data type.
DeviceFunctionList=""
DeviceResourceId=""
for dev in $PCIDeviceUri ; do
  echo -n "Processing "
  $iLOrest list DeviceLocation --select HpeServerPciDevice. --filter @odata.id=$dev | \
                    awk -F= '{print$NF}'
  DeviceResourceId="$($iLOrest get DeviceResourceId --select HpeServerPciDevice. --filter @odata.id="$dev" 2>/dev/null  | \
                    awk -F= '{print $NF}' | sort -u)"
  UefiDevicePath="$($iLOrest get UefiDevicePath --select HpeServerPciDevice. --filter @odata.id="$dev" 2>/dev/null  | \
                    awk -F= '{print $NF}' | sort -u)"

  if [[ "X$DeviceResourceId" != "X" ]] ; then
      echo -e "\t$DeviceResourceId"
      DeviceFunctionList="$($iLOrest list Controllers/Links/NetworkDeviceFunctions  --select NetworkAdapter.v --filter @odata.id="/redfish/v1/Chassis/1/NetworkAdapters/$DeviceResourceId" | \
                    awk -F= '/NetworkDeviceFunctions\// {print $NF}')"
  
     # For each Device Function fetch MACAddress, and
     # use it to get IP addresses and Name/teaming
     for f in $DeviceFunctionList ; do
        MACAddress="$($iLOrest list @odata.id Ethernet/MACAddress --filter @odata.id=$f  --select NetworkDeviceFunction. | \
                    awk -F= '/MACAd/ {print $NF}')"
        
        PortURI="$($iLOrest list PhysicalNetworkPortAssignment/@odata.id  --filter @odata.id=$f  --select NetworkDeviceFunction.  | \
                    awk -F= '/Ports/ {print $NF}')"
        PortID="$($iLOrest list Id --select Port.v --filter @odata.id="$PortURI"  | awk -F= '/Id/ {print $NF}' )"
        echo -e "\tMAC Address: $MACAddress"
        echo -e "\tPort ID: $PortID"
        echo -e "\t"
        $iLOrest list IPv4Addresses IPv6Addresses  Name  --select EthernetInterface. --filter MACAddress="$MACAddress" --json
     done 
  else
      echo "Could not find the DeviceResourceId. Need to fall back to UefiDevicePath"
      echo $UefiDevicePath
      $iLOrest list MACAddress IPv4Addresses IPv6Addresses  Name  --select EthernetInterface. --filter UefiDevicePath="$UefiDevicePath"
  fi
  
done

echo
$iLOrest logout