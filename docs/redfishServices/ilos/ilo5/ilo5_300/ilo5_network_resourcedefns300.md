---
excludeFromSearch: true
seo:
  title: Network resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Network resource definitions of iLO 5 v3.00

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

|Link Name|Destination type
|---|---|
|`Members[]`|[NetworkAdapter](../ilo5_network_resourcedefns300/#networkadapter)|

### Members (array)

Member of NetworkAdapterCollection.NetworkAdapterCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.MemberContents

Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Description|Provides the discovery status of this collection.  For some server platforms, only partial device discovery is possible under auxiliary power.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`AllDevices`|The server state allows complete device discovery.  All installed devices are listed as members.|
|`AuxPowerDevices`|The server architecture may not support power to all installed devices in the current auxiliary power state. Only devices capable of operating in this power state are listed as members.  Additional devices may be listed when the server is fully powered.|

## NetworkAdapter

`@odata.type: "#NetworkAdapter.v1_5_0.NetworkAdapter"`

A NetworkAdapter represents the physical network adapter capable of connecting to a computer network.  Examples include but are not limited to Ethernet, Fibre Channel, and converged network adapters.

The Data Source is either DCi or RDE. HPE OEM section shall be present only for DCi Data Source.


### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}`|GET POST PATCH |
|`/redfish/v1/chassis/{item}/networkadapters/{item}/settings`|GET POST PATCH |

### @Redfish.Settings

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)
See the Redfish standard schema and specification for information on common @Redfish properties.

### Controllers (array)

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`Controllers` is an array containing elements of:

**Controllers[{item}].ControllerCapabilities**
**Controllers[{item}].ControllerCapabilities.DataCenterBridging**
**Controllers[{item}].ControllerCapabilities.DataCenterBridging.Capable**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The value of this property shall be a boolean indicating whether this controller is capable of Data Center Bridging (DCB).|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].ControllerCapabilities.NPAR**
**Controllers[{item}].ControllerCapabilities.NPAR.NparCapable**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Indicates whether or not NIC function partitioning is supported by a controller.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.40|

**Controllers[{item}].ControllerCapabilities.NPAR.NparEnabled**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, NIC function partitioning is active on this controller.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**Controllers[{item}].ControllerCapabilities.NPIV**
**Controllers[{item}].ControllerCapabilities.NPIV.MaxDeviceLogins**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of N_Port ID Virtualization (NPIV) logins allowed simultaneously from all ports on this controller.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].ControllerCapabilities.NPIV.MaxPortLogins**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of N_Port ID Virtualization (NPIV) logins allowed per physical port on this controller.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].ControllerCapabilities.NetworkDeviceFunctionCount**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of physical functions available on this controller.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].ControllerCapabilities.NetworkPortCount**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The number of physical ports on this controller.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].ControllerCapabilities.VirtualizationOffload**
**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.SRIOV**
**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.SRIOV.SRIOVVEPACapable**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The value of this property shall be a boolean indicating whether this controller supports Single Root Input/Output Virtualization (SR-IOV) in Virtual Ethernet Port Aggregator (VEPA) mode.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.VirtualFunction**
**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.VirtualFunction.DeviceMaxCount**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of Virtual Functions (VFs) supported by this controller.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.VirtualFunction.MinAssignmentGroupSize**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The minimum number of Virtual Functions (VFs) that can be allocated or moved between physical functions for this controller.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].ControllerCapabilities.VirtualizationOffload.VirtualFunction.NetworkPortMaxCount**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The maximum number of Virtual Functions (VFs) supported per network port for this controller.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].FirmwarePackageVersion**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The version number of the user-facing firmware package.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Controllers[{item}].Links**
**Controllers[{item}].Links.NetworkDeviceFunctions (array)**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`NetworkDeviceFunctions` is an array containing elements of:

**NetworkDeviceFunctions[{item}].@odata.id**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Controllers[{item}].Links.NetworkPorts (array)**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`NetworkPorts` is an array containing elements of:

**NetworkPorts[{item}].@odata.id**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Controllers[{item}].Links.Ports (array)**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`Ports` is an array containing elements of:

**Ports[{item}].@odata.id**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Controllers[{item}].Location**
**Controllers[{item}].Location.PartLocation**
**Controllers[{item}].Location.PartLocation.LocationOrdinalValue**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|

**Controllers[{item}].Location.PartLocation.LocationType**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

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

**Controllers[{item}].Location.PartLocation.Orientation**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

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

**Controllers[{item}].Location.PartLocation.Reference**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

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

**Controllers[{item}].Location.PartLocation.ServiceLabel**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|

**Controllers[{item}].Location.Placement**
**Controllers[{item}].Location.Placement.AdditionalInfo**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|

**Controllers[{item}].Location.Placement.Rack**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|

**Controllers[{item}].Location.Placement.RackOffset**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|

**Controllers[{item}].Location.Placement.RackOffsetUnits**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

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

**Controllers[{item}].Location.Placement.Row**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|

### Manufacturer

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The manufacturer or OEM of this network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Model

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The model string used by the manufacturer to reference this network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### NetworkDeviceFunctions

A reference to the collection of physical network device functions associated with this network adapter.
NetworkDeviceFunctions is a link (`"@odata.id": URI`) to another resource.

### NetworkPorts

A reference to the collection of physical network ports associated with this network adapter.
NetworkPorts is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.CLPVersion

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Option ROM Systems Management Architecture for Server Hardware (SMASH) Command Line Protocol (CLP) support version.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.Controllers (array)

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`Controllers` is an array containing elements of:

**Controllers[{item}].ConfigurationStatus**
**Controllers[{item}].ConfigurationStatus.Detail (array)**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`Detail` is an array containing elements of:

**Detail[{item}].Group**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Configuration group identifier.|
|Type|integer or null|
|Read Only|True|

**Detail[{item}].SubGroup**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Configuration sub-group identifier.|
|Type|integer or null|
|Read Only|True|

**Detail[{item}].Summary**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A digest value representing the current state of configuration for this group/sub-group.|
|Type|integer or null|
|Read Only|True|

**Controllers[{item}].ConfigurationStatus.Summary**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|A digest value representing the current configuration state of this network adapter controller.|
|Type|integer or null|
|Read Only|True|

**Controllers[{item}].DeviceLimitationsBitmap**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Indicates any unique device limitations. A value of 0 indicates no limitations are present. When set, bit 0 indicates that the device cannot validate data received when in standby power. All other bit mappings are reserved.|
|Type|integer or null|
|Read Only|True|

**Controllers[{item}].EdgeVirtualBridging**
**Controllers[{item}].EdgeVirtualBridging.ChannelDescriptionTLVCapable**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, this controller supports HPE Flex10Qbg Channel Description TLVs.|
|Type|boolean or null|
|Read Only|True|

