---
excludeFromSearch: true
seo:
  title: Chassis resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Chassis resource definitions of iLO 5 v3.00

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

|Link Name|Destination type
|---|---|
|`Members[]`|[Chassis](../ilo5_chassis_resourcedefns300/#chassis)|

### Members (array)

Member of ChassisCollection.ChassisCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of ChassisCollection.ChassisCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of ChassisCollection.ChassisCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## Chassis

`@odata.type: "#Chassis.v1_23_0.Chassis"`

The Chassis resource describes the physical components for a system. This object represents rack mount servers, blades, and all other containers. The non-CPU/device-centric parts of the schema are accessed either directly or indirectly through this resource.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type
|---|---|
|`Links/ComputerSystems[]`|[ComputerSystem](../ilo5_computersystem_resourcedefns300/#computersystem)|
|`Links/Drives[]`|[Drive](../ilo5_storage_resourcedefns300/#drive)|
|`Links/ManagedBy[]`|[Manager](../ilo5_manager_resourcedefns300/#manager)|
|`NetworkAdapters`|Collection of [NetworkAdapter](../ilo5_network_resourcedefns300/#networkadaptercollection)|
|`Oem/Hpe/Links/Devices`|Collection of [HpeServerDevice](../ilo5_hpe_resourcedefns300/#hpeserverdevicecollection)|
|`Power`|[Power](../ilo5_other_resourcedefns300/#power)|
|`Thermal`|[Thermal](../ilo5_other_resourcedefns300/#thermal)|

### AssetTag

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis user-assigned asset tag.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### ChassisType

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|This property indicates the physical form factor type of this resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

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
|`Sled`|An enclosed or semi-enclosed, system chassis that must be plugged into a multi-system chassis to function normally similar to a blade type chassis.|
|`Shelf`|An enclosed or semi-enclosed, typically horizontally-oriented, system chassis that must be plugged into a multi-system chassis to function normally.|
|`Other`|A chassis that does not fit any of these definitions.|

### Drives

The link to the collection of drives within this chassis
Drives is a link (`"@odata.id": URI`) to another resource.

### IndicatorLED

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis indicator LED that is used to identify the chassis. The user can manipulate this LED.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Indicator LED cannot be determined.|
|`Lit`|The Indicator LED is on.|
|`Blinking`|The Indicator LED is blinking.|
|`Off`|The Indicator LED is off.|

### Location

**Location.PartLocation**
**Location.PartLocation.LocationOrdinalValue**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|

**Location.PartLocation.LocationType**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The location types for PartLocation.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Slot`|The slot as the type of location.|
|`Bay`|The bay as the type of location.|
|`Connector`|The connector as the type of location.|
|`Socket`|The socket as the type of location.|

**Location.PartLocation.Orientation**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The orientation for the ordering of the part location ordinal value.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`FrontToBack`|The ordering for LocationOrdinalValue is front to back.|
|`BackToFront`|The ordering for the LocationOrdinalValue is back to front.|
|`TopToBottom`|The ordering for the LocationOrdinalValue is top to bottom.|
|`BottomToTop`|The ordering for LocationOrdinalValue is bottom to top.|
|`LeftToRight`|The ordering for the LocationOrdinalValue is left to right.|
|`RightToLeft`|The ordering for the LocationOrdinalValue is right to left.|

**Location.PartLocation.Reference**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The reference area for the location of the part.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Top`|The part is in the top of the unit.|
|`Bottom`|The part is in the bottom of the unit.|
|`Front`|The part is in the front of the unit.|
|`Rear`|The part is in the rear of the unit.|
|`Left`|The part is on the left side of of the unit.|
|`Right`|The part is on the right side of the unit.|
|`Middle`|The part is in the middle of the unit.|

**Location.PartLocation.ServiceLabel**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|

**Location.Placement**
**Location.Placement.AdditionalInfo**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|

**Location.Placement.Rack**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|

**Location.Placement.RackOffset**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|

**Location.Placement.RackOffsetUnits**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The type of rack unit in use.|
|Type|string or null|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OpenU`|A rack unit that is equal to 48 mm (1.89 in).|
|`EIA_310`|A rack unit that is equal to 1.75 in (44.45 mm).|

**Location.Placement.Row**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|

### LocationIndicatorActive

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|An indicator allowing an operator to physically locate this resource.|
|Type|boolean or null|
|Read Only|False|

### Manufacturer

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis manufacturer.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Model

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis model number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### NetworkAdapters

The collection of network adapters contained within this chassis.
NetworkAdapters is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.BayNumber

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The bay number of the node or the blade.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.BaysConsumedHeight

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The number of enclosure bays this chassis consumes in height.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.BaysConsumedWidth

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The number of enclosure bays this chassis consumes in width.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.ChassisInputPowerWatts

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The total input power consumed by the chassis and nodes.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.ChassisPowerWatts

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The total power consumed by the chassis and nodes.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.ChassisServerLockActive

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|When Chassis Server Lock is activated, the server will be linked to the current chassis and not allow SSO connections from any other chassis.|
|Type|boolean|
|Read Only|False|

### Oem.Hpe.ChassisServerLockValid

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The server is installed in the same chassis that it was linked to when Chassis Server Lock was activated.|
|Type|boolean|
|Read Only|True|

### Oem.Hpe.ElConfigOverride

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The value indicates if Thermal Configuration includes Edgeline specific options.|
|Type|boolean|
|Read Only|False|

### Oem.Hpe.EnclosureCPLD

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The CPLD version of the enclosure.|
|Type|string|
|Read Only|True|

### Oem.Hpe.EnclosureDateTime

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The date and time in a Moonshot EL chassis (enclosure).|
|Type|string|
|Read Only|False|
|Format|date-time|

### Oem.Hpe.EnclosureIndicatorLED

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The enclosure indicator LED that is used to identify the enclosure.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Indicator LED cannot be determined.|
|`Lit`|The Indicator LED is on.|
|`Blinking`|The Indicator LED is blinking.|
|`Off`|The Indicator LED is off.|

### Oem.Hpe.EnclosureModel

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Type of enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.EnclosureUUID

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The UUID of the enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.Firmware

**Oem.Hpe.Firmware.ChassisControllerVersion**
**Oem.Hpe.Firmware.ChassisControllerVersion.Current**
**Oem.Hpe.Firmware.ChassisControllerVersion.Current.VersionString**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the chassis controller.|
|Type|string|
|Read Only|True|

**Oem.Hpe.Firmware.PlatformDefinitionTable**
**Oem.Hpe.Firmware.PlatformDefinitionTable.Current**
**Oem.Hpe.Firmware.PlatformDefinitionTable.Current.VersionString**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The version of the Intelligent Platform Abstraction Data.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.PowerManagementController**
**Oem.Hpe.Firmware.PowerManagementController.Current**
**Oem.Hpe.Firmware.PowerManagementController.Current.VersionString**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the Power Monitor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.PowerManagementControllerBootloader**
**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current**
**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current.Family**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The family type of the Power Monitor hardware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current.VersionString**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the Power Monitor boot loader.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.SASProgrammableLogicDevice**
**Oem.Hpe.Firmware.SASProgrammableLogicDevice.Current**
**Oem.Hpe.Firmware.SASProgrammableLogicDevice.Current.VersionString**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the SAS controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.SPSFirmwareVersionData**
**Oem.Hpe.Firmware.SPSFirmwareVersionData.Current**
**Oem.Hpe.Firmware.SPSFirmwareVersionData.Current.VersionString**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The SPS FW Version number, aka ME FW Version, AAAA.BBBB.CCCC.DDDD.E|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.SystemProgrammableLogicDevice**
**Oem.Hpe.Firmware.SystemProgrammableLogicDevice.Current**
**Oem.Hpe.Firmware.SystemProgrammableLogicDevice.Current.VersionString**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The firmware version of the CPLD.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IPv4Address

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The IPv4 address of the chassis manager.|
|Type|string|
|Read Only|True|

### Oem.Hpe.Images

**Oem.Hpe.Images.Front**
**Oem.Hpe.Images.Front.extref**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The URI of an external resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

**Oem.Hpe.Images.Model**
**Oem.Hpe.Images.Model.extref**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The URI of an external resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Oem.Hpe.Location

**Oem.Hpe.Location.GeographicLocation**
**Oem.Hpe.Location.GeographicLocation.RackName**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The name of the chassis enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack**
**Oem.Hpe.Location.LocationInRack.RackLdsPartNumber**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack part number.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.RackLdsProductDescription**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description| The chassis rack product description.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.RackUHeight**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack U height.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.RackUUID**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack UUID.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.TagVersion**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack tag version.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.ULocation**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis rack U location.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.UPosition**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis U position in the rack.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationOfChassis**
**Oem.Hpe.Location.LocationOfChassis.UUID**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis UUID provided by SMBIOS.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.MCTPEnabledOnServer

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Indicates if MCTP is enabled on the server or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.NodePowerWatts

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The total power being consumed by this node.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.OnboardAdministrator

**Oem.Hpe.OnboardAdministrator.IPv4Address**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|IPv4 address of the chassis.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Oem.Hpe.OnboardAdministrator.IPv6**
**Oem.Hpe.OnboardAdministrator.IPv6.DHCPv6Address (array)**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

`DHCPv6Address` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.IPv6.SLAACAddress (array)**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

`SLAACAddress` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.IPv6.StaticAddress (array)**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

`StaticAddress` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.MacAddress**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|MAC address of the chassis.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.PcieMini2SlotRiser

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|PCIE mini 2 slot riser is a platform dependent value used to identify installation of this riser.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`NotInstalled`|The PCIE mini 2 slot riser is not installed. The PCIE mini slot 3 and slot 4 do not exist in this Enclosure.|
|`InstalledWithOtherFRU`|A non recognized riser option is installed with a valid EEPROM FRU. Contact Customer Support to secure a replacement.|
|`InstalledWithBadFRU`|The PCIe mini 2 slot riser is installed with an invaild EEPROM FRU. Contact Customer Support to secure a replacement.|
|`Installed`|The PCIE mini 2 slot riser is installed. The PCIE mini slot 3 and slot 4 exist in this Enclosure.|

### Oem.Hpe.PowerAlertMode

**Oem.Hpe.PowerAlertMode.Activated**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The power alert mode activation state.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.PowerAlertMode.AlertPowerWatts**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The power consumption of the system when operating in alert mode.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.PowerAlertMode.SpikeWatts**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Maximum additional power consumed when all CPUs are in Turbo Mode|
|Type|integer|
|Read Only|True|

### Oem.Hpe.RackName

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The name of the rack that contains the enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.SmartStorageBattery (array)

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

`SmartStorageBattery` is an array containing elements of:

**SmartStorageBattery[{item}].BatteryWearLevelPercent**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The battery wear level percentage. When this value reaches 100%, the battery is completely worn out and needs to be replaced. The value is null if battery wear level cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|

**SmartStorageBattery[{item}].ChargeLevelPercent**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|State of charge of the battery.|
|Type|integer or null|
|Read Only|True|

**SmartStorageBattery[{item}].ErrorCode**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Error code of the battery.|
|Type|string or null|
|Read Only|True|

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
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Is this battery currently predicting a failure in the near future.|
|Type|boolean or null|
|Read Only|True|

**SmartStorageBattery[{item}].FirmwareVersion**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Firmware version of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].Index**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Index of the battery.|
|Type|integer|
|Read Only|True|

**SmartStorageBattery[{item}].MaximumCapWatts**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Maximum capacity of the battery in watts.|
|Type|integer|
|Read Only|True|

**SmartStorageBattery[{item}].Model**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Model of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].ProductName**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Product name of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].RemainingChargeTimeSeconds**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Remaining charging time of the battery in seconds.|
|Type|integer or null|
|Read Only|True|

**SmartStorageBattery[{item}].SerialNumber**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Serial number of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].SparePartNumber**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Spare part number of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].Status**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.SystemMaintenanceSwitches

**Oem.Hpe.SystemMaintenanceSwitches.Sw1**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Override iLO security.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|iLO Security Override Enabled.|
|`Off`|No function (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw10**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw11**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw12**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw2**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw3**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw4**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw5**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|BIOS/UEFI Password Disable.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Power On Password disabled.|
|`Off`|Power On Password enabled (Normal).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw6**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reset Configuration.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`||
|`Off`||

**Oem.Hpe.SystemMaintenanceSwitches.Sw7**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Default).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw8**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Default).|

**Oem.Hpe.SystemMaintenanceSwitches.Sw9**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|
|`Off`|Switch is off (Default).|

### Oem.Hpe.TrayID

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|Tray ID is a platform dependent value used to identify what kind of server tray it is.|
|Type|string|
|Read Only|True|

### PCIeDevices

The link to the collection of PCIe devices located in this chassis.
PCIeDevices is a link (`"@odata.id": URI`) to another resource.

### PCIeSlots

The link to the PCIe slot properties for this chassis.
PCIeSlots is a link (`"@odata.id": URI`) to another resource.

### PartNumber

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalSecurity

**PhysicalSecurity.IntrusionSensor**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|This indicates the known state of the physical security sensor, such as if it is hardware intrusion detected.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Normal`|No abnormal physical security conditions are detected at this time.|
|`HardwareIntrusion`|A door, lock, or other mechanism protecting the internal system hardware from being accessed is detected as being in an insecure state.|
|`TamperingDetected`|Physical tampering of the monitored entity is detected.|

**PhysicalSecurity.IntrusionSensorReArm**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|This indicates how the Normal state to be restored.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Manual`|This sensor would be restored to the Normal state by a manual re-arm.|
|`Automatic`|This sensor would be restored to the Normal state automatically as no abnormal physical security conditions are detected.|

### Power

A reference to the thermal metrics (power supplies, power policies, sensors) for this chassis.
Power is a link (`"@odata.id": URI`) to another resource.

### PowerState

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|This is the current power state of the chassis.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|`Null`|
|`On`|
|`Off`|
|`Unknown`|
|`Reset`|

### SKU

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis SKU.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The chassis serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SparePartNumber

Member of [Chassis.v1\_23\_0.Chassis](#chassis)

| | |
|---|---|
|Description|The spare part number of the chassis.|
|Type|string or null|
|Read Only|True|

### Status

Member of [Chassis.v1\_23\_0.Chassis](#chassis)
See the Redfish standard schema and specification for information on common Status object.

### Thermal

A reference to the thermal metrics (fans, cooling, sensors) for this chassis.
Thermal is a link (`"@odata.id": URI`) to another resource.

### Actions


**HpeServerChassis.DisableMCTPOnServer**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)
There are no parameters for this action.

**HpeServerChassis.FactoryResetMCTP**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)
There are no parameters for this action.

**HpeServerChassis.ModifyEnclosureChassisFru**
Member of [Chassis.v1\_23\_0.Chassis](#chassis)
The action to modify field of enclosure chassis FRU.


**Parameters:**

**PartNumber (string)**

Part Number of the enclosure chassis.

**SerialNumber (string)**

Serial Number of the enclosure chassis.
