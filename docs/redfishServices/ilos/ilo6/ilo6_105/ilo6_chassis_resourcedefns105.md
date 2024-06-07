---
excludeFromSearch: true
seo:
  title: Chassis resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Chassis resource definitions of iLO 6 v1.05

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## ChassisCollection

`@odata.type: "#ChassisCollection.ChassisCollection"`

A Collection of Chassis resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Chassis](../ilo6_chassis_resourcedefns105/#chassis)|

### Members (array)

Member of ChassisCollection.ChassisCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of ChassisCollection.ChassisCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of ChassisCollection.ChassisCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

## Chassis

`@odata.type: "#Chassis.v1_10_2.Chassis"`

The Chassis resource describes the physical components for a system. This object represents rack mount servers, blades, and all other containers. The non-CPU/device-centric parts of the schema are accessed either directly or indirectly through this resource.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/ComputerSystems[]`|[ComputerSystem](../ilo6_computersystem_resourcedefns105/#computersystem)|
|`Links/Drives[]`|[Drive](../ilo6_storage_resourcedefns105/#drive)|
|`Links/ManagedBy[]`|[Manager](../ilo6_manager_resourcedefns105/#manager)|
|`NetworkAdapters`|Collection of [NetworkAdapter](../ilo6_network_resourcedefns105/#networkadaptercollection)|
|`Oem/Hpe/Links/Devices`|Collection of [HpeServerDevice](../ilo6_hpe_resourcedefns105/#hpeserverdevicecollection)|
|`Power`|[Power](../ilo6_other_resourcedefns105/#power)|
|`Thermal`|[Thermal](../ilo6_other_resourcedefns105/#thermal)|

### AssetTag

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis user-assigned asset tag.|
|Type|string or null|
|Read Only|False|
|Added|iLO 6 1.05|

### ChassisType

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|This property indicates the physical form factor type of this resource.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Rack`|An equipment rack, typically a 19-inch wide freestanding unit.|
|`Blade`|An enclosed or semi-enclosed, typically vertically-oriented, system chassis that must be plugged into a multi-system chassis to function normally.|
|`Enclosure`|A generic term for a chassis that does not fit any other description.|
|`StandAlone`|A single, free-standing system, commonly called a tower or desktop chassis.|
|`RackMount`|A single system chassis designed specifically for mounting in an equipment rack.|
|`Card`|A loose device or circuit board intended to be installed in a system or other enclosure.|
|`Cartridge`|A small self-contained system intended to be plugged into a multi-system chassis.|
|`Row`|A collection of equipment racks.|
|`Pod`|A collection of equipment racks in a large, likely transportable, container.|
|`Expansion`|A chassis that expands the capabilities or capacity of another chassis.|
|`Sidecar`|A chassis that mechanically connects with another chassis to expand its capabilities or capacity.|
|`Zone`|A logical division or portion of a physical chassis that contains multiple devices or systems that cannot be physically separated.|
|`Sled`|TBD|
|`Shelf`|An enclosed or semi-enclosed, typically horizontally-oriented, system chassis that must be plugged into a multi-system chassis to function normally.|
|`Other`|A chassis that does not fit any of these definitions.|

### IndicatorLED

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis indicator LED that is used to identify the chassis. The user can manipulate this LED.|
|Type|string or null|
|Read Only|False|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Indicator LED cannot be determined.|
|`Lit`|The Indicator LED is on.|
|`Blinking`|The Indicator LED is blinking.|
|`Off`|The Indicator LED is off.|

### Manufacturer

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis manufacturer.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

### Model

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis model number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

### NetworkAdapters

The collection of network adapters contained within this chassis.
NetworkAdapters is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.BayNumber

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The bay number of the node or the blade.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.BaysConsumedHeight

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The number of enclosure bays this chassis consumes in height.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.BaysConsumedWidth

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The number of enclosure bays this chassis consumes in width.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.ChassisPowerWatts

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The total power consumed by the chassis and nodes.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.ElConfigOverride

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The value indicates if Thermal Configuration includes Edgeline specific options.|
|Type|boolean|
|Read Only|False|
|Added|iLO 6 1.05|

### Oem.Hpe.EnclosureCPLD

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The CPLD version of the enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.EnclosureDateTime

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The date and time in a Moonshot EL chassis (enclosure).|
|Type|string|
|Read Only|False|
|Added|iLO 6 1.05|
|Format|date-time|

### Oem.Hpe.EnclosureIndicatorLED

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The enclosure indicator LED that is used to identify the enclosure.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Indicator LED cannot be determined.|
|`Lit`|The Indicator LED is on.|
|`Blinking`|The Indicator LED is blinking.|
|`Off`|The Indicator LED is off.|

### Oem.Hpe.EnclosureModel

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Type of enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.EnclosureUUID

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The UUID of the enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.Firmware

**Oem.Hpe.Firmware.ChassisControllerVersion**
**Oem.Hpe.Firmware.ChassisControllerVersion.Current**
**Oem.Hpe.Firmware.ChassisControllerVersion.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the chassis controller.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Firmware.PlatformDefinitionTable**
**Oem.Hpe.Firmware.PlatformDefinitionTable.Current**
**Oem.Hpe.Firmware.PlatformDefinitionTable.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The version of the Intelligent Platform Abstraction Data.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Firmware.PowerManagementController**
**Oem.Hpe.Firmware.PowerManagementController.Current**
**Oem.Hpe.Firmware.PowerManagementController.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the Power Monitor.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Firmware.PowerManagementControllerBootloader**
**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current**
**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current.Family**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The family type of the Power Monitor hardware.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the Power Monitor boot loader.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Firmware.SASProgrammableLogicDevice**
**Oem.Hpe.Firmware.SASProgrammableLogicDevice.Current**
**Oem.Hpe.Firmware.SASProgrammableLogicDevice.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the SAS controller.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Firmware.SPSFirmwareVersionData**
**Oem.Hpe.Firmware.SPSFirmwareVersionData.Current**
**Oem.Hpe.Firmware.SPSFirmwareVersionData.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The SPS FW Version number, aka ME FW Version, AAAA.BBBB.CCCC.DDDD.E|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Firmware.SecondarySystemProgrammableLogicDevice**
**Oem.Hpe.Firmware.SecondarySystemProgrammableLogicDevice.Current**
**Oem.Hpe.Firmware.SecondarySystemProgrammableLogicDevice.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the CPLD.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Firmware.SystemProgrammableLogicDevice**
**Oem.Hpe.Firmware.SystemProgrammableLogicDevice.Current**
**Oem.Hpe.Firmware.SystemProgrammableLogicDevice.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the CPLD.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.IPv4Address

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The IPv4 address of the chassis manager.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.Images

**Oem.Hpe.Images.Front**
**Oem.Hpe.Images.Front.extref**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The URI of an external resource.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|
|Format|uri-reference|

**Oem.Hpe.Images.Model**
**Oem.Hpe.Images.Model.extref**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The URI of an external resource.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|
|Format|uri-reference|

### Oem.Hpe.Location

**Oem.Hpe.Location.GeographicLocation**
**Oem.Hpe.Location.GeographicLocation.RackName**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The name of the chassis enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Location.LocationInRack**
**Oem.Hpe.Location.LocationInRack.RackLdsPartNumber**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack part number.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Location.LocationInRack.RackLdsProductDescription**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description| The chassis rack product description.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Location.LocationInRack.RackUHeight**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack U height.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Location.LocationInRack.RackUUID**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack UUID.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Location.LocationInRack.TagVersion**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack tag version.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Location.LocationInRack.ULocation**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack U location.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Location.LocationInRack.UPosition**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis U position in the rack.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.Location.LocationOfChassis**
**Oem.Hpe.Location.LocationOfChassis.UUID**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis UUID provided by SMBIOS.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.MCTPEnabledOnServer

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Indicates if MCTP is enabled on the server or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.NodePowerWatts

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The total power being consumed by this node.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.OnboardAdministrator

**Oem.Hpe.OnboardAdministrator.IPv4Address**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|IPv4 address of the chassis.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.OnboardAdministrator.IPv6**
**Oem.Hpe.OnboardAdministrator.IPv6.DHCPv6Address (array)**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

`DHCPv6Address` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.IPv6.SLAACAddress (array)**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

`SLAACAddress` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.IPv6.StaticAddress (array)**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

`StaticAddress` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.MacAddress**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|MAC address of the chassis.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.PcieMini2SlotRiser

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|PCIE mini 2 slot riser is a platform dependent value used to identify installation of this riser.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NotInstalled`|The PCIE mini 2 slot riser is not installed. The PCIE mini slot 3 and slot 4 do not exist in this Enclosure.|
|`InstalledWithOtherFRU`|A non recognized riser option is installed with a valid EEPROM FRU. Contact Customer Support to secure a replacement.|
|`InstalledWithBadFRU`|The PCIe mini 2 slot riser is installed with an invaild EEPROM FRU. Contact Customer Support to secure a replacement.|
|`Installed`|The PCIE mini 2 slot riser is installed. The PCIE mini slot 3 and slot 4 exist in this Enclosure.|

### Oem.Hpe.PowerAlertMode

**Oem.Hpe.PowerAlertMode.Activated**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The power alert mode activation state.|
|Type|boolean|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.PowerAlertMode.AlertPowerWatts**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The power consumption of the system when operating in alert mode.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

**Oem.Hpe.PowerAlertMode.SpikeWatts**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Maximum additional power consumed when all CPUs are in Turbo Mode|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.RackName

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The name of the rack that contains the enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

### Oem.Hpe.SmartStorageBattery (array)

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

`SmartStorageBattery` is an array containing elements of:

**SmartStorageBattery[{item}].BatteryWearLevelPercent**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The battery wear level percentage. When this value reaches 100%, the battery is completely worn out and needs to be replaced. The value is null if battery wear level cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].ChargeLevelPercent**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|State of charge of the battery.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].ErrorCode**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Error code of the battery.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`GeneralFailure`|The battery has failed.|
|`HighInternalBatteryResistance`|The battery has failed due to high internal resistance.|
|`LowOpenCircuitVoltage`|The battery has failed due to a low voltage output.|
|`BatteryCellFailure`|The battery has failed.|
|`BatteryChargeTimeout`|The battery did not charge at the expected rate, indicating a faulty battery.|
|`OverTemperature`|The battery was disabled due to high ambient temperature, and will be re-enabled when the temperature is lowered.|
|`DischargeBelowMinimumVoltage`|The battery discharged below the minimum discharge voltage, and may be re-enabled upon recharging the battery.|
|`DischargeCurrentHigh`|The last backup failed due to exceeding the maximum discharge current.|
|`LoadCountExceeded`|The battery was disabled due to exceeding the maximum amount of devices supported, and will be re-enabled when the battery has been recharged or the additional devices are removed.|
|`BackupSucceeded`|The last backup succeeded within the expected time.|
|`OverCurrent`|The battery has been protected due to exceeding the output current capability. The battery should be re-enabled on the next reboot.|
|`PermanentFailure`|The battery has permanently failed.|
|`BackupTimeExceeded`|The last backup failed due to exceeding the battery discharge time limit.|

**SmartStorageBattery[{item}].FailurePredicted**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Is this battery currently predicting a failure in the near future.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].FirmwareVersion**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Firmware version of the battery.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].Index**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Index of the battery.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].MaximumCapWatts**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Maximum capacity of the battery in watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].Model**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Model of the battery.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].ProductName**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Product name of the battery.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].RemainingChargeTimeSeconds**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Remaining charging time of the battery in seconds.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].SerialNumber**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Serial number of the battery.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].SparePartNumber**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Spare part number of the battery.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

**SmartStorageBattery[{item}].Status**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.SystemMaintenanceSwitches

**Oem.Hpe.SystemMaintenanceSwitches.Sw1**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Override iLO security.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|iLO Security Override Enabled.|
|`Off`|No function (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw10**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw11**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw12**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw2**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw3**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw4**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw5**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|BIOS/UEFI Password Disable.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Power On Password disabled.|
|`Off`|Power On Password enabled (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw6**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reset Configuration.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`||
|`Off`||

**Oem.Hpe.SystemMaintenanceSwitches.Sw7**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Default).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw8**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Default).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw9**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Default).|