**Controllers[{item}].EdgeVirtualBridging.ChannelLinkControlTLVCapable**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, this controller supports HPE Flex10Qbg Channel Link Control TLVs.|
|Type|boolean or null|
|Read Only|True|

**Controllers[{item}].EmbeddedLLDPFunctions**
**Controllers[{item}].EmbeddedLLDPFunctions.Enabled**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description| NOTE: This is a read-only property when the adapter is installed on an HPE Synergy server. When false, globally disables device functions on this controller which utilize HPE defined embedded LLDP.  When set false will also disable EVB, FCoE, RoCE, and DCBX capabilities on this controller. This property does not affect Ethernet NPAR functionality.|
|Type|boolean or null|
|Read Only|False|

**Controllers[{item}].EmbeddedLLDPFunctions.Optional**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, indicates that this controller has the ability to globally disable all network device functions which utilize HPE defined embedded LLDP.|
|Type|boolean or null|
|Read Only|True|

**Controllers[{item}].FactoryDefaultsCurrentlyActive**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|When true, this controller's configuration matches factory default settings.|
|Type|boolean or null|
|Read Only|True|

**Controllers[{item}].FunctionTypeLimits (array)**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`FunctionTypeLimits` is an array containing elements of:

**FunctionTypeLimits[{item}].ConstraintDescription**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|string or null|
|Read Only|True|

**FunctionTypeLimits[{item}].EthernetResourcesConsumed**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|

**FunctionTypeLimits[{item}].FCoEResourcesConsumed**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|

**FunctionTypeLimits[{item}].RDMAResourcesConsumed**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|

**FunctionTypeLimits[{item}].TotalSharedResourcesAvailable**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|

**FunctionTypeLimits[{item}].iSCSIResourcesConsumed**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|

**Controllers[{item}].FunctionTypes (array)**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`FunctionTypes` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

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
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Type of the last client to have changed configuration on this device.|
|Type|string or null|
|Read Only|True|

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
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

`RDMASupport` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|No RDMA support.|
|`RoCE`|RDMA over Converged Ethernet supported.|
|`iWARP`|iWARP supported.|

**Controllers[{item}].UnderlyingDataSource**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Protocol through which Redfish data is supplied for this adapter.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`DCi`|HPE Proprietary DCi protocol|
|`RDE`|DMTF RDE protocol|

### Oem.Hpe.FactoryDefaultsActuationBehavior

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Indicates the implementation timing of a reset to factory default settings request, when made with the server in the standby power state.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Immediate`|Defaults take effect within 2 seconds of being applied.|
|`AtFullPower`|Defaults take effect within 5 seconds of power being applied.|
|`AtNextReboot`|Defaults take effect on next reboot to full power.|

### Oem.Hpe.PCAVersion

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Printed Circuit Assembly number for the circuit board comprising this device.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.RedfishConfiguration

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Controls Redfish configuration write access to network adapters.  When present and disabled, network adapter information is read-only.  Note that some HPE advanced network adapters will present a reduced level of capability when disabled.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Enabled`|The Redfish management interface is enabled to make changes on this network adapter.  To return to the Disabled state, a network adapter reset to factory default operation is required.|
|`Disabled`|The network adapter is operating in read-only mode relative to the Redfish management interface. To transition to this state, a network adapter reset to factory default operation is required.|

### PartNumber

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Manufacturer's Part number for this network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Ports

A reference to the collection of physical network ports associated with this network adapter.
Ports is a link (`"@odata.id": URI`) to another resource.

### SKU

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The value of this property shall contain the Stock Keeping Unit (SKU) for the network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### SerialNumber

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|The serial number for this network adapter.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Settings

**Settings.href**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)

| | |
|---|---|
|Description|Reference to the resource the client may PUT/PATCH to in order to change this resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### Status

Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)
See the Redfish standard schema and specification for information on common Status object.

### Actions


**NetworkAdapter.ResetSettingsToDefault**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)
There are no parameters for this action.

**HpeNetworkAdapter.FlushConfigurationToNVM**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)
There are no parameters for this action.

**NetworkAdapter.FlushConfigurationToNVM**
Member of [NetworkAdapter.v1\_5\_0.NetworkAdapter](#networkadapter)
NOTE: Deprecated, will be removed in a future release.  Replaced by HpeNetworkAdapter.FlushConfigurationToNVM.

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

|Link Name|Destination type
|---|---|
|`Members[]`|[NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunction)|

### Members (array)

Member of NetworkDeviceFunctionCollection.NetworkDeviceFunctionCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkDeviceFunctionCollection.NetworkDeviceFunctionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of NetworkDeviceFunctionCollection.NetworkDeviceFunctionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## NetworkDeviceFunction

`@odata.type: "#NetworkDeviceFunction.v1_5_0.NetworkDeviceFunction"`

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

|Link Name|Destination type
|---|---|
|`@Redfish.Settings/SettingsObject`|[NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunction)|

### @Redfish.Settings

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)
See the Redfish standard schema and specification for information on common @Redfish properties.

### AssignablePhysicalNetworkPorts (array)

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

`AssignablePhysicalNetworkPorts` is an array containing elements of:

**AssignablePhysicalNetworkPorts[{item}].@odata.id**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### AssignablePhysicalPorts (array)

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

`AssignablePhysicalPorts` is an array containing elements of:

**AssignablePhysicalPorts[{item}].@odata.id**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### BootMode

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Network device boot mode configuration values.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

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

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|A boolean indicating whether the network device function is enabled. Disabled network device functions shall not be enumerated or seen by the operating system.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

### Ethernet

**Ethernet.MACAddress**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The effective current MAC Address of this network device function. If an assignable MAC address is not supported, this is a read only alias of the PermanentMACAddress.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**Ethernet.MTUSize**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The Maximum Transmission Unit (MTU) configured for this Network Device Function.  This value serves as a default for the OS driver when booting.  The value only takes-effect on boot.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**Ethernet.PermanentMACAddress**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The Permanent MAC Address of this network device function (physical function). This value is typically programmed during the manufacturing time. This address is not assignable.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### FibreChannel

**FibreChannel.AllowFIPVLANDiscovery**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|For FCoE connections, a boolean indicating whether the FIP VLAN Discovery Protocol is used to determine the FCoE VLAN ID selected by the network device function for the FCoE connection.  If true, and the FIP VLAN Discovery succeeds, the FCoEActiveVLANId property shall reflect the FCoE VLAN ID to be used for all FCoE traffic.  If false, or if the FIP VLAN Discovery protocol fails, the FCoELocalVLANId shall be used for all FCoE traffic and the FCoEActiveVLANId shall reflect the FCoELocalVLANId.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

