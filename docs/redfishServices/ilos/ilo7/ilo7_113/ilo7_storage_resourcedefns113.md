---
excludeFromSearch: true
seo:
  title: Storage resource definitions
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
---

# Storage resource definitions of iLO 7 v1.13

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## StorageCollection

`@odata.type: "#StorageCollection.StorageCollection"`

A Collection of Storage resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/storage`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Storage](ilo7_storage_resourcedefns113/#storage)|

### Members (array)

Member of StorageCollection.StorageCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of StorageCollection.StorageCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Members@odata.count

Member of StorageCollection.StorageCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

## Storage

`@odata.type: "#Storage.v1_14_1.Storage"`

Storage defines a storage subsystem and its respective properties.  A storage subsystem represents a set of storage controllers (physical or virtual) and the resources such as volumes that can be accessed from that subsystem.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/storage/{item}`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Volumes`|Collection of [Volume](ilo7_storage_resourcedefns113/#volumecollection)|
|`Controllers`|Collection of [StorageController](ilo7_storage_resourcedefns113/#storagecontrollercollection)|
|`Links/Enclosures[]`|[Chassis](ilo7_chassis_resourcedefns113/#chassis)|
|`StorageControllers`|Collection of [StorageController](ilo7_storage_resourcedefns113/#storagecontrollercollection)|
|`Drives[]`|[Drive](ilo7_storage_resourcedefns113/#drive)|

### Controllers

The set of controllers instantiated by this storage subsystem.
Controllers is a link (`"@odata.id": URI`) to another resource.

### Drives (array)

Member of [Storage.v1\_14\_1.Storage](#storage)

`Drives` is an array containing elements of:

**Drives[{item}].@odata.id**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Drives@odata.count

Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The number of items in a collection.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

### EncryptionMode

Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The encryption mode of this storage subsystem.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Encryption is disabled on the storage subsystem.|
|`UseExternalKey`|The storage subsystem uses one or more external keys for encryption.|
|`UseLocalKey`|The storage subsystem uses a local key for encryption.|
|`PasswordOnly`|The storage subsystem uses a password, but no keys for encryption.|
|`PasswordWithExternalKey`|The storage subsystem uses a password and one or more external keys for encryption.|
|`PasswordWithLocalKey`|The storage subsystem uses a password and a local key for encryption.|

### LocalEncryptionKeyIdentifier

Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The local encryption key identifier used by the storage subsystem.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Status

Member of [Storage.v1\_14\_1.Storage](#storage)
See the Redfish standard schema and specification for information on common Status object.

### StorageControllers (array)

Member of [Storage.v1\_14\_1.Storage](#storage)

`StorageControllers` is an array containing elements of:

**StorageControllers[{item}].@odata.id**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

**StorageControllers[{item}].CacheSummary**
**StorageControllers[{item}].CacheSummary.PersistentCacheSizeMiB**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The portion of the cache memory that is persistent, measured in MiB.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].CacheSummary.Status**
Member of [Storage.v1\_14\_1.Storage](#storage)
See the Redfish standard schema and specification for information on common Status object.

**StorageControllers[{item}].CacheSummary.TotalCacheSizeMiB**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The total configured cache memory, measured in MiB.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].ControllerRates**
**StorageControllers[{item}].ControllerRates.ConsistencyCheckRatePercent**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The percentage of controller resources used for performing a data consistency check on volumes.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**StorageControllers[{item}].ControllerRates.RebuildRatePercent**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The percentage of controller resources used for rebuilding/repairing volumes.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**StorageControllers[{item}].ControllerRates.TransformationRatePercent**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The percentage of controller resources used for transforming volumes from one configuration to another.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**StorageControllers[{item}].FirmwareVersion**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The firmware version of this storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].Identifiers (array)**
Member of [Storage.v1\_14\_1.Storage](#storage)

`Identifiers` is an array containing elements of:

**Identifiers[{item}].DurableName**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The world-wide, persistent name of the resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Identifiers[{item}].DurableNameFormat**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The format of the durable name property.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`NAA`|The Name Address Authority (NAA) format.|
|`iQN`|The iSCSI Qualified Name (iQN).|
|`FC_WWN`|The Fibre Channel (FC) World Wide Name (WWN).|
|`UUID`|The Universally Unique Identifier (UUID).|
|`EUI`|The IEEE-defined 64-bit Extended Unique Identifier (EUI).|
|`NQN`|The NVMe Qualified Name (NQN).|
|`NGUID`|The Namespace Globally Unique Identifier (NGUID).|

**StorageControllers[{item}].Location**
**StorageControllers[{item}].Location.PartLocation**
**StorageControllers[{item}].Location.PartLocation.LocationOrdinalValue**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].Location.PartLocation.LocationType**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The location types for PartLocation.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Slot`|The slot as the type of location.|
|`Bay`|The bay as the type of location.|
|`Connector`|The connector as the type of location.|
|`Socket`|The socket as the type of location.|
|`Embedded`|Embedded within a part.|

