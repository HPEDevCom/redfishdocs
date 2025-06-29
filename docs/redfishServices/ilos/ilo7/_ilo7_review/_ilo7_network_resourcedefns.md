---
excludeFromSearch: true
seo:
  title: Network resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Network resource definitions of iLO 7 v1.11

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## NetworkAdapterCollection

`@odata.type: "#NetworkAdapterCollection.NetworkAdapterCollection"`

A Collection of NetworkAdapter resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[NetworkAdapter](../ilo7_network_resourcedefns111/#networkadapter)|

### Members (array)

Member of NetworkAdapterCollection.NetworkAdapterCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Members@odata.count

Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.MemberContents

Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Description|Provides the discovery status of this collection.  For some server platforms, only partial device discovery is possible under auxiliary power.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`AllDevices`|The server state allows complete device discovery.  All installed devices are listed as members.|
|`AuxPowerDevices`|The server architecture may not support power to all installed devices in the current auxiliary power state. Only devices capable of operating in this power state are listed as members.  Additional devices may be listed when the server is fully powered.|

## NetworkAdapter

`@odata.type: "#NetworkAdapter.v1_9_0.NetworkAdapter"`

A NetworkAdapter represents the physical network adapter capable of connecting to a computer network.  Examples include but are not limited to Ethernet, Fibre Channel, and converged network adapters.

The Data Source is either DCi or RDE. HPE OEM section shall be present only for DCi Data Source.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}`|GET POST PATCH |
|`/redfish/v1/chassis/{item}/networkadapters/{item}/settings`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`ports`|Collection of [Port](../ilo7_other_resourcedefns111/#portcollection)|

### @Redfish.Settings

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
See the Redfish standard schema and specification for information on common @Redfish properties.

### Controllers (array)

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`Controllers` is an array containing elements of:

**Controllers[{item}].ControllerCapabilities**
**Controllers[{item}].ControllerCapabilities.DataCenterBridging**
**Controllers[{item}].ControllerCapabilities.DataCenterBridging.Capable**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The value of this property shall be a boolean indicating whether this controller is capable of Data Center Bridging (DCB).|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.NPAR**
**Controllers[{item}].ControllerCapabilities.NPAR.NparCapable**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Indicates whether or not NIC function partitioning is supported by a controller.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.NPAR.NparEnabled**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, NIC function partitioning is active on this controller.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.NPIV**
**Controllers[{item}].ControllerCapabilities.NPIV.MaxDeviceLogins**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of N_Port ID Virtualization (NPIV) logins allowed simultaneously from all ports on this controller.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.NPIV.MaxPortLogins**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of N_Port ID Virtualization (NPIV) logins allowed per physical port on this controller.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.NetworkDeviceFunctionCount**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of physical functions available on this controller.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.NetworkPortCount**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The number of physical ports on this controller.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.VirtualizationOffload**
**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.SRIOV**
**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.SRIOV.SRIOVVEPACapable**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The value of this property shall be a boolean indicating whether this controller supports Single Root Input/Output Virtualization (SR-IOV) in Virtual Ethernet Port Aggregator (VEPA) mode.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.VirtualFunction**
**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.VirtualFunction.DeviceMaxCount**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of Virtual Functions (VFs) supported by this controller.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.VirtualFunction.MinAssignmentGroupSize**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The minimum number of Virtual Functions (VFs) that can be allocated or moved between physical functions for this controller.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.VirtualFunction.NetworkPortMaxCount**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of Virtual Functions (VFs) supported per network port for this controller.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].FirmwarePackageVersion**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The version number of the user-facing firmware package.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].Links**
**Controllers[{item}].Links.NetworkDeviceFunctions (array)**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`NetworkDeviceFunctions` is an array containing elements of:

**NetworkDeviceFunctions[{item}].@odata.id**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

**Controllers[{item}].Links.Ports (array)**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`Ports` is an array containing elements of:

**Ports[{item}].@odata.id**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

**Controllers[{item}].Location**
**Controllers[{item}].Location.PartLocation**
**Controllers[{item}].Location.PartLocation.LocationOrdinalValue**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].Location.PartLocation.LocationType**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

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

**Controllers[{item}].Location.PartLocation.Orientation**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

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

**Controllers[{item}].Location.PartLocation.Reference**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

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

**Controllers[{item}].Location.PartLocation.ServiceLabel**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].Location.Placement**
**Controllers[{item}].Location.Placement.AdditionalInfo**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**Controllers[{item}].Location.Placement.Rack**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**Controllers[{item}].Location.Placement.RackOffset**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**Controllers[{item}].Location.Placement.RackOffsetUnits**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

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

**Controllers[{item}].Location.Placement.Row**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### Location

**Location.PartLocation**
**Location.PartLocation.LocationOrdinalValue**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Location.PartLocation.LocationType**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

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
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

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
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

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
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**Location.Placement**
**Location.Placement.AdditionalInfo**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**Location.Placement.Rack**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**Location.Placement.RackOffset**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**Location.Placement.RackOffsetUnits**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

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
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### Manufacturer

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The manufacturer or OEM of this network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Model

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The model string used by the manufacturer to reference this network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### NetworkDeviceFunctions

A reference to the collection of physical network device functions associated with this network adapter.
NetworkDeviceFunctions is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.BaseMACAddress

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Information about the mac address of the device.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.BootStageSensors (array)

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`BootStageSensors` is an array containing elements of:

**BootStageSensors[{item}].BootStage**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Information about Boot stage and Health |
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.CLPVersion

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Option ROM Systems Management Architecture for Server Hardware (SMASH) Command Line Protocol (CLP) support version.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.Controllers (array)

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`Controllers` is an array containing elements of:

**Controllers[{item}].ConfigurationStatus**
**Controllers[{item}].ConfigurationStatus.Detail (array)**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`Detail` is an array containing elements of:

**Detail[{item}].Group**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Configuration group identifier.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Detail[{item}].SubGroup**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Configuration sub-group identifier.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Detail[{item}].Summary**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A digest value representing the current state of configuration for this group/sub-group.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].ConfigurationStatus.Summary**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A digest value representing the current configuration state of this network adapter controller.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].DeviceLimitationsBitmap**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Indicates any unique device limitations. A value of 0 indicates no limitations are present. When set, bit 0 indicates that the device cannot validate data received when in standby power. All other bit mappings are reserved.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].EdgeVirtualBridging**
**Controllers[{item}].EdgeVirtualBridging.ChannelDescriptionTLVCapable**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, this controller supports HPE Flex10Qbg Channel Description TLVs.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].EdgeVirtualBridging.ChannelLinkControlTLVCapable**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, this controller supports HPE Flex10Qbg Channel Link Control TLVs.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].EmbeddedLLDPFunctions**
**Controllers[{item}].EmbeddedLLDPFunctions.Enabled**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description| NOTE: This is a read-only property when the adapter is installed on an HPE Synergy server. When false, globally disables device functions on this controller which utilize HPE defined embedded LLDP.  When set false will also disable EVB, FCoE, RoCE, and DCBX capabilities on this controller. This property does not affect Ethernet NPAR functionality.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**Controllers[{item}].EmbeddedLLDPFunctions.Optional**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, indicates that this controller has the ability to globally disable all network device functions which utilize HPE defined embedded LLDP.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].FactoryDefaultsCurrentlyActive**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, this controller's configuration matches factory default settings.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].FunctionTypeLimits (array)**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`FunctionTypeLimits` is an array containing elements of:

**FunctionTypeLimits[{item}].ConstraintDescription**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**FunctionTypeLimits[{item}].EthernetResourcesConsumed**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**FunctionTypeLimits[{item}].FCoEResourcesConsumed**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**FunctionTypeLimits[{item}].RDMAResourcesConsumed**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**FunctionTypeLimits[{item}].TotalSharedResourcesAvailable**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**FunctionTypeLimits[{item}].iSCSIResourcesConsumed**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Controllers[{item}].FunctionTypes (array)**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`FunctionTypes` is an array containing elements of:

**FunctionTypes[{item}]**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Ethernet`|Has Ethernet functionality.|
|`FibreChannel`|Has native FibreChannel functionality.|
|`iSCSI`|Has iSCSI functionality.|
|`FCoE`|Has FibreChannel over Ethernet functionality.|
|`InfiniBand`|Has InfiniBand functionality.|
|`RoCE`|Has RDMA over Converged Ethernet protocol functionality.|
|`iWarp`|Has internet Wide-area RDMA protocol functionality.|

