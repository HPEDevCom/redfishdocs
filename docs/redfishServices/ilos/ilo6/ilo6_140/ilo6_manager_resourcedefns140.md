---
excludeFromSearch: true
seo:
  title: Manager resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Manager resource definitions of iLO 6 v1.40

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## ManagerCollection

`@odata.type: "#ManagerCollection.ManagerCollection"`

A Collection of Manager resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Manager](../ilo6_manager_resourcedefns140/#manager)|

### Members (array)

Member of ManagerCollection.ManagerCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of ManagerCollection.ManagerCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of ManagerCollection.ManagerCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## Manager

`@odata.type: "#Manager.v1_5_1.Manager"`

The Manager resource describes a manager.  Examples of managers are BMCs, Enclosure Managers, Management Controllers and other subsystems assigned manageability functions.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Oem/Hpe/Links/DateTimeService`|[HpeiLODateTime](../ilo6_hpe_resourcedefns140/#hpeilodatetime)|
|`Oem/Hpe/Links/RemoteSupport`|[HpeRemoteSupport](../ilo6_hpe_resourcedefns140/#hperemotesupport)|
|`Links/ManagerForChassis[]`|[Chassis](../ilo6_chassis_resourcedefns140/#chassis)|
|`Oem/Hpe/Links/LicenseService`|Collection of [HpeiLOLicense](../ilo6_hpe_resourcedefns140/#hpeilolicensecollection)|
|`VirtualMedia`|Collection of [VirtualMedia](../ilo6_other_resourcedefns140/#virtualmediacollection)|
|`LogServices`|Collection of [LogService](../ilo6_other_resourcedefns140/#logservicecollection)|
|`Links/ManagerInChassis`|[Chassis](../ilo6_chassis_resourcedefns140/#chassis)|
|`EthernetInterfaces`|Collection of [EthernetInterface](../ilo6_network_resourcedefns140/#ethernetinterfacecollection)|
|`Links/ManagerForServers[]`|[ComputerSystem](../ilo6_computersystem_resourcedefns140/#computersystem)|
|`Oem/Hpe/Links/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](../ilo6_hpe_resourcedefns140/#hpeiloactivehealthsystem)|
|`Oem/Hpe/Links/SecurityService`|[HpeSecurityService](../ilo6_hpe_resourcedefns140/#hpesecurityservice)|
|`SerialInterfaces`|Collection of [SerialInterface](../ilo6_other_resourcedefns140/#serialinterfacecollection)|
|`NetworkProtocol`|[ManagerNetworkProtocol](../ilo6_manager_resourcedefns140/#managernetworkprotocol)|
|`Oem/Hpe/Links/FederationPeers`|Collection of [HpeiLOFederationPeers](../ilo6_hpe_resourcedefns140/#hpeilofederationpeerscollection)|
|`HostInterfaces`|Collection of [HostInterface](../ilo6_other_resourcedefns140/#hostinterfacecollection)|
|`Oem/Hpe/Links/EmbeddedMediaService`|[HpeiLOEmbeddedMedia](../ilo6_hpe_resourcedefns140/#hpeiloembeddedmedia)|
|`Oem/Hpe/Links/FederationGroups`|Collection of [HpeiLOFederationGroup](../ilo6_hpe_resourcedefns140/#hpeilofederationgroupcollection)|
|`Oem/Hpe/Links/BackupRestoreService`|[HpeiLOBackupRestoreService](../ilo6_hpe_resourcedefns140/#hpeilobackuprestoreservice)|

### CommandShell

**CommandShell.ConnectTypesSupported (array)**
Member of [Manager.v1\_5\_1.Manager](#manager)

`ConnectTypesSupported` is an array containing elements of:

**ConnectTypesSupported[{item}]**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`SSH`|The controller supports a Command Shell connection using the SSH protocol|
|`Telnet`|The controller supports a Command Shell connection using the Telnet protocol|
|`IPMI`|The controller supports a Command Shell connection using the IPMI Serial-over-LAN (SOL) protocol|
|`Oem`|The controller supports a Command Shell connectino using an OEM-specific protocol|

**CommandShell.MaxConcurrentSessions**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This is the maximum number of Command Shell sessions, regardless of protocol, that this manager supports.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CommandShell.ServiceEnabled**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates if the Command Shell service is enabled for this manager.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### DateTime

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The current DateTime (with offset) for the manager, used to set or read time.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### DateTimeLocalOffset

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The time offset from UTC that the DateTime property is set to in format: +06:00 .|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### EthernetInterfaces

This is a reference to a collection of NICs that this manager uses for network communication.  It is here that clients will find NIC configuration options and settings.
EthernetInterfaces is a link (`"@odata.id": URI`) to another resource.

### FirmwareVersion

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The firmware version of this Manager|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### GraphicalConsole

**GraphicalConsole.ConnectTypesSupported (array)**
Member of [Manager.v1\_5\_1.Manager](#manager)

`ConnectTypesSupported` is an array containing elements of:

**ConnectTypesSupported[{item}]**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`KVMIP`|The controller supports a Graphical Console connection using a KVM-IP (redirection of Keyboard, Video, Mouse over IP) protocol|
|`Oem`|The controller supports a Graphical Console connection using an OEM-specific protocol|

**GraphicalConsole.MaxConcurrentSessions**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates the maximum number of Graphical Console sessions, regardless of protocol, this manager supports.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**GraphicalConsole.ServiceEnabled**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates if the Command Shell service is enabled for this manager.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### HostInterfaces

This is a reference to a collection of Host Interfaces that this manager uses for local host communication.  It is here that clients will find Host Interface configuration options and settings.
HostInterfaces is a link (`"@odata.id": URI`) to another resource.

### LogServices

Reference to a resource of type Collection with a MemberType of Logs.
LogServices is a link (`"@odata.id": URI`) to another resource.

### ManagerType

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This property is the manager type for this resource.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ManagementController`|A controller used primarily to monitor or manage the operation of a device or system|
|`EnclosureManager`|A controller which provides management functions for a chassis or group of devices or systems|
|`BMC`|A controller which provides management functions for a single computer system|

### Model

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Model name of the manager.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### NetworkProtocol

 This is a reference to the network services and their settings that the manager controls.  It is here that clients will find network configuration options as well as network services.
NetworkProtocol is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.ClearRestApiStatus

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Status of external provider data in NVRAM.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`DataPresent`|External Provider data is present in NVRAM.|
|`DataCleared`|External Provider data is not present in NVRAM.|

### Oem.Hpe.CloudConnect

**Oem.Hpe.CloudConnect.ActivationKey**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The activation key is the customer account ID of HPE GreenLake. Obtain the account ID by visiting HPE GreenLake portal-Manage->Account Details card.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.CloudConnect.CloudConnectStatus**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates the current status of cloud connection.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NotEnabled`|Indicates the initial state of the system or cloud connect service is disabled.|
|`ConnectionInProgress`|Indicates the cloud activation or connection to the communication service is in progress|
|`ConnectionFailed`|Indicates the cloud activation could not be completed and and the retry attempts for activation also failed|
|`Connected`|Indicates the cloud connect enabled, activation successful and connection to communication service successful|
|`RetryInProgress`|Indicates a connection issue with the communication service and being retried for a successful communication|
|`NotConnected`|Indicates the connection retries to the communication service has failed and periodic retries will be attempted|

**Oem.Hpe.CloudConnect.FailReason**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates the reason for cloud connection failure.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.30|

The following are the supported values:

|Value|Description|
|---|---|
|`iLOTimeError`|Indicates the cloud activation failed due to incorrect iLO time.|
|`NetworkError`|Indicates the cloud activation failed due to network issues.|
|`ProxyError`|Indicates the cloud activation failed due to Proxy errors.|
|`ActivationKeyMissing`|Indicates the cloud activation failed due to missing activation key.|
|`WrongActivationKey`|Indicates the cloud activation failed due to wrong activation key errors.|
|`WrongiLOVersion`|Indicates the cloud activation failed due to wrong iLO version errors.|

**Oem.Hpe.CloudConnect.NextRetryTime**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates the timestamp of next retry event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.40|

### Oem.Hpe.ConfigurationLimitations

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Limitations on configuration change based on node type.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`None`|No user interface configuration limitations are in effect.|
|`ManagedNode`|This is a managed node. User interfaces that are required for management cannot be modified.|

### Oem.Hpe.ConfigurationSettings

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|State of the currently displayed configuration settings.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Current`|
|`SomePendingReset`|

### Oem.Hpe.FederationConfig

**Oem.Hpe.FederationConfig.IPv6MulticastScope**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The IPv6 network scope of multicast announcements.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Link`|
|`Site`|
|`Organization`|

**Oem.Hpe.FederationConfig.MulticastAnnouncementInterval**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The frequency in Seconds at which the iLO system announces itself on the network. A value of 0 disables multicast announcments.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Null`|
|`30`|
|`60`|
|`120`|
|`300`|
|`600`|
|`900`|
|`1800`|

**Oem.Hpe.FederationConfig.MulticastDiscovery**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Enables or Disables Multicast Discovery for the local iLO system.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Enabled`|
|`Disabled`|

**Oem.Hpe.FederationConfig.MulticastTimeToLive**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The maximum number of switches a multicast announcement will traverse before being discarded.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.FederationConfig.iLOFederationManagement**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Enables or Disables iLO Federation features for the local iLO system.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Enabled`|
|`Disabled`|

### Oem.Hpe.Firmware

**Oem.Hpe.Firmware.Backup**
**Oem.Hpe.Firmware.Backup.BuildNumber**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Backup.BuildNumberString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Backup.Date**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Backup.DebugBuild**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Backup.Family**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Backup.MajorVersion**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Backup.MinorVersion**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Backup.Time**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Backup.VersionString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock**
**Oem.Hpe.Firmware.Bootblock.BuildNumber**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock.BuildNumberString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock.Date**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock.DebugBuild**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock.Family**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock.MajorVersion**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock.MinorVersion**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock.Time**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Bootblock.VersionString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current**
**Oem.Hpe.Firmware.Current.BuildNumber**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current.BuildNumberString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current.Date**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current.DebugBuild**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current.Family**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current.MajorVersion**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current.MinorVersion**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current.Time**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Current.VersionString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending**
**Oem.Hpe.Firmware.Pending.BuildNumber**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending.BuildNumberString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending.Date**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending.DebugBuild**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending.Family**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending.MajorVersion**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending.MinorVersion**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending.Time**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Firmware.Pending.VersionString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.FrontPanelUSB

**Oem.Hpe.FrontPanelUSB.State**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The state of the front USB port device.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Ready`|iLO has not detected a front panel device.|
|`Busy`|iLO has detected a front panel device and is initializing or executing operations on the device.|
|`Complete`|iLO has successfully finished initializing or executing operations on the device.|
|`Error`|iLO failed to initialize or execute operations on the device.|
|`Disabled`|The front panel device is disabled by user configuration.|

### Oem.Hpe.IdleConnectionTimeoutMinutes

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This setting specifies how long a user can be inactive before an iLO web interface ends automatically.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Null`|
|`15`|
|`30`|
|`60`|
|`120`|

### Oem.Hpe.IntegratedRemoteConsole

**Oem.Hpe.IntegratedRemoteConsole.HotKeys (array)**
Member of [Manager.v1\_5\_1.Manager](#manager)

`HotKeys` is an array containing elements of:

**HotKeys[{item}].KeySequence (array)**
Member of [Manager.v1\_5\_1.Manager](#manager)

`KeySequence` is an array containing elements of:

**KeySequence[{item}]**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NONE`|No key|
|`ESC`|Escape key|
|`L_ALT`|Left Alt key|
|`R_ALT`|Right Alt key|
|`L_SHIFT`|Left Shift key|
|`R_SHIFT`|Right Shift key|
|`L_CTRL`|Left Control key|
|`R_CTRL`|Right Control key|
|`L_GUI`|Left Windows key|
|`R_GUI`|Right Windows key|
|`INS`|Insert key|
|`DEL`|Delete key|
|`HOME`|Home key|
|`END`|End key|
|`PG_UP`|Page Up key|
|`PG_DN`|Page Down key|
|`ENTER`|Enter key|
|`TAB`|Tab key|
|`BREAK`|Break key|
|`BACKSPACE`|Backspace key|
|`NUM_PLUS`|Num Plus key|
|`NUM_MINUS`|Num Minus key|
|`SCRL_LCK`|Scroll Lock key|
|`SYS_RQ`|Sys Rq key|
|`PRINT_SCRN`||
|`F1`|F1 key|
|`F2`|F2 key|
|`F3`|F3 key|
|`F4`|F4 key|
|`F5`|F5 key|
|`F6`|F6 key|
|`F7`|F7 key|
|`F8`|F8 key|
|`F9`|F9 key|
|`F10`|F10 key|
|`F11`|F11 key|
|`F12`|F12 key|
|`SPACE`|Space key|
|`'`|Apostrophe key|
|`,`|Comma key|
|`-`|Hyphen key|
|`.`|Period key|
|`/`|Slash key|
|`;`|Semicolon key|
|`=`|Equals key|
|`[`|Left square bracket key|
|`\`|Backslash key|
|`]`|Right square bracket key|
|```|Backtick key|
|`0`|0 key|
|`1`|1 key|
|`2`|2 key|
|`3`|3 key|
|`4`|4 key|
|`5`|5 key|
|`6`|6 key|
|`7`|7 key|
|`8`|8 key|
|`9`|9 key|
|`a`|a key|
|`b`|b key|
|`c`|c key|
|`d`|d key|
|`e`|e key|
|`f`|f key|
|`g`|g key|
|`h`|h key|
|`i`|i key|
|`j`|j key|
|`k`|k key|
|`l`|l key|
|`m`|m key|
|`n`|n key|
|`o`|o key|
|`p`|p key|
|`q`|q key|
|`r`|r key|
|`s`|s key|
|`t`|t key|
|`u`|u key|
|`v`|v key|
|`w`|w key|
|`x`|x key|
|`y`|y key|
|`z`|z key|

**Oem.Hpe.IntegratedRemoteConsole.LockKey**
**Oem.Hpe.IntegratedRemoteConsole.LockKey.CustomKeySequence (array)**
Member of [Manager.v1\_5\_1.Manager](#manager)

`CustomKeySequence` is an array containing elements of:

**CustomKeySequence[{item}]**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NONE`|No key|
|`ESC`|Escape key|
|`L_ALT`|Left Alt key|
|`R_ALT`|Right Alt key|
|`L_SHIFT`|Left Shift key|
|`R_SHIFT`|Right Shift key|
|`L_CTRL`|Left Control key|
|`R_CTRL`|Right Control key|
|`L_GUI`|Left Windows key|
|`R_GUI`|Right Windows key|
|`INS`|Insert key|
|`DEL`|Delete key|
|`HOME`|Home key|
|`END`|End key|
|`PG_UP`|Page Up key|
|`PG_DN`|Page Down key|
|`ENTER`|Enter key|
|`TAB`|Tab key|
|`BREAK`|Break key|
|`BACKSPACE`|Backspace key|
|`NUM_PLUS`|Num Plus key|
|`NUM_MINUS`|Num Minus key|
|`SCRL_LCK`|Scroll Lock key|
|`SYS_RQ`|Sys Rq key|
|`PRINT_SCRN`||
|`F1`|F1 key|
|`F2`|F2 key|
|`F3`|F3 key|
|`F4`|F4 key|
|`F5`|F5 key|
|`F6`|F6 key|
|`F7`|F7 key|
|`F8`|F8 key|
|`F9`|F9 key|
|`F10`|F10 key|
|`F11`|F11 key|
|`F12`|F12 key|
|`SPACE`|Space key|
|`'`|Apostrophe key|
|`,`|Comma key|
|`-`|Hyphen key|
|`.`|Period key|
|`/`|Slash key|
|`;`|Semicolon key|
|`=`|Equals key|
|`[`|Left square bracket key|
|`\`|Backslash key|
|`]`|Right square bracket key|
|```|Backtick key|
|`0`|0 key|
|`1`|1 key|
|`2`|2 key|
|`3`|3 key|
|`4`|4 key|
|`5`|5 key|
|`6`|6 key|
|`7`|7 key|
|`8`|8 key|
|`9`|9 key|
|`a`|a key|
|`b`|b key|
|`c`|c key|
|`d`|d key|
|`e`|e key|
|`f`|f key|
|`g`|g key|
|`h`|h key|
|`i`|i key|
|`j`|j key|
|`k`|k key|
|`l`|l key|
|`m`|m key|
|`n`|n key|
|`o`|o key|
|`p`|p key|
|`q`|q key|
|`r`|r key|
|`s`|s key|
|`t`|t key|
|`u`|u key|
|`v`|v key|
|`w`|w key|
|`x`|x key|
|`y`|y key|
|`z`|z key|

**Oem.Hpe.IntegratedRemoteConsole.LockKey.LockOption**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Lock option setting.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Windows`|This option configures iLO to lock a managed server running a Windows operating system.|
|`Custom`|This option configures iLO to use a custom key sequence to lock a managed server or log out a user on that server.|
|`Disabled`|This option disables the Remote Console Computer Lock feature.|

**Oem.Hpe.IntegratedRemoteConsole.TrustedCertificateRequired**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|When this setting is enabled and a trusted SSL certificate has been imported into iLO, the .NET IRC is launched by using an HTTPS connection. When this setting is disabled, the .NET IRC is launched by using a non-SSL connection.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.License

**Oem.Hpe.License.LicenseKey**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|The installed license key.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.License.LicenseString**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Describes the type of license installed on management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.License.LicenseType**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates whether the license is Perpetual or Evaluation.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PersistentMouseKeyboardEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Persistent mouse and keyboard feature is enabled or not. When this feature is enabled, the iLO virtual mouse and keyboard are always connected to the iLO UHCI USB controller. When this feature is disabled, the iLO virtual mouse and keyboard are connected dynamically to the iLO UHCI controller only when a Remote Console application is open and connected to iLO.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.PhysicalMonitorHealthStatusEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This property enables or disables the display of Server Health Status on a physical monitor attached to the system.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.RIBCLEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This property enables or disables RIBCL for the management processor. The management processor will require reset when this field is modified.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.RemoteConsoleThumbnailEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This property enables or disables the accessibility of remote console thumbnail image in iLO. Disabling this property will not disable remote console feature.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.RequireHostAuthentication

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Determines whether authentication is required for host-based utilities which use CHIF (typically use of CHIF requires Administrator/root credentials)|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.RequiredLoginForiLORBSU

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Determines whether a user-credential prompt is displayed when a user accesses the iLO RBSU or the iLO Configuration Utility. The following settings are valid: Enabled-A login dialog box opens when a user accesses the iLO RBSU or the iLO Configuration Utility. Disabled (default)-No login is required when a user accesses the iLO RBSU or the iLO Configuration Utility.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.SerialCLISpeed

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Serial command line interface speed in bits/second.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`9600`|
|`19200`|
|`38400`|
|`57600`|
|`115200`|

### Oem.Hpe.SerialCLIStatus

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Status of serial command line interface.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Disabled`|Serial command line interface is disabled.|
|`EnabledNoAuth`|Serial command line interface is enabled with no authentication required.|
|`EnabledAuthReq`|Serial command line interface is enabled with authentication required.|

### Oem.Hpe.SerialCLIUART

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates presence of UART hardware.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NotPresent`|UART hardware present.|
|`Present`|UART hardware not present.|

### Oem.Hpe.VSPDlLoggingEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This property enables or disables logging to the downloadable Virtual Serial Port (VSP) log.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.VSPLogDownloadEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This property enables or disables download of the downloadable Virtual Serial Port (VSP) log.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.VideoPresenceDetectOverride

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This property controls video presence detection on the VGA port.  True: firmware workaround detects some KVMs that are not automatically supported.  False: hardware-based automatic video presence detection.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.VideoPresenceDetectOverrideSupported

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This indicates whether the VideoPresenceDetectOverride property is supported on this type of system.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.VirtualNICEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates whether the Virtual Network Interface is enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.WebGuiEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This property enables or disables WEB GUI access for the management processor. The management processor will require reset when this field is modified.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.iLOFunctionalityEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|iLO functionality is enabled on this platform.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.iLOFunctionalityRequired

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|iLO functionality is required and can't be disabled on this platform (usually blades).|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.iLOIPduringPOSTEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Specifies whether displaying the iLO network IP address during host server POST is enabled(default) or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.iLORBSUEnabled

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Enables or disables the iLO Configuration Utility. The following settings are valid: Enabled (default)-On servers that support the iLO Configuration Utility,  the iLO Configuration Utility is available when you access the UEFI System Utilities by pressing F9 during POST. Disabled-On servers that support the iLO Configuration Utility, the iLO Configuration Utility is not available when you access the UEFI System Utilities by pressing F9 during POST.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.iLOSelfTestResults (array)

Member of [Manager.v1\_5\_1.Manager](#manager)

`iLOSelfTestResults` is an array containing elements of:

**iLOSelfTestResults[{item}].Notes**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Additional Information (if any) about the Self Test.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**iLOSelfTestResults[{item}].SelfTestName**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|iLO Self Test Name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`UnknownSelfTest`|UnknownSelfTest self test result.|
|`CryptographicHardware`|CryptographicHardware self test result.|
|`Memory`|Memory self test result.|
|`WebServerCryptography`|WebServerCryptography self test result.|
|`MiscCryptography`|MiscCryptography self test result.|
|`UART`|UART self test result.|
|`HoodSense`|Hood Sense self test result.|
|`NVRAMInterface`|NVRAMInterface self test result.|
|`NVRAMData`|NVRAMData self test result.|
|`NVRAMSpace`|NVRAM space self test result.|
|`NIC`|NIC self test result.|
|`EmbeddedFlash`|EmbeddedFlash or SD Card self test result.|
|`StaticRAM`|StaticRAM self test result.|
|`EEPROM`|EEPROM self test result.|
|`I2C`|I2C self test result.|
|`BootBlock`|BootBlock self test result.|
|`ThreadInit`|ThreadInit self test result.|
|`Infrastructure`|Infrastructure self test result.|
|`HostRom`||
|`SupportedHost`|Supported Host self test result.|
|`EEPROMContent`|EEPROMContent self test result.|
|`PowerManagementController`|Power Management Controller self test result.|
|`CPLDPAL0`|CPLD PAL0 self test result.|
|`CPLDPAL1`|CPLD PAL1 self test result.|
|`CPLDPAL2`|CPLD PAL2 self test result.|
|`CPLDPAL3`|CPLD PAL3 self test result.|
|`CPLDPAL4`|CPLD PAL4 self test result.|
|`CPLDPAL5`|CPLD PAL5 self test result.|
|`ASICFuses`|ASIC Fuses self test result.|
|`SecureElement`|Secure Element self test result.|

**iLOSelfTestResults[{item}].Status**
Member of [Manager.v1\_5\_1.Manager](#manager)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.iLOServicePort

**Oem.Hpe.iLOServicePort.MassStorageAuthenticationRequired**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates whether mass storage authentication is required or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.iLOServicePort.USBEthernetAdaptersEnabled**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates whether the USB Ethernet Adapters are enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.iLOServicePort.USBFlashDriveEnabled**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates whether the USB Flash Drive is enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.iLOServicePort.iLOServicePortEnabled**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates whether the iLO Service Port is enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Redundancy

Member of [Manager.v1\_5\_1.Manager](#manager)
See the Redfish standard schema and specification for information on common Redundancy object.

### SerialConsole

**SerialConsole.ConnectTypesSupported (array)**
Member of [Manager.v1\_5\_1.Manager](#manager)

`ConnectTypesSupported` is an array containing elements of:

**ConnectTypesSupported[{item}]**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`SSH`|The controller supports a Serial Console connection using the SSH protocol|
|`Telnet`|The controller supports a Serial Console connection using the Telnet protocol|
|`IPMI`|The controller supports a Serial Console connection using the IPMI Serial-over-LAN (SOL) protocol|
|`Oem`||

**SerialConsole.MaxConcurrentSessions**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This is the maximum number of Serial Console sessions, regardless of protocol, that this manager supports.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**SerialConsole.ServiceEnabled**
Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|Indicates if the Command Shell service is enabled for this manager.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### SerialInterfaces

The link to a collection of serial interfaces that this manager uses for serial and console communication.
SerialInterfaces is a link (`"@odata.id": URI`) to another resource.

### Status

Member of [Manager.v1\_5\_1.Manager](#manager)
See the Redfish standard schema and specification for information on common Status object.

### UUID

Member of [Manager.v1\_5\_1.Manager](#manager)

| | |
|---|---|
|Description|This is a universally unique identifier that supervisory software uses to uniquely identify this manager. The UUID is assigned when the system is manufactured.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### VirtualMedia

This is a reference to the virtual media services for this manager.
VirtualMedia is a link (`"@odata.id": URI`) to another resource.

### Actions

**Manager.Reset**
Member of [Manager.v1\_5\_1.Manager](#manager)

**Parameters:**

**ResetType (string)**

|Value|Description|
|---|---|
|ForceRestart|
|GracefulRestart|

**HpeiLO.ClearRestApiState**
Member of [Manager.v1\_5\_1.Manager](#manager)
Clears the persistent state of the REST API.  Some portions of the API may not be available until after the server reboots.

There are no parameters for this action.

**HpeiLO.ClearHotKeys**
Member of [Manager.v1\_5\_1.Manager](#manager)
Clear hot keys which are used during Remote Console sessions.

There are no parameters for this action.

**HpeiLO.ResetToFactoryDefaults**
Member of [Manager.v1\_5\_1.Manager](#manager)
Resets the iLO to Factory Defaults.

**Parameters:**

**ResetType (string)**

|Value|Description|
|---|---|
|Default|Reset iLO to defaults, clear logs and reboot iLO.|

**HpeiLO.DisableiLOFunctionality**
Member of [Manager.v1\_5\_1.Manager](#manager)
This action will disable the iLO network and will terminate communications with operating system drivers.  To re-enable iLO functionality, use the iLO Configuration Utility (in the UEFI System Utilities) to set iLO Functionality to Enabled. For more information see the HPE UEFI System Utilities User Guide.  The action resets/reboots the manager.  iLO functionality cannot be disabled on server blades.

There are no parameters for this action.

**HpeiLO.ClearNVRAM**
Member of [Manager.v1\_5\_1.Manager](#manager)
Delete the files from NVRAM CFG area.

There are no parameters for this action.

**HpeiLO.EnableCloudConnect**
Member of [Manager.v1\_5\_1.Manager](#manager)
Action to enable cloud connect service.

**Parameters:**

**ActivationKey (string)**

The activation key is the customer account ID of HPE GreenLake. Obtain the account ID by visiting HPE GreenLake portal-Manage->Account Details card.

**OverrideManager (boolean)**

The property is used to override the existing manager (Example: HPE OneView).

**HpeiLO.RequestFirmwareAndOsRecovery**
Member of [Manager.v1\_5\_1.Manager](#manager)
Requests that the Recovery Install set be invoked, and when complete causes a OS reinstallation.

There are no parameters for this action.

**HpeiLO.DisableCloudConnect**
Member of [Manager.v1\_5\_1.Manager](#manager)
Action to disable cloud connect service.

**Parameters:**

**FailReason (string)**

Indicates the reason for cloud connection failure.

|Value|Description|
|---|---|
|iLOTimeError|Indicates the cloud activation failed due to incorrect iLO time.|
|ProxyError|Indicates the cloud activation failed due to Proxy errors.|
|ActivationKeyMissing|Indicates the cloud activation failed due to missing activation key.|
|NetworkError|Indicates the cloud activation failed due to network issues.|
|WrongiLOVersion|Indicates the cloud activation failed due to wrong iLO version errors.|
|WrongActivationKey|Indicates the cloud activation failed due to wrong activation key errors.|

## ManagerAccountCollection

`@odata.type: "#ManagerAccountCollection.ManagerAccountCollection"`

A Collection of ManagerAccount resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/accounts`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[ManagerAccount](../ilo6_manager_resourcedefns140/#manageraccount)|

### Members (array)

Member of ManagerAccountCollection.ManagerAccountCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of ManagerAccountCollection.ManagerAccountCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of ManagerAccountCollection.ManagerAccountCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## ManagerAccount

`@odata.type: "#ManagerAccount.v1_3_0.ManagerAccount"`

The user accounts, owned by a Manager, are defined in this resource.  Changes to a Manager Account may affect the current Redfish service connection if this manager is responsible for the Redfish service.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/accounts/{item}`|GET PATCH DELETE |

### Oem.Hpe.LoginName

Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|Descriptive login name that helps to easily identify the owner of each user name. The login name does not have to be the same as the user name and must use printable characters. The maximum length for a user name is 39 characters.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.Privileges

**Oem.Hpe.Privileges.HostBIOSConfigPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to configure Host Bios Settings.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.HostNICConfigPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to configure Host NIC Settings.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.HostStorageConfigPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to configure Host Storage Settings.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.LoginPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to log in to management processor. All local accounts have the login privilege. This privilege is added automatically if it is not specified.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.RemoteConsolePriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to remotely access the host system Remote Console, including video, keyboard, and mouse control.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.SystemRecoveryConfigPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to manage the critical recovery firmware images on the iLO Repository.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.UserConfigPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to add, edit, and delete local management processor user accounts. A user with this privilege can change privileges for all users.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.VirtualMediaPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to use the Virtual Media feature on the host system.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.VirtualPowerAndResetPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to power-cycle or reset the host system. These activities interrupt system availability. A user with this privilege can diagnose the system by using the Generate NMI to System button.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.iLOConfigPriv**
Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This privilege enables a user to configure most management processor settings, including security settings, and to remotely update the management processor firmware. This privilege does not enable local user account administration.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.ServiceAccount

Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|Indicate that the account type is service account|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.SkipEscCharsCheck

Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|Indicates that the escape characters check to be skipped or not|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.40|

### Password

Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|The password used to log in to the management processor. The maximum length for a password is 39 characters. The minimum length for a password is specified in the MinPasswordLength property of the AccountService schema.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### PasswordChangeRequired

Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|Indicates that the password for this account must be changed. The service requires the password to be changed before access is allowed.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### RoleId

Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|This property contains the name of the Role for this account.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### UserName

Member of [ManagerAccount.v1\_3\_0.ManagerAccount](#manageraccount)

| | |
|---|---|
|Description|The name used to log in to the management processor. The user name does not have to be the same as the login name. The maximum length for the user name is 39 characters. The user name must use printable characters.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

## ManagerNetworkProtocol

`@odata.type: "#ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol"`

This resource is used to obtain or modify the network services managed by this manager.

### Granularity to enable/disable HTTP(S) ports

iLO 6 supports enabling/disabling the HTTP/HTTPS ports.

**Disable/Enable HTTP(S) Port**:

* The HTTP port can be disabled by setting the `"Port"` property to value 0. Similarly, it can be enabled by setting it to a valid port value like 80.
* This has been decoupled from the HTTPS port enable/disable status.

**NOTE**:

`ProtocolEnabled` property under HTTP object is not related to HTTP alone. It is related to the whole webserver. Hence the `ProtocolEnabled` property will remain `true` unless the whole webserver is disabled.

For example, to disable HTTP port:

PATCH `/redfish/v1/Managers/1/NetworkProtocol`

**PATCH Payload**:

`json

{
    "HTTP": {
        "Port": 0
    }
}
`

**NOTE**:

iLO reset is required after the PATCH for the change to come into effect.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/networkprotocol`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Oem/Hpe/Links/SNMPService`|[HpeiLOSnmpService](../ilo6_hpe_resourcedefns140/#hpeilosnmpservice)|
|`Oem/Hpe/Links/EthernetInterfaces`|Collection of [EthernetInterface](../ilo6_network_resourcedefns140/#ethernetinterfacecollection)|

### FQDN

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The fully-qualified domain name of the manager that is obtained by DNS and includes the host name and top-level domain name.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### HTTP

**HTTP.Port**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The HTTP port number.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**HTTP.ProtocolEnabled**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether HTTP is enabled or disabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### HTTPS

**HTTPS.Port**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The HTTPS/SSL port number.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**HTTPS.ProtocolEnabled**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether HTTPS/SSL is enabled or disabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### HostName

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The host name of the manager that is obtained by DNS and does not include any domain information.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### IPMI

**IPMI.Port**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The IPMI over LAN port number.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**IPMI.ProtocolEnabled**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether IPMI over LAN is enabled for the manager.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### KVMIP

**KVMIP.Port**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The KVM-IP port number.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**KVMIP.ProtocolEnabled**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether KVM-IP is enabled for the manager.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailEmail

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The destination email address for email alerts.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether AlertMail is enabled. This can be enabled only when the properties AlertMailEmail, AlertMailSenderDomain and AlertMailSMTPServer are set or not empty.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailSMTPAuthEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether AlertMail SMTP Authentication is enabled. This can be enabled only when the properties AlertMailSMTPSecureEnabled, AlertMailSMTPAuthUser and AlertMailSMTPAuthPw are set or not empty.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailSMTPAuthPw

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The password credential for SMTP server Authentication.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailSMTPAuthUser

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The username credential for SMTP server Authentication.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailSMTPPort

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The SMTP server port number.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailSMTPSecureEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether AlertMail SMTP Secure Connection (SSL/TLS) is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailSMTPServer

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The IP address or DNS name of the SMTP server or the Mail Submission Agent (MSA).|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.AlertMailSenderDomain

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The domain name for the sender email address.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.ConfigurationSettings

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|State of the currently displayed configuration settings.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Current`|
|`SomePendingReset`|

### Oem.Hpe.EnhancedDownloadPerformanceEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether enhanced download for virtual media and firmware update is enabled or disabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.FederationEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether management processor federation management is enabled or disabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.FederationSupported

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether management processor federation is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.IEEE_8021X_Support

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether 802.1X feature is enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.KcsEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether KCS interface is enabled or disabled for the BMC.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.40|

### Oem.Hpe.RemoteSyslogEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether Remote Syslog is enabled. When enabled, management processor sends notification messages to the specified Syslog server. This can be enabled only when the property RemoteSyslogServer is set or not empty.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.RemoteSyslogPort

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The port number through which the Syslog servers are listening.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.RemoteSyslogServer

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The IP address, FQDN, IPv6 name, or short name of the servers running the Syslog service.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.SNMPTrapPort

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The SNMP trap port number.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.SerialOverLanLogging

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether Serial Over LAN (SOL) or Virtual Serial Port (VSP) logging is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.VirtualMediaEncryptionEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Enables or disables encryption on virtual media connections.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.WebProxyConfiguration

**Oem.Hpe.WebProxyConfiguration.ProxyPassword**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates the proxy password (optional)|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.WebProxyConfiguration.ProxyPort**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates the proxy port.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.WebProxyConfiguration.ProxyServer**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates the hostname or IP address of proxy server.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.WebProxyConfiguration.ProxyUserName**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates the proxy username (optional)|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.XMLResponseEnabled

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Determines whether management processor responds to anonymous XML discovery requests.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### SNMP

**SNMP.Port**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The SNMP port number.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**SNMP.ProtocolEnabled**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether SNMP is enabled for the manager.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### SSDP

**SSDP.NotifyIPv6Scope**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The scope for IPv6 Notify messages for SSDP.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Link`|SSDP Notify messages are sent to addresses in the IPv6 Local Link scope|
|`Site`|SSDP Notify messages are sent to addresses in the IPv6 Local Site scope.|
|`Organization`|SSDP Notify messages are sent to addresses in the IPv6 Local Organization scope.|

**SSDP.NotifyMulticastIntervalSeconds**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates how often multicast is performed for SSDP. Allowed values are 0, 30, 60, 120, 300, 600, 900 or 1800.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**SSDP.NotifyTTL**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The Time to Live (TTL) hop count for SSDP Notify messages.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**SSDP.Port**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The SSDP port number.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**SSDP.ProtocolEnabled**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether SSDP is enabled for the manager.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### SSH

**SSH.Port**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The SSH port number.  NOTE: When this field is modified, the Manager will reset automatically.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**SSH.ProtocolEnabled**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether SSH is enabled for the manager.  NOTE: When this field is modified, the Manager will reset automatically.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### Status

Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)
See the Redfish standard schema and specification for information on common Status object.

### VirtualMedia

**VirtualMedia.Port**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|The Virtual Media port number.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**VirtualMedia.ProtocolEnabled**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)

| | |
|---|---|
|Description|Indicates whether Virtual Media is enabled for the manager.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### Actions

**HpeiLOManagerNetworkService.SendTestAlertMail**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)
There are no parameters for this action.

**HpeiLOManagerNetworkService.SendTestSyslog**
Member of [ManagerNetworkProtocol.v1\_0\_0.ManagerNetworkProtocol](#managernetworkprotocol)
There are no parameters for this action.