**StorageControllers[{item}].Location.PartLocation.Orientation**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The orientation for the ordering of the part location ordinal value.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

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

**StorageControllers[{item}].Location.PartLocation.Reference**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The reference area for the location of the part.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

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

**StorageControllers[{item}].Location.PartLocation.ServiceLabel**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].Location.Placement**
**StorageControllers[{item}].Location.Placement.AdditionalInfo**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**StorageControllers[{item}].Location.Placement.Rack**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**StorageControllers[{item}].Location.Placement.RackOffset**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**StorageControllers[{item}].Location.Placement.RackOffsetUnits**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The type of rack unit in use.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OpenU`|A rack unit that is equal to 48 mm (1.89 in).|
|`EIA_310`|A rack unit that is equal to 1.75 in (44.45 mm).|

**StorageControllers[{item}].Location.Placement.Row**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**StorageControllers[{item}].Manufacturer**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|Controller Manufacturer name.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].MemberId**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|This is the identifier for the member within the collection.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].Model**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|Controller model name.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].PCIeInterface**
**StorageControllers[{item}].PCIeInterface.LanesInUse**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|This is the number of PCIe lanes in use by this device.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].PCIeInterface.MaxLanes**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|This is the number of PCIe lanes supported by this device.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].PCIeInterface.MaxPCIeType**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The highest version of the PCIe specification supported by this device.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Gen1`|A PCIe v1.0 slot.|
|`Gen2`|A PCIe v2.0 slot.|
|`Gen3`|A PCIe v3.0 slot.|
|`Gen4`|A PCIe v4.0 slot.|
|`Gen5`|A PCIe v5.0 slot.|