**Controllers[{item}].MostRecentConfigurationChangeSource**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Type of the last client to have changed configuration on this device.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`None`|No change detected.|
|`OS`|Operating System Driver|
|`VendorControl`|Vendor Control Software|
|`VirtualConnect`|Virtual Connect|
|`CNU`|Converged Network Utility|
|`Other`|Other configuration or diagnostic software.|
|`Redfish`|Redfish Client|
|`UEFI-HII`|UEFI Human Interface Infrastructure|

**Controllers[{item}].RDMASupport (array)**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`RDMASupport` is an array containing elements of:

**RDMASupport[{item}]**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|No RDMA support.|
|`RoCE`|RDMA over Converged Ethernet supported.|
|`iWARP`|iWARP supported.|

**Controllers[{item}].UnderlyingDataSource**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Protocol through which Redfish data is supplied for this adapter.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`DCi`|HPE Proprietary DCi protocol|
|`RDE`|DMTF RDE protocol|

### Oem.Hpe.FactoryDefaultsActuationBehavior

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Indicates the implementation timing of a reset to factory default settings request, when made with the server in the standby power state.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Immediate`|Defaults take effect within 2 seconds of being applied.|
|`AtFullPower`|Defaults take effect within 5 seconds of power being applied.|
|`AtNextReboot`|Defaults take effect on next reboot to full power.|

### Oem.Hpe.FcPorts (array)

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`FcPorts` is an array containing elements of:

**FcPorts[{item}].PortNumber**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Port Number.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**FcPorts[{item}].WWNN**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|World Wide Node Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**FcPorts[{item}].WWPN**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|World Wide Port Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.FlashBankCSControl

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Represents the selected boot bank, using chip select.|
|Type|integer|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.FlashBankMuxControl

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Represents the selected flash bank using Mux|
|Type|integer|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.NextBootFlashBank

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Information about the next boot flash bank.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.PCAVersion

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Printed Circuit Assembly number for the circuit board comprising this device.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.PhysicalPorts (array)

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`PhysicalPorts` is an array containing elements of:

**PhysicalPorts[{item}].BadReceives**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A count of frames that were received by the adapter but which had an error.  This counter is the sum of mib items cpqNicIfPhysAdapterAlignmentErrors, cpqNicIfPhysAdapterFCSErrors, cpqNicIfPhysAdapterFrameTooLongs, and cpqNicIfPhysAdapterInternalMacReceiveErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].BadTransmits**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A count of frames that were not transmitted by the adapter because of an error.  This counter is the sum of MIB items cpqNicIfPhysAdapterDeferredTransmissions, cpqNicIfPhysAdapterLateCollisions, cpqNicIfPhysAdapterExcessiveCollisions, cpqNicIfPhysAdapterCarrierSenseErrors, and cpqNicIfPhysAdapterInternalMacTransmitErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].FullDuplex**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Full-duplex data transmission means that data can be transmitted in both directions on a signal carrier at the same time.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].GoodReceives**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A count of frames successfully received by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].GoodTransmits**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A count of frames successfully transmitted by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].IPv4Addresses (array)**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`IPv4Addresses` is an array containing elements of:

**IPv4Addresses[{item}].Address**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].IPv6Addresses (array)**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`IPv6Addresses` is an array containing elements of:

**IPv6Addresses[{item}].Address**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|This is the IPv6 Address.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|
|Format|ipv6|

**PhysicalPorts[{item}].LinkStatus**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The link status of this interface (port).|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|
|---|
|`LinkUp`|
|`NoLink`|
|`LinkDown`|
|`Null`|

**PhysicalPorts[{item}].MacAddress**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The port MAC address.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].PortNumber**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Port Number of physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].SpeedMbps**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|An estimate of the interface's current bandwidth in Megabits per second.  For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].Status**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
See the Redfish standard schema and specification for information on common Status object.

**PhysicalPorts[{item}].StructuredName**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].Team**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|If a port is configured for NIC teaming, the name of the configured link between the physical ports that form a logical network adapter. This value is displayed for system NICs only (embedded and stand-up).|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**PhysicalPorts[{item}].UEFIDevicePath**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.PowerSensors (array)

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

`PowerSensors` is an array containing elements of:

**PowerSensors[{item}].PowerCapacityWatts**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The total amount of power consumed by the device.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PowerSensors[{item}].SensorId**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A numerical identifier to represent the power sensor|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**PowerSensors[{item}].Status**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.RedfishConfiguration

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Controls Redfish configuration write access to network adapters.  When present and disabled, network adapter information is read-only.  Note that some HPE advanced network adapters will present a reduced level of capability when disabled.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Enabled`|The Redfish management interface is enabled to make changes on this network adapter.  To return to the Disabled state, a network adapter reset to factory default operation is required.|
|`Disabled`|The network adapter is operating in read-only mode relative to the Redfish management interface. To transition to this state, a network adapter reset to factory default operation is required.|