**FibreChannel.BootTargets (array)**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

`BootTargets` is an array containing elements of:

**BootTargets[{item}].BootPriority**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The relative priority for this entry in the boot targets array.  Lower numbers shall represent higher priority, with zero being the highest priority.  The BootPriority shall be unique for all entries of the BootTargets array.|
|Type|integer or null|
|Read Only|False|

**BootTargets[{item}].LUNID**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The Logical Unit Number (LUN) ID to boot from on the device referred to by the corresponding WWPN.|
|Type|string or null|
|Read Only|False|

**BootTargets[{item}].WWPN**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The value of this property shall be World-Wide Port Name (WWPN) to boot from.|
|Type|string or null|
|Read Only|False|

**FibreChannel.FCoEActiveVLANId**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|For FCoE connections, the value of this property shall be null or a VLAN ID currently being used for FCoE traffic.  When the FCoE link is down this value shall be null.  When the FCoE link is up this value shall be either the FCoELocalVLANId property or a VLAN discovered via the FIP protocol.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**FibreChannel.FCoELocalVLANId**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|For FCoE connections, the locally configured VLAN ID.  This value shall be used for FCoE traffic to this network device function during boot unless AllowFIPVLANDiscovery is true and a valid FCoE VLAN ID is found via the FIP VLAN Discovery Protocol.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**FibreChannel.PermanentWWNN**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The permanent World-Wide Node Name (WWNN) of this network device function (physical function). This value is typically programmed during the manufacturing time. This address is not assignable.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**FibreChannel.PermanentWWPN**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**FibreChannel.WWNN**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The value of this property shall be the effective current World-Wide Node Name (WWNN) of this network device function (physical function). If an assignable WWNN is not supported, this is a read only alias of the PermanentWWNN.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**FibreChannel.WWNSource**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The configuration source of the WWNs for this connection (WWPN and WWNN).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ConfiguredLocally`|The set of FC/FCoE boot targets was applied locally through API or UI.|
|`ProvidedByFabric`|The set of FC/FCoE boot targets was applied by the Fibre Channel fabric.|

**FibreChannel.WWPN**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The effective current World-Wide Port Name (WWPN) of this network device function (physical function). If an assignable WWPN is not supported, this is a read only alias of the PermanentWWPN.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### MaxVirtualFunctions

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The number of virtual functions (VFs) availbale for this network device function.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

### NetDevFuncCapabilities (array)

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

`NetDevFuncCapabilities` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

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

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The configured capability of this network device function.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

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

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Controls the source of boot target parameters for this network device function. This property can only be configured when the network device function is not in the Disabled state.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.30|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`UEFI`|Boot target parameters are under control of UEFI and the device option ROM.  Any target parameters configured on this network device function are ignored.|
|`NetworkDeviceFunction`|Boot target parameters as configured on this network device function will be used.|
|`None`|Boot mode is configured disabled, and no target source applies.|

### Oem.Hpe.ConnectionID

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The Connection ID to be used with EVB, in IETF RFC-4122 UUID format.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### Oem.Hpe.NetDevFuncCapabilities (array)

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

`NetDevFuncCapabilities` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

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

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The presently configured interconnection capability of this network device function.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

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

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The number of Fibre Channel boot targets supported by this network device function.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.VirtualLinkStatus

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Current status of the EVB Virtual Link (S-Channel) supporting this function.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`NoChannel`|Port link is down, or the connected switch has not assigned an SVID.|
|`SwitchChannelDown`|SVID is assigned but Virtual Link status is down.|
|`HostDriverDown`|SVID is assigned and Virtual Link status is up, but the host OS driver is inactive.|
|`VirtualLinkUp`|SVID is assigned, Virual Link status is up, and the host OS driver is active.|

### Oem.Hpe.WakeOnLANEnabled

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Enables Ethernet Wake On LAN (WoL) capability for this function when true.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

### PhysicalNetworkPortAssignment

The physical port to which this network device function is currently assigned.
PhysicalNetworkPortAssignment is a link (`"@odata.id": URI`) to another resource.

### PhysicalPortAssignment

A reference to the physical port currently assigned to this network device function.
PhysicalPortAssignment is a link (`"@odata.id": URI`) to another resource.

### Settings

**Settings.href**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Reference to the resource the client may PUT/PATCH to in order to change this resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### Status

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)
See the Redfish standard schema and specification for information on common Status object.

### VirtualFunctionsEnabled

Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|Indicates whether Single Root I/O Virtualization (SR-IOV) Virual Functions (VFs) are enabled for this network device function.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

### iSCSIBoot

**iSCSIBoot.AuthenticationMethod**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|iSCSI Boot authentication method configuration values.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`None`|No iSCSI authentication is used.|
|`CHAP`|iSCSI Challenge Handshake Authentication Protocol (CHAP) authentication is used.|
|`MutualCHAP`|iSCSI Mutual Challenge Handshake Authentication Protocol (CHAP) authentication is used.|

**iSCSIBoot.CHAPSecret**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The shared secret for CHAP authentication. Must be 0, 12, or 16 characters in length.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.CHAPUsername**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The username for CHAP authentication.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.IPAddressType**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The type of IP address (IPv6 or IPv4) being populated in the iSCSIBoot IP address fields.  Mixing of IPv6 and IPv4 addresses on the same network device function is not allowed.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`IPv4`|IPv4 addressing is used for all IP-fields in this object.|
|`IPv6`|IPv6 addressing is used for all IP-fields in this object.|

**iSCSIBoot.IPMaskDNSViaDHCP**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|When true, the iSCSI boot initiator will use DHCP to obtain the iniator name, IP address, and netmask.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.InitiatorDefaultGateway**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IPv6 or IPv4 iSCSI boot default gateway.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.InitiatorIPAddress**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IPv6 or IPv4 address of the iSCSI boot initiator.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.InitiatorName**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The iSCSI initiator name.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.InitiatorNetmask**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IPv6 or IPv4 netmask of the iSCSI boot initiator.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.MutualCHAPSecret**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The CHAP secret for 2-way CHAP authentication. Must be 0, 12, or 16 characters in length.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.MutualCHAPUsername**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The CHAP username for 2-way CHAP authentication.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.PrimaryDNS**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IPv6 or IPv4 address of the primary DNS server for the iSCSI boot initiator.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.PrimaryLUN**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The logical unit number (LUN) for the primary iSCSI boot target.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.PrimaryTargetIPAddress**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IP address (IPv6 or IPv4) for the primary iSCSI boot target.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.PrimaryTargetName**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The name of the primary iSCSI boot target, iSCSI Qualified Name (IQN).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.PrimaryTargetTCPPort**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The TCP port for the primary iSCSI boot target.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.PrimaryVLANEnable**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|This indicates if the primary VLAN is enabled.  Not supported by HPE.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.PrimaryVLANId**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The 802.1q VLAN ID to use for iSCSI boot for both the primary and secondary targets.  Assign null value to disable.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.RouterAdvertisementEnabled**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|A boolean indicating whether IPv6 router advertisement is enabled for the iSCSI boot target.  This setting shall only apply to IPv6 configurations.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.SecondaryDNS**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The value of this property shall be the IPv6 or IPv4 address of the secondary DNS server for the iSCSI boot initiator.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.SecondaryLUN**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The logical unit number (LUN) for the secondary iSCSI boot target.  Not supported by HPE.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.SecondaryTargetIPAddress**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The IP address (IPv6 or IPv4) for the secondary iSCSI boot target.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.SecondaryTargetName**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The name of the iSCSI secondary boot target, iSCSI Qualified Name (IQN).  Not supported by HPE. The value from PrimaryTargetName will be used for the secondary iSCSI boot target if configured.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.SecondaryTargetTCPPort**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The TCP port for the secondary iSCSI boot target.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.SecondaryVLANEnable**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|This indicates if the secondary VLAN is enabled.  Not supported by HPE.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.SecondaryVLANId**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|The 802.1q VLAN ID to use for iSCSI boot from the secondary target.  Not supported by HPE.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**iSCSIBoot.TargetInfoViaDHCP**
Member of [NetworkDeviceFunction.v1\_5\_0.NetworkDeviceFunction](#networkdevicefunction)

| | |
|---|---|
|Description|When true indicates the iSCSI boot target name, LUN, IP address, and netmask should be obtained from DHCP.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

## NetworkInterfaceCollection
`@odata.type: "#NetworkInterfaceCollection.NetworkInterfaceCollection"`

A Collection of NetworkInterface resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/networkinterfaces`|GET |

