---
seo:
  title: Adapting from ilo 5
sidebar:
  hide: false
markdown:
  toc:
    hide: true
    depth: 3
  lastUpdatedBlock:
    hide: true
---

# Adapting from iLO 5

This section is a guide to help Redfish client code adapt from the iLO 5 RESTful API to the iLO 6 RESTful API.

{% admonition type="info" name="NOTES" %}

- The **DCi** [acronym](/docs/etc/glossaryterms/) mentioned below, refers to the HPE proprietary **Discovery and Configuration via iLO** protocol used between internal server devices and iLO.

- The **RDE** [acronym](/docs/etc/glossaryterms/) mentioned below, refers to the DMTF's **Platform Level Data Model for Redfish Device Enablement** (PLDM for RDE) <a href="https://www.dmtf.org/dsp/DSP0218" target="_blank">specification</a>.

- **DCi** and **RDE**
[acronyms](/docs/etc/glossaryterms/) refer to the protocol through which adapters Redfish data is supplied to Redfish clients. Refer to the `Controllers[{item}].UnderlyingDataSource` [resource definition](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_network_resourcedefns{{process.env.LATEST_FW_VERSION}}/#networkadapter)
for more information.

- Refer to the [RDE section](/docs/redfishservices/ilos/supplementdocuments/rdesupport/#ilo-rde-uris-and-corresponding-http-methods) for information on how to identify URIs of such devices.
{% /admonition %}

## Introduction

The iLO 6 RESTful API is fully conformant with the Redfish® protocol and data model mentioned in the [Changelog](/docs/redfishservices/ilos/ilo6/ilo6_changelog/#changelog) file. Any remaining support for the pre-Redfish iLO RESTful API has been removed and is replaced by the Redfish equivalents. HPE continues to extend the Redfish data model (Oem.Hpe extensions) to enable value for the customer.

Refer to the [Conformance](/docs/concepts/redfishconformance) section for more detail on this subject.

## Deprecated for iLO 6

### BaseNetworkAdapters deprecated

From iLO 6 v1.10 onwards, the `HpeBaseNetworkAdapterCollection` URI (`/redfish/v1/Systems/1/BaseNetworkAdapters`) and underlying resources are deprecated. The corresponding properties are moved to the standard `NetworkAdapterCollection`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_network_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#networkadaptercollection") %} URI {% /link-internal %}
(`/redfish/v1/Chassis/1/NetworkAdapters`).

Prior to iLO 6, the `NetworkAdapterCollection`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_network_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#networkadaptercollection") %} URI {% /link-internal %}
NICs.

For iLO 6, the `NetworkAdapterCollection`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_network_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#networkadaptercollection") %} URI {% /link-internal %}
including DCi, RDE, and Non-RDE/Non-DCi (i.e. Base Network Adapters).

In iLO 6, most of the deprecated `HpeBaseNetworkAdapter` properties are part of the DMTF's `NetworkAdapter` schema, and a few properties are `Oem/Hpe` properties under `Chassis/1/NetworkAdapters`.

In iLO 6, Base Network Adapters have URIs of the form `Chassis/1/NetworkAdapters/DA******`.

DMTF's Network Adapters `Properties`/`Actions` are not supported for Base Network Adapters:

- All write support (POST/PATCH) including `ResetSettingsToDefault`, `FlushConfigurationToNVM`, are not supported.
- Links to `NetworkDeviceFunctions`, `NetworkPorts`, and `Ports` are not supported as `Oem.Hpe.PhysicalPorts[]` and `Oem.Hpe.FcPorts[]` list the port details.

|S.No|Property under BaseNetworkAdapters|Property under NetworkAdapters|Standard/OEM under NetworkAdapters|
|---|---|---|---|
|1|Name|Name|As per DMTF|
|2|Manufacturer|Manufacturer|As per DMTF|
|3|SerialNumber|SerialNumber|As per DMTF|
|4|PartNumber|PartNumber|As per DMTF|
|5|Location|Location.PartLocation.LocationType|As per DMTF|
|||Location.PartLocation.ServiceLabel|As per DMTF|
|||Location.PartLocation.LocationOrdinalValue|As per DMTF|
|6|Firmware.Current.VersionString|Controllers.FirmwarePackageVersion|As per DMTF|
|||Controllers.ControllerCapabilities.NetworkPortCount(count of PhysPort/FcPort|As per DMTF|
|||Controllers.PartLocation.LocationType|As per DMTF|
|||Controllers.PartLocation.ServiceLabel|As per DMTF|
|||Controllers.PartLocation.LocationOrdinalValue|As per DMTF|
|7|Status.Health|Status.Health|As per DMTF|
|8|Status.State|Status.State|As per DMTF|
|9|PhysicalPorts[].FullDuplex|Oem.Hpe.PhysicalPorts[].FullDuplex|OEM|
|10|PhysicalPorts[].IPv4Addresses[]|Oem.Hpe.PhysicalPorts[].IPv4Addresses[]|OEM|
|11|PhysicalPorts[].IPv6Addresses[]|Oem.Hpe.PhysicalPorts[].IPv6Addresses[]|OEM|
|12|PhysicalPorts[].LinkStatus|Oem.Hpe.PhysicalPorts[].LinkStatus|OEM|
|13|PhysicalPorts[].MacAddress|Oem.Hpe.PhysicalPorts[].MacAddress|OEM|
|14|PhysicalPorts[].Name|Oem.Hpe.PhysicalPorts[].Name|OEM|
|15|PhysicalPorts[].SpeedMbps|Oem.Hpe.PhysicalPorts[].SpeedMbps|OEM|
|16|PhysicalPorts[].BadReceives|Oem.Hpe.PhysicalPorts[].BadReceives|OEM|
|17|PhysicalPorts[].BadTransmits|Oem.Hpe.PhysicalPorts[].Transmits|OEM|
|17|PhysicalPorts[].GoodReceives|Oem.Hpe.PhysicalPorts[].GoodReceives|OEM|
|18|PhysicalPorts[].GoodTransmits|Oem.Hpe.PhysicalPorts[].GoodTransmits|OEM|
|18|PhysicalPorts[].Oem.Hpe.Team|Oem.Hpe.PhysicalPorts[].Team|OEM|
|||PhysicalPorts[].UEFIDevicePath|OEM|
|||PhysicalPorts[].StatusHealth|OEM|
|||PhysicalPorts[].StatusState|OEM|
|19|FcPorts[].PortNumber|Oem.hpe.FcPorts[].PortNumber|OEM|
||FcPort[].WWNN|Oem.hpe.FcPort[].WWNN|OEM|
||FcPort[].WWPN|Oem.hpe.FcPort[].WWPN|OEM|
|20|StructuredName|OEM.Hpe.StructuredName|OEM|
||UEFIDevicePath|Oem.Hpe.UEFIDevicePath|OEM|

### NetworkPorts deprecated

From iLO 6 v1.10 onwards, the `NetworkPortCollection` URI and underlying resources are deprecated. The corresponding properties are moved to the standard `PortCollection`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION) %} URI {% /link-internal %}. The DMTF Redfish standard specification has deprecated the `NetworkPort` schema with the implementation of `Port`.

Deprecated `NetworkPorts` URIs:

- `/redfish/v1/Chassis/1/NetworkAdapters/1/NetworkPorts`
- `/redfish/v1/Chassis/1/NetworkAdapters/1/NetworkPorts/1`
- `/redfish/v1/Chassis/1/NetworkAdapters/1/NetworkPorts/1/HpeEVB`
- `/redfish/v1/Chassis/1/NetworkAdapters/1/NetworkPorts/1/HpeLLDP`
- `/redfish/v1/Chassis/1/NetworkAdapters/1/NetworkPorts/1/Settings`
- `redfish/v1/Systems/1/NetworkInterfaces/1/NetworkPorts`
- `/redfish/v1/Systems/1/NetworkInterfaces/1/NetworkPorts/1`
- `/redfish/v1/Systems/1/NetworkInterfaces/1/NetworkPorts/1/HpeEVB`
- `/redfish/v1/Systems/1/NetworkInterfaces/1/NetworkPorts/1/HpeLLDP`
- `/redfish/v1/Systems/1/NetworkInterfaces/1/NetworkPorts/1/Settings`

### HPE Smart Storage Model (OEM) deprecated

HPE initially developed the `SmartStorage` Redfish OEM data model for HPE ProLiant DL580 Gen 8 server. This model supported inventory (GET) and monitoring (Events) features. 
In HPE ProLiant Gen 10, the `SmartStorageConfig` resource was added to support configuration. This OEM model used a proprietary API that only supports the SR line of storage controllers. This OEM storage model is removed starting with iLO 6 / HPE ProLiant Gen 11 servers.

Customers are encouraged to use the open standard [DMTF Redfish Storage Model](/docs/redfishservices/ilos/supplementdocuments/storage/#dmtf-redfish-storage-model).

The following OEM specific `SmartStorageConfig` and `SmartStorage` resources are removed in iLO 6/Gen 11:

- `HpeSmartStorage`
- `HpeSmartStorageArrayController`
- `HpeSmartStorageDiskDrive`
- `HpeSmartStorageLogicalDrive`
- `HpeSmartStorageStorageEnclosure`
- `HpeSmartStorageHostBusAdapter`

## Detail of All Property Changes

### Schemas Deprecated in iLO 6 v1.05

#### HpeBaseNetworkAdapter Deprecated

`@odata.type: #HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter`

Refer to the [BaseNetworkAdapters deprecated](#basenetworkadapters-deprecated) paragraph.

#### NetworkPort Deprecated

`@odata.type: #NetworkPort.v1_2_5.NetworkPort`

Refer to the [NetworkPorts deprecated](#networkports-deprecated) paragraph.

#### HpeNetworkPortEVB Deprecated

`@odata.type: #HpeNetworkPortEVB.v1_2_0.HpeNetworkPortEVB`

Refer to the [NetworkPorts deprecated](#networkports-deprecated) paragraph.

#### HpeNetworkPortLLDP Deprecated

`@odata.type: #HpeNetworkPortLLDP.v1_2_0.HpeNetworkPortLLDP`

Refer to the [NetworkPorts deprecated](#networkports-deprecated) paragraph.

#### HpeSmartStorage Deprecated

`@odata.type: #HpeSmartStorage.v2_0_0.HpeSmartStorage`

Refer to the [HPE Smart Storage Model (OEM) deprecated](#hpe-smart-storage-model-oem-deprecated) paragraph.

### Property Replacements and Removals

#### EthernetInterface Renames and Removals

`@odata.type: #EthernetInterface.v1_4_1.EthernetInterface`

|Property|Replacement|Note|
|--------|-----------|----|
|/Oem/Hpe/SharedNetworkPortOptions/NIC|Deprecated the supported values of OEM properties in the `HpeiLOEthernetNetworkInterface` schema.|The following are the supported values:<br>`LOM` (the LOM NIC is configured to be shared)<br>`FlexibleLOM` (the FlexibleLOM NIC is configured to be shared.)<br>`FlexibleLOM/OCP` (the FlexibleLOM/OCP is configured to be shared.)|
|/Oem/Hpe/SupportsFlexibleLOM|Deprecated the supported value of OEM property in `HpeiLOEthernetNetworkInterface` schema.|None.|
|/Oem/Hpe/SupportsLOM|Deprecated the supported value of OEM property in `HpeiLOEthernetNetworkInterface` schema.|None.|

#### HpeSecureEraseReport Renames and Removals

`@odata.type: #HpeSecureEraseReport.v1_0_0.HpeSecureEraseReport`

|Property|Replacement|Note|
|--------|-----------|----|
|DeviceType/SmartStorage|Version deprecated in iLO 6 v1.05.|Deprecated the supported value `SmartStorage`.|

#### ServiceRoot Renames and Removals

`@odata.type: #ServiceRoot.v1_13_0.ServiceRoot`

|Property|Replacement|Note|
|--------|-----------|----|
|/Oem/Hpe/CACLoginUri|Deprecated OEM property. Deprecated in `HpeiLOServiceExt` schema. URI for the CAC based authentication.|None.|

#### Thermal Renames and Removals

`@odata.type: #Thermal.v1_7_1.Thermal`

|Property|Change|Note|
|--------|-----------|----|
|/Temperatures/{item}/PhysicalContext|Deprecated a few supported values in Temperatures (array) in Temperatures[{item}]PhysicalContext.|None.|

#### Bios Renames and Removals

`@odata.type: "#HpeBiosExt.v2_0_0.HpeBiosExt"`

|Property|Change|Note|
|--------|-----------|----|
|`/redfish/v1/systems/{item}/bios/baseconfigs/`|`/redfish/v1/systems/{item}/bios/oem/hpe/baseconfigs/`|Redfish compliance|
|`/redfish/v1/systems/{item}/bios/boot/`|`/redfish/v1/systems/{item}/bios/oem/hpe/boot/`|Redfish compliance|
|`/redfish/v1/systems/{item}/bios/kmsconfig/`|`/redfish/v1/systems/{item}/bios/oem/hpe/kmsconfig/`|Redfish compliance|
|`/redfish/v1/systems/{item}/bios/mappings/`|`/redfish/v1/systems/{item}/bios/oem/hpe/mappings/`|Redfish compliance|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/`|`/redfish/v1/systems/{item}/bios/oem/hpe/serverconfiglock/`|Redfish compliance|
|`/redfish/v1/systems/{item}/bios/tlsconfig/`|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/`|Redfish compliance|
|`/redfish/v1/systems/{item}/bios/iscsi/`|`/redfish/v1/systems/{item}/bios/oem/hpe/iscsi/`|Redfish compliance|
|`/redfish/v1/systems/{item}/bios/scalablepmem/`|Deprecated in iLO 6 v1.05.|None|

### Property Additions to existing Types

#### Certificate Additions

`@odata.type: #Certificate.v1_1_0.Certificate`

|Property|Change|Note|
|--------|-----------|----|
|/UefiSignatureOwner|Added in iLO 6 v1.05|The UEFI signature owner for the certificate.|

#### Chassis Additions

`@odata.type: #Chassis.v1_10_2.Chassis`

|Property|Change|Note|
|--------|-----------|----|
|Oem/Hpe/Firmware/SecondarySystemProgrammableLogicDevice|Added OEM property (`HpeServerChassis` schema). Secondary Complex programmable logic device (CPLD).|None.|
|Oem/Hpe/Firmware/SecondarySystemProgrammableLogicDevice.Current|Added OEM property (`HpeServerChassis` schema). The current firmware version.|None.|
|Oem/Hpe/Firmware/SecondarySystemProgrammableLogicDevice.Current.VersionString|Added OEM property (`HpeServerChassis` schema). The firmware version of the CPLD.|None.|
|Oem/Hpe/TelcoModeEnabled| Added OEM property (`HpeServerChassis` schema). This property indicates if Telco mode is enabled on the server.|None.|

#### ComputerSystem Additions

`@odata.type: #ComputerSystem.v1_13_0.ComputerSystem`

|Property|Change|Note|
|--------|-----------|----|
|Oem/Hpe/PostMode|Added the supported value `PostToWait` to OEM property (`HpeComputerSystemExt`). Server boots until Discovery Completes, then indefinitely waits.|None.|

#### EthernetInterface Additions

`@odata.type: EthernetInterface.v1_4_1.EthernetInterface`

|Property|Change|Note|
|--------|-----------|----|
|/Oem.Hpe.SharedNetworkPortOptions/NIC|Added OEM property supported values (`HpeiLOEthernetNetworkInterface` schema).|Selects the system NIC that is to be shared with this management processor. The following are the supported values:<br>`OCP1` (the OCP1 NIC is configured to be shared)<br>`OCP2` (the OCP2 NIC is configured to be shared)<br>`EmbeddedNIC` (the EmbeddedNIC is configured to be shared).|
|/Oem/Hpe/SupportsEmbeddedNIC|Added OEM property (`HpeiLOEthernetNetworkInterface` schema). Indicates whether this system supports LOM. Only applies to Shared Network Port.|None.|
|/Oem/Hpe/SupportsOCP1|Added OEM property (`HpeiLOEthernetNetworkInterface` schema). Indicates whether the system supports OCP1. Only applies to Shared Network Port.|None.|
|/Oem/Hpe/SupportsOCP2|Added OEM property (`HpeiLOEthernetNetworkInterface` schema). Indicates whether the system supports OCP2. Only applies to Shared Network Port.|None.|

#### EventDestination Additions

`@odata.type: #EventDestination.v1_0_0.EventDestination`

|Property|Change|Note|
|--------|-----------|----|
|/RegistryPrefixes (array)|Version added iLO 6 v1.05. The list of the prefixes of the message registries that can be used for the RegistryPrefix property on a subscription. If this property is absent or contains an empty array, the service does not support RegistryPrefix-based subscriptions. This property shall contain the array of the prefixes of the message registries that shall be allowed for an event subscription.|None.|

#### EventService Additions

`@odata.type: #EventService.v1_7_2.EventService`

|Property|Change|Note|
|--------|-----------|----|
|/RegistryPrefixes (array)|Version added in iLO 6 v1.05. The list of the prefixes of the message registries that can be used for the RegistryPrefix property on a subscription. If this property is absent or contains an empty array, the service does not support RegistryPrefix-based subscriptions. This property shall contain the array of the prefixes of the message registries that shall be allowed for an event subscription.|None.|

#### HpeSecureEraseReport Additions

`@odata.type: #HpeSecureEraseReport.v1_1_0.HpeSecureEraseReport`

|Property|Replacement|Note|
|--------|-----------|----|
|DeviceType/PCIControllers|Version added in iLO 6 v1.05. |This indicates the device type is `PCI Controllers`.|

#### HpeServerDevice Additions

`@odata.type: #HpeServerDevice.v2_1_0.HpeServerDevice`

|Property|Change|Note|
|--------|-----------|----|
|/DeviceType/Embedded SATA Controller|Version added in iLO 6 v1.05.|Added supported value `Embedded SATA Controller`.|

#### Memory Additions

`@odata.type: #Memory.v1_14_1.Memory`

|Property|Change|Note|
|--------|-----------|----|
|/MemoryDeviceType/DDR5|Version added in iLO 6 v1.05.|Added the supported value. The Memory resource describes a memory module.|

#### Port Additions

`@odata.type: #Port.v1_6_1.Port`

|Property|Change|Note|
|--------|-----------|----|
|/PortProtocol|Version added in iLO 6 v1.05| The protocol being sent over this port. Added supported values. The following are the supported values:<br>`SAS` - Serial Attached SCSI<br>`MultiProtocol` - Multiple Protocols<br>`PCIe` - PCI Express<br>`AHCI` - Advanced Host Controller Interface (AHCI)<br>`UHCI` - Universal Host Controller Interface (UHCI)<br>`SATA` - Serial AT Attachment<br>`USB` - Universal Serial Bus (USB)<br>`NVMe` - Non-Volatile Memory Express (NVMe)<br>`iSCSI` - Internet SCSI<br>`FCP` - Fibre Channel Protocol for SCSI<br>`FICON` - FIbre CONnection (FICON)<br>`NVMeOverFabrics` - NVMe over Fabrics<br>`SMB` - Server Message Block (SMB). Also known as the Common Internet File System (CIFS)<br>`NFSv3` - Network File System (NFS) version 3<br>`NFSv4` - Network File System (NFS) version 4<br>`HTTP` - Hypertext Transport Protocol (HTTP)<br>`HTTPS` - Hypertext Transfer Protocol Secure (HTTPS)<br>`FTP` - File Transfer Protocol (FTP)<br>`SFTP` - SSH File Transfer Protocol (SFTP)<br>`iWARP` - Internet Wide Area RDMA Protocol (iWARP)<br>`RoCE` - RDMA over Converged Ethernet Protocol<br>`RoCEv2` - RDMA over Converged Ethernet Protocol Version 2<br>`I2C` - Inter-Integrated Circuit Bus<br>`TCP` - Transmission Control Protocol (TCP)<br>`UDP` - User Datagram Protocol (UDP)<br>`TFTP` - Trivial File Transfer Protocol (TFTP)<br>`NVLink` - NVLink<br>`OEM` - OEM-specific<br>`DisplayPort` - DisplayPort<br>`HDMI` - HDMI<br>`VGA` - VGA<br>`DVI` - DVI.|