### Oem.Hpe.StructuredName

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.UEFIDevicePath

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### PartNumber

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Manufacturer's Part number for this network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Ports

A reference to the collection of physical network ports associated with this network adapter.
Ports is a link (`"@odata.id": URI`) to another resource.

### SKU

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The value of this property shall contain the Stock Keeping Unit (SKU) for the network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### SerialNumber

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The serial number for this network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### Status

Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
See the Redfish standard schema and specification for information on common Status object.

### Actions

**NetworkAdapter.ResetSettingsToDefault**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
There are no parameters for this action.

**HpeNetworkAdapter.WarmReset**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
There are no parameters for this action.

**HpeNetworkAdapter.ColdReset**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
There are no parameters for this action.

**HpeNetworkAdapter.PowerSaveOff**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
There are no parameters for this action.

**HpeNetworkAdapter.PowerSaveOn**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
There are no parameters for this action.

**NetworkAdapter.FlushConfigurationToNVM**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
NOTE: Deprecated, will be removed in a future release.  Replaced by HpeNetworkAdapter.FlushConfigurationToNVM.

There are no parameters for this action.

**HpeNetworkAdapter.FlushConfigurationToNVM**
Member of [NetworkAdapter.v1\_9\_0.NetworkAdapter](#networkadapter)
There are no parameters for this action.

## NetworkDeviceFunctionCollection

`@odata.type: "#NetworkDeviceFunctionCollection.NetworkDeviceFunctionCollection"`

A Collection of NetworkDeviceFunction resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions`|GET |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunction)|

### Members (array)

Member of NetworkDeviceFunctionCollection.NetworkDeviceFunctionCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkDeviceFunctionCollection.NetworkDeviceFunctionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Members@odata.count

Member of NetworkDeviceFunctionCollection.NetworkDeviceFunctionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

## NetworkDeviceFunction

`@odata.type: "#NetworkDeviceFunction.v1_9_2.NetworkDeviceFunction"`

A Network Device Function represents a logical interface exposed by the network adapter.

The Data Source is either DCi or RDE. HPE OEM section shall be present only for DCi Data Source.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}`|GET POST PATCH |
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}/settings`|GET POST PATCH |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions/{item}`|GET POST PATCH |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions/{item}/settings`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`settings`|[NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunction)|

### @Redfish.Settings

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)
See the Redfish standard schema and specification for information on common @Redfish properties.

### AssignablePhysicalNetworkPorts (array)

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

`AssignablePhysicalNetworkPorts` is an array containing elements of:

**AssignablePhysicalNetworkPorts[{item}].@odata.id**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### BootMode

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Network device boot mode configuration values.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Disabled`|Do not indicate to UEFI/BIOS that this device is bootable.|
|`PXE`|Boot this device using the embedded PXE support.  Only applicable if the NetworkDeviceFunctionType is set to Ethernet. Not supported by HPE.|
|`iSCSI`|Boot this device using the embedded iSCSI boot support and configuration.  Only applicable if the NetworkDeviceFunctionType is set to iSCSI.|
|`FibreChannel`|Boot this device using the embedded Fibre Channel support and configuration.  Only applicable if the NetworkDeviceFunctionType is set to FibreChannel.|
|`FibreChannelOverEthernet`|Boot this device using the embedded Fibre Channel over Ethernet (FCoE) boot support and configuration.  Only applicable if the NetworkDeviceFunctionType is set to FibreChannelOverEthernet.|

### DeviceEnabled

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|A boolean indicating whether the network device function is enabled. Disabled network device functions shall not be enumerated or seen by the operating system.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### Ethernet