### Oem.Hpe.TrayID

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|Tray ID is a platform dependent value used to identify what kind of server tray it is.|
|Type|string|
|Read Only|True|
|Added|iLO 6 1.05|

### PCIeDevices

The link to the collection of PCIe devices located in this chassis.
PCIeDevices is a link (`"@odata.id": URI`) to another resource.

### PCIeSlots

The link to the PCIe slot properties for this chassis.
PCIeSlots is a link (`"@odata.id": URI`) to another resource.

### PartNumber

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

### PhysicalSecurity

**PhysicalSecurity.IntrusionSensor**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|This indicates the known state of the physical security sensor, such as if it is hardware intrusion detected.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Normal`|No abnormal physical security conditions are detected at this time.|
|`HardwareIntrusion`|A door, lock, or other mechanism protecting the internal system hardware from being accessed is detected as being in an insecure state.|
|`TamperingDetected`|Physical tampering of the monitored entity is detected.|

**PhysicalSecurity.IntrusionSensorReArm**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|This indicates how the Normal state to be restored.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Manual`|This sensor would be restored to the Normal state by a manual re-arm.|
|`Automatic`|This sensor would be restored to the Normal state automatically as no abnormal physical security conditions are detected.|

### Power

A reference to the thermal metrics (power supplies, power policies, sensors) for this chassis.
Power is a link (`"@odata.id": URI`) to another resource.

### PowerState

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|This is the current power state of the chassis.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

The following are the supported values:

|Value|
|---|
|`Null`|
|`On`|
|`Off`|
|`Unknown`|
|`Reset`|

### SKU

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis SKU.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

### SerialNumber

Member of [Chassis.v1\_10\_2.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 6 1.05|

### Status

Member of [Chassis.v1\_10\_2.Chassis](#chassis)
See the Redfish standard schema and specification for information on common Status object.

### Thermal

A reference to the thermal metrics (fans, cooling, sensors) for this chassis.
Thermal is a link (`"@odata.id": URI`) to another resource.

### Actions

**HpeServerChassis.DisableMCTPOnServer**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)
There are no parameters for this action.

**HpeServerChassis.FactoryResetMCTP**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)
There are no parameters for this action.

**HpeServerChassis.ModifyEnclosureChassisFru**
Member of [Chassis.v1\_10\_2.Chassis](#chassis)
The action to modify field of enclosure chassis FRU.

**Parameters:**

**PartNumber (string)**

Part Number of the enclosure chassis.

**SerialNumber (string)**

Serial Number of the enclosure chassis.