**StorageControllers[{item}].PCIeInterface.PCIeType**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The version of the PCIe specification in use by this device.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Gen1`|A PCIe v1.0 slot.|
|`Gen2`|A PCIe v2.0 slot.|
|`Gen3`|A PCIe v3.0 slot.|
|`Gen4`|A PCIe v4.0 slot.|
|`Gen5`|A PCIe v5.0 slot.|

**StorageControllers[{item}].PartNumber**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The part number for this storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].SKU**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The SKU for this storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].SerialNumber**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|Controller serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].SpeedGbps**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Description|The maximum speed of the storage controller's device interface.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**StorageControllers[{item}].Status**
Member of [Storage.v1\_14\_1.Storage](#storage)
See the Redfish standard schema and specification for information on common Status object.

**StorageControllers[{item}].SupportedControllerProtocols (array)**
Member of [Storage.v1\_14\_1.Storage](#storage)

`SupportedControllerProtocols` is an array containing elements of:

**SupportedControllerProtocols[{item}]**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|
|---|
|`PCIe`|

**StorageControllers[{item}].SupportedDeviceProtocols (array)**
Member of [Storage.v1\_14\_1.Storage](#storage)

`SupportedDeviceProtocols` is an array containing elements of:

**SupportedDeviceProtocols[{item}]**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`NVMe`|Non-Volatile Memory Express (NVMe).|
|`SAS`|Serial Attached SCSI.|
|`SATA`|Serial AT Attachment.|
|`USB`|Universal Serial Bus (USB).|

**StorageControllers[{item}].SupportedRAIDTypes (array)**
Member of [Storage.v1\_14\_1.Storage](#storage)

`SupportedRAIDTypes` is an array containing elements of:

**SupportedRAIDTypes[{item}]**
Member of [Storage.v1\_14\_1.Storage](#storage)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`RAID0`|A placement policy where consecutive logical blocks of data are uniformly distributed across a set of independent storage devices without offering any form of redundancy.|
|`RAID1`|A placement policy where each logical block of data is stored on more than one independent storage device.|
|`RAID3`|A placement policy using parity-based protection where logical bytes of data are uniformly distributed across a set of independent storage devices and where the parity is stored on a dedicated independent storage device.|
|`RAID4`|A placement policy using parity-based protection where logical blocks of data are uniformly distributed across a set of independent storage devices and where the parity is stored on a dedicated independent storage device.|
|`RAID5`|A placement policy using parity-based protection for storing stripes of 'n' logical blocks of data and one logical block of parity across a set of 'n+1' independent storage devices where the parity and data blocks are interleaved across the storage devices.|
|`RAID6`|A placement policy using parity-based protection for storing stripes of 'n' logical blocks of data and two logical blocks of independent parity across a set of 'n+2' independent storage devices where the parity and data blocks are interleaved across the storage devices.|
|`RAID10`|A placement policy that creates a striped device (RAID 0) over a set of mirrored devices (RAID 1).|
|`RAID01`|A data placement policy that creates a mirrored device (RAID 1) over a set of striped devices (RAID 0).|
|`RAID6TP`|A placement policy that uses parity-based protection for storing stripes of 'n' logical blocks of data and three logical blocks of independent parity across a set of 'n+3' independent storage devices where the parity and data blocks are interleaved across the storage devices.|
|`RAID1E`|A placement policy that uses a form of mirroring implemented over a set of independent storage devices where logical blocks are duplicated on a pair of independent storage devices so that data is uniformly distributed across the storage devices.|
|`RAID50`|A placement policy that uses a RAID 0 stripe set over two or more RAID 5 sets of independent storage devices.|
|`RAID60`|A placement policy that uses a RAID 0 stripe set over two or more RAID 6 sets of independent storage devices.|
|`RAID00`|A placement policy that creates a RAID 0 stripe set over two or more RAID 0 sets.|
|`RAID10E`|A placement policy that uses a RAID 0 stripe set over two or more RAID 10 sets.|
|`RAID1Triple`|A placement policy where each logical block of data is mirrored three times across a set of three independent storage devices.|
|`RAID10Triple`|A placement policy that uses a striped device (RAID 0) over a set of triple mirrored devices (RAID 1Triple).|
|`None`|A placement policy with no redundancy at the device level.|

### Volumes

A reference to the Volumes associated with this storage system.
Volumes is a link (`"@odata.id": URI`) to another resource.

### Actions

**Storage.ResetToDefaults**
Member of [Storage.v1\_14\_1.Storage](#storage)
This action resets the system.

**Parameters:**

**ResetType (string)**

|Value|Description|
|---|---|
|ResetAll|Reset all settings to factory defaults and remove all volumes.|
|PreserveVolumes|Reset all settings to factory defaults but preserve the configured volumes on the controllers.|

**target (string)**

Link to invoke action

**title (string)**

Friendly action name

## StorageControllerCollection

`@odata.type: "#StorageControllerCollection.StorageControllerCollection"`

A Collection of Storage resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[StorageController](ilo7_storage_resourcedefns113/#storagecontroller)|

### Members (array)

Member of StorageControllerCollection.StorageControllerCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of StorageControllerCollection.StorageControllerCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Members@odata.count

Member of StorageControllerCollection.StorageControllerCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

## StorageController

`@odata.type: "#StorageController.v1_0_0.StorageController"`

The StorageController schema describes a storage controller and its properties.  A storage controller represents a physical or virtual storage device that produces volumes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`ports`|Collection of [Port](ilo7_other_resourcedefns113/#portcollection)|

### AssetTag

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The user-assigned asset tag for this storage controller.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### CacheSummary

**CacheSummary.PersistentCacheSizeMiB**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The portion of the cache memory that is persistent, measured in MiB.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**CacheSummary.Status**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)
See the Redfish standard schema and specification for information on common Status object.

**CacheSummary.TotalCacheSizeMiB**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The total configured cache memory, measured in MiB.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### ControllerRates

**ControllerRates.ConsistencyCheckRatePercent**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The percentage of controller resources used for performing a data consistency check on volumes.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**ControllerRates.RebuildRatePercent**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The percentage of controller resources used for rebuilding/repairing volumes.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**ControllerRates.TransformationRatePercent**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The percentage of controller resources used for transforming volumes from one configuration to another.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

### FirmwareVersion

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The firmware version of this storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Identifiers (array)

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

`Identifiers` is an array containing elements of:

**Identifiers[{item}].DurableName**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The world-wide, persistent name of the resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Identifiers[{item}].DurableNameFormat**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The format of the durable name property.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`NAA`|The Name Address Authority (NAA) format.|
|`iQN`|The iSCSI Qualified Name (iQN).|
|`FC_WWN`|The Fibre Channel (FC) World Wide Name (WWN).|
|`UUID`|The Universally Unique Identifier (UUID).|
|`EUI`|The IEEE-defined 64-bit Extended Unique Identifier (EUI).|
|`NQN`|The NVMe Qualified Name (NQN).|
|`NGUID`|The Namespace Globally Unique Identifier (NGUID).|

### Location

**Location.PartLocation**
**Location.PartLocation.LocationOrdinalValue**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Location.PartLocation.LocationType**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The location types for PartLocation.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Slot`|The slot as the type of location.|
|`Bay`|The bay as the type of location.|
|`Connector`|The connector as the type of location.|
|`Socket`|The socket as the type of location.|
|`Embedded`|Embedded within a part.|