**Ethernet.MACAddress**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The effective current MAC Address of this network device function. If an assignable MAC address is not supported, this is a read only alias of the PermanentMACAddress.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**Ethernet.MTUSize**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The Maximum Transmission Unit (MTU) configured for this Network Device Function.  This value serves as a default for the OS driver when booting.  The value only takes-effect on boot.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**Ethernet.MTUSizeMaximum**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The largest maximum transmission unit (MTU) size supported for this network device function.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**Ethernet.PermanentMACAddress**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The Permanent MAC Address of this network device function (physical function). This value is typically programmed during the manufacturing time. This address is not assignable.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### FibreChannel

**FibreChannel.AllowFIPVLANDiscovery**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|For FCoE connections, a boolean indicating whether the FIP VLAN Discovery Protocol is used to determine the FCoE VLAN ID selected by the network device function for the FCoE connection.  If true, and the FIP VLAN Discovery succeeds, the FCoEActiveVLANId property shall reflect the FCoE VLAN ID to be used for all FCoE traffic.  If false, or if the FIP VLAN Discovery protocol fails, the FCoELocalVLANId shall be used for all FCoE traffic and the FCoEActiveVLANId shall reflect the FCoELocalVLANId.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**FibreChannel.BootTargets (array)**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

`BootTargets` is an array containing elements of:

**BootTargets[{item}].BootPriority**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The relative priority for this entry in the boot targets array.  Lower numbers shall represent higher priority, with zero being the highest priority.  The BootPriority shall be unique for all entries of the BootTargets array.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**BootTargets[{item}].LUNID**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The Logical Unit Number (LUN) ID to boot from on the device referred to by the corresponding WWPN.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**BootTargets[{item}].WWPN**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The value of this property shall be World-Wide Port Name (WWPN) to boot from.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**FibreChannel.FCoEActiveVLANId**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|For FCoE connections, the value of this property shall be null or a VLAN ID currently being used for FCoE traffic.  When the FCoE link is down this value shall be null.  When the FCoE link is up this value shall be either the FCoELocalVLANId property or a VLAN discovered via the FIP protocol.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

**FibreChannel.FCoELocalVLANId**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|For FCoE connections, the locally configured VLAN ID.  This value shall be used for FCoE traffic to this network device function during boot unless AllowFIPVLANDiscovery is true and a valid FCoE VLAN ID is found via the FIP VLAN Discovery Protocol.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**FibreChannel.PermanentWWNN**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The permanent World-Wide Node Name (WWNN) of this network device function (physical function). This value is typically programmed during the manufacturing time. This address is not assignable.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**FibreChannel.PermanentWWPN**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

**FibreChannel.WWNN**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The value of this property shall be the effective current World-Wide Node Name (WWNN) of this network device function (physical function). If an assignable WWNN is not supported, this is a read only alias of the PermanentWWNN.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**FibreChannel.WWNSource**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The configuration source of the WWNs for this connection (WWPN and WWNN).|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ConfiguredLocally`|The set of FC/FCoE boot targets was applied locally through API or UI.|
|`ProvidedByFabric`|The set of FC/FCoE boot targets was applied by the Fibre Channel fabric.|

**FibreChannel.WWPN**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The effective current World-Wide Port Name (WWPN) of this network device function (physical function). If an assignable WWPN is not supported, this is a read only alias of the PermanentWWPN.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### MaxVirtualFunctions

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The number of virtual functions (VFs) availbale for this network device function.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### NetDevFuncCapabilities (array)

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

`NetDevFuncCapabilities` is an array containing elements of:

**NetDevFuncCapabilities[{item}]**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Disabled`|Neither enumerated nor visible to the operating system.|
|`Ethernet`|Appears to the operating system as an Ethernet device.|
|`FibreChannel`|Appears to the operating system as a Fibre Channel device.|
|`iSCSI`|Appears to the operating system as an iSCSI device.|
|`FibreChannelOverEthernet`|Appears to the operating system as an FCoE device.|

### NetDevFuncType

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The configured capability of this network device function.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Disabled`|Neither enumerated nor visible to the operating system.|
|`Ethernet`|Appears to the operating system as an Ethernet device.|
|`FibreChannel`|Appears to the operating system as a Fibre Channel device.|
|`iSCSI`|Appears to the operating system as an iSCSI device.|
|`FibreChannelOverEthernet`|Appears to the operating system as an FCoE device.|

### Oem.Hpe.BootTargetSource

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Controls the source of boot target parameters for this network device function. This property can only be configured when the network device function is not in the Disabled state.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`UEFI`|Boot target parameters are under control of UEFI and the device option ROM.  Any target parameters configured on this network device function are ignored.|
|`NetworkDeviceFunction`|Boot target parameters as configured on this network device function will be used.|
|`None`|Boot mode is configured disabled, and no target source applies.|

### Oem.Hpe.ConnectionID

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The Connection ID to be used with EVB, in IETF RFC-4122 UUID format.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.NetDevFuncCapabilities (array)

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

`NetDevFuncCapabilities` is an array containing elements of:

**NetDevFuncCapabilities[{item}]**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Disabled`|Neither enumerated nor visible to the operating system.|
|`Ethernet`|Appears to the operating system as an Ethernet device.|
|`FibreChannel`|Appears to the operating system as a Fibre Channel device.|
|`iSCSI`|Appears to the operating system as an iSCSI device.|
|`FCoE`|Appears to the operating system as an FCoE device.|
|`InfiniBand`|Appears to the operating system as an InfiniBand device.|
|`RoCE`|(Deprecated function type for some adapters, in iLO 1.40+) Appears to the operating system as an RDMA over converged Ethernet device.|
|`iWarp`|(Deprecated function type for some adapters, in iLO 1.40+) Appears to the operating system as an iWarp RDMA device.|

