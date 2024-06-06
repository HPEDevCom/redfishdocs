---
excludeFromSearch: true
seo:
  title: Computersystem resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Computersystem resource definitions of iLO 5 v3.00

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## ComputerSystemCollection

`@odata.type: "#ComputerSystemCollection.ComputerSystemCollection"`

A Collection of ComputerSystem resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[ComputerSystem](../ilo5_computersystem_resourcedefns300/#computersystem)|

### Members (array)

Member of ComputerSystemCollection.ComputerSystemCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of ComputerSystemCollection.ComputerSystemCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of ComputerSystemCollection.ComputerSystemCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## ComputerSystem

`@odata.type: "#ComputerSystem.v1_17_0.ComputerSystem"`

The ComputerSystem resource describes the compute node and its properties. A ComputerSystem represents a physical or virtual machine and the local resources, such as memory, CPU, and other devices that can be accessed from that machine.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Bios`|[Bios](../ilo5_bios_resourcedefns300/#bios)|
|`EthernetInterfaces`|Collection of [EthernetInterface](../ilo5_network_resourcedefns300/#ethernetinterfacecollection)|
|`Links/Chassis[]`|[Chassis](../ilo5_chassis_resourcedefns300/#chassis)|
|`Links/ManagedBy[]`|[Manager](../ilo5_manager_resourcedefns300/#manager)|
|`LogServices`|Collection of [LogService](../ilo5_other_resourcedefns300/#logservicecollection)|
|`Memory`|Collection of [Memory](../ilo5_other_resourcedefns300/#memorycollection)|
|`NetworkInterfaces`|Collection of [NetworkInterface](../ilo5_network_resourcedefns300/#networkinterfacecollection)|
|`Oem/Hpe/Links/EthernetInterfaces`|Collection of [EthernetInterface](../ilo5_network_resourcedefns300/#ethernetinterfacecollection)|
|`Oem/Hpe/Links/NetworkAdapters`|Collection of [HpeBaseNetworkAdapter](../ilo5_hpe_resourcedefns300/#hpebasenetworkadaptercollection)|
|`Oem/Hpe/Links/PCIDevices`|Collection of [HpeServerPciDevice](../ilo5_hpe_resourcedefns300/#hpeserverpcidevicecollection)|
|`Oem/Hpe/Links/PCISlots`|Collection of [HpeServerPCISlot](../ilo5_hpe_resourcedefns300/#hpeserverpcislotcollection)|
|`Oem/Hpe/Links/SmartStorage`|[HpeSmartStorage](../ilo5_hpe_resourcedefns300/#hpesmartstorage)|
|`Oem/Hpe/Links/USBDevices`|Collection of [HpeUSBDevice](#hpeusbdevice)|
|`Oem/Hpe/Links/USBPorts`|Collection of [HpeUSBPort](#hpeusbport)|
|`Oem/Hpe/SmartStorageConfig[]`|[SmartStorageConfig](../ilo5_other_resourcedefns300/#smartstorageconfig)|
|`Processors`|Collection of [Processor](../ilo5_other_resourcedefns300/#processorcollection)|
|`SecureBoot`|[SecureBoot](../ilo5_other_resourcedefns300/#secureboot)|
|`Storage`|Collection of [Storage](../ilo5_storage_resourcedefns300/#storagecollection)|

### AssetTag

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|A user-definable tag that is used to track this system for inventory or other client purposes.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Bios

The Bios URI.
Bios is a link (`"@odata.id": URI`) to another resource.

### BiosVersion

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The version of the system BIOS or primary system firmware.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Boot

**Boot.BootOptions**
A reference to the collection of the UEFI Boot Options associated with this Computer System.
BootOptions is a link (`"@odata.id": URI`) to another resource.

**Boot.BootOrder (array)**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

`BootOrder` is an array containing elements of:

| | |
|---|---|
|Type|string or null|
|Read Only|True|

**Boot.BootSourceOverrideEnabled**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|BootSourceOverrideTarget must be specified before BootSourceOverrideEnabled can be used.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Disabled`|The system will boot normally.|
|`Once`|On its next boot cycle, the system will boot (one time) to the Boot Source Override Target. The value of BootSourceOverrideEnabled is then reset back to Disabled.|
|`Continuous`|The system will boot to the target specified in the BootSourceOverrideTarget until this property is set to Disabled.|

**Boot.BootSourceOverrideMode**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Legacy`|The system will boot in non-UEFI boot mode to the Boot Source Override Target.|
|`UEFI`|The system will boot in UEFI boot mode to the Boot Source Override Target.|

**Boot.BootSourceOverrideTarget**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The current boot source to be used at next boot instead of the normal boot device, if BootSourceOverrideEnabled is true.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Boot.BootSourceOverrideTarget@Redfish.AllowableValues (array)**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

`BootSourceOverrideTarget@Redfish.AllowableValues` is an array containing elements of:

| | |
|---|---|
|Description|The current boot source to be used at next boot instead of the normal boot device, if BootSourceOverrideEnabled is not Disabled.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`None`|Boot from the normal boot device.|
|`Pxe`|Boot from the Pre-Boot EXecution (PXE) environment.|
|`Floppy`|Boot from the floppy disk drive.|
|`Cd`|Boot from the CD/DVD disc.|
|`Usb`|Boot from a USB device as specified by the system BIOS.|
|`Hdd`|Boot from a hard drive.|
|`BiosSetup`|Boot to the BIOS Setup Utility.|
|`Utilities`|Boot the manufacturer's Utilities program(s).|
|`Diags`|Boot the manufacturer's Diagnostics program.|
|`UefiShell`|Boot to the UEFI Shell.|
|`UefiTarget`|Boot to the UEFI Device specified in the UefiTargetBootSourceOverride property.|
|`SDCard`|Boot from an SD Card|
|`UefiHttp`|Boot from a UEFI HTTP network location|

**Boot.UefiTargetBootSourceOverride**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This property is the UEFI Device Path of the device to boot from when BootSourceOverrideTarget is UefiTarget.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Boot.UefiTargetBootSourceOverride@Redfish.AllowableValues (array)**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

`UefiTargetBootSourceOverride@Redfish.AllowableValues` is an array containing elements of:

| | |
|---|---|
|Description|An array of structured boot strings.|
|Type|string or null|
|Read Only|True|

### BootProgress

**BootProgress.LastState**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|SmartNIC device operating system status|
|Type|string or null|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`OSBootStarted`|The operating system has started booting.|
|`OSRunning`|The operating system is running.|
|`OEM`|The operating system state is reported in the OemLastState property.|

**BootProgress.OemLastState**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|SmartNIC device operating system oem status|
|Type|string or null|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`OSServicesReady`|The operating system services are ready.|
|`OSServicesOffline`|The operating system services are offline.|
|`OSHalting`|The operating system has started halting.|
|`OSHalted`|The operating system has performed a shutdown.|

### EthernetInterfaces

A reference to the collection of Ethernet interfaces associated with this system.
EthernetInterfaces is a link (`"@odata.id": URI`) to another resource.

### HostName

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The DNS Host Name, without any domain information|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### HostingRole

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The enumerations of HostingRoles specify different features that the hosting ComputerSystem supports.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`ApplicationServer`|The system hosts functionality that supports general purpose applications.|
|`StorageServer`|The system hosts functionality that supports the system acting as a storage server.|
|`Switch`|The system hosts functionality that supports the system acting as a switch.|
|`Appliance`|The system hosts functionality that supports the system acting as an appliance.|
|`BareMetalServer`|The system hosts functionality that supports the system acting as a bare metal server.|
|`VirtualMachineServer`|The system hosts functionality that supports the system acting as a virtual machine server.|
|`ContainerServer`|The system hosts functionality that supports the system acting as a container server.|

### IndicatorLED

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The state of the indicator LED.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Indicator LED cannot be determined.|
|`Lit`|The Indicator LED is lit.|
|`Blinking`|The Indicator LED is blinking.|
|`Off`|The Indicator LED is off.|

### LocationIndicatorActive

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|An indicator allowing an operator to physically locate this resource.|
|Type|boolean or null|
|Read Only|False|

### LogServices

The LogService collection URI for this resource.
LogServices is a link (`"@odata.id": URI`) to another resource.

### Manufacturer

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The manufacturer or OEM of this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Memory

The central memory in the system.
Memory is a link (`"@odata.id": URI`) to another resource.

### MemoryDomains

A reference to the collection of Memory Domains associated with this system.
MemoryDomains is a link (`"@odata.id": URI`) to another resource.

### MemorySummary

**MemorySummary.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**MemorySummary.TotalSystemMemoryGiB**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This is the total amount of memory in the system measured in GiB.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**MemorySummary.TotalSystemPersistentMemoryGiB**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The total configured, system-accessible persistent memory, measured in GiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Model

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The model information that the manufacturer uses to refer to this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### NetworkInterfaces

The collection of network interfaces partitioned to this system.
NetworkInterfaces is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.AggregateHealthStatus

**Oem.Hpe.AggregateHealthStatus.AgentlessManagementService**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This indicates if the Agentless Management Service is available or not. |
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Unavailable`|The Agentless Management Service is unavailable.|
|`Ready`|The Agentless Management Service is Ready.|

**Oem.Hpe.AggregateHealthStatus.AggregateServerHealth**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This represents the overall health state|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**Oem.Hpe.AggregateHealthStatus.BiosOrHardwareHealth**
**Oem.Hpe.AggregateHealthStatus.BiosOrHardwareHealth.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.FanRedundancy**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This indicates if the Fan is redundant or not. |
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Redundant`|The fans are Redundant.|
|`NonRedundant`|The fans are not Redundant.|
|`FailedRedundant`|The Redundant fan has failed.|
|`Unknown`|The Redundant state is unknown.|

**Oem.Hpe.AggregateHealthStatus.Fans**
**Oem.Hpe.AggregateHealthStatus.Fans.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.LiquidCooling**
**Oem.Hpe.AggregateHealthStatus.LiquidCooling.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.LiquidCoolingRedundancy**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This indicates if the LiquidCooling Units are redundant or not. |
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Redundant`|The Liquid Cooling modules are Redundant.|
|`NonRedundant`|The Liquid Cooling modules are not Redundant.|
|`FailedRedundant`|The Redundant fan has failed.|
|`Unknown`|The Redundant state is unknown.|

**Oem.Hpe.AggregateHealthStatus.Memory**
**Oem.Hpe.AggregateHealthStatus.Memory.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.Network**
**Oem.Hpe.AggregateHealthStatus.Network.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.PowerSupplies**
**Oem.Hpe.AggregateHealthStatus.PowerSupplies.PowerSuppliesMismatch**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This indicates if the there is a mismatch in the power supplies.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.AggregateHealthStatus.PowerSupplies.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.PowerSupplyRedundancy**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This indicates if the Power Supply is redundant or not. |
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Redundant`|The power supplies are Redundant.|
|`NonRedundant`|The power supplies are not Redundant.|
|`FailedRedundant`|The Redundant power supply has failed.|
|`Unknown`|The Redundant state is unknown.|

**Oem.Hpe.AggregateHealthStatus.Processors**
**Oem.Hpe.AggregateHealthStatus.Processors.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.SmartStorageBattery**
**Oem.Hpe.AggregateHealthStatus.SmartStorageBattery.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.Storage**
**Oem.Hpe.AggregateHealthStatus.Storage.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.Temperatures**
**Oem.Hpe.AggregateHealthStatus.Temperatures.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.AvailableSystemCapabilities (array)

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

`AvailableSystemCapabilities` is an array containing elements of:

| | |
|---|---|
|Description|Indicates SmartNIC DPU supports OS-triggered DPC|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|`OSTriggeredDPC`|

### Oem.Hpe.Bios

**Oem.Hpe.Bios.Backup**
**Oem.Hpe.Bios.Backup.BuildNumber**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.BuildNumberString**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.Date**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.DebugBuild**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.Family**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.MajorVersion**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.MinorVersion**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.Time**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.VersionString**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock**
**Oem.Hpe.Bios.Bootblock.BuildNumber**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.BuildNumberString**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.Date**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.DebugBuild**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.Family**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.MajorVersion**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.MinorVersion**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.Time**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.VersionString**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current**
**Oem.Hpe.Bios.Current.BuildNumber**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.BuildNumberString**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.Date**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.DebugBuild**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.Family**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.MajorVersion**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.MinorVersion**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.Time**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.VersionString**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.UefiClass**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The UEFI BIOS Class value defined in the UEFI specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Null`|
|`1`|
|`2`|
|`3`|

### Oem.Hpe.BootProgress

**Oem.Hpe.BootProgress.OemResetReason**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The Smart NIC Device Operating system OEM reset reason .|
|Type|string or null|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|unknown reason, cold start|
|`OSNormal`|a normal reset by ESXio|
|`BMCNormal`|reset by BMC|
|`OSCrash`|a reset after a crash by ESXio|
|`HWWatchdog`|a reset due to hardware watchdog|
|`Thermal`|a reset due to thermal shutdown|

**Oem.Hpe.BootProgress.ResetReason**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The Smart NIC Device Operating system reset reason .|
|Type|string or null|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`OEM`|oem value , SmartNIC DPU|
|`Unknown`|unknown reason, cold start|
|`OSNormal`|a normal reset by ESXio|
|`BMCNormal`|reset by BMC|
|`OSCrash`|a reset after a crash by ESXio|
|`HWWatchdog`|a reset due to hardware watchdog|
|`Thermal`|a reset due to thermal shutdown|

### Oem.Hpe.CriticalTempRemainOff

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates whether server should remain off after thermal shutdown is triggered.|
|Type|boolean|
|Read Only|False|

### Oem.Hpe.CurrentPowerOnTimeSeconds

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Displays the amount of time(in seconds) that has passed since the server was last powered on. The data is reset on iLO reset.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.15|

### Oem.Hpe.DeviceDiscoveryComplete

**Oem.Hpe.DeviceDiscoveryComplete.AMSDeviceDiscovery**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This property indicates the current AMS Device Discovery Status.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Busy`|The server has AMS loaded and iLO is discovering devices that require AMS to be loaded|
|`Complete`|The server has AMS loaded and iLO is finished discovering devices that require AMS to be loaded|
|`NoAMS`|The server does not have AMS loaded for device discovery.|
|`Initial`|Default state after iLO has booted.|

**Oem.Hpe.DeviceDiscoveryComplete.DeviceDiscovery**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This property indicates the current device discovery status of devices that are not Smart Array or AMS related.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Busy`|iLO is discovering devices.|
|`vAuxDeviceDiscoveryComplete`|The server is off and iLO is finished discovering devices.|
|`vMainDeviceDiscoveryComplete`|The server is on and iLO is finished discovering devices.|
|`DataIncomplete`|iLO response took longer than expected while discovering devices.|
|`Initial`|Default state after iLO has booted.|

**Oem.Hpe.DeviceDiscoveryComplete.SmartArrayDiscovery**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This property indicates the current Smart Array Storage Device Discovery Status|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Busy`|iLO is discovering Smart Array devices.  If the server is shutdown before discovery is complete, this reflects an incomplete data set.|
|`PendingSoftwareRAID`|Pending discovery of Dynamic Smart Array.|
|`Complete`|iLO is finished discovering Smart Array storage.|
|`Initial`|Default state for Smart Array|
|`Cached`|Data is cached, server is offline or data not yet available.|

### Oem.Hpe.ElapsedEraseTimeInMinutes

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Reports the time elapsed since the erase started|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.EnabledSystemCapabilities (array)

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

`EnabledSystemCapabilities` is an array containing elements of:

| | |
|---|---|
|Description|Indicates SmartNIC DPU supports OS-triggered DPC|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|`OSTriggeredDPC`|

### Oem.Hpe.EndOfPostDelaySeconds

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Supported on UEFI based systems only. The number of seconds to delay before finalizing POST with the Mode action (e.g. delay before shutdown). If > 255 seconds is requested, the value is rounded up to the nearest minute.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.EstimatedEraseTimeInMinutes

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Reports the guestimate time (in minutes) for the overall erase process|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.HealthCntl

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Set the Health of the system.|
|Type|string or null|
|Read Only|False|

The following are the supported values:

|Value|
|---|
|`Null`|
|`OK`|
|`Caution`|
|`Critical`|
|`Release`|

### Oem.Hpe.HostOS

**Oem.Hpe.HostOS.OsName**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|from cpqHoName if AMS is running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.HostOS.OsSysDescription**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|from cpqHosysDesc if AMS is running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.HostOS.OsType**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|from cpqHoOsType if AMS is running.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.HostOS.OsVersion**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|from cpqHoVersion if AMS is running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IntegrationConfig

**Oem.Hpe.IntegrationConfig.OsReadyTimeout**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Type|integer|
|Read Only|False|

### Oem.Hpe.IntelligentProvisioningAlwaysOn

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Always on Intelligent Provisioning is available.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IntelligentProvisioningIndex

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description| Index in the Firmware Version Table for Intelligent Provisioning.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IntelligentProvisioningLocation

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description| Location string of Intelligent Provisioning in Firmware Version Table.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IntelligentProvisioningVersion

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description| Intelligent Provisioning Version.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IsColdBooting

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates if the system is cold booting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.30|

### Oem.Hpe.OperatingSystem

**Oem.Hpe.OperatingSystem.Kernel**
**Oem.Hpe.OperatingSystem.Kernel.Version**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|SmartNIC device operating system kernel version|
|Type|string or null|
|Read Only|False|

### Oem.Hpe.PCAPartNumber

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The PCA part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PCASerialNumber

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The PCA serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PostDiscoveryCompleteTimeStamp

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Displays the last known POST Discovery Complete time|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Oem.Hpe.PostDiscoveryMode

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The manner in which the system will operate during the discovery section of POST.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Auto`|BIOS will automatically use ForceFastBoot if the system hardware has not changed from last time of FullDiscovery or ForceFullDiscovery if the system hardware has changed.|
|`ForceFullDiscovery`|Server makes a full discovery of all devices.|
|`ForceFastBoot`|Server uses the existing cached discovery data.|

### Oem.Hpe.PostMode

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The manner in which the system will operate during and at completion of POST.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Normal`|Normal operations.|
|`PostToShutdown`|Server boots until Discovery Completes, then shuts down.|
|`PostToReboot`|Server boots until Discovery Completes, then reboots.|

### Oem.Hpe.PostState

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The current state of system POST.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|iLO was unable to determine the current server state.|
|`Reset`|The server is currently in reset.|
|`PowerOff`|The server power is off.|
|`InPost`|The server is booting and has not reached discovery complete.|
|`InPostDiscoveryStart`|The server has started to discover devices.|
|`InPostDiscoveryComplete`|The server has reached discovery complete and is now waiting for the installed OS to be booted.  Discovery complete is the point at which it has been deemed safe to read and write the BIOS configuration information.|
|`FinishedPost`|The server has booted the installed OS.|

### Oem.Hpe.PowerAllocationLimit

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The total amount of power allocated to the system.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PowerAutoOn

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Auto Power-On mode defines what occurs when the AC power is applied to the system.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`RemainOff`|
|`PowerOn`|
|`Restore`|

### Oem.Hpe.PowerOnDelay

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The PowerAutoOn policy delay that can also be found in the HpBios::PowerOnDelay object.  Will be null if PowerAutoOn is set to RemainOff.  Blades only support Minimum and RandomUpTo120Sec.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Null`|
|`Minimum`|
|`15Sec`|
|`30Sec`|
|`45Sec`|
|`60Sec`|
|`RandomUpTo120Sec`|

### Oem.Hpe.PowerOnMinutes

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The number of lifetime minutes that the server has been powered on.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.15|

### Oem.Hpe.PowerRegulatorMode

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Power Regulator mode.  Switching to and from OS Control mode requires a server reboot to take effect.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`OSControl`|
|`Dynamic`|
|`Max`|
|`Min`|
|`Unknown`|

### Oem.Hpe.PowerRegulatorModesSupported (array)

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

`PowerRegulatorModesSupported` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

### Oem.Hpe.ProcessorJitterControl

**Oem.Hpe.ProcessorJitterControl.ConfiguredFrequencyLimitMHz**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Displays the last known user configured frequency limit of the processor in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**Oem.Hpe.ProcessorJitterControl.FrequencyLimitMHz**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current frequency limit of the processor in MHz.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.15|

**Oem.Hpe.ProcessorJitterControl.Mode**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Provides various jitter control modes.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.15|

The following are the supported values:

|Value|
|---|
|`Auto`|
|`Disabled`|
|`Manual`|

**Oem.Hpe.ProcessorJitterControl.ProcessorJitterControlOptimization**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Provides Jitter Control Optimizations.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.30|

The following are the supported values:

|Value|Description|
|---|---|
|`OptimizedForThroughput`||
|`OptimizedForLatency`||
|`ZeroLatency`||

### Oem.Hpe.SMBIOS

**Oem.Hpe.SMBIOS.extref**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The URI of an external resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Oem.Hpe.ServerFQDN

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The IP address or FQDN of the server. Host software like AMS is required to obtain this value from the OS.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|

### Oem.Hpe.ServerIntelligentDiagnosticsModeEnabled

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the current state of server Intelligent Diagnostics mode.|
|Type|boolean|
|Read Only|True|

### Oem.Hpe.ServerSafeModeEnabled

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the current state of server Safe Mode.|
|Type|boolean|
|Read Only|True|

### Oem.Hpe.ServerSignature

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description| The CRC32 of:  All Device Signatures combined together, Server Slot Location in Enclosure, Enclosure UUID, and Manager Domain IP Address|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.ServerSignatureStatus

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The current state of Server Signature.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Initial`|The server signature calculation has not run yet.|
|`Busy`|The server signature calculation is being run.|
|`Invalid`|The server signature is invalid.  Re-compute action necessary.|
|`Complete`|The server signature calculation is complete and valid.|

### Oem.Hpe.SmartStorageConfig (array)

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

`SmartStorageConfig` is an array containing elements of:

**SmartStorageConfig[{item}].@odata.id**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Oem.Hpe.SystemROMAndiLOEraseComponentStatus

**Oem.Hpe.SystemROMAndiLOEraseComponentStatus.BIOSSettingsEraseStatus**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

**Oem.Hpe.SystemROMAndiLOEraseComponentStatus.iLOSettingsEraseStatus**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

### Oem.Hpe.SystemROMAndiLOEraseStatus

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

### Oem.Hpe.SystemUsage

**Oem.Hpe.SystemUsage.AvgCPU0Freq**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current CPU0 average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.AvgCPU1Freq**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current CPU1 average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.AvgCPU2Freq**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current CPU2 average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.AvgCPU3Freq**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current CPU3 average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPU0Power**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current power consumed by the system CPU0 in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPU1Power**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current power consumed by the system CPU1 in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPU2Power**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current power consumed by the system CPU2 in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPU3Power**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current power consumed by the system CPU3 in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPUICUtil**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current System CPU Interconnect utilization in percentage|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPUUtil**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current System CPU utilization in percentage|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.IOBusUtil**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current System I/O bus utilization in percentage|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.JitterCount**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current processor Jitter Count.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.MemoryBusUtil**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Current System memory bus utilization in percentage|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.UserDataEraseComponentStatus

**Oem.Hpe.UserDataEraseComponentStatus.NVDIMMEraseStatus**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

**Oem.Hpe.UserDataEraseComponentStatus.NVMeDrivesEraseStatus**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

**Oem.Hpe.UserDataEraseComponentStatus.SATADrivesEraseStatus**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

**Oem.Hpe.UserDataEraseComponentStatus.SmartStorageEraseStatus**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

**Oem.Hpe.UserDataEraseComponentStatus.TPMEraseStatus**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

### Oem.Hpe.UserDataEraseStatus

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

### Oem.Hpe.VirtualProfile

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The current state of the systems virtual profile.  This profile is the one that, when the server is rebooted, will set the  Virtual properties.  Intent is to use this state to determine whether the server needs to be rebooted so these values are set.  Additional informaiton about the profile will be considered later.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Active`|
|`Busy`|
|`Inactive`|
|`Unknown`|

### Oem.Hpe.VirtualUUID

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Used in conjunction with the UUID (Logical) value.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PartNumber

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The manufacturer's system part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerState

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This is the current power state of the system|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Null`|
|`On`|
|`Off`|
|`Unknown`|
|`Reset`|
|`PoweringOn`|
|`PoweringOff`|

### ProcessorSummary

**ProcessorSummary.Count**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The number of processors in the system.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ProcessorSummary.Model**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The processor model for the primary or majority of processors in this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ProcessorSummary.Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

### Processors

The central processors in the system.
Processors is a link (`"@odata.id": URI`) to another resource.

### SKU

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|SKU for this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SecureBoot

A reference to the UEFI SecureBoot resource associated with this system.
SecureBoot is a link (`"@odata.id": URI`) to another resource.

### SerialNumber

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The system serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Status

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

### Storage

A reference to the collection of storage devices associated with this system.
Storage is a link (`"@odata.id": URI`) to another resource.

### SystemType

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The type of computer system that this resource represents.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Physical`|A computer system|
|`Virtual`|A virtual machine instance running on this system|
|`OS`|An operating system instance|
|`PhysicallyPartitioned`|A hardware-based partition of a computer system|
|`VirtuallyPartitioned`|A virtual or software-based partition of a computer system|
|`DPU`|SmartNIC DPU System|

### TrustedModules (array)

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

`TrustedModules` is an array containing elements of:

**TrustedModules[{item}].FirmwareVersion**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The firmware version of this Trusted Module|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**TrustedModules[{item}].InterfaceType**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|This property indicates the interface type of the Trusted Module.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`TM1_0`|Trusted Module (TM) 1.0|
|`TPM1_2`|Trusted Platform Module (TPM) 1.2|
|`TPM2_0`|Trusted Platform Module (TPM) 2.0|

**TrustedModules[{item}].Oem.Hpe.VendorName**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|Trusted module vendor name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|`None`|
|`STMicro`|
|`Intel`|
|`Nationz`|
|`Unknown`|

**TrustedModules[{item}].Status**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
See the Redfish standard schema and specification for information on common Status object.

### UUID

Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

| | |
|---|---|
|Description|The universal unique identifier for this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Actions

**ComputerSystem.Reset**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
This action resets the system.

**Parameters:**

**ResetType (string)**

The type of reset.

|Value|Description|
|---|---|
|ForceOff|Turn off the unit immediately (non-graceful shutdown).|
|ForceOn|Turn on the unit immediately.|
|ForceRestart|Shut down immediately and non-gracefully and restart the system.|
|GracefulRestart|Shut down gracefully and restart the system.|
|GracefulShutdown|Shut down gracefully and power off.|
|Nmi|Generate a diagnostic interrupt, which is usually an NMI on x86 systems, to stop normal operations, complete diagnostic actions, and, typically, halt the system.|
|On|Turn on the unit.|
|PowerCycle|Power cycle the unit.|
|PushPowerButton|Simulate the pressing of the physical power button on this unit.|

**target (string)**

Link to invoke action

**title (string)**

Friendly action name

**ComputerSystem.SetSimpleUpdateStatus**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

**Parameters:**

**Message (string)**

Message to be displayed

**PercentComplete (integer)**

Percentage of task complete

**TaskState (string)**

TaskState identifies the type of Action to be performed.

|Value|Description|
|---|---|
|New|
|Starting|
|Running|
|Suspended|
|Interrupted|
|Pending|
|Stopping|
|Completed|
|Killed|
|Exception|
|Service|

**TaskStatus (string)**

Current status of the ongoing task

|Value|Description|
|---|---|
|Ok|
|Warning|
|Critical|

**HpeComputerSystemExt.PowerButton**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

**Parameters:**

**PushType (string)**

PushType identifies the type of Action to be performed.

|Value|Description|
|---|---|
|Press|
|PressAndHold|

**HpeComputerSystemExt.RestoreManufacturingDefaults**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.RestoreSystemDefaults**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.SecureSystemErase**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

**Parameters:**

**SystemROMAndiLOErase (boolean)**

Action to perform resetting the system BIOS settings and iLO to manufacturing defaults. It also erases the user data in the NAND like Active Health System(AHS), Repository.

**UserDataErase (boolean)**

Action to perform erasing all the user data on the system including TPMs, persistent memory devices, storage controller configurations, RAID settings, as well as the hard drives attached to the system. USB and other removable media will be excluded.

**HpeComputerSystemExt.ServerIntelligentDiagnosticsMode**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.ServerSafeMode**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.ServerSigRecompute**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.SystemReset**
Member of [ComputerSystem.v1\_17\_0.ComputerSystem](#computersystem)

**Parameters:**

**ResetType (string)**

ResetType identifies the type of Action to be performed.

|Value|Description|
|---|---|
|ColdBoot|
|AuxCycle|