### Links to other Resources

|Link Name|Destination type
|---|---|
|`Members[]`|[NetworkInterface](../ilo5_network_resourcedefns300/#networkinterface)|

### Members (array)

Member of NetworkInterfaceCollection.NetworkInterfaceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.MemberContents

Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Description|Provides the discovery status of this collection.  For some server platforms, only partial device discovery is possible under auxiliary power.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`AllDevices`|The server state allows complete device discovery.  All installed devices are listed as members.|
|`AuxPowerDevices`|The server is in the auxiliary power state and only devices capable of operating in this power state are listed as members.  Additional devices may be listed when the server is fully powered.|

## NetworkInterface

`@odata.type: "#NetworkInterface.v1_2_0.NetworkInterface"`

A NetworkInterface contains references linking NetworkAdapter, NetworkPort, and NetworkDeviceFunction resources and represents the functionality available to the containing system.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}`|GET |

### Links to other Resources

|Link Name|Destination type
|---|---|
|`NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunctioncollection)|

### NetworkDeviceFunctions

link to collection of membertype NetworkDeviceFunction. The collection of device functions avaliable on this network interface.
NetworkDeviceFunctions is a link (`"@odata.id": URI`) to another resource.

### NetworkPorts

Link to a collection of membertype NetworkPort. The collection of ports avaliable on this network interface.
NetworkPorts is a link (`"@odata.id": URI`) to another resource.

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