### Oem.Hpe.NetDevFuncType

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The presently configured interconnection capability of this network device function.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Disabled`|This function is disabled, and is neither enumerated nor visible to the operating system.|
|`Ethernet`|This function is configured to operate as an Ethernet device.|
|`FibreChannel`|This function is configured to operate as a Fibre Channel device.|
|`iSCSI`|This function is configured to operate as an iSCSI device.|
|`FCoE`|This function is configured to oeprate as an FCoE device.|
|`InfiniBand`||
|`RCoE`||
|`iWarp`|(Deprecated function type for some adapters, in iLO 1.40+) This function is configured to operate as an iWarp RDMA device.|

### Oem.Hpe.SupportedFCBootTargetCount

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The number of Fibre Channel boot targets supported by this network device function.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.VirtualLinkStatus

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Current status of the EVB Virtual Link (S-Channel) supporting this function.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`NoChannel`|Port link is down, or the connected switch has not assigned an SVID.|
|`SwitchChannelDown`|SVID is assigned but Virtual Link status is down.|
|`HostDriverDown`|SVID is assigned and Virtual Link status is up, but the host OS driver is inactive.|
|`VirtualLinkUp`|SVID is assigned, Virual Link status is up, and the host OS driver is active.|

### Oem.Hpe.WakeOnLANEnabled

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Enables Ethernet Wake On LAN (WoL) capability for this function when true.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### Status

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)
See the Redfish standard schema and specification for information on common Status object.

### VirtualFunctionsEnabled

Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Indicates whether Single Root I/O Virtualization (SR-IOV) Virual Functions (VFs) are enabled for this network device function.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO7 1.11|

### iSCSIBoot

**iSCSIBoot.AuthenticationMethod**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|iSCSI Boot authentication method configuration values.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`None`|No iSCSI authentication is used.|
|`CHAP`|iSCSI Challenge Handshake Authentication Protocol (CHAP) authentication is used.|
|`MutualCHAP`|iSCSI Mutual Challenge Handshake Authentication Protocol (CHAP) authentication is used.|

**iSCSIBoot.CHAPSecret**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The shared secret for CHAP authentication. Must be 0, 12, or 16 characters in length.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.CHAPUsername**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The username for CHAP authentication.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.IPAddressType**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The type of IP address (IPv6 or IPv4) being populated in the iSCSIBoot IP address fields.  Mixing of IPv6 and IPv4 addresses on the same network device function is not allowed.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`IPv4`|IPv4 addressing is used for all IP-fields in this object.|
|`IPv6`|IPv6 addressing is used for all IP-fields in this object.|

**iSCSIBoot.IPMaskDNSViaDHCP**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|When true, the iSCSI boot initiator will use DHCP to obtain the iniator name, IP address, and netmask.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.InitiatorDefaultGateway**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IPv6 or IPv4 iSCSI boot default gateway.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.InitiatorIPAddress**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IPv6 or IPv4 address of the iSCSI boot initiator.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.InitiatorName**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The iSCSI initiator name.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.InitiatorNetmask**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IPv6 or IPv4 netmask of the iSCSI boot initiator.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.MutualCHAPSecret**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The CHAP secret for 2-way CHAP authentication. Must be 0, 12, or 16 characters in length.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.MutualCHAPUsername**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The CHAP username for 2-way CHAP authentication.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.PrimaryDNS**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IPv6 or IPv4 address of the primary DNS server for the iSCSI boot initiator.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.PrimaryLUN**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The logical unit number (LUN) for the primary iSCSI boot target.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.PrimaryTargetIPAddress**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IP address (IPv6 or IPv4) for the primary iSCSI boot target.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.PrimaryTargetName**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The name of the primary iSCSI boot target, iSCSI Qualified Name (IQN).|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.PrimaryTargetTCPPort**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The TCP port for the primary iSCSI boot target.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.PrimaryVLANEnable**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|This indicates if the primary VLAN is enabled.  Not supported by HPE.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.PrimaryVLANId**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The 802.1q VLAN ID to use for iSCSI boot for both the primary and secondary targets.  Assign null value to disable.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.RouterAdvertisementEnabled**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|A boolean indicating whether IPv6 router advertisement is enabled for the iSCSI boot target.  This setting shall only apply to IPv6 configurations.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.SecondaryDNS**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The value of this property shall be the IPv6 or IPv4 address of the secondary DNS server for the iSCSI boot initiator.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.SecondaryLUN**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The logical unit number (LUN) for the secondary iSCSI boot target.  Not supported by HPE.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.SecondaryTargetIPAddress**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IP address (IPv6 or IPv4) for the secondary iSCSI boot target.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.SecondaryTargetName**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The name of the iSCSI secondary boot target, iSCSI Qualified Name (IQN).  Not supported by HPE. The value from PrimaryTargetName will be used for the secondary iSCSI boot target if configured.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.SecondaryTargetTCPPort**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The TCP port for the secondary iSCSI boot target.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.SecondaryVLANEnable**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|This indicates if the secondary VLAN is enabled.  Not supported by HPE.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.SecondaryVLANId**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The 802.1q VLAN ID to use for iSCSI boot from the secondary target.  Not supported by HPE.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**iSCSIBoot.TargetInfoViaDHCP**
Member of [NetworkDeviceFunction.v1\_9\_2.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|When true indicates the iSCSI boot target name, LUN, IP address, and netmask should be obtained from DHCP.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

## NetworkInterfaceCollection

`@odata.type: "#NetworkInterfaceCollection.NetworkInterfaceCollection"`

A Collection of NetworkInterface resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/networkinterfaces`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[NetworkInterface](../ilo7_network_resourcedefns111/#networkinterface)|

### Members (array)

Member of NetworkInterfaceCollection.NetworkInterfaceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Members@odata.count

Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.MemberContents

Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Description|Provides the discovery status of this collection.  For some server platforms, only partial device discovery is possible under auxiliary power.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`AllDevices`|The server state allows complete device discovery.  All installed devices are listed as members.|
|`AuxPowerDevices`|The server is in the auxiliary power state and only devices capable of operating in this power state are listed as members.  Additional devices may be listed when the server is fully powered.|

## NetworkInterface

`@odata.type: "#NetworkInterface.v1_2_0.NetworkInterface"`

A NetworkInterface contains references linking NetworkAdapter, Port, and NetworkDeviceFunction resources and represents the functionality available to the containing system.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunctioncollection)|

