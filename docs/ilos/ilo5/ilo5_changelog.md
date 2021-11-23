---
title: iLO 5 Redfish Changelog
disableLastModified: false
toc:
  enable: true
---

# Changelog

## iLO 5 2.55 new features and changes

* New URIs
  * No new URIs added for this release.

* New HTTP methods
  * Added PATCH for `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}`
  * Added PATCH, POST for `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkDeviceFunctions/{@pfId}`
  * Added PATCH for `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}`
  * Added PATCH, DELETE, POST for `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}`
  * Added PATCH, DELETE, POST for `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes/{@volumeId}`
  * Added PATCH, POST for `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkDeviceFunctions/{@pfId}`
  * Added PATCH for `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts`
  * Added PATCH for `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts/{@portId}`

* Deprecated URIs
No URIs deprecated for this release.

* Schema updates
  * `#Drive.v1_1_0.Drive` updated to `#Drive.v1_7_0.Drive`  
  * `#Storage.v1_5_0.Storage` updated to `#Storage.v1_7_1.Storage`

### RDE support changes

Redfish Device Enablement (RDE) enables a management controller (iLO) to present Redfish-conformant data model of I/O devices in a server, without the need for code specific to each device vendor/family/model. With the changes described below, iLO is enabling these devices to handle their own Redfish data model but it is upto the vendors to make their devices conform to the latest standards of Redfish. The Redfish responses from the device depend on the schema versions that are supported by each device and are likely to vary across each device vendor/family/model. For more details, refer to the [DMTF specification](https://www.dmtf.org/content/dmtf-releases-update-pldm-redfish-device-enablement-specification).

Added RDE support for the following URIs and HTTP methods:

* `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces` (GET)
* `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}` (GET)
* `/redfish/v1/Systems/{@systemId}/EthernetInterfaces` (GET)
* `/redfish/v1/Systems/{@systemId}/EthernetInterfaces/{@nicId}` (GET)
* `/redfish/v1/Chassis/{@chassisId}/PCIeDevices` (GET)
* `/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}` (GET)
* `/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions` (GET)
* `/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions/{@PCIeFunctionId}` (GET)


## iLO 5 2.42 new features and changes

* New URIs
  * `/redfish/v1/CertificateService` (GET, POST)
  * `/redfish/v1/CertificateService/CertificateLocations` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/PlatformCert/Certificates` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/PlatformCert/Certificates/{@certId}` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIAK/Certificates` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIAK/Certificates/{@certId}` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIDevID/Certificates` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIDevID/Certificates/{@certId}` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/iLOIDevID/Certificates` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/iLOIDevID/Certificates/{@certId}` (GET)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates` (GET, POST)
  * `/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates/{@certId}` (DELETE, GET)

* New HTTP methods
No new methods added to existing URIs for this release.

* Deprecated URIs
No URIs deprecated for this release.

* Actions: Additions and deprecations
  * Added `/redfish/v1/CertificateService/Actions/CertificateService.GenerateCSR`
  * Added `/redfish/v1/Managers/1/ActiveHealthSystem/Actions/HpeiLOActiveHealthSystem.LogMilestone`
  * Added `/redfish/v1/Managers/1/ActiveHealthSystem/Actions/HpeiLOActiveHealthSystem.CaptureSystemLog`

* Schema updates
The schema versions listed below correspond to iLO’s schemas which are not aligned to DMTF’s standard Redfish schemas versioning.
  * `#HpePowerMetricsExt.v2_2_0.HpePowerMetricsExt` updated to `#HpePowerMetricsExt.v2_3_0.HpePowerMetricsExt`
  * `#HpeSecurityService.v2_2_1.HpeSecurityService` updated to `#HpeSecurityService.v2_3_1.HpeSecurityService`
  * `#HpeiLOActiveHealthSystem.v2_3_0.HpeiLOActiveHealthSystem` updated to `#HpeiLOActiveHealthSystem.v2_5_0.HpeiLOActiveHealthSystem`
  * `#HpeiLODiagnostics.v2_2_2.HpeiLODiagnostics` updated to `#HpeiLODiagnostics.v2_3_0.HpeiLODiagnostics`
  * `#NetworkPort.v1_2_0.NetworkPort` updated to `#NetworkPort.v1_2_5.NetworkPort`
  * `#Processor.v1_0_0.Processor` updated to `#Processor.v1_7_2.Processor`
  * `#SoftwareInventory.v1_0_0.SoftwareInventory` updated to `#SoftwareInventory.v1_2_0.SoftwareInventory`

## iLO 5 2.33 new features and changes

* New URIs
  * `/redfish/v1/Chassis/{@chassisId}/PCIeDevices` (GET)
  * `/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions` (GET)
  * `/redfish/v1/Managers/{@managerId}/RemoteSupportService/ExtSettings` (GET, PATCH, POST)
  * `/redfish/v1/Managers/{@managerId}/SerialInterface` (GET)
  * `/redfish/v1/Managers/{@managerId}/SerialInterface/{@sInterfaceId}` (GET, PATCH)
  * `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}` (GET, PATCH, POST)
  * `/redfish/v1/Systems/{@systemsId}/SecureEraseReportService` (GET, POST)
  * `/redfish/v1/Systems/{@systemsId}/SecureEraseReportService/SecureEraseReportEntries` (GET)
  * `/redfish/v1/Systems/{@systemsId}/SecureEraseReportService/SecureEraseReportEntries/{@entryId}` (GET)

* New HTTP methods
  * Added DELETE to `/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{@certId}`
  * Added PATCH to `/redfish/v1/Chassis/{@ChassisId}/Thermal`

* Deprecated URIs
  * `/redfish/v1/Chassis/{@chassisId}/Drives/{@driveId}`

* Actions: Additions and deprecations
  * Added `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}/Actions/Drive.Reset`
  * Added `/redfish/v1/Systems/1/SecureEraseReportService/Actions/HpeSecureEraseReportService.DeleteSecureEraseReport`

* Schema updates
The schema versions listed below correspond to iLO’s schemas which are not aligned to DMTF’s standard Redfish schemas versioning.

  * `#AccountService.v1_3_0.AccountService` updated to `#AccountService.v1_5_0.AccountService`
  * `#Chassis.v1_6_0.Chassis` updated to `#Chassis.v1_10_2.Chassis`
  * `#ComputerSystem.v1_4_0.ComputerSystem` updated to `#ComputerSystem.v1_10_0.ComputerSystem`
  * `#HpeNetworkPortEVB.v1_1_1.HpeNetworkPortEVB` updated to `#HpeNetworkPortEVB.v1_2_0.HpeNetworkPortEVB`
  * `#HpeNetworkPortLLDP.v1_1_1.HpeNetworkPortLLDP` updated to `#HpeNetworkPortLLDP.v1_2_0.HpeNetworkPortLLDP`
  * `#HpeRemoteSupport.v2_4_0.HpeRemoteSupport` updated to `#HpeRemoteSupport.v2_6_0.HpeRemoteSupport`
  * `#HpeSecurityService.v2_2_0.HpeSecurityService` updated to `#HpeSecurityService.v2_2_1.HpeSecurityService`
  * `#HpeiLOSnmpService.v2_2_0.HpeiLOSnmpService` updated to `#HpeiLOSnmpService.v2_3_0.HpeiLOSnmpService`
  * `#ManagerAccount.v1_1_3.ManagerAccount` updated to `#ManagerAccount.v1_3_0.ManagerAccount`
  * `#MemoryChunks.v1_2_2.MemoryChunks` updated to `#MemoryChunks.v1_2_3.MemoryChunks`
  * `#NetworkAdapter.v1_3_0.NetworkAdapter` updated to `#NetworkAdapter.v1_4_0.NetworkAdapter`

### RDE support changes

Redfish Device Enablement (RDE) enables a management controller (iLO) to present Redfish-conformant data model of I/O devices in a server, without the need for code specific to each device vendor/family/model. With the changes described below, iLO is enabling these devices to handle their own Redfish data model but it is upto the vendors to make their devices conform to the latest standards of Redfish. The Redfish responses from the device depend on the schema versions that are supported by each device and are likely to vary across each device vendor/family/model. For more details, refer to the [DMTF specification](https://www.dmtf.org/content/dmtf-releases-update-pldm-redfish-device-enablement-specification).

Added RDE support for the following URIs and HTTP methods:

* `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters` (GET)
* `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}` (GET)
* `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkPorts` (GET)
* `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}` (GET)
* `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkDeviceFunctions` (GET)
* `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkDeviceFunctions/{@pfId}` (GET)
* `/redfish/v1/Systems/{@systemId}/Storage/` (GET)
* `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}` (GET)
* `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}` (GET)
* `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes` (GET)
* `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes/{@volumeId}` (GET)

### BIOS Redfish changes (GEN 10 to GEN 10 Plus)

* New URIs
  * `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock` (GET)
  * `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock/Settings` (GET, PATCH)
  * `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock/Baseconfigs` (GET)
  * `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig` (GET)
  * `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig/Settings` (GET)
  * `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig/Baseconfigs` (GET)
* Migrated URIs
  * `/redfish/v1/Systems/{item}/Bios/baseconfigs` moved to `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Baseconfigs`
  * `/redfish/v1/Systems/{item}/Bios/boot` moved to  `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot`
  * `/redfish/v1/Systems/{item}/Bios/boot/Settings` moved to `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot/Settings`


## iLO 5 2.30 New Features and Changes

* `AccountService.json` (`/redfish/v1/AccountService`)
  * `LDAP.Certificates`: Added a link to a collection of certificates used for the external account service.
* `Chassis.json` (`/redfish/v1/Chassis/{@ChassisId}/`)
  * `PCIeDevices`: Added a link to the `PCIeDeviceCollection` located in this chassis.
  * `PCIeSlots`: Added a link to the PCIe slot properties for this chassis.
* `Drive.json` (`/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}`)
  * `Drive.Reset`: Added action to reset a drive.
  * `IndicatorLED`: Added a state of the indicator LED.
* `HpeComputerSystemExt.json` (`/redfish/v1/Systems/{@systemId}`)
  * `CriticalTempRemainOff`: Added a property that indicates whether server should remain off after a thermal shutdown is triggered.
  * `PostState`: Added an enumerated type to `InPostDiscoveryStart` for a server that has started to discover devices.
* `HpeiLOServiceExt.json` (`/redfish/v1/root`)
  * `VNIC`: Added a virtual USB network interface to BMC name.
  * `SYSMGMT`:  Added the System Management Experience property.
* `HpeiLOSnmpService.json` (`/redfish/v1/Managers/{@managerId}/SnmpService`)
  * `SNMPv1Enabled`: This new property indicates if the SNMPv1 protocol is enabled.
* `HpeiLOUpdateServiceExt.json` (`/redfish/v1/UpdateService`)
  * `Capabilities`: Added a property that indicates iLO support for various firmware update protocols.
  * `Capabilities.UpdateFWPKG`: Added a property inside `Capabilities`. The property indicates whether iLO supports FWPKG 2.0 firmware images.
  * `Capabilities.PLDMFirmwareUpdate`: Added a property inside `Capabilities`. The property indicates whether iLO supports PLDM firmware updates.
  * `Accept3rdPartyFirmware`: Added a property that enables or disables support for third-party firmware update packages.   
* `HpeMemoryExt.json` (`/redfish/v1/Systems/{@systemId}/Memory`)
  * `PartNumber`: Added a property for the HPE product part number of the device.
* `HpeNetworkAdapter.json` (`/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{​​​​@nicId}​​​​`)
  * `Controllers[x].RDMASupport`: Added `RDMASupport` to controller array. RDMA technology supported. [`RoCE`/`iWARP`].
  * `Controllers[x].UnderlyingDataSource`: Added `UnderlyingDataSource` to controller array. It is the protocol through which Redfish data is supplied for this adapter. [`RDE`/`DCi`].
	Where x is the controller index. 
* `HpeRemoteSupport.json` (`/Managers/{@managerId}/RemoteSupportService`)
  * `MessageId`: Added a property for a unique message identifier in UUID format used to match the registration with this request. It is returned in the submission package SOAP envelope header.
  * `DirectConnectRegistrationIsCompleted`: Added a property for step 2 of Direct Connect Registration completion status.
  * `ExternalAgentName`: Added a property for the name of the external remote support agent.
* `HpeServerPCISlot.json` (`/Systems/{@systemId}/PCISlots/{@PciSlotsId}`)
  * `Technology`: Added enumerated type `PCIExpressGen4`.
* `HpeThermalExt.json` (`/Chassis/{@ChassisId}/Thermal`)
  * `FanPercentMinimum`: Added a system-wide setting for fan speed minimum percentage.
  * `ThermalConfiguration`: Added a property that selects the fan cooling method for the system.
  * `OptimalCooling`: Added a property that provides the most efficient solution by configuring fan speeds to the minimum required to provide adequate cooling.
  * `IncreasedCooling`: Added a property that operates fans at a higher speed.
  * `MaximumCooling`: Added a property that provides the maximum cooling available for the system.
  * `EnhancedCooling`: Added a property that provides additional cooling to the processors, which can improve performance.
* `ManagerAccount.json` (`/redfish/v1/AccountService/Accounts/@AccountId`)
  * `PasswordChangeRequired`: Added a property that indicates that the password for this account must be changed. The service requires the password to be changed before access is allowed.
* `Storage.json` (`/Systems/{@systemId}/Storage/{@storageId}`)
  * `FirmwareVersion`: Added a property for the firmware version of this storage controller.
  * `Location`: Added a property for the location of the storage controller.
* `Thermal.json` (`/Chassis/{@ChassisId}/Thermal`)
  * `UpperThresholdUser`: Added a property for the user-given threshold values for inlet ambient temperature.
* `HpeRemoteSupportSettingsExt` (`/Managers/{@managerId}/RemoteSupportService/ExtSettings`)
  * `ChangeExternalControlMode`: Added an action to enable or disable remote support by external agent.
  * `RemoteSupportEnabled`: Added a property that indicates if the remote support service is available.
  * `ConnectModel`: Added the remote support connect model type `DirectConnect/CentralConnect`.
  * `AdditionalERSConfigurations`: Added a property that shows settings, such as IML mode, sending Active Health System (AHS) followed by a service event and the IML severity level in a `Get ERS` settings response.
  * `ImlMode`: Added a property that enables or disables the IML mode. It also indicates if the IML mode is enabled.
  * `ServiceEventAttachAHS`: Added a property that indicates if the AHS log transmission follows a service event.
  * `ExternalAgentName`: Added a property that indicates the name of the external remote support agent.
  * `IMLSeverityLevels`: Added a property that lists the IML severity levels available to Insight Remote Support (IRS).
* `HpeSecureEraseReport.json`(`/Systems/{@systemsId}/SecureEraseReportService/SecureEraseReportEntries/{@entryId}`) The new report describes the secure erase status and the other details of the devices during the secure system erase operation.
  * `DeviceType`: Added a property that indicates the device type being securely erased.
  * `EraseType`: Added a property that indicates the NIST SP800-88 Rev.1 (National Institute of Standards and Technology) approved techniques to sanitize a particular media or device.
  * `EraseStatus`: Added a property that indicates the secure erase status of the individual components.
  * `DeviceIdentifier`: Added a property that indicates the unique identifier for the device in the system like it's physical location or the exact device path etc.
  * `SerialNumber`: Added a property that indicates the serial number of the device being erased.
  * `EraseStartTime`: Added a property that indicates the date and time of the start of secure erase operation, ISO8601 Redfish-style time.
  * `EraseEndTime`: Added a property that indicates the date and time of the end of secure erase operation, ISO8601 Redfish-style time.
* `HpeSecureEraseReportService.json`  (`/redfish/v1/Systems/{@systemsId}/SecureEraseReportService`)  
  * `DeleteSecureEraseReport`: (`/redfish/v1/Systems/{@systemsId}/SecureEraseReportService/Actions/HpeSecureEraseReportService.DeleteSecureEraseReport`): Permanently removes the erase report in a secure manner and resets the management processor immediately.
  * `ServerSerialNumber`: Added a property that represents the server serial number.
  * `EraseInitiatedBy`: Added a property that indicates the user, who initiated the secure system erase process.
  * `Links`: Added a property that indicates the URIs to the resource related to `HpeSecureEraseReport`.
* `PCIeDevice.json` (`/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}`): It represents the properties of a PCIe Device attached to a System.
  * `DeviceType`: Added a property that indicates the device type for this PCIe device.
  * `FirmwareVersion`: Added a property that indicates the version of firmware for this PCIe device.
  * `Links`: Added a property that indicates the links to other resources that are related to this resource.
  * `Manufacturer`: Added a property that indicates the manufacturer of this PCIe device.
  * `Model`: Added a property that indicates the model number for the PCIe device.
  * `PCIeFunctions`: Added a property that indicates the link to the collection of PCIe functions associated with this PCIe device.
  * `PCIeInterface`: Added a property that that indicates the type that defines a PCI interface.
  * `PCIeInterface.LanesInUse`: Added a property that indicates the number of PCIe lanes in use by this device.
  * `PCIeInterface.MaxLanes`: Added a property that indicates the number of PCIe lanes supported by this device.
  * `PCIeInterface.MaxPCIeType`: Added a property that indicates the highest version of the PCIe specification supported by this device.
  * `PCIeInterface.PCIeType`: Added a property that indicates the version of the PCIe specification in use by this device.
  * `PartNumber`: Added a property that indicates the part number for this PCIe device.
  * `SKU`: Added a property that indicates the SKU for this PCIe device.
  * `SerialNumber`: Added a property that indicates the serial number for this PCIe device.
* `PCIeFunction.json` (`/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions/{@PCIeFunctionId}`): This new resource represents a PCIe function attached to a system.
  * `ClassCode`: Added a property that indicates the class code of this PCIe function.
  * `DeviceClass`: Added a property that indicates the class for this PCIe function.
  * `DeviceId`: Added a property that indicates the device ID of this PCIe function.
  * `FunctionId`: Added a property that indicates the PCIe function number.
  * `RevisionId`: Added a property that indicates the revision ID of this PCIe function.
  * `SubsystemId`: Added a property that indicates the subsystem ID of this PCIe function.
  * `SubsystemVendorId`: Added a property that indicates the subsystem vendor ID of this PCIe function.
  * `VendorId`: Added a property that indicates the vendor ID of this PCIe function.
* `PCIeSlots.json`:  (`/Chassis/{@chassisId}/PCIeSlots`): The `PCIeSlots` schema describes PCIe slot properties.  
  * `Slots`: Added a property that indicates the array of PCI Slot information.
  * `Slots.HotPluggable`: Added a property that indicates whether a PCIe slot supports a hotplug.
  * `Slots.Lanes`: Added a property that indicates the number of PCIe lanes supported by this slot.
  * `Slots.Location`: Added a property that indicates the location of the PCIe slot.
  * `Slots.PCIeType`: Added a property that indicates the PCIe specification supported by this slot.
  * `Slots.SlotType`: Added a property that indicates the PCIe slot type for a slot.
  * `Status`: Added a property that indicates the status of a PCIe slot.

## iLO 5 2.10 New Features and Changes

### Redfish Features and Fixes

* ComputerSystem (`/redfish/v1/Systems/{@systemsid}`) and sub-resources
  * Added `GracefulShutdown` to the `ComputerSystem` `ResetType` list - this performs a virtual button press if the system is on and does nothing if the system of off.
  * Added Redfish `BootOptions` for boot order management
  * Changed `ResetBios` action to not require a `ResetType` property to conform to the Redfish standard action, which is parameterless.  NOTE:  The Redfish client must still supply and empty JSON object `{}` as a request body.
  * Added `Status/HealthRollup` to `ComputerSystem` - this has the same value as `Health` and is provided for compatibility.
  * Added `InterfaceEnabled` to all host `EthernetInterfaces`
* Chassis (`/redfish/v1/Chassis/{@chassisid}`)
  * Added `IndicatorLED` property to `Chassis`
  * Added `PowerState` to `Chassis` resource
  * Added `AssetTag`
* Manager (`/redfish/v1/Managers/{@Managers}`)
  * Added `GracefulRestart` and `ForceRestart` `ResetType` allowable values to Manager (iLO reset)
  * Added `DateTime` and `DateTimeLocalOffset`
  * Added `Model`
  * Added `Status/Health`
* NVMe Drives
  * Added support for `Drive::PCIeInterface` information for NVMe drives (when data is available)
  * Added `DurableName` and `DurableNameFormat` to NVMe `Drive` resources
* Other
  * Added `ClearingLogic` to iLO Redfish Events registry
  * Added and/or modified the descriptions of many schema for conformity
  * Updated message registries to conform to MessageRegistry.v1_2_0 schema
  * Updated the Base registry messages to include newer messages from Redfish standard Base registry.
  * Changed schema items with ```"format": "uri"``` to ```"format": "uri-reference"``` to match Redfish 2019.1
  * Removed X_HP-CHRP-Service-Version HTTP header in responses
  * Added `TransferProtocol@Redfish.AllowableValues` to `UpdateService`
  * Changed some properties in the API to not trigger Redfish events when they change to reduce event chattiness
  * Renamed from `NetworkAdapter.FlushConfigurationToNVM` to `HpeNetworkAdapter.FlushConfigurationToNVM` in `HpeNetworkAdapter.json` (`/redfish/v1/Chassis/1/NetworkAdapters/xxxx`). Invoking  `NetworkAdapter.FlushConfigurationToNVM` instructs the network adapter to save its configuration state to non-volatile storage. This optional action may not be supported by all devices. Support is indicated by a target present in a GET response.

### HPE OEM Features

* Added new OEM actions to ComputerSystem to enable special modes on reboot
  * `ServerIntelligentDiagnosticsMode`
  * `RestoreManufacturingDefaults`
  * `ServerSafeMode`
  * `RestoreSystemDefaults`
* Added the ability to set `EndOfPostDelaySeconds`  to > 255 seconds.  When PATCHed >255, it is internally converted to whole minutes (rounded up) and reported as the rounded seconds on GET.  This enables a client to support up to 15300 seconds (255 minutes).

## iLO 5 1.40 New Features and Changes

iLO 5 1.40 adds support for several Redfish features:

* Redfish 1.6 support for the OpenAPI standard
* Support for the `?only` query parameter for easier access to key data
* Directory Services Configuration (`ExternalAccountProvider`)
* Local account roles (`Role`)
* TelemetryService support for CPU utilization (`TelemetryService`)
* Persistent Memory support (`MemoryDomains` and `MemoryChunks`)
* Improved `EthernetInterfaces` implementation for iLO's network
* Redfish host interface

Additionally, it includes support for new iLO 5 1.40 features:

* One-button secure erase (in `ComputerSystem` HPE OEM schema)
* iLO Configuration Backup and Restore (new `HpeiLOBackupRestoreService` HPE OEM schema)
* Configuration support for firmware downgrade policy (in `UpdateService` HPE OEM schema)
* Workload Performance advisor (new `HpeWorkloadPerformanceAdvisor` HPE OEM schema)

### Redfish 1.6 and OpenAPI

iLO 5 version 1.40 and later is conformant with the new Redfish 1.6 requirement to fix certain resource URIs in the data model.

Several resource URIs have been changed to conform to Redfish 1.6.  A properly written Redfish client which traverses the data model and finds the URIs dynamically should not be affected, but clients which make assumptions about URIs may require modifications.

#### Trailing Slashes on URIs

iLO 5 versions prior to 1.40 would return an HTTP 308 Redirect back to clients who requested URIs without a trailing slash.  Clients must follow 308 Redirect to the alternate URI (the same URI path with a trailing slash.)  In order to conform to Redfish 1.6, iLO 5 1.40 changes this behavior and aliases the same resources at both URIs.  Requesting a URI with or without a trailing slash will return similar results with the exception that URIs in the returned data will be different.  GETs of URIs with trailing slash will return links (@odata.id) with trailing slashes, and GETs of URIs without trailing slashes will return links without trailing slashes.

|Version|Behavior|
|---|---|
|1.10-1.3x|`GET /redfish/v1/Systems` redirects (308) to `/redfish/v1/Systems/`|
|1.40-later|`GET /redfish/v1/Systems` returns result similar to `GET /redfish/v1/Systems/`|

#### Changed URIs

The following URIs have changed in iLO 5 1.40 and later to conform to Redfish 1.6:

|Old URI in iLO 5 1.10-1.3x|New URI Required by Redfish 1.6|
|---|---|
|`/redfish/v1/Chassis/{chassisId}/Drives/{interface}/{driveId}`|`/redfish/v1/Chassis/{systemId}/Drives/{driveId}`|
|`/redfish/v1/Systems/{systemId}/Storage/{interface}/{storageId}`|`/redfish/v1/Systems/{systemId}/Storage/{storageId}`|
|`/redfish/v1/Systems/{systemId}/Storage/{interface}/{storageId}/Volumes/{volumeId}`|`/redfish/v1/Systems/{systemId}/Storage/{storageId}/Volumes/{volumeId}`|
|`/redfish/v1/Systems/{systemId}/NetworkInterfaces/{nId}/NetworkDeviceFunctions/{ndfId}`|`/redfish/v1/Chassis/{chassisId}/NetworkAdapters/{nId}/NetworkDeviceFunctions/{ndfId}`|
|`/redfish/v1/Systems/{systemId}/NetworkInterfaces/{nicId}/NetworkPorts/{nportId}`|`/redfish/v1/Chassis/{chassisId}/NetworkAdapters/{Id}/NetworkPorts/{nportId}`|
|`/redfish/v1/Schemas/{Id}/`|`/redfish/v1/JsonSchemas/{Id}`|
|`/redfish/v1/Schemas/`|`/redfish/v1/JsonSchemas`|
|`/redfish/v1/Managers/{managerId}/NetworkService/`|`/redfish/v1/Managers/{managerId}/NetworkProtocol`|

#### New `?only` Query Parameter

Starting in iLO 5 1.40, appending `?only` to GETs on single-member collections returns the one and only member instead.  This is a convenient and efficient way to get to important data faster.

`GET /redfish/v1/Systems?only` returns the one and only `ComputerSystem` resource instead of the collection that includes it.

This works for collections that have only one member.  Otherwise the GET returns the collection as if the query parameter was omitted.