**Location.PartLocation.Orientation**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The orientation for the ordering of the part location ordinal value.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

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
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The reference area for the location of the part.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

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
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Location.Placement**
**Location.Placement.AdditionalInfo**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**Location.Placement.Rack**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**Location.Placement.RackOffset**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**Location.Placement.RackOffsetUnits**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The type of rack unit in use.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OpenU`|A rack unit that is equal to 48 mm (1.89 in).|
|`EIA_310`|A rack unit that is equal to 1.75 in (44.45 mm).|

**Location.Placement.Row**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### Manufacturer

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The manufacturer of this storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Model

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The model number for the storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### PCIeInterface

**PCIeInterface.LanesInUse**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|This is the number of PCIe lanes in use by this device.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PCIeInterface.MaxLanes**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|This is the number of PCIe lanes supported by this device.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PCIeInterface.MaxPCIeType**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The highest version of the PCIe specification supported by this device.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Gen1`|A PCIe v1.0 slot.|
|`Gen2`|A PCIe v2.0 slot.|
|`Gen3`|A PCIe v3.0 slot.|
|`Gen4`|A PCIe v4.0 slot.|
|`Gen5`|A PCIe v5.0 slot.|

**PCIeInterface.PCIeType**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The version of the PCIe specification in use by this device.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Gen1`|A PCIe v1.0 slot.|
|`Gen2`|A PCIe v2.0 slot.|
|`Gen3`|A PCIe v3.0 slot.|
|`Gen4`|A PCIe v4.0 slot.|
|`Gen5`|A PCIe v5.0 slot.|

### PartNumber

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The part number for this storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### SKU

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The SKU for this storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### SerialNumber

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The serial number for this storage controller.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### SpeedGbps

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Description|The maximum speed of the storage controller's device interface.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### Status

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)
See the Redfish standard schema and specification for information on common Status object.

### SupportedControllerProtocols (array)

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

`SupportedControllerProtocols` is an array containing elements of:

**SupportedControllerProtocols[{item}]**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`SAS`|Serial Attached SCSI.|
|`NVMe`|Non-Volatile Memory Express|
|`SATA`|Serial AT Attachment|
|`USB`|Universal Serial Bus|
|`PCIe`|PCI Express|

### SupportedDeviceProtocols (array)

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

`SupportedDeviceProtocols` is an array containing elements of:

**SupportedDeviceProtocols[{item}]**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`SAS`|Serial Attached SCSI.|
|`NVMe`|Non-Volatile Memory Express|
|`SATA`|Serial AT Attachment|
|`USB`|Universal Serial Bus|
|`PCIe`|PCI Express|

### SupportedRAIDTypes (array)

Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

`SupportedRAIDTypes` is an array containing elements of:

**SupportedRAIDTypes[{item}]**
Member of [StorageController.v1\_0\_0.StorageController](#storagecontroller)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`RAID0`|A placement policy where consecutive logical blocks of data are uniformly distributed across a set of independent storage devices without offering any form of redundancy.|
|`RAID1`|A placement policy where each logical block of data is stored on more than one independent storage device.|
|`RAID3`|A placement policy using parity-based protection where logical bytes of data are uniformly distributed across a set of independent storage devices and where the parity is stored on a dedicated independent storage device.|
|`RAID4`|A placement policy using parity-based protection where logical blocks of data are uniformly distributed across a set of independent storage devices and where the parity is stored on a dedicated independent storage device.|
|`RAID5`|A placement policy using parity-based protection for storing stripes of 'n' logical blocks of data and one logical block of parity across a set of 'n+1' independent storage devices where the parity and data blocks are interleaved across the storage devices.|
|`RAID6`|A placement policy using parity-based protection for storing stripes of 'n' logical blocks of data and two logical blocks of independent parity across a set of 'n+2' independent storage devices where the parity and data blocks are interleaved across the storage devices.|
|`RAID10`|A placement policy that creates a striped device (RAID 0) over a set of mirrored devices (RAID 1).|
|`RAID01`|A data placement policy that creates a mirrored device (RAID 1) over a set of striped devices (RAID 0).|
|`RAID6TP`|A placement policy that uses parity-based protection for storing stripes of 'n' logical blocks of data and three logical blocks of independent parity across a set of 'n+3' independent storage devices where the parity and data blocks are interleaved across the storage devices.|
|`RAID1E`|A placement policy that uses a form of mirroring implemented over a set of independent storage devices where logical blocks are duplicated on a pair of independent storage devices so that data is uniformly distributed across the storage devices.|
|`RAID50`|A placement policy that uses a RAID 0 stripe set over two or more RAID 5 sets of independent storage devices.|
|`RAID60`|A placement policy that uses a RAID 0 stripe set over two or more RAID 6 sets of independent storage devices.|
|`RAID00`|A placement policy that creates a RAID 0 stripe set over two or more RAID 0 sets.|
|`RAID10E`|A placement policy that uses a RAID 0 stripe set over two or more RAID 10 sets.|
|`RAID1Triple`|A placement policy where each logical block of data is mirrored three times across a set of three independent storage devices.|
|`RAID10Triple`|A placement policy that uses a striped device (RAID 0) over a set of triple mirrored devices (RAID 1Triple).|
|`None`|A placement policy with no redundancy at the device level.|

## VolumeCollection

`@odata.type: "#VolumeCollection.VolumeCollection"`

A Collection of Volume resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/storage/{item}/volumes`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Volume](ilo7_storage_resourcedefns113/#volume)|

### Members (array)

Member of VolumeCollection.VolumeCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of VolumeCollection.VolumeCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Members@odata.count

Member of VolumeCollection.VolumeCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

## Volume

`@odata.type: "#Volume.v1_0_0.Volume"`

The Volume resource describes a volume, virtual disk, LUN, or other logical storage entity for any system.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/storage/{item}/volumes/{item}`|GET POST PATCH DELETE |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/Drives[]`|[Drive](ilo7_storage_resourcedefns113/#drive)|

### CapacityBytes

Member of [Volume.v1\_0\_0.Volume](#volume)

| | |
|---|---|
|Description|The size in bytes of this Volume|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### DedicatedSpareDrives (array)

Member of [Volume.v1\_0\_0.Volume](#volume)

`DedicatedSpareDrives` is an array containing elements of:

**DedicatedSpareDrives[{item}].@odata.id**
Member of [Volume.v1\_0\_0.Volume](#volume)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Status

Member of [Volume.v1\_0\_0.Volume](#volume)
See the Redfish standard schema and specification for information on common Status object.

### VolumeType

Member of [Volume.v1\_0\_0.Volume](#volume)

| | |
|---|---|
|Description|The type of this volume.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`RawDevice`|The volume is a raw physical device without any RAID or other virtualization applied|

## Drive

`@odata.type: "#Drive.v1_16_0.Drive"`

The Drive resource describes a single physical disk drive for a system, including links to associated Volumes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/storage/{item}/drives/{item}`|GET POST PATCH |

### BlockSizeBytes

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The size of the smallest addressible unit (Block) of this drive in bytes|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### CapableSpeedGbs

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The speed which this drive can communicate to a storage controller in ideal conditions in Gigabits per second|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### CapacityBytes

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The size in bytes of this Drive|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### DriveFormFactor

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The form factor of the drive inserted in this slot.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Drive3_5`|A 3.5 inch drive.|
|`Drive2_5`|A 2.5 inch drive.|
|`EDSFF_1U_Long`|An EDSFF 1U Long (E1.L) drive.|
|`EDSFF_1U_Short`|An EDSFF 1U Short (E1.S) drive.|
|`EDSFF_E3_Short`|An EDSFF E3 Short (E3.S) drive.|
|`EDSFF_E3_Long`|An EDSFF E3 Long (E3.L) drive.|
|`M2_2230`|An M.2 2230 drive.|
|`M2_2242`|An M.2 2242 drive.|
|`M2_2260`|An M.2 2260 drive.|
|`M2_2280`|An M.2 2280 drive.|
|`M2_22110`|An M.2 22110 drive.|
|`U2`|A U.2 drive.|
|`PCIeSlotFullLength`|A full length PCIe add in card.|
|`PCIeSlotLowProfile`|A low profile PCIe add in card.|
|`PCIeHalfLength`|A half length PCIe add in card.|
|`OEM`|An OEM-defined form factor.|

### EncryptionAbility

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|The drive is not capable of self encryption|
|`SelfEncryptingDrive`|The drive is capable of self encryption per the Trusted Computing Group's Self Encrypting Drive Standard|
|`Other`|The drive is capable of self encryption through some other means|

### EncryptionStatus

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Unencrypted`||
|`Unlocked`|The drive is currently encrypted but the data is accessible to the user unencrypted.|
|`Locked`|The drive is currently encrypted and the data is not accessible to the user, however the system has the ability to unlock the drive automatically.|
|`Foreign`|The drive is currently encrypted, the data is not accessible to the user, and the system requires user intervention to expose the data.|

### FailurePredicted

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|Is this drive currently predicting a failure in the near future|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

### HotspareType

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|The drive is not currently a hotspare|
|`Global`|The drive is currently serving as a hotspare for all other drives in the storage system.|
|`Chassis`|The drive is currently serving as a hotspare for all other drives in the chassis.|
|`Dedicated`|The drive is currently serving as a hotspare for a user defined set of drives.|

### Identifiers (array)

Member of [Drive.v1\_16\_0.Drive](#drive)

`Identifiers` is an array containing elements of:

**Identifiers[{item}].DurableName**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The world-wide, persistent name of the resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Identifiers[{item}].DurableNameFormat**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The format of the durable name property.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`NAA`|The Name Address Authority (NAA) format.|
|`iQN`|The iSCSI Qualified Name (iQN).|
|`FC_WWN`|The Fibre Channel (FC) World Wide Name (WWN).|
|`UUID`|The Universally Unique Identifier (UUID).|
|`EUI`|The IEEE-defined 64-bit Extended Unique Identifier (EUI).|
|`NQN`|The NVMe Qualified Name (NQN).|
|`NGUID`|The Namespace Globally Unique Identifier (NGUID).|

### Location (array)

Member of [Drive.v1\_16\_0.Drive](#drive)

`Location` is an array containing elements of:

**Location[{item}].Info**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This indicates the location of the resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Location[{item}].InfoFormat**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This represents the format of the Info property.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Box:Bay`|The Info is the box and bay number of the Drive.|
|`BayNumber`|The Info is the bay number of the Drive.|
|`Slot`|The Info is the PCIe slot of the Drive (eg: NVMe drives).|

### LocationIndicatorActive

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|An indicator allowing an operator to physically locate this resource.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### Manufacturer

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This is the manufacturer of this drive.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### MediaType

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The type of media contained in this drive.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`HDD`|The drive media type is traditional magnetic platters|
|`SSD`|The drive media type is solid state or flash memory|

### Model

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This is the model number for the drive.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Multipath

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|An indication of whether the drive is accessible from multiple paths.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

### NegotiatedSpeedGbs

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The speed which this drive is currently communicating to the storage controller in Gigabits per second|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.CriticalWarning

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|Failure information reported by the drive.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`AvailableSpareSpace`|Available spare space has fallen below the threshold.|
|`TemperatureTheshold`|A temperature is above an over temperature threshold or below an under temperature threshold.|
|`ReliabilityError`|The NVM subsystem reliability has been degraded due to significant media related errors or any internal error that degrades NVM subsystem reliability.|
|`ReadOnlyMode`|The media has been placed in read only mode.|
|`VolatileBackupFailure`|The volatile memory backup device has failed. This field is only valid if the controller has a volatile memory backup solution|

### Oem.Hpe.CurrentTemperatureCelsius

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The current temperature of the drive|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.DriveStatus

**Oem.Hpe.DriveStatus.Health**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This represents the health state of this resource in the absence of its dependent resources.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**Oem.Hpe.DriveStatus.HealthRollup**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This represents the overall health state from the view of this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**Oem.Hpe.DriveStatus.State**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This indicates the known state of the resource, such as if it is enabled.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Enabled`|This function or resource has been enabled.|
|`Disabled`|This function or resource has been disabled.|
|`StandbyOffline`|This function or resource is enabled, but awaiting an external action to activate it.|
|`StandbySpare`|This function or resource is part of a redundancy set and is awaiting a failover or other external action to activate it.|
|`InTest`|This function or resource is undergoing testing.|
|`Starting`|This function or resource is starting.|
|`Absent`|This function or resource is not present or not detected.|
|`UnavailableOffline`|This function or resource is present but cannot be used.|
|`Deferring`|The element will not process any commands but will queue new requests.|
|`Quiesced`|The element is enabled but only processes a restricted set of commands.|
|`Updating`|The element is updating and may be unavailable or degraded.|

### Oem.Hpe.HealthUpdated

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|Describes how drive health related data (FailurePredicted, PredictedMediaLifeLeftPercent, Status, DriveStatus, CriticalWarning, WearStatus) are updated.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Boot`|The health related properties are updated when the system boot and are not updated at runtime.|
|`Dynamic`|The health related properties are updated periodically at runtime.|

### Oem.Hpe.NVMeId

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|NVMe Identifier:  ModelName, SerialNumber, PCI-Vendor-ID.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.PowerOnHours

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The number of lifetime hours that the drive has been powered on. The value is null if the disk power on hours cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.TemperatureStatus

**Oem.Hpe.TemperatureStatus.Health**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This represents the health state of this resource in the absence of its dependent resources.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**Oem.Hpe.TemperatureStatus.HealthRollup**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This represents the overall health state from the view of this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**Oem.Hpe.TemperatureStatus.State**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This indicates the known state of the resource, such as if it is enabled.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Enabled`|This function or resource has been enabled.|
|`Disabled`|This function or resource has been disabled.|
|`StandbyOffline`|This function or resource is enabled, but awaiting an external action to activate it.|
|`StandbySpare`|This function or resource is part of a redundancy set and is awaiting a failover or other external action to activate it.|
|`InTest`|This function or resource is undergoing testing.|
|`Starting`|This function or resource is starting.|
|`Absent`|This function or resource is not present or not detected.|
|`UnavailableOffline`|This function or resource is present but cannot be used.|
|`Deferring`|The element will not process any commands but will queue new requests.|
|`Quiesced`|The element is enabled but only processes a restricted set of commands.|
|`Updating`|The element is updating and may be unavailable or degraded.|

### Oem.Hpe.WearStatus

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The wear status of the drive, an estimation of remaining life span.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|The SSD is not in any imminent danger of wear out.|
|`FiftySixDayThreshold`|Indicates that based upon the current workload, the solid state disk will reach the maximum usage limit for writes (wear out) within fifty-six days. You should modify your write workload or begin preparing to replace your SSD drive|
|`FivePercentThreshold`|Indicates that the solid state disk has passed the five percent threshold and is at or below five percent of reaching the maximum usage limit for writes (wear out). You should begin to prepare to replace your SSD drive.|
|`TwoPercentThreshold`|Indicates that the solid state disk has passed the two percent threshold and is at or below two percent of reaching the maximum usage limit for writes (wear out). You should begin to prepare to replace your SSD drive.|
|`SSDWearOut`|Indicates that a solid state drive is approaching the maximum usage limit for writes (wear out) and should be replaced as soon as possible.|
|`Unknown`|The SSD wear status cannot be determined.|

### Operations (array)

Member of [Drive.v1\_16\_0.Drive](#drive)

`Operations` is an array containing elements of:

**Operations[{item}].AssociatedTask**
**Operations[{item}].AssociatedTask.EndTime**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The date-time stamp that the task was last completed.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|date-time|

**Operations[{item}].AssociatedTask.Messages (array)**
Member of [Drive.v1\_16\_0.Drive](#drive)

`Messages` is an array containing elements of:

**Messages[{item}].Message**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This is the human readable message, if provided.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Messages[{item}].MessageArgs (array)**
Member of [Drive.v1\_16\_0.Drive](#drive)

`MessageArgs` is an array containing elements of:

**MessageArgs[{item}]**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

**Messages[{item}].MessageId**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This is the key for this message which can be used to look up the message in a message registry.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

**Messages[{item}].RelatedProperties (array)**
Member of [Drive.v1\_16\_0.Drive](#drive)

`RelatedProperties` is an array containing elements of:

**RelatedProperties[{item}]**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

**Messages[{item}].Resolution**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|Used to provide suggestions on how to resolve the situation that caused the error.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Messages[{item}].Severity**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This is the severity of the event.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**Operations[{item}].AssociatedTask.Payload**
**Operations[{item}].AssociatedTask.Payload.HttpHeaders (array)**
Member of [Drive.v1\_16\_0.Drive](#drive)

`HttpHeaders` is an array containing elements of:

**HttpHeaders[{item}]**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

**Operations[{item}].AssociatedTask.Payload.HttpOperation**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The HTTP operation to perform to execute this Task.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

**Operations[{item}].AssociatedTask.Payload.JsonBody**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This property contains the JSON payload to use in the execution of this Task.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

**Operations[{item}].AssociatedTask.Payload.TargetUri**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The URI of the target for this task.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

**Operations[{item}].AssociatedTask.StartTime**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The date-time stamp that the task was last started.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|date-time|

**Operations[{item}].AssociatedTask.TaskMonitor**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The URI of the Task Monitor for this task.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

**Operations[{item}].AssociatedTask.TaskState**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The state of the task.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`New`|A new task.|
|`Starting`|Task is starting.|
|`Running`|Task is running normally.|
|`Suspended`|Task has been suspended.|
|`Interrupted`|Task has been interrupted.|
|`Pending`|Task is pending and has not started.|
|`Stopping`|Task is in the process of stopping.|
|`Completed`|Task has completed.|
|`Killed`|Task was terminated.|
|`Exception`|Task has stopped due to an exception condition.|
|`Service`|Task is running as a service.|

**Operations[{item}].AssociatedTask.TaskStatus**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|This is the completion status of the task.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|Normal.|
|`Warning`|A condition exists that requires attention.|
|`Critical`|A critical condition exists that requires immediate attention.|

**Operations[{item}].OperationName**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The name of the operation.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Operations[{item}].PercentageComplete**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The percentage of the operation that has been completed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### PartNumber

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The part number for this drive.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### PhysicalLocation

**PhysicalLocation.PartLocation**
**PhysicalLocation.PartLocation.LocationOrdinalValue**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalLocation.PartLocation.LocationType**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The location types for PartLocation.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Slot`|The slot as the type of location.|
|`Bay`|The bay as the type of location.|
|`Connector`|The connector as the type of location.|
|`Socket`|The socket as the type of location.|
|`Embedded`|Embedded within a part.|

**PhysicalLocation.PartLocation.Orientation**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The orientation for the ordering of the part location ordinal value.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

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

**PhysicalLocation.PartLocation.Reference**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The reference area for the location of the part.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

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

**PhysicalLocation.PartLocation.ServiceLabel**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalLocation.Placement**
**PhysicalLocation.Placement.AdditionalInfo**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**PhysicalLocation.Placement.Rack**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**PhysicalLocation.Placement.RackOffset**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**PhysicalLocation.Placement.RackOffsetUnits**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The type of rack unit in use.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OpenU`|A rack unit that is equal to 48 mm (1.89 in).|
|`EIA_310`|A rack unit that is equal to 1.75 in (44.45 mm).|

**PhysicalLocation.Placement.Row**
Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### PredictedMediaLifeLeftPercent

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The percentage of reads and writes that are predicted to still be available for the media|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### Protocol

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The protocol this drive is using to communicate to the storage controller|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`SAS`|Serial Attached SCSI.|
|`NVMe`|Non-Volatile Memory Express|
|`SATA`|Serial AT Attachment|
|`USB`|Universal Serial Bus|

### Revision

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The revision of this Drive|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### RotationSpeedRPM

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|The rotation speed of this Drive in Revolutions per Minute (RPM)|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### SerialNumber

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|Serial Number of the drive.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Status

Member of [Drive.v1\_16\_0.Drive](#drive)
See the Redfish standard schema and specification for information on common Status object.

### StatusIndicator

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|The drive is OK.|
|`Fail`|The drive has failed.|
|`Rebuild`|The drive is being rebuilt.|
|`PredictiveFailureAnalysis`|The drive is still working but predicted to fail soon.|
|`Hotspare`|The drive is marked to be automatically rebuilt and used as a replacement for a failed drive.|
|`InACriticalArray`|The array that this drive is a part of is degraded.|
|`InAFailedArray`|The array that this drive is a part of is failed.|

### WriteCacheEnabled

Member of [Drive.v1\_16\_0.Drive](#drive)

| | |
|---|---|
|Description|An indication of whether the drive write cache is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### Actions

**Drive.Reset**
Member of [Drive.v1\_16\_0.Drive](#drive)

**Parameters:**

**target (string)**

Link to invoke action

**ResetValue (string)**

Reset Drive

|Value|Description|
|---|---|
|ForceOff|Turn off the unit immediately (non-graceful shutdown).|
|ForceOn|Turn on the unit immediately.|
|PowerCycle|Power cycle the unit.|
