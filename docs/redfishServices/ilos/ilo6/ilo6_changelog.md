---
seo:
  title: iLO 6 changelog
sidebar:
  hide: false
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdatedBlock:
    hide: true
---

# Changelog

The HPE iLO 6 Redfish service implements the DMTF Redfish specification
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.20.1.pdf" target="_blank">version 1.20.1</a>
and the schemas implemented by iLO 6 adhere to the DMTF Redfish schema bundle
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP8010_2024.1.zip" target="_blank">8010_2024.1</a>.

For a better understanding of the conformance to the DMTF Redfish,
read the _Redfish versioning_ paragraph of this
<a href="https://developer.hpe.com/blog/getting-started-with-ilo-restful-api-redfish-api-conformance/" target="_blank">article</a>.

## iLO 6 v1.67 new features and changes

### New URIs

- [Certificate schema](/docs/redfishservices/ilos/ilo6/ilo6_167/ilo6_other_resourcedefns167/#certificate):
  `/redfish/v1/systems/{@systemId}/storage/{@storageId}/controllers/{@controllerId}/certificates/` (GET)
- [Certificate schema](/docs/redfishservices/ilos/ilo6/ilo6_167/ilo6_other_resourcedefns167/#certificate):
  `redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@ControllerId}/Certificates/{@CertificateId}` (GET)

### Deprecated URIs

- No URIs deprecated in this release.

### HTTP methods - additions and deprecations

- No HTTP methods changed across these releases.

### Redfish actions - additions and deprecations

- No changes have been made to the supported Redfish Actions for this release.

### Schema updates

- `ComponentIntegrity.v1_2_3.ComponentIntegrity` updated to
  [version v1\_3\_0](/docs/redfishservices/ilos/ilo6/ilo6_167/ilo6_other_resourcedefns167/#componentintegrity).
- [ComputerSystem.v1_18_0.ComputerSystem](/docs/redfishservices/ilos/ilo6/ilo6_167/ilo6_computersystem_resourcedefns167/#bootprogress): The`Read Only` for
  `BootProgress.LastState` and `BootProgress.LastBootTimeSeconds` property is updated to `TRUE`.
- `HpeiLOLicense.v2_3_0.HpeiLOLicense` updated to
  [version v2\_5\_0](/docs/redfishservices/ilos/ilo6/ilo6_167/ilo6_hpe_resourcedefns167/#hpeilolicense).
- `StorageController.v1_0_0.StorageController` updated to
  [version v1\_9\_0](/docs/redfishservices/ilos/ilo6/ilo6_167/ilo6_storage_resourcedefns167/#storagecontroller).

## iLO 6 v1.66 new features and changes

### New URIs

- [Assembly schema](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_other_resourcedefns166/#assembly):
  `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/Assembly` (GET).
- [Assembly schema](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_other_resourcedefns166/#assembly):
  `/redfish/v1/Chassis/{@chassisId}/ThermalSubsystem/Fans/{@fanId}/Assembly` (GET)
- [Assembly schema](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_other_resourcedefns166/#assembly):
  `/redfish/v1/Chassis/{@chassisId}/ThermalSubsystem/Pumps/{@pumpId}/Assembly` (GET)

### Deprecated URIs

- No URIs deprecated in this release.

### HTTP methods - additions and deprecations

- No HTTP methods changed across these releases.

### Redfish actions - additions and deprecations

- No changes have been made to the supported Redfish Actions for this release.

### Schema updates

- `Assembly.v1_5_0.Assembly`:
  - Added following [properties](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_other_resourcedefns166/#assembly)-
    `Assemblies[{item}].PartNumber`,
    `Assemblies[{item}].Producer`, `Assemblies[{item}].ProductionDate`,
    `Assemblies[{item}].SerialNumber`, `Assemblies[{item}].Vendor`,
    `Assemblies[{item}].Version`.
- `Chassis.v1_23_0.Chassis` is updated to
    [version v1\_25\_1](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_chassis_resourcedefns166/#chassis).
- `HpeESKM.v2_0_0.HpeESKM` is updated to
  [v2\_1\_0](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_hpe_resourcedefns166/#hpeeskm):
  - Added `KeyManagerConfig.RemotePassword`
    [property](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_hpe_resourcedefns166/#keymanagerconfig).
- `NetworkAdapter.v1_9_0.NetworkAdapter` is updated to
  [v1\_11\_0](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_network_resourcedefns166/#networkadapter).
- `Power.v1_7_1.Power`:
  - Added following [properties](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_other_resourcedefns166/#powersupplies-array):
    `PowerSupplies[{item}].@odata.context`,
    `PowerSupplies[{item}].@odata.etag`, `PowerSupplies[{item}].@odata.type`.
- `ServiceRoot.v1_13_0.ServiceRoot`:
  - Added following [properties](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_serviceroot_resourcedefns166/#oemhpemoniker)
  `Oem.Hpe.Moniker.CBM`, `Oem.Hpe.Moniker.RDA`.
- `ThermalSubsystem`:
  - Added `SmoothCooling` value to the
    `Oem.Hpe.ThermalConfiguration`
    [property](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_other_resourcedefns166/#oemhpethermalconfiguration).
- `Thermal`:
  - Added `SmoothCooling` value to the `Oem.Hpe.ThermalConfiguration`
    [property](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_other_resourcedefns166/#oemhpethermalconfiguration).

## iLO 6 v1.64 new features and changes

### New URIs

<!-- Chirag's file -->
- [ThermalSubsystem schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#thermalsubsystem):
  `/redfish/v1/chassis/{@chassisId}/thermalsubsystem` (GET)
- [ThermalMetrics](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#thermalmetrics):
  `/redfish/v1/chassis/{@chassisId}/thermalsubsystem/thermalmetrics` (GET)

<!-- 1.64 URIs -->
- [Key Collection](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#keycollection):
  `/redfish/v1/accountservice/accounts/{@accountId}/keys/` (GET,POST)
- [Key schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#key):
  `/redfish/v1/accountservice/accounts/{@accountId}/keys/{@keyId}` (DELETE,GET,PATCH)

<!-- Dummy comment to insert blank line -->  
- [Port Collection](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#portcollection):
  `/redfish/v1/managers/{@managerId}/dedicatednetworkports` (GET)
- [Port schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#port):
  `/redfish/v1/managers/{@managerId}/dedicatednetworkports/{@portId}` (GET,PATCH)
- [Port Collection](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#portcollection):
  `/redfish/v1/managers/{@managerId}/sharednetworkports` (GET)
- [Port schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#port):
  `/redfish/v1/managers/{@managerId}/sharednetworkports/{@portId}` (GET,PATCH)
  
<!-- 159-160 URIs -->
- [Sensor Collection](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#sensorcollection):
  `/redfish/v1/chassis/{@ChassisId}/sensors` (GET)
- [Sensor schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#sensor):
  `/redfish/v1/chassis/{@ChassisId}/sensors/{@SensorId}` (GET)

<!-- 161-162 URIs -->
- [Assembly schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#assembly):
  `/redfish/v1/chassis/{@chassisId}/thermalsubsystem/fans/{@fanId}/assembly` (GET)
- [Fan Collection](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#fancollection):
  `/redfish/v1/chassis/{@chassisId}/thermalsubsystem/fans` (GET)
- [Fan schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#fan):
  `/redfish/v1/chassis/{@chassisId}/thermalsubsystem/fans/{@fanId}` (GET)

<!-- Dummy comment to insert blank line -->
- [Assembly schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#assembly):
  `/redfish/v1/chassis/{@chassisId}/thermalsubsystem/pumps/{@pumpId}/assembly` (GET)
- [Pump Collection](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#pumpcollection):
  `/redfish/v1/chassis/{@chassisId}/thermalsubsystem/pumps` (GET)
- [Pump schema](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#pump):
  `/redfish/v1/chassis/{@chassisId}/thermalsubsystem/pumps/{@pumpId}` (GET)

### Deprecated URIs

- No URIs deprecated in this release.

### HTTP methods - additions and deprecations

- Added `PATCH` for the following URIs:
  - [Sensor resource](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#sensor):
    `/redfish/v1/Chassis/{@ChassisId}/Sensors/{@SensorId}`
  - [ThermalSubsystem](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#thermalsubsystem):
    `/redfish/v1/Chassis/{@ChassisId}/ThermalSubsystem`

### Redfish actions - additions and deprecations

- No changes have been made to the supported Redfish Actions for this release.

### Schema updates

- `Port.v1_9_0.Port` updated to
  [version 1\_12\_0](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#port)
  - Added resources: `Ethernet.LLDPEnabled`, `Ethernet.LLDPReceive{}`, `Ethernet.LLDPTransmit{}`
- `ComputerSystem.v1_18_0.ComputerSystem`
  - Added `Oem.Hpe.DeviceDiscoveryComplete.ServerFirmwareInventoryComplete`
    [property](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_computersystem_resourcedefns164/#oemhpedevicediscoverycomplete)
  - `BootProgress.LastState`: The last boot progress state. Supported
    values: `None`, `PrimaryProcessorInitializationStarted`,
    `BusInitializationStarted`, `MemoryInitializationStarted`,
    `SecondaryProcessorInitializationStarted`, `PCIResourceConfigStarted`,
    `SystemHardwareInitializationComplete`, `SetupEntered`, `OSBootStarted`,
    `OSRunning`, `OEM`.
- `Manager.v1_5_1.Manager` updated to
  [version 1\_19\_1](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_manager_resourcedefns164/#manager)
  - Added the `DedicatedNetworkPorts` [link](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_manager_resourcedefns164/#dedicatednetworkports)
    pointing to the collection of ports of the Dedicated Network Interface (i.e. `/redfish/v1/Managers/1/DedicatedNetworkPorts/1/`).
  - Added the `SharedNetworkPorts` [link](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_manager_resourcedefns164/#sharednetworkports)
    pointing to the collection of ports of the Shared Network Interface (i.e. `/redfish/v1/Managers/1/SharedNetworkPorts/1/`).
- `ManagerAccount.v1_3_0.ManagerAccount` updated to
  [version 1\_12\_1](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_manager_resourcedefns164/#manageraccount)
  - Added `AccountTypes (array)` [resource](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_manager_resourcedefns164/#accounttypes-array)
- `HpeComponentUpdateTask.v1_4_0.HpeComponentUpdateTask` updated to
  [version 1\_5\_0](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_hpe_resourcedefns164/#hpecomponentupdatetask)
  - Added `TaskPlacementMode` [property](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_hpe_resourcedefns164/#taskplacementmode)

<!-- Dummy comment to insert blank line -->
- `Power.v1_7_1.Power`:
  - Added `Oem.Hpe.HasFanPowerMetering`
    [property](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_other_resourcedefns164/#oemhpehasfanpowermetering)
- `HpePowerMeter.v2_0_1.HpePowermeter` updated to
  [version 2\_1\_0](/docs/redfishservices/ilos/ilo6/ilo6_164/ilo6_hpe_resourcedefns164/#hpepowermeter)
  - Added property: `PowerDetail[{item}].FanWatts`

## iLO 6 v1.63 new features and changes

### New URIs

- No new URIs added for this release.

### Deprecated URIs

- No URIs deprecated in this release.

### HTTP methods - additions and deprecations

- No HTTP methods changed across these releases.

### Redfish actions - additions and deprecations

- No changes have been made to the supported Redfish Actions for this release.

### Schema updates

- `ComputerSystem.v1_17_0.ComputerSystem` is updated to
  `ComputerSystem.v1_18_0.ComputerSystem`:
  - `BootProgress.LastBootTimeSeconds`: The number of seconds the system spent
     booting to the OS during the last boot.
- `ServiceRoot.v1_13_0.ServiceRoot`:
  - Added `Manager[{item}].ComputeOpsManagementSupport` property:
    Indicates if the HPE Compute Ops Management (COM) is
    supported on a platform.

## iLO 6 v1.62 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP methods - additions and deprecation

- Added `DELETE` for the following URIs:
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates/{@CertificateId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/PKDefault/Certificates/{@CertificateId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbDefault/Certificates/{@CertificateId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbDefault/Signatures/{@SignatureId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates/{@CertificateId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures/{@SignatureId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates/{@CertificateId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures/{@SignatureId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates/{@CertificateId}`
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures/{@SignatureId}`
- Deprecated `PATCH` for the following URIs:
  - `/redfish/v1/Systems/{@systemId}/WorkloadPerformanceAdvisor/{@WorkloadPerformanceAdvisorId}`
  - `/redfish/v1/TelemetryService`
  - `/redfish/v1/TelemetryService/MetricDefinitions/{@MetricDefinitionId}`
  - `/redfish/v1/TelemetryService/MetricReportDefinitions/{@MetricReportDefinitionId}`
  - `/redfish/v1/TelemetryService/MetricReports/{@MetricReportId}`

{% admonition type="info" name="NOTES" %}

The methods returned by the payload of a `GET` against `/redfish/v1/resourcedirectory` are
incorrect for a few of the URIs. The methods that returned the `405 Method Not Allowed`
error are removed from those URIs.

The `POST` method is removed from allowed methods if the URI is not a collection URI or a
non-RDE URI.
  
{% /admonition %}

#### Examples

In HPE iLO 6 1.61, before removing the `POST` method:

{% tabs %}
{% tab label="Before removing POST" %}

```json
    {"@odata.id": "/redfish/v1/Managers/1",
    "@odata.type": "#Manager.v1_5_1.Manager",
    "ETag": "W/\"4AE67964\"",
    "HttpMethods": [
      "GET",
      "HEAD",
      "POST",
      "PATCH"
                ]}
```
  
  {% /tab %}
  {% /tabs %}
In HPE iLO 6 1.62, after removing the `POST` method:

{% tabs %}
{% tab label="After removing POST" %}

```json
    {"@odata.id": "/redfish/v1/Managers/1",
    "@odata.type": "#Manager.v1_5_1.Manager",
    "ETag": "W/\"4AE67964\"",
    "HttpMethods": [
      "GET",
      "HEAD",
      "PATCH"
            ]}
```
  
  {% /tab %}
  {% /tabs %}

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `AccountService.v1_5_0.AccountService` updated to
 `AccountService.v1_15_0.AccountService`
  - Added `HTTPBasicAuth` property: Indicates whether you can authenticate to
   the Redfish service using the HTTP basic authentication.
  - `HTTPBasicAuth` property supports the following values:
   `Enabled`, `Unadvertised`, and `Disabled`.
- `EthernetInterface.v1_4_1.EthernetInterface`
  - `Oem.Hpe.SharedNetworkPortOptions.NIC` property supports the following values:
   `OCPA`, `OCPB`.
  - Updated `Oem.Hpe.SupportsOCP1` resource definition: Indicates whether the
   system supports `OCP1` or `OCPA`. It applies only to the shared network port.
  `OCP1` is equivalent to `OCPA` on the MHS platform.
  - Updated `Oem.Hpe.SupportsOCP2` resource definition: Indicates whether the
  system supports `OCP2` or `OCPB`. It applies only to the shared network port.
   `OCP2` is equivalent to `OCPB` on the MHS platform.
- `HpeComponentInstallSet.v1_5_0.HpeComponentInstallSet`:
  - Added `PlatformID` property: Name of the platform to identify the recovery
   install set.
- `HpeServerPCISlot.v2_2_1.HpeServerPCISlot`:
  - Added following values: `Drive2_5`, `Drive3_5`.
- `Manager.v1_5_1.Manager` has added the following properties:
  - `Oem.Hpe.CloudConnect.ConnectionType`: Indicates the type of connection to the cloud.
    Supported values:
    `Direct` - Indicates a direct connection to the cloud.
    `Gateway` - Indicates a connection to the cloud through a secure gateway.
  - `Oem.Hpe.CloudConnect.ExtendedStatusInfo`:
    `Oem.Hpe.CloudConnect.ExtendedStatusInfo.NetworkConfig`: Network
     configuration status for the cloud connection.
    Supported values: `IPAddressNotConfigured`, `DNSResolutionError`,
     `Configured`,`NotTested`, `InternalError`.
  - `Oem.Hpe.CloudConnect.ExtendedStatusInfo.WebConnectivity`: Status of web
   connectivity for connections to RDA.
    Supported values: `iLOTimeError`, `ProxyOrFirewallError`, `Connected`,
     `NotTested`, `ProxySettingsInvalid`, `InternalError`, and `ExternalError`.
  - `Oem.Hpe.CloudConnect.ExtendedStatusInfo.iLOConfigForCloudConnect`: Status
   of iLO configuration for cloud connection.
    Supported values: `ActivationKeyRequired`, `Connected`, `NotTested`,
     `ProxySettingsInvalid`, `ProxyOrFirewallError`, `WrongiLOVersion`,
      `InvalidActivationKey`, `DeviceAssignFailed`, `DeviceClaimUnauthorised`,
       `DeviceNotFound`, `InternalError`, `ExternalError`, `DisabledByCOM`.
  - `Oem.Hpe.CloudConnect.InsightInfo`:
    `Oem.Hpe.CloudConnect.InsightInfo.TextEn`: Insight information for this
     server in English.
    `Oem.Hpe.CloudConnect.InsightInfo.TextJa`: Insight information for this
     server in Japanese.
    `Oem.Hpe.CloudConnect.InsightInfo.TextZh`: Insight information for this
     server in Chinese.
- `Processor.v1_8_2.Processor`
  - Added `Oem.Hpe.DOTState` resource: Provides current ownership state of
   Nvidia CPU ERoT.
  - Supported values: `Unlocked`, `Locked`.
- `ServiceRoot.v1_13_0.ServiceRoot`:
  - `Manager[{item}].CloudConnectionPreEnabled`: Indicates whether the cloud
   connection is pre-enabled.
- `HpeServerPCISlot.v2_2_0.HpeServerPCISlot` updated to
 `HpeServerPCISlot.v2_2_1.HpeServerPCISlot`.

## iLO 6 v1.61 new features and changes

### New URIs

- `/redfish/v1/Chassis/{@ChassisId}/EnvironmentMetrics` (GET) -
    `#EnvironmentMetrics.v1_3_2.EnvironmentMetrics`
- `/redfish/v1/Managers/{@managerId}/SecurityService/BMCHPELDevID/Certificates`
    (GET) - `#CertificateCollection.CertificateCollection`
- `/redfish/v1/Managers/{@managerId}/SecurityService/BMCHPELDevID/Certificates/{@certId}`
    (GET) - `#Certificate.v1_6_0.Certificate`
- `/redfish/v1/Managers/{@managerId}/SecurityService/BMCIAK/Certificates`
    (GET) - `#CertificateCollection.CertificateCollection`
- `/redfish/v1/Managers/{@managerId}/SecurityService/BMCIAK/Certificates/{@certId}`
    (GET) - `#Certificate.v1_6_0.Certificate`
- `/redfish/v1/Managers/{@managerId}/SecurityService/BMCIDevIDPca/Certificates`
    (GET) - `#CertificateCollection.CertificateCollection`
- `/redfish/v1/Managers/{@managerId}/SecurityService/BMCIDevIDPca/Certificates/{@certId}`
    (GET) - `#Certificate.v1_6_0.Certificate`
- `/redfish/v1/Managers/{@managerId}/SecurityService/BMCLAK/Certificates`
    (GET) - `#CertificateCollection.CertificateCollection`
- `/redfish/v1/Managers/{@managerId}/SecurityService/BMCLAK/Certificates/{@certId}`
    (GET) - `#Certificate.v1_6_0.Certificate`
- `/redfish/v1/Managers/{@managerId}/SecurityService/SystemLAK/Certificates`
    (GET) - `#CertificateCollection.CertificateCollection`
- `/redfish/v1/Managers/{@managerId}/SecurityService/SystemLAK/Certificates/{@certId}`
    (GET) - `#Certificate.v1_6_0.Certificate`
- `/redfish/v1/Managers/{@managerId}/SecurityService/SystemLDevID/Certificates`
    (GET) - `#CertificateCollection.CertificateCollection`
- `/redfish/v1/Managers/{@managerId}/SecurityService/SystemLDevID/Certificates/{@certId}`
    (GET) - `#Certificate.v1_6_0.Certificate`
- `/redfish/v1/Systems/{@systemId}/Processors/{@procId}/EnvironmentMetrics`
    (GET) - `#EnvironmentMetrics.v1_3_2.EnvironmentMetrics`
- `/redfish/v1/Systems/{@systemId}/Processors/{@procId}/ProcessorMetrics`
    (GET) - `#ProcessorMetrics.v1_6_4.ProcessorMetrics`
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@ControllerId}/Ports`
    (GET, POST) - `PortCollection.PortCollection`
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/StorageControllers/{@StorageControllerId}/Ports`
    (GET, POST) - `#PortCollection.PortCollection`
- `/redfish/v1/Systems/{@systemsId}/Memory/{@MemoryDimmId}/MemoryMetrics`
    (GET) - `#MemoryMetrics.v1_7_3.MemoryMetrics`

### HTTP methods - additions and deprecations

- Added POST for `/redfish/v1/Managers/{@managerId}/SecurityService`

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `Chassis.v1_23_0.Chassis`
  - Added `Oem.Hpe.ChassisInputPowerWatts`: The total input power consumed by the chassis and nodes.
- `ComponentIntegrity.v1_2_0.ComponentIntegrity` is updated to `ComponentIntegrity.v1_2_3.ComponentIntegrity`
  - Added `Oem.Hpe.ExtendedVerificationStatus`: Extended verification status
    of the Host Processor Module (HPM). This property contains integrity information
    about the OEM identified by the `TargetComponentURI` property.
  - Host Processor Module supports the following values: `NotValidated`,
    `Success`, `Failed`, `Error`, `CertificateCheckFailed`.
- `EnvironmentMetrics.v1_3_2.EnvironmentMetrics`: Represents the environmental metrics of a device.
  - Added following resource instance:
    `/redfish/v1/chassis/{item}/environmentmetrics` (GET)
    `/redfish/v1/systems/{item}/processors/{item}/environmentmetrics` (GET)
  - Added `EnergyJoules.DataSourceUri` property: The link to the resource
    that provides the data for this sensor.
  - Added `EnergyJoules.Reading` property: Provides sensor value.
- `EthernetInterface.v1_4_1.EthernetInterface`
  - Added `Disabled` value under `Oem.Hpe.SharedNetworkPortOptions.NIC`
    property: NIC is not configured to be shared.
- `HpeSecurityService.v2_5_0.HpeSecurityService` updated to `HpeSecurityService.v2_6_0.HpeSecurityService`
  - Added `HpeSecurityService.RebindHPM` action: Rebinds data center secure
    control module with Host Processor Module.
  - Added following collection of certificates: `BMCHPELDevID`, `BMCIDevIDPca`, `BMCIAK`, `BMCLAK`,
    `SystemLDevID`, `SystemLAKCert`.
- `Manager.v1_5_1.Manager`
  - Added `Oem.Hpe.AirFilterRecord` array: It contains
    **AirFilterRecord[{item}].DeviceType** filter that indicates the air filter type.
  - Supported values:
    **AirFilterRecord[{item}].RemainingDaysForCriticalReminder**,
    **AirFilterRecord[{item}].RemainingDaysForEarlyReminder**, and
    **AirFilterRecord[{item}].Status**.
  - Added `ExpiredActivationKey` as supported value for **Oem.Hpe.CloudConnect**
    property: Indicates that the cloud activation failed as the activation key has expired.
  - Added `ExpiredActivationKey` as supported value for
    **HpeiLO.DisableCloudConnect** property.
  - Added **HpeiLO.DisableFilterChangeTimer**: Disables the air filter change timer.
  - Added **HpeiLO.TriggerFilterChangeTimer**: Triggers the air filter change timer.
  - Supported parameters of **HpeiLO.TriggerFilterChangeTimer** property:
    **RemainingDaysForEarlyReminder (integer)**, **RemainingDaysForCriticalReminder (integer)**
- `MemoryMetrics.v1_7_3.MemoryMetrics`
  - Added following resource instance:
    `/redfish/v1/systems/{item}/memory/{item}/memorymetrics` (GET)
  - `Oem.Hpe.PageRetirementCounts`: Contains memory page counters for this resource.
  - `OperatingSpeedMHz`: Operating speed of memory in MHz or MT/s as appropriate.
- `Port.v1_9_0.Port`
  - Added following instance:
    `/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports`(GET, POST)
  - Updated data type from `number` to `integer`.
- `Power.v1_7_1.Power`
  - Supported values: `GPU1`, `GPU2`.
  - Updated data type from `number` to `integer`.
- `Processor.v1_7_2.Processor` is updated to `Processor.v1_8_2.Processor`
  - Added following resources: `EnvironmentMetrics` and `Metrics`.
  - Added`Oem.Hpe.NVLinkState` property: The link between CPU and GPU.
  - Supported values: `Inactive`, `Active`, `Error`.
- `ProcessorMetrics.v1_6_4.ProcessorMetrics`
  - Added following instance:
    `/redfish/v1/systems/{item}/processors/{item}/processormetrics` (GET)
  - Added following properties:`BandwidthPercent`: Indicates the bandwidth usage of a processor in percentage.
  - `Oem.Hpe.EDPViolationStateType`: EDP violation.
  - `Oem.Hpe.MemorySpareChannelPresence`: The memory spare channel presence state.
  - `Oem.Hpe.PCIeConnectionLinksStatus` (array): The array that contains following elements:
    `PCIeConnectionLinksStatus[{item}]`: Supported values (`Connected`, `Disconnected`).
    `Oem.Hpe.PerformanceState`: Supported values (`Degraded`, `Normal`, `Throttled`).
    `Oem.Hpe.PowerBreakPerformanceState`: Supported values (`Connected`, `Disconnected`).
  - Supported values:
    `Normal` - Value is within the range.
    `OutOfRange` - Outside the range.
- `SoftwareInventory.v1_2_0.SoftwareInventory`
  - Added `LowestSupportedVersion` property: The lowest supported version of this software.
- `HpeNetworkAdapter.v1_10_0.HpeNetworkAdapter` is updated to `HpeNetworkAdapter.v1_10_1.HpeNetworkAdapter`.
  - Updated data type from `number` to `integer`.
- `HpePort.v1_0_1.HpePort` updated to `HpePort.v1_0_2.HpePort`
  - Updated data type from `number` to `integer`.
- `HpePowerMetricsExt.v2_5_0.HpePowerMetricsExt` to `HpePowerMetricsExt.v2_5_1.HpePowerMetricsExt`.
  - Supported values: `GPU1`, `GPU2`
- `HpeServerChassis.v2_4_0.HpeServerChassis`
  - Added `ChassisInputPowerWatts` property: The total input power consumed by the chassis and nodes.
- `HpeiLODateTime.v2_0_0.HpeiLODateTime` updated to `HpeiLODateTime.v2_0_1.HpeiLODateTime`
  - Updated data type from `number` to `integer`.
- Updated the data type from `number` to `integer` for the following schemas:
  - `AccountService.v1_5_0.AccountService`
  - `ComputerSystem.v1_17_0.ComputerSystem`
  - `Drive.v1_16_0.Drive`
  - `Memory.v1_14_0.Memory`
  - `MemoryChunks.v1_2_3.MemoryChunks`
  - `MemoryChunksPost.v1_2_2.MemoryChunksPost`
  - `MessageRegistry.v1_6_0.MessageRegistry`
  - `MetricDefinition.v1_0_0.MetricDefinition`
  - `NetworkAdapter.v1_9_0.NetworkAdapter`
  - `Resource.v1_14_1.Resource`
  - `ServiceRoot.v1_13_0.ServiceRoot`
  - `Storage.v1_12_0.Storage`
  - `StorageController.v1_0_0.StorageController`
  - `Thermal.v1_7_1.Thermal`
  - `ThermalMetrics.v1_3_1.ThermalMetrics`
  - `Triggers.v1_0_0.Triggers`

## iLO 6 v1.59 new features and changes

### New URIs

- Consistent `EthernetInterface` naming schema across device types.

{% admonition type="info" name="Note" %}

The URI of the members of the computer system `EthernetInterface`
can be represented with this notation:
`/redfish/v1/Systems/{@SystemId}/EthernetInterfaces/{@nicId}`.

Starting with iLO 6 firmware version 1.59, the `{@nicId}` naming schema is
consistent across device types for supported devices.
It is a string containing one or more characters in the
range [0-9], with the following specification:

- LAN On Motherboard (LOM) card range: 1-4
- Open Compute Project (OCP) card range: 5-12
  - OCP card 1 range: 5-8
  - OCP card 2 range: 9-12
- OCP card with a `{@nicId}` of 13 or greater are allocated for:
  - PCIe cards in HPE Gen10 servers or HPE Gen11 servers
  - Mezzanine cards in HPE Synergy servers

Potentially, PCIe and Mezzanine cards can have 64 ports.
Their corresponding `{@nicId}` is represented:

- at slot 1 in the range: 13-76
- at slot 2 in the range: 77-140

{% /admonition %}

### HTTP methods - additions and deprecations

- No HTTP methods changed across these releases.

### Deprecated URIs

- No URIs deprecated in this release.

### Miscellaneous information

HPE iLO supports connecting to HPE Compute Ops Management (COM) using the `ActivationKey` generated and provided by COM.

- Onboarding HPE iLO to COM is possible with both the COM `ActivationKey` or HPE GreenLake Workspace ID.
  Refer to the following example:
  
  {% tabs %}
  {% tab label="Action to onboard HPE iLO to COM" %}

  ```text Action to onboard HPE iLO to COM
      POST: /redfish/v1/Managers/1/Actions/Oem/Hpe/EnableCloudConnect
  ```
  
  {% /tab %}
  {% /tabs %}
  
  {% tabs %}
  {% tab label="Body 1" %}

  ```json Body 1
    {
      "ActivationKey" : "<Activation Key>",
      "OverrideManager" : true
    }
  ```
  
  {% /tab %}
  {% tab label="Body 2" %}

  ```json Body 2
    {
      "ActivationKey" : "<Wokspace ID>",
      "OverrideManager" : true
    }
  ```
  
  {% /tab %}
  {% /tabs %}
- Rename of property:
  To view the HPE GreenLake account ID to which an HPE iLO is connected to the
  COM, the property `ActivationKey` under URI-`/redfish/v1/Managers/1/` is
  deprecated. It is replaced by a property `WorkspaceId` that shows the
  HPE Greenlake workspace ID. Irrespective of whether HPE iLO was onboarded
  to COM using a Workspace ID or an `ActivationKey`, the `WorkspaceId`
  property displays the HPE GreenLake Workspace ID.

### Redfish actions - additions and deprecations

- Added the `RetryCloudConnect` action for retrying connection from HPE iLO
  to COM
  The URI:`/redfish/v1/Managers/1/Actions/Oem/Hpe/RetryCloudConnect` allows
  Redfish clients to retry connecting to COM when the connection is in a
  failed state. This action requires a `NULL` payload. It returns `200 OK`
  only in the following conditions:
  - HPE iLO is currently retrying the connection.
  - The `CloudConnectStatus` is not currently `Connected`.
  Otherwise, the action returns `400 Bad Request` with the message:
  `iLO.2.27.COMReconnectDenied`.
  Every time when you trigger this action, it attempts a connection to COM.

### Schema updates

- `ComputerSystem.v1_17_0.ComputerSystem`
  - Added `Oem.Hpe.ServerPowerAutoOn`: Indicates to power on the server after the management processor is reset.

- `Manager.v1_5_1.Manager`
  - Added `Oem.Hpe.CloudConnect.WorkspaceId`: Represents the workspace identifier of COM. To see the `Workspace ID`, select `HPE GreenLake Console`>`Manage Workspace`>`Workspace details`.
  - Added `Oem.Hpe.iLOCPLDSpecVersion`: Displays the spec version for the `CPLD` (System Programmable Logic Device) firmware type.
  - Added `HpeiLO.RetryCloudConnect`: Allows you to enable cloud connection service when connecting to COM fails.
  - Deprecated `Oem.Hpe.CloudConnect.ActivationKey` property.

- `NetworkAdapter.v1_9_0.NetworkAdapter`
  - Added `Oem.Hpe.BaseMACAddress`: Provides information about the MAC address of the device.
  - Added `HpeNetworkAdapter.PowerSaveOff`.
  - Added `HpeNetworkAdapter.PowerSaveOn`.

- `iLO.v2_26_0.json` file is updated to `iLO.v2_27_0.json`
  - Added `iLO.2.27.COMReconnectDenied` message: The message appears when HPE iLO denies the connection as either the server is already connected to COM or
  managed by COM.

## iLO 6 v1.58 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP methods - additions and deprecations

- No HTTP methods changed across these releases.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `NetworkAdapter.v1_9_0.NetworkAdapter`
  - Added `Oem.Hpe.FlashBankCSControl`: Represents the selected boot bank using chip select.
  - Added `Oem.Hpe.FlashBankMuxControl`: Represents the selected flash bank using Mux.
  - Added `Oem.Hpe.NextBootFlashBank`: Provides information about the next boot flash bank.
  - Added `Oem.Hpe.PowerSensors (array)`: The total amount of power consumed by the device. The following values have been supported `PowerCapacityWatts`, `SensorId`, and `Status`.
  - Added `Oem.Hpe.BootStageSensors (array)`: Information about Boot stage and health.

- `ComputerSystem.v1_17_0.ComputerSystem`
  - Added `Oem.Hpe.ServerPowerAutoOn`: Indicates to power on the server after the management processor is reset.

## iLO 6 v1.57 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP methods - additions and deprecations

- No HTTP methods changed across these releases.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates
  
- `HpeSNMPUser.v2_1_0.HpeSNMPUser` updated to `HpeSNMPUser.v2_1_1.HpeSNMPUser`

- `HpeiLOSnmpService.v2_4_0.HpeiLOSnmpService` updated to `HpeiLOSnmpService.v2_4_1.HpeiLOSnmpService`

- `Power.v1_3_0.Power` updated to `Power.v1_7_1.Power`
  - Added `Voltages`: Added an array containing elements of:
    - `LowerThresholdCritical`: Below normal range but not yet fatal.
    - `LowerThresholdFatal`: Below normal range and is fatal.
    - `LowerThresholdNonCritical`: Below normal range.
    - `MaxReadingRange`: Maximum value for CurrentReading.
    - `MinReadingRange`: Minimum value for CurrentReading.
    - `PhysicalContext`: Describes the area or device to which this voltage measurement applies.
    - `ReadingVolts`: The current value of the voltage sensor.
    - `UpperThresholdCritical`: Above normal range but not yet fatal.
    - `UpperThresholdFatal`: Above normal range and is fatal.
    - `UpperThresholdNonCritical`: Above normal range

## iLO 6 v1.56 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP methods - additions and deprecations

- Added PATCH for `redfish/v1/Fabrics/{@fabricId}`

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `Chassis.v1_23_0.Chassis`:
  - Link to `Drives`(`redfish/v1/Systems/1/Storage/{StorageId}/Drives`)  under `Chassis/1/` is removed.
  - `ChassisType`: Added value `StorageEnclosure` (a chassis that enclose storage)
  
- `HpeSecurityService.v2_4_0.HpeSecurityService` updated to `HpeSecurityService.v2_5_0.HpeSecurityService`
  - Added `DisableWeakCiphers`: Disable weak ciphers in Production mode.

- `NetworkAdapter.v1_9_0.NetworkAdapter`
  - Added `Oem.Hpe.BootBankSelected`: Represents the selected boot bank, from which the network adapter will boot. The supported values include `Bank1` and `Bank2`.
  - Added `Oem.Hpe.FlashBankSelected`: Represents the selected flash bank. The supported values include `Bank1` and `Bank2`.
  - Added `PhysicalPorts[{item}].PortNumber`: Port Number of physical adapter.
  - `HpeNetworkAdapter.WarmReset` and `HpeNetworkAdapter.ColdReset` are added as supported actions.

- `UpdateService.v1_2_1.UpdateService`
  - `Oem.Hpe.Capabilities.COMHostPoweroffSupport` updated to `Oem.Hpe.Capabilities.HostPoweroffSupport`

## iLO 6 v1.55 new features and changes

### New URIs

- `redfish/v1/Fabrics` (GET) - `#FabricCollection.FabricCollection`

- `redfish/v1/Fabrics/{@fabricId}` (GET, POST) - `#Fabric.v1_3_0.Fabric`

- `redfish/v1/Fabrics/{@fabricId}/Switches`(GET) - `#SwitchCollection.SwitchCollection`

- `redfish/v1/Fabrics/{@fabricId}/Switches/{@switchId}`(GET, POST) - `#Switch.v1_9_1.Switch`

- `redfish/v1/Fabrics/{@fabricId}/Switches/{@switchId}/Ports`(GET) - `#PortCollection.PortCollection`

- `redfish/v1/Fabrics/{@fabricId}/Switches/{@switchId}/Ports/{@PortId}` (GET, POST) - `#Port.v1_9_0.Port`

{% admonition type="info" name="NOTE" %}
`Fabrics` resource contains properties describing a simple fabric consisting of one or more switches with zero or more endpoints, and zero or more zones. Each `Fabrics` is involved in routing a data packet from routers from one end to other end.
{% /admonition %}

The following new URIs are subjective to Storage Enclosures being present on the server.

- `redfish/v1/Chassis/{@ChassisId}`

{% admonition type="info" name="NOTE" %}

- `@ChassisId` can be of the format `DE******` or a number ranging from 2-10 depending on if the Enclosure supports Redfish-Device-Enablement or Direct Attached respectively.
- `Chassis/1` represents RackMount chassis.
{% /admonition %}

- `redfish/v1/Chassis/{@ChassisId}/Drives` (GET) - `#DriveCollection.DriveCollection`

- `redfish/v1/Chassis/{@ChassisId}/Drives/{@DrivesId}` (GET,PATCH,POST) - `#Drive.v1_14_0.Drive`

{% admonition type="info" name="NOTE" %}
`Drives` is present only for `Chassis` resource that represents a Storage Enclosure.
{% /admonition %}

### HTTP methods - additions and deprecations

- No changes have been made to HTTP methods in this release.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `Manager.v1_5_1.Manager`
  - `Oem.Hpe.CloudConnect.FailReason`: Added `RDAConnectError` to the supported values.

- `#Chassis.v1_23_0.Chassis`
  - Added `SparePartNumber`: The spare part number of the chassis.

- `#Drive.v1_14_0.Drive` updated to `#Drive.v1_16_0.Drive`
  - Added `DriveFormFactor`: The form factor of the drive inserted in this slot. The following values are supported `Drive3_5`, `Drive2_5`, `EDSFF_1U_Long`, `EDSFF_1U_Short`, `EDSFF_E3_Short`, `EDSFF_E3_Long`, `M2_2230`, `M2_2242`, `M2_2260`, `M2_2280`, `M2_22110`, `U2`, `PCIeSlotFullLength`, `PCIeSlotLowProfile`, `PCIeHalfLength` and `OEM`.
  - Added `Multipath`: An indication of whether the drive is accessible from multiple paths.

- `#HpeComponentInstallSet.v1_3_0.HpeComponentInstallSet` updated to `#HpeComponentInstallSet.v1_4_0.HpeComponentInstallSet`

- `Switch.v1_9_1.Switch`
  - Added `Manufacturer`: The manufacturer of this switch.
  - Added `SerialNumber`: The serial number for this switch.
  - Added `SwitchType`: The protocol being sent over this switch.

- `#UpdateService.v1_2_1.UpdateService`
  - Added `Oem.Hpe.Capabilities.COMHostPoweroffSupport`: Indicates whether iLO supports HOST power off.

## iLO 6 v1.53 new features and changes

### New URIs

- No new URIs added in this release.

### HTTP methods - additions and deprecations

- No changes have been made to HTTP methods in this release.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `#HpeComponentUpdateTask.v1_3_0.HpeComponentUpdateTask` updated to `#HpeComponentUpdateTask.v1_4_0.HpeComponentUpdateTask`
  - Added `Targets`: Contains firmware inventory targets on which firmware updates can be applied.

- `#ManagerAccount.v1_3_0.ManagerAccount`
  - Added `Enabled`: An indication of whether an account is enabled.  An administrator can disable it without deleting the user information.  If `true`, the account is enabled and the user can log in.  If `false`, the account is disabled and, in the future, the user cannot log in.

## iLO 6 v1.52 new features and changes

### New URIs

- No new URIs added in this release.

### HTTP methods - additions and deprecations

- No changes have been made to HTTP methods in this release.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `#HpeComponentInstallSet.v1_2_0.HpeComponentInstallSet` updated to `#HpeComponentInstallSet.v1_3_0.HpeComponentInstallSet`
  - Added `Targets`: Contains firmware inventory targets on which firmware updates can be applied.

## iLO 6 v1.51 new features and changes

### New URIs

- `redfish/v1/TelemetryService/MetricReports/`: `PowerMetrics` is added as a supported collection member.

- `redfish/v1/TelemetryService/MetricReportDefinitions/`: The following collection members are added `CPUUtil`, `MemoryBusUtil`, `IOBusUtil`, `CPUICUtil`, `JitterCount`, `PowerMetrics`, `AvgCPUXFreq` and `CPUXPower`.

{% admonition type="info" name="NOTE" %}
X depends on the number of sockets. The range of X lies between 0 to 3.
{% /admonition %}

- `redfish/v1/TelemetryService/MetricDefinitions/`: The following collection members are added `AverageConsumedWatts`, `MinConsumedWatts`, `MaxConsumedWatts`, `AmbTemp`, `Cap`, `CpuCapLim`,`CpuMax`, `CpuPwrSavLim`, `CpuWatts`, `DimmWatts`, `GpuWatts`, `PrMode`, `PunCap` and `UnachCap`.

### HTTP methods - additions and deprecations

- Added PATCH for `redfish/v1/Systems/{@systemId}/WorkloadPerformanceAdvisor/{@WorkloadPerformanceAdvisorId}`
- Added PATCH for `redfish/v1/TelemetryService`
- Added PATCH for `redfish/v1/TelemetryService/MetricDefinitions/{@MetricDefinitionId}`
- Added PATCH for `redfish/v1/TelemetryService/MetricReportDefinitions/{@MetricReportDefinitionId}`
- Added PATCH for `redfish/v1/TelemetryService/MetricReports/{@MetricReportId}`

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `#Chassis.v1_19_0.Chassis` updated to `#Chassis.v1_23_0.Chassis`

- `#EventDestination.v1_4_5.EventDestination` updated to `#EventDestination.v1_13_0.EventDestination`
  - Added `EventFormatType`: The content types of the message that are sent to the EventDestination. The following values are supported `Event` and `MetricReport`.
  - Added `MetricReportDefinitions`

- `#MetricReportDefinition.v1_0_0.MetricReportDefinition` updated to `#MetricReportDefinition.v1_4_2.MetricReportDefinition`
  - `MetricReportDefinitionType`: `Read-Only` changed to `False`
  - Added `Schedule`:
    - `EnabledDaysOfMonth`: is an array containing elements of:
      - `InitialStartTime`: The date and time when the initial occurrence is scheduled to occur.
      - `RecurrenceInterval`: The duration between consecutive occurrences.

- `#Port.v1_6_1.Port` updated to `#Port.v1_9_0.Port`

- `#Power.v1_3_0.Power`
  - Added `Oem.Hpe.PowerMetric`:
    - `AmbTemp`: Ambient temperature, in degrees Celsius.
    - `Cap`: The applicable power cap in Watts at the time of this power sample.
    - `CpuCapLim`: Measures the effect of the power cap on performance in percent.
    - `CpuMax`: The percentage of time the CPU spent in its maximum power mode.
    - `CpuPwrSavLim`: Measures the effect of CPU Power Regulator state switching on performance in percent.
    - `CpuWatts`: The power consumed by the system CPUs in Watts.
    - `DimmWatts`: The power consumed by the system memory DIMMs in Watts.
    - `GpuWatts`: The power consumed by the GPU(s) in Watts.  This will be 0 if no GPUs are installed or if the drivers are not loaded.
    - `PrMode`: Power Regulator mode, which can be OS Control, Static High, Static Low or Dynamic. The following values are supported `Null`, `dyn`, `min`, `max` and `osc`.
    - `PunCap`: If true, CPU performance is being penalized by the current power cap.
    - `UnachCap`: If true, the configured power cap could not be achieved due to system power requirements.

## iLO 6 v1.50 new features and changes

### New URIs

- No new URIs added in this release.

### HTTP methods - additions and deprecations

- No changes have been made to HTTP methods in this release.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `AccountService.v1_5_0.AccountService`
  - Added `Oem.Hpe.TwoFactorAuth`: This property indicates whether [Two Factor Authentication](/docs/redfishServices/ilos/supplementDocuments/tfa.md) is enabled or not.

- `ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol`
  - Added `Oem.Hpe.SMTPForTFAEnabled`: Indicates whether SMTP for [Two Factor Authentication](/docs/redfishServices/ilos/supplementDocuments/tfa.md) is enabled.

## iLO 6 v1.45 new features and changes

### New URIs

- No new URIs added in this release.

### HTTP methods - additions and deprecations

- No changes have been made to HTTP methods in this release.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- `redfish/v1/ComponentIntegrity/{@ComponentIntegrity}`
  - Added `ComponentIntegrity.SPDMGetSignedMeasurements` : This action gets the SPDM Signed Measurements. The following parameters are added:
    - `Nonce` (string) : A set of bytes as a hexadecimal-encoded string that is signed with the measurements.  The value should be unique.
    - `Target` (string): Link to invoke action
    - `Title` (string) : Friendly action name
    - `SlotId`(integer): The slot identifier for the certificate containing the private key to generate the signature over the measurements.
    - `MeasurementIndices` (array): An array of indices that identify the measurement blocks to sign.
  - Added `ComponentIntegrity.TPMGetSignedMeasurements`: This action gets the TPM Signed Measurements. The following parameters are added:
    - `Nonce` (string) : A set of bytes as a hex-encoded string that is signed with the measurements.  The value should be unique.
    - `Target` (string): Link to invoke action
    - `Title` (string) : Friendly action name
    - `SlotId`(integer): The slot identifier for the certificate containing the private key to generate the signature over the measurements.
    - `MeasurementIndices` (array): An array of indices that identify the measurement blocks to sign.

### Schema updates

- `#ComponentIntegrity.v1_2_0.ComponentIntegrity`
  - Added `SPDM.MeasurementSet`
    - `Measurements` array has the following values:
      - `LastUpdated`: The date and time when information for the measurement was last updated.
      - `Measurement`: The measurement data.
      - `MeasurementHashAlgorithm`: The hash algorithm used to compute the measurement.
      - `MeasurementIndex`: The index of the measurement.
      - `MeasurementType`: Supports the following values; `ImmutableROM`, `MutableFirmware`, `HardwareConfiguration`, `FirmwareConfiguration`, `MutableFirmwareVersion`,`MutableFirmwareSecurityVersionNumber`, `MeasurementManifest`
      - `SecurityVersionNumber` : The security version number that the measurement represents.
  - Added `TPM`
    - `TPM.ComponentCommunication.Sessions`:
      - `SessionId`: The identifier for an active session or communication channel between two components.
      - `SessionType`: `Plain`, `EncryptedAuthenticated` and `AuthenticatedOnly` are the supported values
    - Added `TPM.MeasurementSet.Measurements`:
      - `LastUpdated`: The date and time when information for the measurement was last updated.
      - `Measurement`: The measurement data.
      - `MeasurementHashAlgorithm`: The hash algorithm used to compute the measurement.
      - `PCR`: The Platform Configuration Register (PCR) bank of the measurement.
      - `NonceSizeBytesMaximum`: The maximum number of bytes that can be specified in the Nonce parameter of the TPMGetSignedMeasurements action.

- `#ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol`
  - Added `Oem.Hpe.KcsEnabled`: Indicates whether KCS interface is enabled or disabled for the BMC.

## iLO 6 v1.40 new features and changes

### New URIs

- No new URIs added in this release.

### HTTP methods - additions and deprecations

- No changes have been made to HTTP methods in this release.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- Added POST for `redfish/v1/ComponentIntegrity/{@ComponentIntegrity}`

### Schema updates

- `#ComponentIntegrity.v1_0_0.ComponentIntegrity` updated to `#ComponentIntegrity.v1_2_0.ComponentIntegrity`

- `#HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet` updated to `#HpeComponentInstallSet.v1_2_0.HpeComponentInstallSet`

- `#HpeComponentUpdateTask.v1_2_0.HpeComponentUpdateTask` updated to `#HpeComponentUpdateTask.v1_3_0.HpeComponentUpdateTask`

- `#HpeiLOSnmpService.v2_3_0.HpeiLOSnmpService` updated to `#HpeiLOSnmpService.v2_4_0.HpeiLOSnmpService`
  - Added `SNMPv1RequestsEnabled` and `SNMPv1TrapEnabled` to indicate if the SNMPv1 Queries and SNMPv1 Traps are enabled respectively.
  - Added `SNMPv3RequestsEnabled` and `SNMPv3TrapEnabled` to indicate if the SNMPv3 Queries and SNMPv3 Traps are enabled respectively.

- `#Memory.v1_14_0.Memory`
  - MemoryList
    - Added `BoardMemoryType` to `MemoryCollection`. The memory collection now lists HBM memory as members in supported Gen11 servers.

- `#SessionService.v1_0_0.SessionService`
  - Added `SessionTimeout` : This is the number of seconds of inactivity that a session may have before the session service closes the session. Here the value `0` means no timeout or infinite timeout.

## iLO 6 v1.35 new features and changes

### New URIs

- No new URIs added in this release.

### HTTP methods - additions and deprecations

- No changes have been made to HTTP methods in this release.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `#HpeSecurityService.v2_3_1.HpeSecurityService` updated to `#HpeSecurityService.v2_4_0.HpeSecurityService`

## iLO 6 v1.30 new features and changes

### New URIs

- No new URIs added in this release.

### HTTP methods - additions and deprecations

- No changes have been made to HTTP methods in this release.

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `#HpeServerPCISlot.v2_1_1.HpeServerPCISlot` updated to `#HpeServerPCISlot.v2_2_0.HpeServerPCISlot`
  - Added `SegmentNumber`: Depicts PCI slot segment group number value.

- `#MemoryChunks.v1_2_3.MemoryChunks`
  - Added `Unsupported` as a property under `Oem.Hpe.AmpModeStatus`

- `#SoftwareInventory.v1_2_0.SoftwareInventory`
  - Added `Oem.Hpe.Version`

## iLO 6 v1.20 new features and changes

### New URIs

- No new URIs added in this release.

### HTTP methods - additions and deprecations

- Added PATCH for `redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}}`
- Deprecated POST for `/redfish/v1/systems/{item}/secureboot/securebootdatabases`

### Deprecated URIs

- No URIs deprecated in this release.

### Redfish actions - additions and deprecations

No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `#Drive.v1_14_0.Drive`
  - `HotspareType`: `Read-only` updated to `False`.

- `#EventDestination.v1_0_0.EventDestination` updated to `#EventDestination.v1_12_0.EventDestination`
  - Added `SubscriptionType`: The subscription type for events. `RedfishEvent` is the supported value.

- `#HpeServerPciDevice.v2_0_0.HpeServerPciDevice` updated to `#HpeServerPciDevice.v2_1_0.HpeServerPciDevice`
  - Added `DeviceResourceId`: PCI device resource ID or hash ID.

- `PCIeDevice.v1_5_0.PCIeDevice`
  - Added `AssetTag`: The user-assigned asset tag for this PCIe device.

- `#Signature.v1_0_0.Signature` updated to `#Signature.v1_0_2.Signature`

- `#Storage.v1_12_0.Storage`
  - Added `Actions`: Added `Storage.ResetToDefaults`, an action to reset the system.
  - Added `Parameters`: The following parameters have been added : `ResetType`, `target` and `title`.

- `#Thermal.v1_7_1.Thermal`
  - Added `Oem.Hpe.MainSensorName` to `Temperatures`: Sensor name of main temperature sensor that has at least one sub sensor.

## iLO 6 v1.10 new features and changes

### New URIs

- `/redfish/v1/ComponentIntegrity` (GET, PATCH) `#ComponentIntegrityCollection.ComponentIntegrityCollection` - A Collection of ComponentIntegrity resource instances.

- `/redfish/v1/ComponentIntegrity/{@ComponentIntegrity}` (GET) `#ComponentIntegrity.v1_0_0.ComponentIntegrity` - The ComponentIntegrity resource provides critical and pertinent security information about a specific device, system, software element, or other managed entity.
  - `ComponentIntegrityEnabled`: Indicates whether security protocols are enabled for the component.
  - `ComponentIntegrityType`: The property is of type string that supports the following values:`SPDM` - Security Protocol and Data Model (SPDM) protocol, `TPM` - Trusted Platform Module (TPM), and `OEM` - OEM-specific.
  - `ComponentIntegrityTypeVersion`: The version of the security technology.
  - `SPDM` (Security Protocol and Data Model): The status of the verification of the identity of the component. `Success` and `Failure` are the supported values. Added the following properties: `SPDM.IdentityAuthentication`, `SPDM.IdentityAuthentication.ResponderAuthentication`, and `SPDM.IdentityAuthentication.ResponderAuthentication.VerificationStatus` to `SPDM`.
  - `TargetComponentURI`: The link to the the component whose integrity that this resource reports.

- `#CertificateCollection.CertificateCollection` - A Collection of Certificate resource instances.</br>
The following resource instances are added in this schema:
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/KEK/Certificates` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/PK/Certificates` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/PKDefault/Certificates` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/db/Certificates` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbDefault/Certificates` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbr/Certificates` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbt/Certificates` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbx/Certificates` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates` (GET)

- `#Certificate.v1_1_0.Certificate` updated to `#Certificate.v1_6_0.Certificate`: The Certificate resource describes an X509 certificate. </br>
The following resource instances are added in this schema:
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/KEK/Certificates/{@CertificateId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates/{@CertificateId}` (GET)  
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/PK/Certificates/{@CertificateId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/PKDefault/Certificates/{@CertificateId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/db/Certificates/{@CertificateId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbDefault/Certificates/{@CertificateId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbr/Certificates/{@CertificateId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates/{@CertificateId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbt/Certificates/{@CertificateId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates/{@CertificateId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbx/Certificates/{@CertificateId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates/{@CertificateId}` (GET)

- `#SignatureCollection.SignatureCollection`: A collection of Signature resource instances.</br>
The following resource instances are added in this schema:
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/db/Signatures` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbDefault/Signatures` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbr/Signatures` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbt/Signatures` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbx/Signatures` (GET, POST)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures` (GET)

- `#Signature.v1_0_0.Signature`: The Signature schema describes a signature or a hash.
  - Added `SignatureString`: The string for the signature.
  - Added `SignatureType`: The format of the signature.
  - Added `SignatureTypeRegistry`: `UEFI` (a signature defined in the UEFI Specification) is the supported value.
  - Added `UefiSignatureOwner`: The UEFI signature owner for the signature.</br>
The following resource instances are added in this schema:
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/db/Signatures/{@SignatureId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbDefault/Signatures/{@SignatureId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbr/Signatures/{@SignatureId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures/{@SignatureId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbt/Signatures/{@SignatureId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures/{@SignatureId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbx/Signatures/{@SignatureId}` (GET, DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures/{@SignatureId}` (GET)
  
- `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases` (GET, POST)`#SecureBootDatabaseCollection.SecureBootDatabaseCollection` - A collection of SecureBootDatabase resource instances.

- `#SecureBootDatabase.v1_0_0.SecureBootDatabase` : The SecureBootDatabase schema describes a UEFI Secure Boot database used to store certificates or hashes.
  - Added `Certificates`: A link to the collection of certificates contained in the UEFI Secure Boot database.
  - Added `DatabaseId`: The property contains the name of the UEFI Secure Boot database.
  - Added `Signatures`: A link to the collection of signatures contained in the UEFI Secure Boot database.
  - Added `Actions`:
    - `SecureBootDatabase.ResetKeys`: Action to perform reset of the Secure Boot Database Keys.
  - Added `Parameters`:
  <ul>
    - Added `ResetKeysType (string)` (the parameter specifies what type of reset action to perform). The values are `DeleteAllKeys` (delete all Secure Boot Database keys on next boot) and `ResetAllKeysToDefault` (reset to default Secure Boot Database keys on next boot).
  </ul></br>
The following resource instances are added in this schema:

  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/{@SecureBootDatabaseId}` (GET, DELETE)
  - `/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/db` (GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault`(GET)
  - `/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault`(GET)

- `/redfish/v1/Systems/{@systemId}/LogServices/DPU/Entries` (GET, POST) `#LogEntryCollection.LogEntryCollection` - A Collection of LogEntry resource instances.

- `/redfish/v1/Systems/{@systemId}/LogServices/DPU/Entries/{@entriesId}` (GET, PATCH)  `#LogEntry.v1_11_0.LogEntry` - Defines the record format of a log.

- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@StorageControllerId}` (GET) `#StorageController.v1_0_0.StorageController` : Describes a storage controller and its properties. The storage controller represents a physical or virtual storage device that produces volumes.
  
- `/redfish/v1/systems/{item}/ethernetinterfaces/{item}` (GET,PATCH,POST) `#EthernetInterface.v1_4_1.EthernetInterface`: The EthernetInterface resource describes a single, logical ethernet interface or network interface controller (NIC).

- `/redfish/v1/managers/{item}/backuprestoreservice` (GET, PATCH) `#HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService`: The HpeiLOBackupRestoreService resource describes the properties for using the BMC backup and restore features.
  
### HTTP methods - additions and deprecations

No changes have been made to HTTP methods in this release.

### Deprecated URIs

- `BaseNetworkAdapters` deprecated
  - `/redfish/v1/systems/{item}/basenetworkadapters/{item}`
  
- `NetworkPorts` deprecated
  - `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkPorts`
  - `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}`
  - `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}/HpeEVB`
  - `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}/HpeLLDP`
  - `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}/Settings`
  - `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts`
  - `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts/{@portId}`
  - `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts/{@portId}/HpeEVB`
  - `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts/{@portId}/HpeLLDP`
  - `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts/{@portId}/Settings`

For more information, refer to the [Deprecated for iLO 6](/docs/redfishservices/ilos/ilo6/ilo6_adaptation/#deprecated-for-ilo-6) section.

### Redfish actions - additions and deprecations

No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `#Certificate.v1_1_0.Certificate` updated to `#Certificate.v1_6_0.Certificate`
  - Added `Issuer` and `Subject`:
  
    - `City`: The city or locality of the organization of the entity.
    - `CommonName`: The fully qualified domain name of the entity.
    - `Country`: The country of the organization of the entity.
    - `DisplayString`: A human-readable string for this identifier.
    - `Email`: The email address of the contact within the organization of the entity.
    - `Organization`: The name of the organization of the entity.
    - `OrganizationalUnit`: The name of the unit or division of the organization of the entity.
    - `State`: The state, province, or region of the organization of the entity.

- `#Chassis.v1_10_2.Chassis` updated to `#Chassis.v1_19_2.Chassis`
  
  - Deprecated `IndicatorLED`
  - Added `Oem.Hpe.IndicatorLED`: The state of the indicator LED. Following are the supported values: `Null`, `Lit`, `Blinking` and `Off`. This is a fall back provided for clients who want to continue using `IndicatorLED`.
  - Added `LocationIndicatorActive`: An indicator allowing an operator to physically locate this resource. This property replaces `IndicatorLED`and is in-line with the updated DMTF schema.
  - Added `EnvironmentalClass`: The ASHRAE Environmental Class for the chassis. Following are the supported values: A2 - ASHRAE Environmental Class 'A2', A3 - ASHRAE Environmental Class 'A3', and A4 - ASHRAE Environmental Class 'A4'.
  - Added `Location.PartLocation`:

    - `LocationOrdinalValue`: The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.
    - `LocationType`: The location types for PartLocation. Following are the supported values: `Null`, `Slot`, `Bay`, `Connection`, `Socket`, and `Embedded`.
    - `Orientation`: The orientation for the ordering of the part location ordinal value. Following are the supported values: `Null`, `FrontToBack`, `BackToFront`, `TopToBottom`, `BottomToTop`, `LeftToRight`, and `RightToLeft`.
    - `Reference`: The reference area for the location of the part. Following are the supported values: `Null`, `Top`, `Bottom`, `Front`, `Rear`, `Left`, `Right`, and `Middle`.
    - `ServiceLabel`: The label of the part location, such as a silk-screened name or a printed label.

  - Added `Location.Placement`:

    - `AdditionalInfo`: Area designation or other additional info.
    - `Rack`: The name of a rack location within a row.
    - `RackOffset`: The vertical location of the item, in terms of RackOffsetUnits.
    - `RackOffsetUnits`: The type of rack unit in use. Following are the supported values: `Null`, `OpenU` (a rack unit that is equal to 1.89 inches (48 mm)), and `EIA_310` (a rack unit that is equal to 1.75 inches (44.45 mm).
    - `Row`: The name of the row.

  - Added `CpuMezzProgrammableLogicDevice` to `Oem.Hpe.Firmware`: The firmware version of the CPLD (System Programmable Logic Device).
  - Added `Oem.Hpe.TelcoModeEnabled`: This property indicates if Telco mode is enabled on the server.

- `#ComputerSystem.v1_10_0.ComputerSystem` updated to `#ComputerSystem.v1_17_0.ComputerSystem`
  - Deprecated `IndicatorLED`
  - Added `Oem.Hpe.IndicatorLED`: The state of the indicator LED. Following are the supported values: `Null`, `Lit`, `Blinking` and `Off`. This is a fall back added for clients that want to continue to use `IndicatorLED`
  - Added `LocationIndicatorActive`: An indicator allowing an operator to physically locate this resource. This property replaces `IndicatorLED`and is in-line with the updated DMTF schema.
  - Added `BootProgress`:

    - `OemLastState`: SmartNIC device operating system OEM status. Following are the supported values: `OSServicesReady`, `OSServicesOffline`, `OSHalting` and `OSHalted`.

  - Added `Oem.Hpe.AvailableSystemCapabilities`: Indicates SmartNIC DPU supports OS-triggered DPC. `OSTriggeredDPC` is the supported value.
  - Added `Oem.Hpe.BootProgress`:

    - Added `OemResetReason`: The Smart NIC Device Operating system OEM reset
      reason. Following are the supported values: `Unknown`, `OSNormal`,
      `BMCNormal`, `OSCrash`, `HWWatchdog` and `Thermal`.
    - Added `ResetReason`: The Smart NIC Device Operating system reset reason.
      Following are the supported values: `OEM`, `Unknown`, `OSNormal`, `BMCNormal`,
      `OSCrash`, `HWWatchdog` and `Thermal`.

    - Added `BootProgress.OemLastState`: This object shall contain the last
      boot progress state and time. It
     provides information about
     [Data Processing Units (DPUs) and SmartNIC](/docs/redfishservices/ilos/supplementdocuments/smartnics/)
     devices visible under the `/redfish/v1/Systems/{item}` with `item > 1`.
     An example of such device is <a href="https://www.hpe.com/psnow/doc/a50001239enw" target="_blank">Pensando</a> devices.
  - Added `Oem.Hpe.EnabledSystemCapabilities`: Indicates that SmartNIC DPU supports OS-triggered DPC. `OSTriggeredDPC` is the supported value.
  - Added `OsReadyTimeout` to `Oem.Hpe.IntegrationConfig`.
  - Added `Kernel.Version` to  `Oem.Hpe.OperatingSystem`: SmartNIC device operating system kernel version.
  - `SystemType`: The type of computer system that this resource represents. `DPU` is added to the supported values.
  - Added `ComputerSystem.SetSimpleUpdateStatus`: Added the following Parameters:

    - `Message (string)`: Message to be displayed
    - `TaskState (string)`: TaskState identifies the type of action to be performed. Following are the supported values: `New`, `Starting`, `Running`,`Suspended`,`Interrupted`,`Pending`, `Stopping`, `Completed`, `Killed`,`Exception` and `Service`.
    - `PercentComplete (integer)`: Percentage of task complete.
    - `TaskStatus (string)`: Current status of the ongoing task. Following are the supported values: `Ok`, `Warning` and `Critical`.

  
- `#Drive.v1_7_0.Drive` upgraded to `Drive.v1_14_0.Drive`
  - Deprecated `IndicatorLED`
  - Added `Oem.Hpe.IndicatorLED`: The state of the indicator LED. Following are the supported values: `Null`, `Lit`, `Blinking` and `Off`.  This is a fall back added for clients that want to continue to use `IndicatorLED`
  - Added `LocationIndicatorActive`: An indicator allowing an operator to physically locate this resource. This property replaces `IndicatorLED`and is in-line with the updated DMTF schema.
  
- `#HpeSecureEraseReport.v1_1_0.HpeSecureEraseReport`
  - `DeviceType`: `PCIControllers` added as supported value.

- `#HpeSecurityService.v2_3_1.HpeSecurityService`
  - Added `ComponentIntegrityPolicy`: `NoPolicy` and `HaltBootOnSPDMFailure` are the supported values.
  - Added `GlobalComponentIntegrity`: `Enabled` and `Disabled` are the supported values.
  - Added the following to `TrustedOSSecurity`:

    - `EnableBackgroundScan`: Enables or disables background scan of host OS software.
    - `LastScanResult`: Health of the host after the last scan done by Trusted OS Security scan engine. Following are the supported values: `OK`, `Critical`, `Unknown`.
    - `LastScanTime`: The time stamp of the last Trusted OS Security scan.
    - `OnIntegrityFailure`: Sets the policy for how the Trusted OS Security check handles integrity failures. Following are the supported values: `NoAction`, `Alert`, `PowerOff`, `PowerOffForce`,`Reset`, `ForceNMI` .
    - `ScanEverySeconds`: Sets the interval between Trusted OS Security scans in second increments.


- `#HpeServerDevice.v2_1_0.HpeServerDevice`
  - Added `FirmwareVersion`:

    - `ComponentName`: Name of GPU cores
    - `VersionString`: Version String of GPU cores


- `#LogService.v1_0_0.LogService` updated to `LogService.v1_1_0.LogService`
  - Added `DateTime`: The current date and time, with UTC offset, that the Log Service uses to set or read time.
  - Added `DateTimeLocalOffset`: The UTC offset that the current DateTime property value contains in the `+HH:MM` format.
  - Added `ServiceEnabled`: An indication of whether this service is enabled.

- `#Manager.v1_5_1.Manager`
  - `DateTime`: `Read Only` updated to `TRUE`
  - `iLOSelfTestResults[{item}].SelfTestName` : Following are the supported values:`SecureElement`

- `#Memory.v1_7_1.Memory` updated to `#Memory.v1_14_0.Memory`
  - Added the value `DDR5` to the supported values in `MemoryDeviceType`.

- `#NetworkAdapter.v1_5_0.NetworkAdapter` upgraded to `#NetworkAdapter.v1_9_0.NetworkAdapter`
  - Added `Location.PartLocation`:

    - `LocationOrdinalValue`: The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.
    - `LocationType`: The location types for PartLocation. Following are the supported values: `Null`, `Slot`, `Bay`,`Connector`,`Socket`and `Embedded`.
    - `Orientation`: The orientation for the ordering of the part location ordinal value. Following are the supported values: `Null`, `FrontToBack`,`BackToFront`,`TopToBottom`,`BottomToTop`, `LeftToRight` and `RightToLeft`.
    - `Reference`: The reference area for the location of the part. Following are the supported values: `Null`, `Top`,`Bottom`,`Front`,`Rear`, `Left`,`Right` and `Middle`.
    - `ServiceLabel`: The label of the part location, such as a silk-screened name or a printed label.

  - Added `Location.Placement`:

    - `AdditionalInfo`: Area designation or other additional info.
    - `Rack`: The name of a rack location within a row.
    - `RackOffset`: The vertical location of the item, in terms of RackOffsetUnits.
    - `RackOffsetUnits`: The type of rack unit in use. Following are the supported values: `Null`, `OpenU` and `EIA_310`.
    - `Row`: The name of the row.

  - Added `Oem.Hpe.FcPorts`: is an array containing elements of:

    - `PortNumber`: Port Number
    - `WWNN`: World Wide Node Name
    - `WWPN`: World Wide Port Name

  - Added `Oem.Hpe.PhysicalPorts`:

    - `BadReceives`: A count of frames that were received by the adapter but which had an error.  This counter is the sum of mib items `cpqNicIfPhysAdapterAlignmentErrors`, `cpqNicIfPhysAdapterFCSErrors`, `cpqNicIfPhysAdapterFrameTooLongs`, and `cpqNicIfPhysAdapterInternalMacReceiveErrors`. If this counter increments frequently, check the more detailed error statistics and take appropriate action.
    - `BadTransmits`: A count of frames that were not transmitted by the adapter because of an error.  This counter is the sum of MIB items cpqNicIfPhysAdapterDeferredTransmissions, cpqNicIfPhysAdapterLateCollisions, cpqNicIfPhysAdapterExcessiveCollisions, cpqNicIfPhysAdapterCarrierSenseErrors, and cpqNicIfPhysAdapterInternalMacTransmitErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.
    - `FullDuplex`: Full-duplex data transmission means that data can be transmitted in both directions on a signal carrier at the same time.
    - `GoodReceives`: A count of frames successfully received by the physical adapter.
    - `GoodTransmits`: A count of frames successfully transmitted by the physical adapter.
    - `IPv4Addresses`: This is the IPv4 Address. Following value is added: `Address`.
    - `LinkStatus` : The link status of this interface (port). Following are the supported values: `LinkUp`,`NoLink`,`LinkDown` and `Null`.
    - `MacAddress`: The port MAC address.
    - `SpeedMbps`: An estimate of the current bandwidth of the interface in Megabits per second.  For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object contains the nominal bandwidth.
    - `StructuredName`: PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in `/rest/v1/Systems/x/PCIDevices`)
    - `Team`: If a port is configured for NIC teaming, the name of the configured link between the physical ports that form a logical network adapter. This value is displayed for system NICs only (embedded and stand-up).
    - `UEFIDevicePath`: UEFIDevice Path for correlation purposes.
  
- `#NetworkDeviceFunction.v1_5_0.NetworkDeviceFunction` updated to `#NetworkDeviceFunction.v1_8_0.NetworkDeviceFunction`

- `#PCIeDevice.v1_4_0.PCIeDevice` updated to `#PCIeDevice.v1_5_0.PCIeDevice`
  - Added `Oem.Hpe.FirmwareVersion`:

    - `ComponentName`: Name of GPU cores
    - `VersionString`: Version string of GPU cores


- `#Port.v1_5_0.Port` updated to `#Port.v1_6_1.Port`
  - Added `AssociatedWorldWideNames`to `FibreChannel`
  
- `#Power.v1_3_0.Power`
  - Added `Oem.Hpe.Domains`:

    - `DomainName`: Power Supply Domain Name. Following values are supported: `System` and `GPU`.
    - `HighEfficiencyMode`: The redundant power supply mode that will be used when redundant power supplies are configured. The following values are supported: `Null`, `Auto`, `Balanced`, `Even`, `Odd` and `NoSupport`.
    - `PowerSupplies`: `PowerSupplies` is an array containing elements of: `PowerSupplies[{item}].@odata.id`
    - `PowerSupplyRedundancy`: This indicates if the Power Supply is redundant or not. Following values are supported: `Redundant`, `NonRedundant`, `FailedRedundant` and `Unknown`.

  - `Oem.Hpe.HighEfficiencyMode`: Added `NoSupport` to supported values.
  - Added  `PowerSupplies.Oem.Hpe.Domain`: This indicates the domain of the specific power supply. Following values are supported: `System` and `GPU`.
  - `Oem.Hpe.HighEfficiencyMode`: `NoSupport` added as a supported value.
  
- `#ServiceRoot.v1_5_1.ServiceRoot` updated to `#ServiceRoot.v1_13_0.ServiceRoot`
  - Added `ComponentIntegrity`: The URI to the collection resource.

- `#Thermal.v1_7_1.Thermal`
  - `Temperatures[{item}].PhysicalContext`: Added the following enum values: `LiquidInlet`, `LiquidOutlet`, `CPUSubsystem`, `GPUSubsystem`, `FPGA`, `Accelerator`, `ASIC`, `PowerSubsystem`, `Rectifier`, `MemorySubsystem`, `Chassis`, `Fan`, `CoolingSubsystem`, `Motor`, `Transformer`, `ACUtilityInput`, `ACStaticBypassInput`, `ACMaintenanceBypassInput`, `DCBus`, `ACOutput`,`ACInput`, `TrustedModule`, `Board`, `Transceiver`, `Battery` and `Pump`

- `#UpdateService.v1_1_1.UpdateService` updated to `#UpdateService.v1_2_1.UpdateService`

- `#VirtualMedia.v1_2_0.VirtualMedia` updated to `#VirtualMedia.v1_3_0.VirtualMedia`