### NetworkDeviceFunctions

link to collection of membertype NetworkDeviceFunction. The collection of device functions avaliable on this network interface.
NetworkDeviceFunctions is a link (`"@odata.id": URI`) to another resource.

### Ports

Link to a collection of membertype Port. The collection of ports avaliable on this network interface.
Ports is a link (`"@odata.id": URI`) to another resource.

### Status

Member of [NetworkInterface.v1\_2\_0.NetworkInterface](#networkinterface)
See the Redfish standard schema and specification for information on common Status object.

## EthernetInterfaceCollection

`@odata.type: "#EthernetInterfaceCollection.EthernetInterfaceCollection"`

A Collection of EthernetInterface resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/ethernetinterfaces`|GET |
|`/redfish/v1/systems/{item}/ethernetinterfaces`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[EthernetInterface](../ilo7_network_resourcedefns111/#ethernetinterface)|

### Members (array)

Member of EthernetInterfaceCollection.EthernetInterfaceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of EthernetInterfaceCollection.EthernetInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|uri-reference|

### Members@odata.count

Member of EthernetInterfaceCollection.EthernetInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO7 1.11|

## EthernetInterface

`@odata.type: "#EthernetInterface.v1_4_1.EthernetInterface"`

The EthernetInterface resource describes a single, logical ethernet interface or network interface controller (NIC).

:::info Note

The URI of the members of the computer system `EthernetInterface` collection can be represented with this notation:
`/redfish/v1/Systems/{@systemId}/EthernetInterfaces/{@nicId}`.

Starting with iLO 6 firmware version 1.58, the `{@nicId}` naming schema is consistent across device types.
It is a string containing one or more characters in the range: [0-9], with the following specifications:

- Lan On Motherboard (LOM) card range: 1-4
- Open Compute Project (OCP) card range: 5-12
  - OCP card 1 range: 5-8
  - OCP card 2 range: 9-12
- OCP card with a range of 13 or greater are allocated for:
  - PCIe card - HPE Gen10 servers or HPE Gen11 servers
  - Mezzanine card - HPE Synergy servers
- Potentially, PCIe and Mezzanine cards can have 64 ports.
  Their corresponding `{@nicId}` is represented:
  - at slot 1 in the range: 13-76
  - at slot 2 in the range: 77-140
:::

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/ethernetinterfaces/{item}`|GET PATCH |
|`/redfish/v1/systems/{item}/ethernetinterfaces/{item}`|GET PATCH |

### AutoNeg

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates if the speed and duplex are automatically negotiated and configured on this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### DHCPv4

**DHCPv4.DHCPEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether DHCPv4 is enabled on this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**DHCPv4.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied DNS servers.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**DHCPv4.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use a DHCPv4-supplied domain name.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**DHCPv4.UseGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use a DHCPv4-supplied gateway.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**DHCPv4.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied NTP servers.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**DHCPv4.UseStaticRoutes**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied static routes.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### DHCPv6

**DHCPv6.OperatingMode**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines the DHCPv6 operating mode for this interface.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Stateful`|DHCPv6 stateful mode.|
|`Stateless`|DHCPv6 stateless mode.|
|`Disabled`|DHCPv6 is disabled.|

**DHCPv6.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|When enabled, DNS server addresses supplied through DHCPv6 stateless mode will be used.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**DHCPv6.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|When enabled, the domain name supplied through DHCPv6 stateless mode will be used.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**DHCPv6.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|When enabled, NTP server addresses supplied through DHCPv6 stateless mode will be used.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**DHCPv6.UseRapidCommit**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv6 rapid commit mode for stateful mode address assignments. Do not enable in networks where more than one DHCPv6 server is configured to provide address assignments.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### FQDN

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the complete, fully qualified domain name obtained by DNS for this interface.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### FullDuplex

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates if the interface is in Full Duplex mode or not.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### HostName

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The DNS Host Name, without any domain information.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### IPv4Addresses (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`IPv4Addresses` is an array containing elements of:

**IPv4Addresses[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv4Addresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Static`|A static address as configured by the user.|
|`DHCP`|Address is provided by a DHCPv4 service.|
|`BOOTP`|Address is provided by a BOOTP service.|
|`IPv4LinkLocal`|Address is valid only for this network segment (link).|

**IPv4Addresses[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 gateway for this address.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv4Addresses[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Subnet mask.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

### IPv4StaticAddresses (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`IPv4StaticAddresses` is an array containing elements of:

**IPv4StaticAddresses[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv4StaticAddresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Static`|A static address as configured by the user.|
|`DHCP`|Address is provided by a DHCPv4 service.|
|`BOOTP`|Address is provided by a BOOTP service.|
|`IPv4LinkLocal`|Address is valid only for this network segment (link).|

**IPv4StaticAddresses[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 gateway for this address.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv4StaticAddresses[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Subnet mask.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

### IPv6AddressPolicyTable (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`IPv6AddressPolicyTable` is an array containing elements of:

**IPv6AddressPolicyTable[{item}].Label**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The IPv6 Label (as defined in RFC 6724 section 2.1).|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv6AddressPolicyTable[{item}].Precedence**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The IPv6 Precedence (as defined in RFC 6724 section 2.1.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv6AddressPolicyTable[{item}].Prefix**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The IPv6 Address Prefix (as defined in RFC 6724 section 2.1).|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

### IPv6Addresses (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`IPv6Addresses` is an array containing elements of:

**IPv6Addresses[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv6 Address.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv6Addresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Static`|A static address as configured by the user.|
|`DHCPv6`|Address is provided by a DHCPv6 service.|
|`LinkLocal`|Address is valid only for this network segment (link).|
|`SLAAC`|Address is provided by a Stateless Address AutoConfiguration (SLAAC) service.|

**IPv6Addresses[{item}].AddressState**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The current state of this address as defined in RFC 4862.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Preferred`|This address is currently within both it's valid and preferred lifetimes as defined in RFC 4862.|
|`Deprecated`|This address is currently within it's valid lifetime, but is now outside of it's preferred lifetime as defined in RFC 4862.|
|`Tentative`|This address is currently undergoing Duplicate Address Detection testing as defined in RFC 4862 section 5.4.|
|`Failed`|This address has failed Duplicate Address Detection testing as defined in RFC 4862 section 5.4 and is not currently in use.|

**IPv6Addresses[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv6 Address Prefix Length.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### IPv6DefaultGateway

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv6 default gateway address that is currently in use on this interface.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### IPv6StaticAddresses (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`IPv6StaticAddresses` is an array containing elements of:

**IPv6StaticAddresses[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|A valid IPv6 address.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv6StaticAddresses[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The Prefix Length of this IPv6 address.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

### IPv6StaticDefaultGateways (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`IPv6StaticDefaultGateways` is an array containing elements of:

**IPv6StaticDefaultGateways[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|A valid IPv6 address.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**IPv6StaticDefaultGateways[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The Prefix Length of this IPv6 address.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

### InterfaceEnabled

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates whether this interface is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### LinkStatus

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The link status of this interface (port).|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`LinkUp`|The link is available for communication on this interface.|
|`NoLink`|There is no link or connection detected on this interface.|
|`LinkDown`|There is no link on this interface, but the interface is connected.|

### MACAddress

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the currently configured MAC address of the (logical port) interface.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

### MTUSize

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the currently configured Maximum Transmission Unit (MTU) in bytes on this interface.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

### MaxIPv6StaticAddresses

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates the maximum number of Static IPv6 addresses that can be configured on this interface.|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### NameServers (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`NameServers` is an array containing elements of:

**NameServers[{item}]**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.ConfigurationSettings

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The state of the currently displayed configuration settings.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Current`|All configuration settings for this NIC are currently in use.|
|`SomePendingReset`|One or more configuration settings on this NIC are not yet in use.  They require a reset of this management processor in order to take effect.|

### Oem.Hpe.DHCPv4

**Oem.Hpe.DHCPv4.ClientId**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The client ID to override the default used in iLO.|
|Type|string or null|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv4.ClientIdType**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The type of client id in use or to be selected.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

The following are the supported values:

|Value|Description|
|---|---|
|`Custom`|Allows user to enter any value.|
|`Default`|Use the default iLO5 value - MAC Address + Instance number.|
|`Hostname`|Use the hostname.|
|`MacAddress`|Use the default iLO4 value - MAC Address.|

**Oem.Hpe.DHCPv4.Enabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.DHCPEnabled, and will be removed in a future release. Determines whether DHCPv4 is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv4.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseDNSServers, and will be removed in a future release. Determines whether to use DHCPv4-supplied DNS servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv4.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseDomainName, and will be removed in a future release. Determines whether to use a DHCPv4-supplied domain name. Can only be enabled when DHCPv4 is also enabled; otherwis,e this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv4.UseGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseGateway, and will be removed in a future release. Determines whether to use a DHCPv4-supplied gateway. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv4.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseNTPServers, and will be removed in a future release. Determines whether to use DHCPv4-supplied NTP servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv4.UseStaticRoutes**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseStaticRoutes, and will be removed in a future release. Determines whether to use DHCPv4-supplied static routes. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv4.UseWINSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied WINS servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.DHCPv6

**Oem.Hpe.DHCPv6.StatefulModeEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.OperatingMode, and will be removed in a future release.Determines whether DHCPv6 Stateful mode is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv6.StatelessModeEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.OperatingMode, and will be removed in a future release. Determines whether DHCPv6 Stateless mode is enabled.  Always enabled by default whenever DHCPv6 Stateful mode is also enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv6.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseDNSServers, and will be removed in a future release. Determines whether to use DHCPv6-supplied DNS servers. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv6.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseDomainName, and will be removed in a future release. Determines whether to use a DHCPv6-supplied domain name. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv6.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseNTPServers, and will be removed in a future release. Determines whether to use DHCPv6-supplied NTP servers. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.DHCPv6.UseRapidCommit**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseRapidCommit, and will be removed in a future release. Determines whether to use DHCPv6 rapid commit mode. Can only be enabled when DHCPv6 Stateful mode is also enabled; otherwise, this property will be set to false and will be read-only. Do not enable in networks where more than one DHCPv6 server is configured to provide address assignments.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.DomainName

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Domain name of the network to which this management processor belongs. This property can only be modified when the management processor is not configured to use a DHCP supplied domain name; otherwise this property is read-only indicating the value is provided by DHCP.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.HostName

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property HostName, and will be removed in a future release. The management processor host name.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|
|Format|hostname|

### Oem.Hpe.IPv4

**Oem.Hpe.IPv4.DDNSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether DDNS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.IPv4.DNSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`DNSServers` is an array containing elements of:

**DNSServers[{item}]**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|ipv4|

**Oem.Hpe.IPv4.StaticRoutes (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`StaticRoutes` is an array containing elements of:

**StaticRoutes[{item}].Destination**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|An IPv4 static route destination. Only writeable when use of DHCPv4-supplied static routes is disabled; otherwise this property is read-only indicating the value is provided by DHCPv4.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|
|Format|ipv4|

**StaticRoutes[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|An IPv4 static route gateway. Only writeable when use of DHCPv4-supplied static routes is disabled; otherwise this property is read-only indicating the value is provided by DHCPv4.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|
|Format|ipv4|

**StaticRoutes[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|An IPv4 static route subnet mask. Only writeable when use of DHCPv4-supplied static routes is disabled; otherwise this property is read-only indicating the value is provided by DHCPv4.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|
|Format|ipv4|

**Oem.Hpe.IPv4.WINSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether WINS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.IPv4.WINSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`WINSServers` is an array containing elements of:

**WINSServers[{item}]**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|ipv4|

### Oem.Hpe.IPv6

**Oem.Hpe.IPv6.DDNSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether IPv6 DDNS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.IPv6.DNSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`DNSServers` is an array containing elements of:

**DNSServers[{item}]**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|
|Format|ipv6|

**Oem.Hpe.IPv6.RFC7217Enabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Stable and Opaque IIDs with IPv6 SLAAC based on RFC7217|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.IPv6.SLAACEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property StatelessAddressAutoConfig.IPv6AutoConfigEnabled, and will be removed in a future release. Determines whether StateLess Address Auto-Configuration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.IPv6.StaticDefaultGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property IPv6StaticDefaultGateways[].Address, and will be removed in a future release. The IPv6 static default gateway entry.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|
|Format|ipv6|

**Oem.Hpe.IPv6.StaticRoutes (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`StaticRoutes` is an array containing elements of:

**StaticRoutes[{item}].Destination**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The IPv6 static route destination address.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|
|Format|ipv6|

**StaticRoutes[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The IPv6 static route gateway.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|
|Format|ipv6|

**StaticRoutes[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The prefix length of the IPv6 static route destination address.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

**StaticRoutes[{item}].Status**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.InterfaceType

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Describes the network interface type.|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

The following are the supported values:

|Value|
|---|
|`Dedicated`|
|`Shared`|
|`HostInterface`|

### Oem.Hpe.NICEnabled

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property InterfaceEnabled, and will be removed in a future release. Determines whether this NIC is enabled or disabled. Enabling one NIC will disable the others. If no NIC is enabled, this management processor is not accessible over the network.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.NICSupportsIPv6

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether or not this NIC can support the IPv6 protocol.|
|Type|boolean|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.PingGatewayOnStartup

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to ping the IPv4 gateway on startup.|
|Type|boolean|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.SharedNetworkPortOptions

**Oem.Hpe.SharedNetworkPortOptions.NIC**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Selects the system NIC that is to be shared with this management processor.|
|Type|string|
|Read Only|False|
|Added|iLO7 1.11|

**Oem.Hpe.SharedNetworkPortOptions.Port**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The network adapter port number that is used for sharing. This feature is only applicable on systems and network adapters that support it.|
|Type|integer|
|Read Only|False|
|Added|iLO7 1.11|

### Oem.Hpe.SupportedPorts (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`SupportedPorts` is an array containing elements of:

**SupportedPorts[{item}]**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.SupportsEmbeddedNIC

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether this system supports LOM. Only applies to Shared Network Port.|
|Type|boolean|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.SupportsOCP1

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether this system supports OCP1/OCPA. Only applies to Shared Network Port. OCP1 is equivalent of OCPA on MHS platform.|
|Type|boolean|
|Read Only|True|
|Added|iLO7 1.11|

### Oem.Hpe.SupportsOCP2

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether this system supports OCP2/OCPB. Only applies to Shared Network Port. OCP2 is equivalent of OCPB on MHS platform.|
|Type|boolean|
|Read Only|True|
|Added|iLO7 1.11|

### PermanentMACAddress

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the permanent MAC address assigned to this interface (port).|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

### SpeedMbps

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the current speed in Mbps of this interface.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

### StatelessAddressAutoConfig

**StatelessAddressAutoConfig.IPv4AutoConfigEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether IPv4 SLAAC is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**StatelessAddressAutoConfig.IPv6AutoConfigEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether IPv6 SLAAC is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

### StaticNameServers (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`StaticNameServers` is an array containing elements of:

**StaticNameServers[{item}]**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO7 1.11|

### Status

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)
See the Redfish standard schema and specification for information on common Status object.

### UefiDevicePath

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The UEFI device path for this interface.|
|Type|string or null|
|Read Only|True|
|Added|iLO7 1.11|

### VLAN

**VLAN.VLANEnable**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates if this VLAN is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO7 1.11|

**VLAN.VLANId**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates the VLAN identifier for this VLAN.|
|Type|integer or null|
|Read Only|False|
|Added|iLO7 1.11|

### VLANs

This is a reference to a collection of VLANs and is only used if the interface supports more than one VLANs.
VLANs is a link (`"@odata.id": URI`) to another resource.