|Link Name|Destination type
|---|---|
|`Members[]`|[EthernetInterface](../ilo5_network_resourcedefns300/#ethernetinterface)|

### Members (array)

Member of EthernetInterfaceCollection.EthernetInterfaceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of EthernetInterfaceCollection.EthernetInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of EthernetInterfaceCollection.EthernetInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## EthernetInterface

`@odata.type: "#EthernetInterface.v1_4_1.EthernetInterface"`

The EthernetInterface resource describes a single, logical ethernet interface or network interface controller (NIC).

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/ethernetinterfaces/{item}`|GET PATCH |
|`/redfish/v1/systems/{item}/ethernetinterfaces/{item}`|GET POST PATCH |

### AutoNeg

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates if the speed and duplex are automatically negotiated and configured on this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.10|

### DHCPv4

**DHCPv4.DHCPEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether DHCPv4 is enabled on this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied DNS servers.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use a DHCPv4-supplied domain name.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use a DHCPv4-supplied gateway.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied NTP servers.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseStaticRoutes**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied static routes.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### DHCPv6

**DHCPv6.OperatingMode**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines the DHCPv6 operating mode for this interface.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

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
|Added|iLO 5 1.40|

**DHCPv6.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|When enabled, the domain name supplied through DHCPv6 stateless mode will be used.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv6.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|When enabled, NTP server addresses supplied through DHCPv6 stateless mode will be used.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv6.UseRapidCommit**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv6 rapid commit mode for stateful mode address assignments. Do not enable in networks where more than one DHCPv6 server is configured to provide address assignments.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### FQDN

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the complete, fully qualified domain name obtained by DNS for this interface.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### FullDuplex

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates if the interface is in Full Duplex mode or not.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.10|

### HostName

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The DNS Host Name, without any domain information.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.10|

**IPv4Addresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.10|

**IPv4Addresses[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Subnet mask.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.40|

**IPv4StaticAddresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

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
|Added|iLO 5 1.40|

**IPv4StaticAddresses[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Subnet mask.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

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
|Added|iLO 5 1.10|

**IPv6AddressPolicyTable[{item}].Precedence**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The IPv6 Precedence (as defined in RFC 6724 section 2.1.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

**IPv6AddressPolicyTable[{item}].Prefix**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The IPv6 Address Prefix (as defined in RFC 6724 section 2.1).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.10|

**IPv6Addresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.10|

### IPv6DefaultGateway

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the IPv6 default gateway address that is currently in use on this interface.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.10|

**IPv6StaticAddresses[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The Prefix Length of this IPv6 address.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.40|

**IPv6StaticDefaultGateways[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The Prefix Length of this IPv6 address.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.40|

### InterfaceEnabled

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates whether this interface is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### LinkStatus

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The link status of this interface (port).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

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
|Added|iLO 5 1.10|

### MTUSize

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the currently configured Maximum Transmission Unit (MTU) in bytes on this interface.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.40|

### MaxIPv6StaticAddresses

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates the maximum number of Static IPv6 addresses that can be configured on this interface.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### NameServers (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`NameServers` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

### Oem.Hpe.ConfigurationSettings

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The state of the currently displayed configuration settings.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.40|

**Oem.Hpe.DHCPv4.ClientIdType**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The type of client id in use or to be selected.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

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
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseDNSServers, and will be removed in a future release. Determines whether to use DHCPv4-supplied DNS servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseDomainName, and will be removed in a future release. Determines whether to use a DHCPv4-supplied domain name. Can only be enabled when DHCPv4 is also enabled; otherwis,e this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseGateway, and will be removed in a future release. Determines whether to use a DHCPv4-supplied gateway. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseNTPServers, and will be removed in a future release. Determines whether to use DHCPv4-supplied NTP servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseStaticRoutes**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseStaticRoutes, and will be removed in a future release. Determines whether to use DHCPv4-supplied static routes. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseWINSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied WINS servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.DHCPv6

**Oem.Hpe.DHCPv6.StatefulModeEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.OperatingMode, and will be removed in a future release.Determines whether DHCPv6 Stateful mode is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.StatelessModeEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.OperatingMode, and will be removed in a future release. Determines whether DHCPv6 Stateless mode is enabled.  Always enabled by default whenever DHCPv6 Stateful mode is also enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseDNSServers, and will be removed in a future release. Determines whether to use DHCPv6-supplied DNS servers. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseDomainName, and will be removed in a future release. Determines whether to use a DHCPv6-supplied domain name. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseNTPServers, and will be removed in a future release. Determines whether to use DHCPv6-supplied NTP servers. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.UseRapidCommit**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseRapidCommit, and will be removed in a future release. Determines whether to use DHCPv6 rapid commit mode. Can only be enabled when DHCPv6 Stateful mode is also enabled; otherwise, this property will be set to false and will be read-only. Do not enable in networks where more than one DHCPv6 server is configured to provide address assignments.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.DomainName

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Domain name of the network to which this management processor belongs. This property can only be modified when the management processor is not configured to use a DHCP supplied domain name; otherwise this property is read-only indicating the value is provided by DHCP.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.HostName

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property HostName, and will be removed in a future release. The management processor host name.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|
|Format|hostname|

### Oem.Hpe.IPv4

**Oem.Hpe.IPv4.DDNSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether DDNS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.IPv4.DNSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`DNSServers` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|
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
|Format|ipv4|

**StaticRoutes[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|An IPv4 static route gateway. Only writeable when use of DHCPv4-supplied static routes is disabled; otherwise this property is read-only indicating the value is provided by DHCPv4.|
|Type|string|
|Read Only|False|
|Format|ipv4|

**StaticRoutes[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|An IPv4 static route subnet mask. Only writeable when use of DHCPv4-supplied static routes is disabled; otherwise this property is read-only indicating the value is provided by DHCPv4.|
|Type|string|
|Read Only|False|
|Format|ipv4|

**Oem.Hpe.IPv4.WINSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether WINS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.IPv4.WINSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`WINSServers` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv4|

### Oem.Hpe.IPv6

**Oem.Hpe.IPv6.DDNSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether IPv6 DDNS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.IPv6.DNSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`DNSServers` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv6|

**Oem.Hpe.IPv6.SLAACEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property StatelessAddressAutoConfig.IPv6AutoConfigEnabled, and will be removed in a future release. Determines whether StateLess Address Auto-Configuration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.IPv6.StaticDefaultGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property IPv6StaticDefaultGateways[].Address, and will be removed in a future release. The IPv6 static default gateway entry.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|
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
|Format|ipv6|

**StaticRoutes[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The IPv6 static route gateway.|
|Type|string|
|Read Only|False|
|Format|ipv6|

**StaticRoutes[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The prefix length of the IPv6 static route destination address.|
|Type|integer or null|
|Read Only|False|

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
|Added|iLO 5 1.10|

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
|Added|iLO 5 1.10|

### Oem.Hpe.NICSupportsIPv6

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether or not this NIC can support the IPv6 protocol.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PingGatewayOnStartup

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Determines whether to ping the IPv4 gateway on startup.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.SharedNetworkPortOptions

**Oem.Hpe.SharedNetworkPortOptions.NIC**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Selects the system NIC that is to be shared with this management processor.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`LOM`|The LOM NIC is configured to be shared.|
|`FlexibleLOM`|The FlexibleLOM NIC is configured to be shared.|
|`FlexibleLOM/OCP`|The FlexibleLOM/OCP is configured to be shared.|

**Oem.Hpe.SharedNetworkPortOptions.Port**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|The network adapter port number that is used for sharing. This feature is only applicable on systems and network adapters that support it.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.SupportsFlexibleLOM

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether this system supports FlexibleLOM. Only applies to Shared Network Port.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.SupportsLOM

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether this system supports LOM. Only applies to Shared Network Port.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PermanentMACAddress

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the permanent MAC address assigned to this interface (port).|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SpeedMbps

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This is the current speed in Mbps of this interface.|
|Type|integer or null|
|Read Only|False|

### StatelessAddressAutoConfig

**StatelessAddressAutoConfig.IPv4AutoConfigEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether IPv4 SLAAC is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**StatelessAddressAutoConfig.IPv6AutoConfigEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|Indicates whether IPv6 SLAAC is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### StaticNameServers (array)

Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

`StaticNameServers` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

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
|Added|iLO 5 1.10|

### VLAN

**VLAN.VLANEnable**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates if this VLAN is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.10|

**VLAN.VLANId**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterface)

| | |
|---|---|
|Description|This indicates the VLAN identifier for this VLAN.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### VLANs

This is a reference to a collection of VLANs and is only used if the interface supports more than one VLANs.
VLANs is a link (`"@odata.id": URI`) to another resource.

## NetworkPortCollection
`@odata.type: "#NetworkPortCollection.NetworkPortCollection"`

A Collection of NetworkPort resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkports`|GET |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkports`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type
|---|---|
|`Members[]`|[NetworkPort](../ilo5_network_resourcedefns300/#networkport)|

### Members (array)

Member of NetworkPortCollection.NetworkPortCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkPortCollection.NetworkPortCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of NetworkPortCollection.NetworkPortCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## NetworkPort

`@odata.type: "#NetworkPort.v1_2_5.NetworkPort"`

A Network Port represents a discrete physical port capable of connecting to a network.

The Data Source is either DCi or RDE. HPE OEM section shall be present only for DCi Data Source.


### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkports/{item}`|GET POST PATCH |
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkports/{item}/settings`|GET POST PATCH |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkports/{item}`|GET POST PATCH |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkports/{item}/settings`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type
|---|---|
|`@Redfish.Settings/SettingsObject`|[NetworkPort](../ilo5_network_resourcedefns300/#networkport)|

### @Redfish.Settings

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)
See the Redfish standard schema and specification for information on common @Redfish properties.

### ActiveLinkTechnology

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Physical link technology values.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Ethernet`|The port is capable of connecting to an Ethernet network.|
|`InfiniBand`|The port is capable of connecting to an InfiniBand network.|
|`FibreChannel`|The port is capable of connecting to a Fibre Channel network.|

### AssociatedNetworkAddresses (array)

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`AssociatedNetworkAddresses` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### CurrentLinkSpeedMbps

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Network Port Current Link Speed.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.40|

### EEEEnabled

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|An indication of whether IEEE 802.3az Energy-Efficient Ethernet (EEE) is enabled for this network port.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

### FlowControlConfiguration

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Ethernet flow control configuration values.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`None`|No IEEE 802.3x flow control is enabled on this port.|
|`TX`|This station can initiate IEEE 802.3x flow control.|
|`RX`|The link partner can initiate IEEE 802.3x flow control.|
|`TX_RX`|This station or the link partner can initiate IEEE 802.3x flow control.|

### FlowControlStatus

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Ethernet flow control configuration values.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`None`|No IEEE 802.3x flow control is enabled on this port.|
|`TX`|This station can initiate IEEE 802.3x flow control.|
|`RX`|The link partner can initiate IEEE 802.3x flow control.|
|`TX_RX`|This station or the link partner can initiate IEEE 802.3x flow control.|

### LinkStatus

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Physical link status values.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Down`|The port is enabled but link is down.|
|`Up`|The port is enabled and link is good (up).|

### MaxFrameSize

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The maximum frame size supported by the port.|
|Type|integer or null|
|Read Only|True|

### NetDevFuncMaxBWAlloc (array)

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`NetDevFuncMaxBWAlloc` is an array containing elements of:

**NetDevFuncMaxBWAlloc[{item}].MaxBWAllocPercent**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The maximum bandwidth allocation percentage allocated to the associated network device function.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**NetDevFuncMaxBWAlloc[{item}].NetworkDeviceFunction**
A reference to the associated network device function that this maximum bandwidth percentage allocation applies to.
NetworkDeviceFunction is a link (`"@odata.id": URI`) to another resource.

### NetDevFuncMinBWAlloc (array)

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`NetDevFuncMinBWAlloc` is an array containing elements of:

**NetDevFuncMinBWAlloc[{item}].MinBWAllocPercent**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The minimum bandwidth allocation percentage allocated to the associated network device function instance. The sum total of all minimum percentages shall not exceed 100.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**NetDevFuncMinBWAlloc[{item}].NetworkDeviceFunction**
A reference to the associated network device function that this minimum bandwidth percentage allocation applies to.
NetworkDeviceFunction is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.AutoNegotiationCapable

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Indicates the ability of this network port to autonegotiate link speed.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.ConfiguredNetworkLinks (array)

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`ConfiguredNetworkLinks` is an array containing elements of:

**ConfiguredNetworkLinks[{item}].ConfiguredLinkSpeedGbps**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The link speed per lane this port is configured to use for autonegotiation.|
|Type|integer or null|
|Read Only|False|

**ConfiguredNetworkLinks[{item}].ConfiguredWidth**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The number of lanes this port is configured to use for autonegotiation. If this property is omitted, the lane count shall default to one.|
|Type|integer or null|
|Read Only|False|

### Oem.Hpe.Evb

Edge Virtual Bridging (EVB) information for this port.
Evb is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.EvbData

**Oem.Hpe.EvbData.Receiving**
**Oem.Hpe.EvbData.Receiving.CdcpActive**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True if a currently active IEEE 802.1Qbg CDCP TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.ChannelActive**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A currently unexpired HPE Channel Link Control or HPE Channel Description TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.ChannelDescriptionLocalSequenceNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The link partner's HPE Channel Description sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.ChannelDescriptionRemoteSequenceNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The last HPE Channel Decsription sequence number sent on this link that was successfully received and processed by the link partner.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.ChannelDescriptionSubtype**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The header subtype field of the last received HPE Channel Description TLV.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.ChannelLinkControlLocalSequenceNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The link partner's HPE Channel Link Control sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.ChannelLinkControlMCEnable**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The Feature Indicators field, Management Controller (MC) Channel (SCID 4094) enabled state in the HPE CLC TLV being received from the link partner on this port.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.ChannelLinkControlRemoteSequenceNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The last HPE Channel Link control sequence number sent on this link that was successfully received and processed by the link partner.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.ChannelLinkControlSubtype**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The header subtype field of the last received HPE Channel Link Control TLV.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.Role**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The link partner's IEEE 802.1Qbg operating role.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`bridge`|Indicates the link partner is operating as a Bridge.|
|`station`|Indicates the link partner is operating as a Station.|

**Oem.Hpe.EvbData.Receiving.SChannelAssignments (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`SChannelAssignments` is an array containing elements of:

**SChannelAssignments[{item}].Scid**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|SCID value for this <SCID,SVID> S-Channel identifier pairreceived from the link partner on this port.|
|Type|integer or null|
|Read Only|True|

**SChannelAssignments[{item}].Svid**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|SVID assignment value for this <SCID,SVID> S-Channel identifier pair received from the link partner on this port. When 0 it indicates an assignment request is in progress.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.SChannelMaxCount**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Indicates the number of S-Channels the link partner can support on this physical link.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.SChannelsSupported**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true this link supports S-Channels.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.EvbData.Receiving.VirtualLinkStatusVector**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A bit vector indicating S-Channel status received from the link partner, 1=up, 0=down. S-Channel status bits are ordered by SCID from lowest numbered (first) to highest (last).|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting**
**Oem.Hpe.EvbData.Transmitting.ChannelDescriptionData (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`ChannelDescriptionData` is an array containing elements of:

**ChannelDescriptionData[{item}].Descriptor0BandwidthCirMbps**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The bandwidth Commited Information Rate (CIR) for this S-Channel, in Mbps.|
|Type|integer or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0BandwidthPirMbps**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The bandwidth Peak Information Rate (PIR) for this S-Channel, in Mbps.|
|Type|integer or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0ChannelTerminationType**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Indicates the termination provided for this S-Channel.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`primary-physical`|This S-Channel is presented to the host OS as a primary PCI physical function.|
|`SR-IOV-virtual`|This S-Channel is presented to the host OS as a PCI SR-IOV virtual function.|
|`secondary-physical`|This S-Channel is presented to the host OS as a secondary PCI physical function, i.e. a PCI physical function behind a bridge on the device.|
|`vSwitch-port`|This S-Channel is mapped to a Virtual Switch port.|
|`NCSI-port`|This S-Channel is mapped to the NCSI internal port for management.|

**ChannelDescriptionData[{item}].Descriptor0EthernetSupport**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, this S-Channel supports Ethernet.|
|Type|boolean or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0FCoESupport**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, this S-Channel supports Fibre Channel over Ethernet (FCoE).|
|Type|boolean or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0PcpSupport**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Indicates which IEEE 802.1Q Ethernet Priority Code Point (PCP) classes are supported on this S-Channel. When no PCPs are supported, the S-Channel makes no attempt to filter or control traffic class. A string of 1/0 characters indicating 1=enabled, 0=disabled. PCP classes are ordered from highest numbered 7 (first) to lowest 0 (last).|
|Type|string or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0RoCEESupport**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, this S-Channel supports RDMA over Converged Enhanced Ethernet (RoCEE).|
|Type|boolean or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0Scid**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The S-Channel identifier for this Descriptor0 instance.|
|Type|integer or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0iSCSISupport**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, this S-Channel supports Internet SCSI (iSCSI).|
|Type|boolean or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor1ConnectionID**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A unique S-Channel identifer in UUID format.|
|Type|string or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor1Scid**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The S-Channel identifier for this Descriptor1 instance.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.ChannelDescriptionLocalSequenceNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|This station's channel discovery local sequence number which will be transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.ChannelDescriptionRemoteSequenceNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The link partner's channel discovery local sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.ChannelDescriptorCount**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The number of channel descriptor pairs being transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.ChannelLinkControlLocalSequenceNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|This station's channel link control local sequence number which will be transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.ChannelLinkControlMCEnable**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The Feature Indicators field, Management Controller (MC) Channel (SCID 4094) enabled state in the HPE CLC TLV being transmitted to the link partner on this port.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.ChannelLinkControlRemoteSequenceNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The link partner's channel link control local sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.Role**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|This port's IEEE 802.1Qbg role being advertised on the link.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`bridge`|Indicates this link is operating locally as a Bridge.|
|`station`|Indicates this link is operating locally as a Station.|

**Oem.Hpe.EvbData.Transmitting.SChannelAssignments (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`SChannelAssignments` is an array containing elements of:

**SChannelAssignments[{item}].Scid**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|SCID value for this <SCID,SVID> S-Channel identifier pair being transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|

**SChannelAssignments[{item}].Svid**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|SVID assignment value for this <SCID,SVID> S-Channel identifier pair being transmitted to the link partner on this port. When 0 it indicates an SVID assignment request to the link partner is in progress.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.SChannelMaxCount**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The Channel Capacity value being advertised to the link partner. It indicates the number of S-Channels this station can support on this physical link.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.SChannelsSupported**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, indicates that this physical link has S-Channel capability.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.EvbData.Transmitting.VirtualLinkStatusVector**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A bit vector indicating S-Channel status being transmitted on this link, 1=up, 0=down. S-Channel status bits are ordered by SCID from lowest numbered (first) to highest (last).|
|Type|string or null|
|Read Only|True|

### Oem.Hpe.Lldp

Link-Layer Discovery Protocol (LLDP) information for this port.
Lldp is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.LldpData

**Oem.Hpe.LldpData.Receiving**
**Oem.Hpe.LldpData.Receiving.ChassisID**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The LLDP chassis ID received from the link partner.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.ChassisIDSubtype**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The IEEE 802.1AB-2009 chassis ID subtype received from the link partner.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`IfAlias`|Interface alias, based on the IfAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the IfName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC 3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|

**Oem.Hpe.LldpData.Receiving.Dcb**
**Oem.Hpe.LldpData.Receiving.Dcb.ApplicationPriorityReceived**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True when an unexpired Data Center Bridging (DCB) Application Priority Table TLV has been received.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.ApplicationPriorityTable (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`ApplicationPriorityTable` is an array containing elements of:

**ApplicationPriorityTable[{item}].ApplicationPriority**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Indicates which priority level is assigned for this application protocol.|
|Type|integer or null|
|Read Only|True|

**ApplicationPriorityTable[{item}].ApplicationProtocol**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|An integer value indicating application protocol identity, of the type described by DCBApplicationSelect.|
|Type|integer or null|
|Read Only|True|

**ApplicationPriorityTable[{item}].ApplicationSelect**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Indentifies the type of the DCBApplicationProtocol property.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`reserved`|Reserved select value.|
|`default-Ethertype`|Default priority. Use when priority not otherwise specified.|
|`TCP-SCTP`|DCBApplicationProtocol value is a well known port over TCP or SCTP.|
|`UDP-DCCP`|DCBApplicationProtocol value is a well known port over UDP or DCCP.|
|`TCP-SCTP-UDP-DCCP`|DCBApplicationProtocol is a well known port over TCP, SCTP, SCTP, or DCCP.|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets**
**Oem.Hpe.LldpData.Receiving.Dcb.Ets.BandwidthAssignmentTable (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`BandwidthAssignmentTable` is an array containing elements of:


| | |
|---|---|
|Description|One entry in the DCB ETS Traffic Class (TC) Bandwidth Assignment Table.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.CreditBasedShaper**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True if the link partner supports the Credit-based Shaper (CBS) transmmission selection algortithm.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.MaximumTrafficClassCount**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The maximum number of traffic classes supported by the link partner.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.PriorityAssignmentTable (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`PriorityAssignmentTable` is an array containing elements of:


| | |
|---|---|
|Description|One entry in the DCB ETS Priority Assignment Table indicating this priority's Traffic Class assignment.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.TlvReceived**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True when an unexpired DCB Enhanced Transmission Selection (ETS) TLV has been received.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.TrafficSelectionAlgorithmTable (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`TrafficSelectionAlgorithmTable` is an array containing elements of:


| | |
|---|---|
|Description|An assignment of a Traffic Selection Algorithm (TSA) to a traffic class.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`strict`|Strict priority algorithm.|
|`CBS`|Credit-Based Shaper algorithm.|
|`ETS`|Enhanced Traffic Selection algorithm.|
|`vendor`|Vendor specific algorithm for use with DCB.|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.Willing**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True if the link partner is willing to accept ETS configurations.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.LocalEqualRemote**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True when the transmitted and received contents match for both DCB ETS and PFC TLVs.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc**
**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.EnabledTrafficClasses**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A bit string indicating which priority levels have PFC enabled, 1=enabled. PFC levels are bit ordered from 7 (first) to 0 (last).|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.MacSecurityBypassCapability**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True when the link partner has the ability to bypass MAC security in order to improve PFC responsiveness.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.MaximumTrafficClassCount**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Indicates the maximum number of traffic classes that the link partner can simultaneously support.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.TlvReceived**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True when an unexpired DCB Priority Flow Control (PFC) TLV has been received.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.Willing**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True if the LLDP link partner is willing to accept PFC configurations.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.Dcb.Version**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The DCB version supported by the link partner.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`unknown`|Unknown|
|`CEE`|Converged Enhanced Ethernet|
|`IEEE`|IEEE 802.1Q|

**Oem.Hpe.LldpData.Receiving.ManagementAddress**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The management address received from the link partner.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.ManagementAddressOID**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|An object identifier for the hardware or protocol entity associated with the management address.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.ManagementAddressReceived**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True when a currently unexpired management address TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.ManagementAddressType**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The type of management address received from the link partner.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`IPv4`|Type 1 (IP version 4).|
|`IPv6`|Type 2 (IP version 6).|
|`all802`|Type 6 (All 802 media plus Ethernet 'canonical format').|

**Oem.Hpe.LldpData.Receiving.ManagementCvlanID**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The management CVLAN ID received from the link partner.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.ManagementIFNumSubtype**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Management interface number subtype.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`unknown`|Interface number is not known.|
|`ifIndex`|Interface number is based on the ifIndex MIB object.|
|`sysPortNum`|Interface number is based on the system port numbering convention.|

**Oem.Hpe.LldpData.Receiving.ManagementIFNumber**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Management interface number received from the link partner represented as a colon delimited string of hexadecimal octets.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.ManagementVlanReceived**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True when a currently unexpired management address VID TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.NearestBridgeTtlExpired**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|True when the LLDP PDU most recently received from the link partner has expired.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.PortDescription**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The remote link partner's port description.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.PortID**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A colon delimited string of hexadecimal octets received from the link partner identifying its port.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Receiving.PortIDSubtype**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The port ID subtype enumeration from IEEE 802.1AB-2009 Table 8-3, which indicates the format for the PortID property.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`IfAlias`|Interface alias, based on the IfAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the IfName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC 3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|

**Oem.Hpe.LldpData.Receiving.SystemDescription**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The system description received from the link partner.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Transmitting**
**Oem.Hpe.LldpData.Transmitting.ChassisID**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The Link Layer Data Protocol (LLDP) chassis ID being transmitted on this link.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Transmitting.ChassisIDSubtype**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The IEEE 802.1AB-2009 chassis ID subtype being transmitted on this link.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`IfAlias`|Interface alias, based on the IfAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the IfName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC 3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|

**Oem.Hpe.LldpData.Transmitting.ManagementAddresses (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`ManagementAddresses` is an array containing elements of:

**ManagementAddresses[{item}].ManagementIPAddress**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A management address.|
|Type|string or null|
|Read Only|True|

**ManagementAddresses[{item}].ManagementIPAddressType**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The IANA type of this management address.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`IPv4`|Type 1 (IP version 4).|
|`IPv6`|Type 2 (IP version 6).|
|`all802`|Type 6 (All 802 media plus Ethernet 'canonical format').|

**Oem.Hpe.LldpData.Transmitting.ManagementCvlanID**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The management CVLAN ID being transmitted on this link.|
|Type|integer or null|
|Read Only|True|

**Oem.Hpe.LldpData.Transmitting.ManagementCvlanIDTransmitted**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, indicates that a management CVLAN ID is being transmitted on this link.|
|Type|boolean or null|
|Read Only|True|

**Oem.Hpe.LldpData.Transmitting.PortDescription**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|An alphanumeric string describing this link.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Transmitting.PortID**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A colon delimited string of hexadecimal octets identifying this port.|
|Type|string or null|
|Read Only|True|

**Oem.Hpe.LldpData.Transmitting.PortIDSubtype**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The port ID subtype from IEEE 802.1AB-2009 Table 8-3.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`IfAlias`|Interface alias, based on the IfAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the IfName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC 3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|

**Oem.Hpe.LldpData.Transmitting.SystemDescription**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|A textual description of this system.|
|Type|string or null|
|Read Only|True|

### Oem.Hpe.PortDiagnosticEnableLocalLoopback

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, local loopback is active on this port.  PortDiagnosticsEnabled must first be true in order to set this property to true.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

### Oem.Hpe.PortDiagnosticEnableRemoteLoopback

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, remote loopback is active on this port. PortDiagnosticsEnabled must first be true in order to set this property to true.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

### Oem.Hpe.PortDiagnosticLocalLoopbackCapable

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, the port has local loopback capability.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.PortDiagnosticRemoteLoopbackCapable

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, the port has remote loopback capability.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.PortDiagnosticsEnabled

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|When true, diagnostic features are enabled on this port.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

### Oem.Hpe.VirtualFunctionAllocations (array)

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`VirtualFunctionAllocations` is an array containing elements of:

**VirtualFunctionAllocations[{item}].NetworkDeviceFunction**
The logical network device function to which this virtual function allocation applies.
NetworkDeviceFunction is a link (`"@odata.id": URI`) to another resource.

**VirtualFunctionAllocations[{item}].VirtualFunctionsAllocated**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The number of virtual functions allocated to this logical network device function instance.|
|Type|number or null|
|Read Only|False|

### PhysicalPortNumber

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The physical port number label for this port.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### PortMaximumMTU

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The largest maximum transmission unit (MTU) that can be configured for this network port.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Settings

**Settings.href**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Reference to the resource the client may PUT/PATCH to in order to change this resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### SignalDetected

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Status

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)
See the Redfish standard schema and specification for information on common Status object.

### SupportedEthernetCapabilities (array)

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`SupportedEthernetCapabilities` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`WakeOnLAN`|Wake on LAN (WoL) is supported on this port.|
|`EEE`|IEEE 802.3az Energy Efficient Ethernet (EEE) is supported on this port.|

### SupportedLinkCapabilities (array)

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`SupportedLinkCapabilities` is an array containing elements of:

**SupportedLinkCapabilities[{item}].CapableLinkSpeedMbps (array)**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

`CapableLinkSpeedMbps` is an array containing elements of:


| | |
|---|---|
|Type|integer or null|
|Read Only|True|

**SupportedLinkCapabilities[{item}].LinkNetworkTechnology**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|Physical link technology values.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Ethernet`|The port is capable of connecting to an Ethernet network.|
|`InfiniBand`|The port is capable of connecting to an InfiniBand network.|
|`FibreChannel`|The port is capable of connecting to a Fibre Channel network.|

**SupportedLinkCapabilities[{item}].LinkSpeedMbps**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|The speed of the link in Mbps when this link network technology is active.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

### WakeOnLANEnabled

Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)

| | |
|---|---|
|Description|An indication of whether Wake on LAN (WoL) is enabled for this network port.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.20|

### Actions


**HpeNetworkPort.DiagnosticsReset**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)
There are no parameters for this action.

**NetworkPort.DiagnosticsReset**
Member of [NetworkPort.v1\_2\_5.NetworkPort](#networkport)
NOTE: Deprecated, will be removed in a future release. Replaced by HpeNetworkPort.DiagnosticsReset

There are no parameters for this action.
