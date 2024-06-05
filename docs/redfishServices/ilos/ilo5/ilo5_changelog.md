---
seo:
  title: iLO 5 changelog
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Changelog

The HPE iLO 5 Redfish service implements the DMTF Redfish specification
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.6.0.pdf" target="_blank">version 1.6.0</a>
and the schemas implemented by iLO 5 adhere to the DMTF Redfish schema bundle
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP8010_2021.4.zip" target="_blank">8010_2021.4</a>.

For a better understanding of the conformance to the DMTF Redfish,
read the _Redfish versioning_ paragraph of this
<a href="https://developer.hpe.com/blog/getting-started-with-ilo-restful-api-redfish-api-conformance/" target="_blank">article</a>.

## iLO 5 3.04 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to the supported Redfish Actions for this release.

### Schema Updates

- `HpeiLOSnmpService.v2_4_0.HpeiLOSnmpService` is updated to `HpeiLOSnmpService.v2_4_1.HpeiLOSnmpService`
  - Deprecated `DES` (Data Encryption Standard) algorithm from the enum values defined for the `PrivacyProtocol` property

## iLO 5 3.03 new features and changes

### New URIs

- Consistent `EthernetInterface` naming schema across device types.

:::info Note

The URI of the members of the computer system `EthernetInterface` collection
can be represented with this notation:
`/redfish/v1/Systems/{@SystemId}/EthernetInterfaces/{@nicId}`.

Starting with iLO 5 firmware version 3.03, the `{@nicId}` naming schema is
consistent across device types for supported devices.
It is a string containing one or more characters in the
range [0-9], with the following specification:

- Lan On Motherboard (LOM) card range: 1-4
- Open Compute Project (OCP) card range: 5-12
  - OCP card 1 range: 5-8
  - OCP card 2 range: 9-12
- OCP cards with a `{@nicId}` of 13 or greater are allocated for:
  - PCIe cards in HPE Gen10 servers or HPE Gen11 servers
  - Mezzanine cards in HPE Synergy servers

Potentially, PCIe and Mezzanine cards can have 64 ports.
Their corresponding `{@nicId}` is represented:

- at slot 1 in the range: 13-76
- at slot 2 in the range: 77-140

:::

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `Manager.v1_5_1.Manager`
  - Added `Oem.Hpe.ForceOnDriveLED`: Forceful enablement of the drive LED to permanently ON (Blue) for Samsung PM9A3 drive.

## iLO 5 3.02 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `ComputerSystem.v1_17_0.ComputerSystem`
  - Added `Oem.Hpe.ServerPowerAutoOn`: Indicated to power ON server after management processor reset.

## iLO 5 3.01 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- Added PATCH for `redfish/v1/Fabrics/{@fabricId}`

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `Chassis.v1_23_0.Chassis`
  - Link to `Drives`(`redfish/v1/Systems/1/Storage/{StorageId}/Drives`)  under `Chassis/1/` is removed.
  -  `ChassisType`: Added value `StorageEnclosure` (a chassis that enclose storage)
   
- `HpeSecurityService.v2_3_1.HpeSecurityService` updated to `HpeSecurityService.v2_4_0.HpeSecurityService`
  - Added `DisableWeakCiphers`: Disable weak ciphers in Production mode.

- `UpdateService.v1_2_1.UpdateService`
  - `Oem.Hpe.Capabilities.COMHostPoweroffSupport` updated to `Oem.Hpe.Capabilities.HostPoweroffSupport`

## iLO 5 3.00 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- Deprecated PATCH,DELETE for `redfish/v1/Fabrics/{@fabricId}`

- Deprecated PATCH,DELETE for `redfish/v1/Fabrics/{@fabricId}/Switches/{@switchId}`

- Deprecated PATCH,DELETE for `redfish/v1/Fabrics/{@fabricId}/Switches/{@switchId}/Ports/{@PortId}`

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `Manager.v1_5_1.Manager` 
  - `Oem.Hpe.CloudConnect.FailReason`: Added `RDAConnectError` to the supported values.

- `Switch.v1_9_1.Switch`
  - Added `Manufacturer`: The manufacturer of this switch.
  - Added `SerialNumber`: The serial number for this switch.
  - Added `SwitchType`: The protocol being sent over this switch.

## iLO 5 2.99 new features and changes

### New URIs

- `redfish/v1/Fabrics` (GET) - `#FabricCollection.FabricCollection`

- `redfish/v1/Fabrics/{@fabricId}` (GET,PATCH,POST) - `#Fabric.v1_3_0.Fabric`

- `redfish/v1/Fabrics/{@fabricId}/Switches`(GET) - `#SwitchCollection.SwitchCollection`

- `redfish/v1/Fabrics/{@fabricId}/Switches/{@switchId}`(GET,PATCH,POST) - `#Switch.v1_9_1.Switch`

- `redfish/v1/Fabrics/{@fabricId}/Switches/{@switchId}/Ports`(GET) - `#PortCollection.PortCollection`

- `redfish/v1/Fabrics/{@fabricId}/Switches/{@switchId}/Ports/{@PortId}` (GET,PATCH,POST) - `#Port.v1_9_0.Port`

:::info NOTE
`Fabrics` resource contains properties describing a simple fabric consisting of one or more switches with zero or more endpoints, and zero or more zones. Each `Fabrics` is involved in routing a data packet from routers from one end to other end.
:::

The following new URIs are subjective to Storage Enclosures being present on the server.

- `redfish/v1/Chassis/{@ChassisId}`

:::info NOTE
- `@ChassisId` can be of the format `DE******` or a number ranging from 2-10 depending on if the Enclosure supports Redfish-Device-Enablement or Direct Attached respectively.
- `Chassis/1` represents RackMount chassis.
:::

- `redfish/v1/Chassis/{@ChassisId}/Drives` (GET) - `#DriveCollection.DriveCollection`

- `redfish/v1/Chassis/{@ChassisId}/Drives/{@DrivesId}` (GET,PATCH,POST) - `#Drive.v1_14_0.Drive`

:::info NOTE
`Drives` is present only for `Chassis` resource that represent a Storage Enclosure.
:::

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `#Chassis.v1_23_0.Chassis`
  - Added `SparePartNumber`: The spare part number of the chassis.

- `#Drive.v1_14_0.Drive` updated to `#Drive.v1_16_0.Drive`
  - Added `DriveFormFactor`: The form factor of the drive inserted in this slot. The following values are supported `Drive3_5`, `Drive2_5`, `EDSFF_1U_Long`, `EDSFF_1U_Short`, `EDSFF_E3_Short`, `EDSFF_E3_Long`, `M2_2230`, `M2_2242`, `M2_2260`, `M2_2280`, `M2_22110`, `U2`, `PCIeSlotFullLength`, `PCIeSlotLowProfile`, `PCIeHalfLength` and `OEM`. 
  - Added `Multipath`: An indication of whether the drive is accessible from multiple paths.

- `#HpeComponentInstallSet.v1_3_0.HpeComponentInstallSet` updated to `#HpeComponentInstallSet.v1_4_0.HpeComponentInstallSet`
  - `Sequence[{item}].Command`: Added `HostPoweroff` as a supported value.

- `#UpdateService.v1_2_1.UpdateService`
  - Added `Oem.Hpe.Capabilities.COMHostPoweroffSupport`: Indicates whether iLO supports HOST power off.


## iLO 5 2.98 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `#HpeComponentUpdateTask.v1_3_0.HpeComponentUpdateTask` updated to `#HpeComponentUpdateTask.v1_4_0.HpeComponentUpdateTask`
  - Added `Targets`: Contains firmware inventory targets on which firmware updates can be applied.

- `#ManagerAccount.v1_3_0.ManagerAccount`
  - Added `Enabled`: An indication of whether an account is enabled.  An administrator can disable it without deleting the user information.  If `true`, the account is enabled and the user can log in.  If `false`, the account is disabled and, in the future, the user cannot log in.

## iLO 5 2.97 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `#HpeComponentInstallSet.v1_2_0.HpeComponentInstallSet` updated to `#HpeComponentInstallSet.v1_3_0.HpeComponentInstallSet`
  - Added `Target`: Contains firmware inventory targets on which firmware updates can be applied.

- `#Power.v1_3_0.Power`
  - `Oem.Hpe.HighEfficiencyMode`: `Read-Only` changed to `False`.

## iLO 5 2.96 new features and changes

### New URIs

- `redfish/v1/TelemetryService/MetricReports/`: `PowerMetrics` is added as a supported collection member.

- `redfish/v1/TelemetryService/MetricReportDefinitions/`: The following collection members are added `CPUUtil`, `MemoryBusUtil`, `IOBusUtil`, `CPUICUtil`, `JitterCount`, `PowerMetrics`, `AvgCPUXFreq` and `CPUXPower`. 

:::info NOTE
X depends on number of sockets. Range of X lies between 0 to 3.
:::

- `redfish/v1/TelemetryService/MetricDefinitions/`: The following collection members are added `AverageConsumedWatts`, `MinConsumedWatts`, `MaxConsumedWatts`, `AmbTemp`, `Cap`, `CpuCapLim`,`CpuMax`, `CpuPwrSavLim`, `CpuWatts`, `DimmWatts`, `GpuWatts`, `PrMode`, `PunCap` and `UnachCap`.

### HTTP Methods - Additions and Deprecations

- Added PATCH for `redfish/v1/Systems/{@systemId}/WorkloadPerformanceAdvisor/{@WorkloadPerformanceAdvisorId}`
- Added PATCH for `redfish/v1/TelemetryService`
- Added PATCH for `redfish/v1/TelemetryService/MetricDefinitions/{@MetricDefinitionId}`
- Added PATCH for `redfish/v1/TelemetryService/MetricReportDefinitions/{@MetricReportDefinitionId}`
- Added PATCH for `redfish/v1/TelemetryService/MetricReports/{@MetricReportId}`

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `#Chassis.v1_19_0.Chassis` updated to `#Chassis.v1_23_0.Chassis`

- `#EventDestination.v1_4_5.EventDestination` updated to `#EventDestination.v1_13_0.EventDestination`
  - `EventTypes`: Added `MetricReport` to the supported values
  - Added `MetricReportDefinitions`

- `#MetricReportDefinition.v1_0_0.MetricReportDefinition` updated to `#MetricReportDefinition.v1_4_2.MetricReportDefinition`
  - `MetricReportDefinitionType`: `Read-Only` changed to `False`
  - Added `Schedule`:
    - `EnabledDaysOfMonth`: is an array containing elements of:
      - `InitialStartTime`: The date and time when the initial occurrence is scheduled to occur.
      - `RecurrenceInterval`: The duration between consecutive occurrences.

- `#Port.v1_5_0.Port` updated to `#Port.v1_9_0.Port`

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

## iLO 5 2.95 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `#AccountService.v1_5_0.AccountService`
  - Added `Oem.Hpe.TwoFactorAuth`: This property indicates whether [Two Factor Authentication](/docs/redfishServices/ilos/supplementDocuments/tfa.md) is enabled or not.

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

- `#Chassis.v1_11_2.Chassis` updated to `#Chassis.v1_19_0.Chassis`
  - Added `LocationIndicatorActive` : An indicator allowing an operator to physically locate this resource.

- `#ComputerSystem.v1_13_0.ComputerSystem` updated to `#ComputerSystem.v1_17_0.ComputerSystem`
  - Added `LocationIndicatorActive`: An indicator allowing an operator to physically locate this resource.

- `#Drive.v1_7_0.Drive` updated to `#Drive.v1_14_0.Drive`
  - Added `LocationIndicatorActive`: An indicator allowing an operator to physically locate this resource.

- `#ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol`
  - Added `Oem.Hpe.SMTPForTFAEnabled`: Indicates whether SMTP for [Two Factor Authentication](/docs/redfishServices/ilos/supplementDocuments/tfa.md) is enabled.

## iLO 5 2.90 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- `#HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet` updated to `#HpeComponentInstallSet.v1_2_0.HpeComponentInstallSet`

- `#HpeComponentUpdateTask.v1_2_0.HpeComponentUpdateTask` updated to `#HpeComponentUpdateTask.v1_3_0.HpeComponentUpdateTask`

- `#HpeiLOSnmpService.v2_3_0.HpeiLOSnmpService` updated to `#HpeiLOSnmpService.v2_4_0.HpeiLOSnmpService`
  - Added `SNMPv1RequestsEnabled` and `SNMPv1TrapEnabled` to indicate if the SNMPv1 Queries and SNMPv1 Traps are enabled respectively.
  - Added `SNMPv3RequestsEnabled` and `SNMPv3TrapEnabled` to indicate if the SNMPv3 Queries and SNMPv3 Traps are enabled respectively.

- `#Chassis.v1_11_2.Chassis`
  - `Oem.Hpe.ChassisACPowerWatts` is renamed to `Oem.Hpe.ChassisInputPowerWatts`.

- `#SessionService.v1_0_0.SessionService`
  - Added `SessionTimeout` : This is the number of seconds of inactivity that a session may have before the session service closes the session. Here the value `0` means no timeout or infinite timeout.

## iLO 5 2.81 new features and changes

### New URIs

- No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- No HTTP methods changed across this release.

### Deprecated URIs

- No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- No changes have been made to supported Redfish Actions for this release.

### Schema Updates

- No schema updates for this release.

## iLO 5 2.78 new features and changes

### New URIs

No new URIs added for this release.

### HTTP Methods - Additions and Deprecations

- Added PATCH for `redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}}`

### Deprecated URIs

No URIs deprecated for this releases.

- `#HpeRemoteSupport.v2_6_0.HpeRemoteSupport`
  - `HpeRemoteSupport.CompleteDirectConnectRegistration`: There are no parameters for this action.

### Miscellaneous Information

- `#HpeSecurityService.v2_3_1.HpeSecurityService`
  - `TLSVersion.TLS1_0` and `TLSVersion.TLS1_1` can be modified with a `PATCH` request.

### Schema Updates

- `#Chassis.v1_11_2.Chassis`
Added `Oem.Hpe.ChassisACPowerWatts` : The total AC input power consumed by the chassis and nodes.

- `#EventDestination.v1_0_0.EventDestination` updated to `#EventDestination.v1_4_5.EventDestination`
  - Added `SubscriptionType`: The subscription type for events. The following value is supported: `RedfishEvent` 

- `#EventService.v1_0_8.EventService` updated to `#EventService.v1_2_7.EventService`

- `## PCIeDevice.v1_5_0.PCIeDevice`
  - Added `AssetTag`:The user-assigned asset tag for this PCIe device.

- `Thermal.v1_7_1.Thermal`
  - Added `Temperatures[{item}].Oem.Hpe.MainSensorName`: Sensor name of main temperature sensor that has atleast one sub sensor

- `ComputerSystem.v1_13_0.ComputerSystem`
    - `BootOrder`: `Read Only` set to `True`.

- `EthernetInterface.v1_4_1.EthernetInterface`
  - `Oem.Hpe.IPv4.DNSServers`: `Read Only` set to `True`

- `#SoftwareInventory.v1_2_0.SoftwareInventory`
  - Added `Oem.Hpe.Version`: NVIDIA CEC Firmware version

## iLO 5 2.72 new features and changes

### New URIs

- `/redfish/v1/Systems/{@systemId}/LogServices/DPU` (GET,POST) `#LogService.v1_1_0.LogService` - The resource contains properties for monitoring and configuring an event log service for the resource or service to which it is associated.

- `/redfish/v1/Systems/{@systemId}/LogServices/DPU/Entries` (GET,POST) `#LogEntryCollection.LogEntryCollection` - A Collection of LogEntry resource instances.

- `/redfish/v1/Systems/{@systemId}/LogServices/DPU/Entries/{@entriesId}` (GET,PATCH) `#LogEntry.v1_11_0.LogEntry` - Defines the record format of a log.

### Miscellaneous Changes

iLO 5 v2.72 supports enabling and disabling of HTTP and HTTPS ports separately using Redfish APIs. Ensure you enable both HTTP and HTTPS, if you want to downgrade the firmware below iLO 5 v2.72, else the web server will not start.

### HTTP methods - additions and deprecations

- Added PATCH for `/redfish/v1/Managers/{@managerId}/BackupRestoreService`
- Added PATCH, POST for `/redfish/v1/Systems/{@systemId}/EthernetInterfaces/{@nicId}`

### Deprecated URIs

No URIs deprecated for this release.

:::info NOTE
 From iLO 5 2.72 release, HPE `Insight Online direct connect` is deprecated. HPE supports only `Insight Remote Support central connect`. If you are using HPE `Insight Online direct connect`, HPE recommends to unregister `Insight Online direct connect` and register with `Insight Remote Support central connect`. For more information, refer to the `HPE embedded remote support section` of the <a href="https://www.hpe.com/support/ilo5-ug-en" target="_blank">HPE iLO 5 2.72 User Guide</a>.
:::

`#HpeRemoteSupport.v2_6_0.HpeRemoteSupport`

- `ConnectModel` (the Remote Support connect model type) will not support the value of `DirectConnect`.
- `DataCollectionFrequencyInDays` (the frequency of data collection in days. This is applicable only when the server is registered using Direct Connect.) will not apply as HPE `Insight Online direct connect`is deprecated in this release.
- `DirectConnectRegistrationIsCompleted` (Step 2 of Direct Connect Registration completion status) will not apply as HPE recommends to unregister HPE `Insight Online direct connect` and HPE `Insight Online direct connect`is deprecated in this release.
- `HpeRemoteSupport.CompleteDirectConnectRegistration`: There are no parameters for this action, but this action is not applicable when HPE `Insight Online direct connect`is deprecated in this release.
- `HpeRemoteSupport.RegisterDeviceToRemoteSupport`: This action includes `ConnectionType (string)`as a parameter. But, `ConnectionType (string)` will not support the value `DirectConnect`.

### Redfish actions - additions and deprecations

No changes have been made to supported Redfish Actions for this release.

### Schema updates

- `#HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService`
  - Added `CustomBackupandRestore`: The property indicates whether the custom backup and restore is enabled.
  
- `#HpeSecurityService.v2_3_1.HpeSecurityService`
  - Added `TLSVersion`: The property allows you to enable/disable specific TLS versions and display the status of TLS versions in all the security states.

- `#ServiceRoot.v1_5_1.ServiceRoot`
  - Added `Oem.Hpe.CACLoginUri`: URI for the CAC based authentication.

- `#Chassis.v1_10_2.Chassis` updated to `#Chassis.v1_11_2.Chassis`
  - Added `Location`: An object that contains the following properties such as `PartLocation` and `Placement`.

- `#ComputerSystem.v1_10_0.ComputerSystem` updated to `#ComputerSystem.v1_13_0.ComputerSystem`
  - Added `BootProgress` : Provides information about SmartNIC device operating system booting and operating system services. The property includes `LastState` and `OemLastState`. `LastState` - SmartNIC device operating system status with values such as `OSBootStarted` (the operating system has started booting), `OSRunning` (the operating system is running), and `OEM` (the operating system state which is reported in the `OemLastState` property). `OemLastState` - SmartNIC device operating system Oem status with values such as `OSServicesReady` (the operating system services are ready), `OSServicesOffline` (the operating system services are offline), `OSHalting` (the operating system has started halting), and `OSHalted` (the operating system has performed a shutdown).
  - Added `Oem.Hpe.AvailableSystemCapabilities (array)`: `AvailableSystemCapabilities` is an array that indicates SmartNIC DPU supports to OS-triggered DPC with the supported value `OStriggeredDPC`.
  - Added `Oem.Hpe.BootProgress`: The property includes `OemResetReason` (the Smart NIC Device Operating system Oem reset reason) and `ResetReason` (the Smart NIC Device Operating system reset reason).
  - Added `Oem.Hpe.EnabledSystemCapabilities (array)`: `EnabledSystemCapabilities` is an array that indicates SmartNIC DPU supports to OS-triggered DPC with the supported value `OStriggeredDPC`.
  - Added `Oem.Hpe.IntegrationConfig`: `OsReadyTimeout` is the property of type `integer` and `Read Only` set to `false`.
  - Added `Oem.Hpe.OperatingSystem`: An object to find SmartNIC device operating system kernel version and `Kernel.Version` is the property. 
  - Added the supported values `PoweringOn` and `PoweringOFf` to the `PowerState` property (the current power state of the system) in addition to `null`, `On`, `Off`, and `Reset` in the `PowerState` property.
  - Added `DPU` (`SmartNIC DPU System`) to the `SystemType` property (the type of computer system that the resource represents) in addition to `Physical` (a computer system), `Virtual` (a virtual machine instance running on the system), `OS` (an operating system instance), `PhysicallyPartitioned` (a hardware-based partition of a computer system), `VirtuallyPartitioned` (a virtual or software-based partition of a computer system).

- `#HpeServerDevice.v2_0_0.HpeServerDevice` updated to `#HpeServerDevice.v2_1_0.HpeServerDevice`
  - Added `FirmwareVersion.FirmwareVersions (array)`: `FirmwareVersions` is an array that contains the properties `ComponentName` and `VersionString` for the name and the version string of GPU cores.

- `#LogService.v1_0_0.LogService` updated to `#LogService.v1_1_0.LogService`
  - Added `DateTime`: The current date and time, with UTC offset, that the `LogService` uses to set or read time.
  - Added `DateTimeLocalOffset`: The UTC offset that the current `DateTime` property value contains in the `+HH:MM` format.
  - Added `ServiceEnabled`: Indicates whether the `LogService` is enabled.

- `#PCIeDevice.v1_4_0.PCIeDevice` updated to `#PCIeDevice.v1_5_0.PCIeDevice`
  - Added `Oem.Hpe.FirmwareVersion (array)`: `FirmwareVersion` is an array that contains the properties `ComponentName` and `VersionString` for the name and the version string of GPU cores.

- `#Thermal.v1_6_2.Thermal` updated to `#Thermal.v1_7_1.Thermal`
  - Updated `PhysicalContext` in `Temperatures`: `Temperatures` is an array and the `PhysicalContext` property is updated with the following values such as `LiquidInlet`, `LiquidOutlet`, `CPUSubsystem`, `GPUSubsystem`, `FPGA`, `Accelerator`, `ASIC`, `PowerSubsystem`, `Rectifier`, `Memory`, `MemorySubsystem`, `Chassis`, `Fan`, `CoolingSubsystem`, `Motor`, `Transformer`, `ACUtilityInput`, `ACStaticBypassInput`, `ACMaintenanceBypassInput`, `DCBus`, `ACOutput`, `ACInput`, `TrustedModule`, `Board`, `Transceiver`, `Battery`, and `Pump`.

- `#UpdateService.v1_1_1.UpdateService` updated to `#UpdateService.v1_2_1.UpdateService`
  - Added `BundleDowngradeSupport`: Indicates whether iLO supports downgrade capability for cloud based updates to the `Oem.Hpe.Capabilities` property.
  - Added `OfflineRuntimeBundleUpdate`: Indicates whether iLO supports offline type D installation. The supported values are `ProductionMode`, `ProductionAndHighSecurityMode`, and `AllModes` to the `Oem.Hpe.Capabilities` property.

- `#VirtualMedia.v1_2_0.VirtualMedia` updated to `#VirtualMedia.v1_3_0.VirtualMedia`
  - Added `TransferProtocolType` property and `TransferProtocolType (string)` attribute: Supported Network Protocols to use with the image such as `CIFS` - Common Internet File System protocol, `FTP` - File Transfer Protocol, `SFTP` - Secure File Transfer Protocol, `HTTP` - Hypertext Transfer Protocol, `HTTPS`- HTTP Secure protocol.|, `NFS`- Network File System protocol, `SCP` - Secure File Copy protocol, `TFTP` - Trivial File Transfer Protocol, `OEM` - A protocol defined by the manufacturer.

- `#HpeComputerSystemExt.v2_11_0.HpeComputerSystemExt`
  - From iLO 5 v2.72, the `Links` to the `PCIDevices` is an array and no longer an object.

  ```json Before iLO 5 v2.72
    "Oem": {
            "Hpe": {
              "Links": {
                "PCIDevices": {
                  "@odata.id": "/redfish/v1/Systems/1/PCIDevices/"
                },
              },
            }
          },
  ```

  ```json From iLO 5 v2.72 onwards
    "Oem": {
            "Hpe": {
              "Links": {
                "PCIDevices": [
                  {
                    "@odata.id": "/redfish/v1/Systems/1/PCIDevices/"
                  }
                ]
              },
            }
          },
  ```

### RDE support changes

Added Redfish Device Enablement ([RDE](/docs/redfishservices/ilos/supplementdocuments/rdesupport/#redfish-device-enablement-rde-support)) support for the following URIs and HTTP methods:

- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@controllerId}` (PATCH)
- `/redfish/v1/Systems/{@systemId}/EthernetInterfaces/{@nicId}` (PATCH, POST)

## iLO 5 2.70 new features and changes

### New URIs

- `/redfish/v1/Systems/{@systemId}/LogServices/Event/Entries` (GET,POST) `#LogEntryCollection.LogEntryCollection` - A Collection of LogEntry resource instances.

- `/redfish/v1/Systems/{@systemId}/LogServices/Event/Entries/{@entriesId}` (GET) `#LogEntry.v1_11_0.LogEntry` - Defines the record format of a log. 

- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers` (GET) `#StorageControllerCollection.StorageControllerCollection` - A Collection of Storage resource instances.

- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@StorageControllerId}` (GET) `#StorageController.v1_0_0.StorageController` - Describes a storage controller and its properties. The storage controller represents a physical or virtual storage device that produces volumes.
  - `AssetTag`: The user-assigned asset tag for the storage controller.
  - `CacheSummary`: The portion of the cache memory that is persistent, measured in MiB.
  - `ControllerRates`: An object that contains the following properties such as `ConsistencyCheckRatePercent` (The percentage of controller resources used for performing a data consistency check on volumes), `RebuildRatePercent` (the percentage of controller resources used for rebuilding/repairing volumes), and `TransformationRatePercent` (the percentage of controller resources used for transforming volumes from one configuration to another).
  - `FirmwareVersion`: The firmware version of the storage controller.
  - `Identifiers (array)`: An array that contains the following properties such as `DurableName` (the world-wide, persistent name of the resource) and `DurableNameFormat` (the format of the durable name property).
  - `Location`: An object that contains the following properties such as `PartLocation` and `Placement`.
  - `Manufacturer`: The manufacturer of the storage controller.
  - `Model`: The model number of the storage controller.
  - `PCIeInterface`: An object that contains the following properties such as `LanesInUse` (the number of PCIe lanes in use by the device), `MaxLanes` (the number of PCIe lanes that are supported by the device), `MaxPCIeType` (the highest version of the PCIe specification supported by the device), and `PCIeType` (the version of the PCIe specification in use by the device).
  - `PartNumber`: The part number for the storage controller.
  - `SKU`: The SKU for the storage controller.
  - `SerialNumber`: The serial number for the storage controller.
  - `SpeedGbps`: The maximum speed of the storage controller's device interface.
  - `SupportedControllerProtocols (array)`: An array that contains the supported controller protocols such as `SAS`, `NVMe`, `SATA`, `USB`, and `PCIe`.
  - `SupportedDeviceProtocols (array)`: An array that contains the supported device protocols such as `SAS`, `NVMe`, `SATA`, `USB`, and `PCIe`.
  - `SupportedRAIDTypes (array)`: An array that contains the supported RAID types.

### HTTP methods - additions and deprecations

No changes have been made to HTTP methods in this release.

### Deprecated URIs

No URIs deprecated for this release.

### Redfish actions - additions and deprecations

No changes have been made to supported Redfish actions in this release.

### Schema updates

- Added `StorageController.v1_0_0.StorageController`: Describes a storage controller and its properties. The storage controller represents a physical or virtual storage device that produces volumes.

- `#LogEntry.v1_1_0.LogEntry` updated to `#LogEntry.v1_11_0.LogEntry`:
  - Added `EventId`: The unique instance identifier for an event.
  - Added `EventTimestamp`: The date and time when the event occurred.
  - Added `MessageId` to `MessageArgs (array)`: The property decodes from the entry type to the following such as `MessageId`, `Event Data`, or `OEM-specific information`. If the entry type is `Event`, the property contains a `Redfish Specification-defined MessageId`. If the entry type is `SEL`, the property contains the `Event Data`. Otherwise, the property contains `OEM-specific information`.
  - Added `Oem.Hpe.ServiceEvent`: The property indicates a service ticket to be raised for the corresponding event log.
  - Added `Hpe-Event` in addition to `Hpe-IML`, `Hpe-iLOEventLog`, and `Hpe-SL` to the format of an OEM record property `OemRecordFormat`.

- `#Storage.v1_7_1.Storage` updated to `#Storage.v1_12_0.Storage`:
  - Added `Controllers`: The set of controllers instantiated by the storage subsystem.
  - Added `iQN` (The iSCSI Qualified Name), `FC_WWN` (the Fibre Channel(FC) World Wide Name(WWN)), `NQN` (the NVMe Qualified Name), `NGUID` (the Namespace Globally Unique Identifier) as supported values in addition to the Name Address Authority (`NAA`) format, the IEEE-defined 64-bit Extended Unique Identifier (`EUI`), the Universally Unique Identifier (`UUID`) to the format of the durable name property `DurableNameFormat` in `Identifiers (array)` for storage controllers.

- `#Drive.v1_7_0.Drive`:
  - Added `iQN` (the iSCSI Qualified Name), `FC_WWN` (the Fibre Channel(FC) World Wide Name(WWN)), `NQN` (the NVMe QualifiedName), `NGUID` (the Namespace Globally Unique Identifier) as supported values in addition to the Name Address Authority (`NAA`) format, the IEEE-defined 64-bit Extended Unique Identifier (`EUI`), the Universally Unique Identifier (`UUID`) to the format of the durable name property `DurableNameFormat`.

- `#Manager.v1_5_1.Manager`:
  - Added `OverrideManager (boolean)`: The property is used to override the existing manager. For example, `HPE OneView`.

- `#NetworkAdapter.v1_5_0.NetworkAdapter`, `#NetworkDeviceFunction.v1_5_0.NetworkDeviceFunction`, `#NetworkPort.v1_2_5.NetworkPort`, and `#Port.v1_5_0.Port`:
  - Added `@Redfish.Settings`: Reference to the resource that represents the settings to apply to this object. The `Settings` object property under it displays the settings URI on which user can perform `PUT` or `PATCH` to change config settings. The pending configuration, in most cases, will require some action to be performed for the config change to be applied. For example, changes to the `BIOS` configuration require a system reset before they take effect. For more information, see [Redfish Specification DSP0266](https://www.dmtf.org/dsp/DSP0266).

- `#UpdateService.v1_1_1.UpdateService`: The UpdateService resource describes the Update Service. The resource represents the properties for the service itself and has links to the collections of firmware and software inventory.
  - Added `OfflineRuntimeBundleUpdate`: Indicates whether iLO supports offline type D installation. The supported values are `ProductionMode`, `ProductionAndHighSecurityMode`, and `AllModes`.

### RDE support changes

Added Redfish Device Enablement ([RDE](/docs/redfishservices/ilos/supplementdocuments/rdesupport/#redfish-device-enablement-rde-support)) support for the following URIs and HTTP methods:

- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/` (GET)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@controllerId}` (GET)

## iLO 5 2.65 new features and changes

### New URIs

`#Port.v1_5_0.Port` - The HPE iLO 5 Redfish service implements the Port schema in this release as the NetworkPort schema will be deprecated in favor of the Port schema. The NetworkPort URIs will work as expected for all future releases from iLO 5 v2.65.

The following resource instances are added in this schema:

- `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/Ports/{@portId}` (GET,PATCH,POST)
- `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/Ports/{@portId}/Settings` (GET,PATCH): The Settings object returns pending configuration changes on GET, and is used to initiate configuration changes using PATCH.
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@ControllerId}/Ports/{@portId}` (GET,PATCH)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/StorageControllers/{@StorageControllerId}/Ports/{@portId}` (GET,PATCH)
- `redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/Ports/{@portId}` (GET,PATCH,POST)
- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/Ports/{@portId}/Settings` (GET,PATCH): The Settings object returns pending configuration changes on GET, and is used to initiate configuration changes using PATCH.

`#Port.v1_5_0.Port` includes the following properties:

- `ActiveWidth`: The number of active lanes for the interface.
- `CapableProtocolVersions (array)` - `CapableProtocolVersions`: An array that contains the following properties: `CurrentProtocolVersion`, `CurrentSpeedGbps`, and `Enabled`.
- `Ethernet`:
  - `Ethernet.AssociatedMACAddresses (array)`-`AssociatedMACAddresses`: An array that contains the following `Ethernet` properties: `EEEEnabled`, `FlowControlConfiguration`, `FlowControlStatus`, `LLDPEnabled`, `LLDPReceive` object that contains information such as `LLDPReceive.ChassisId`, `LLDPReceive.ChassisIdSubtype` , `LLDPReceive.ManagementAddressIPv4`, `LLDPReceive.ManagementAddressIPv6`, `LLDPReceive.Ethernet.ManagementAddressMAC`, `LLDPReceive.ManagementVlanId`, `LLDPReceive.PortId`, `LLDPReceive.PortIdSubtype`, `LLDPTransmit` object that contains information such as `LLDPTransmit.ChassisId`, `LLDPTransmit.ChassisIdSubtype`, `LLDPTransmit.ManagementAddressIPv4`, `LLDPTransmit.ManagementAddressIPv6`, `LLDPTransmit.ManagementAddressMAC`, `LLDPTransmit.ManagementVlanId`, `LLDPTransmit.PortId`, `LLDPTransmit.PortIdSubtype`, and `WakeOnLANEnabled`.
- `FibreChannel`:
  - `FabricName`, `NumberDiscoveredRemotePorts` and `PortConnectionType`.
- `FunctionMaxBandwidth (array)` - `FunctionMaxBandwidth`: An array that contains the following properties: `FunctionMaxBandwidth[{item}].AllocationPercent` and `FunctionMaxBandwidth[{item}].NetworkDeviceFunction`.
- `FunctionMinBandwidth (array)` - `FunctionMinBandwidth`: An array that contains the following properties: `FunctionMinBandwidth[{item}].AllocationPercent` and `FunctionMinBandwidth[{item}].NetworkDeviceFunction`.
- `InterfaceEnabled`: An indication of whether the interface is enabled.
- `LinkConfiguration (array)`: The link width in conjunction with the link speed properties to be used for auto negotiation. `LinkConfiguration`is an array that contains the following properties: 
  - `LinkConfiguration[{item}].AutoSpeedNegotiationCapable`, `LinkConfiguration[{item}].AutoSpeedNegotiationEnabled`, `LinkConfiguration[{item}].CapableLinkSpeedGbps (array)` - `CapableLinkSpeedGbps`: An array that contains the following property: `ConfiguredNetworkLinks[{item}].ConfiguredLinkSpeedGbps`, and `LinkConfiguration[{item}].ConfiguredNetworkLinks (array)`- `ConfiguredNetworkLinks`: An array that contains the following property: `ConfiguredNetworkLinks[{item}].ConfiguredWidth`.
- `LinkNetworkTechnology`: The link network technology capabilities of the port.
- `LinkState`: The preferred link state of the interface.
- `LinkStatus`: The preferred link status of the interface.
- `LinkTransitionIndicator`: The number of link state transitions for the interface.
- `Location`: Represents the part location, location type, and so on.
  - `Location.PartLocation` and `Location.PartLocation.LocationOrdinalValue`: The number that represents the location of the part. If LocationType is `slot` and the unit is in slot 2, the LocationOrdinalValue is 2. 
  - `Location.PartLocation.LocationType`, `Location.PartLocation.Orientation`, `Location.PartLocation.Reference`, and `Location.PartLocation.ServiceLabel`. 
  - `Location.Placement`, `Location.Placement.AdditionalInfo`, `Location.Placement.Rack`, `Location.Placement.RackOffset`, `Location.Placement.RackOffsetUnits`, and `Location.Placement.Row`.
- `LocationIndicatorActive`: An indicator that allows an operator to locate the resource physically.
- `MaxFrameSize`: The maximum frame size supported by the port.
- `MaxSpeedGbps`: The port's maximum speed as configured.
- `Oem.Hpe` - HPE OEM properties:
  - `Evb`: Edge Virtual Bridging (EVB) information for the port.
  - `EvbData`: An object contains information such as `Receiving` object, `SChannelAssignments` object, and `Transmitting` object.
  - `Lldp`: Link-Layer Discovery Protocol (LLDP) information for the port.
  - `LldpData`: Link-Layer Discovery Protocol (LLDP) data for the port. An object that contains information such as `Receiving` object, and `Transmitting` object.
  - `AutoNegotiationCapable`: Indicates the ability of the network port to automatically negotiate link speed.
  - `ConfiguredNetworkLinks (array)`- `ConfiguredNetworkLink`: An array that contains the following properties: `ConfiguredNetworkLinks[{item}].ConfiguredLinkSpeedGbps` and `ConfiguredNetworkLinks[{item}].ConfiguredWidth`.
  - `PortDiagnosticEnableLocalLoopback`: When true, local loopback is active on the port. `Oem.Hpe.PortDiagnosticsEnabled` (When true, diagnostic features are enabled on the port) must first be true in order to set the property to true.
  - `PortDiagnosticEnableRemoteLoopback`: When true, remote loopback is active on the port. `Oem.Hpe.PortDiagnosticsEnabled` (When true, diagnostic features are enabled on the port) must first be true in order to set the property to true.
  - `PortDiagnosticLocalLoopbackCapable`: When true, the port has local loopback capability.
  - `PortDiagnosticRemoteLoopbackCapable`: When true, the port has remote loopback capability.
  - `PortDiagnosticsEnabled`: When true, diagnostic features are enabled on the port.
  - `VirtualFunctionAllocations (array)`- `VirtualFunctionAllocation`: An array that contains the following properties: `VirtualFunctionAllocations[{item}].NetworkDeviceFunction` and `VirtualFunctionAllocations[{item}].VirtualFunctionsAllocated`.
- `PortId`: The label on the physical package of the port.
- `PortMedium`: The physical connection medium for the port.
- `PortProtocol`: The protocol being sent over the port.
- `PortType`: The type of the port.
- `Settings`: Reference to the resource the client may use PUT/PATCH in order to change the resource.
- `SignalDetected`: Indicates whether a signal is detected at the interface.
- `Width`: The number of lanes, phys, or other physical transport links that the port contains.

`#PortCollection.PortCollection` - A Collection of NetworkPort resource instances.

The following resource instances are added in this schema:

- `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/Ports` (GET)
- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/Ports` (GET,PATCH,POST)

`#SerialInterfaceCollection.SerialInterfaceCollection`

The following resource instance is added in this schema:

- `/redfish/v1/Managers/{@managerId}/SerialInterfaces` (GET): The resource to a collection of serial interfaces that the manager uses for serial and console communication.

`#SerialInterface.v1_1_7.SerialInterface`

The following resource instance is added in this schema:

- `/redfish/v1/Managers/{@managerId}/SerialInterfaces/{@sInterfaceId}` (GET,PATCH):
  - `InterfaceEnabled`: An indication of whether the interface is enabled.
  - `BitRate`: A measure of the rate at which data is received and transmitted over serial connections, specified as bits per second (bit/s).

### HTTP methods - additions and deprecations

No changes have been made to HTTP methods for this release.

### Deprecated URIs

- `/redfish/v1/Managers/{@managerId}/SerialInterface`
- `/redfish/v1/Managers/{@managerId}/SerialInterface/{@sInterfaceId}`

### Redfish actions - additions and deprecations

No changes have been made to supported Redfish actions for this release.

### Schema updates

- `#HpeServerPCISlot.v2_1_0.HpeServerPCISlot` updated to `#HpeServerPCISlot.v2_1_1.HpeServerPCISlot`:
  - Supports `PCIExpressGen5` technology.
- `#NetworkAdapter.v1_4_0.NetworkAdapter` updated to `#NetworkAdapter.v1_5_0.NetworkAdapter`:
  - Added `Ports`: A reference to the collection(s) of physical network ports associated with the network adapter controller.
- `#NetworkDeviceFunction.v1_3_0.NetworkDeviceFunction` updated to `#NetworkDeviceFunction.v1_5_0.NetworkDeviceFunction`:
  - Added `AssignablePhysicalNetworkPorts (array)`: An array of references to the physical ports which may be assigned to the network device function.
  - Added `PhysicalNetworkPortAssignment`: The physical port to which the network device function is currently assigned.
  - Added `PhysicalPortAssignment`: A reference to the physical port currently assigned to the network device function.
- `#NetworkInterface.v1_1_1.NetworkInterface` updated to `#NetworkInterface.v1_2_0.NetworkInterface`:
  - Added `Ports`: A link to a collection of `membertype` ports. The collection of ports which are available on the network interface.
- `#ComputerSystem.v1_10_0.ComputerSystem` (`/redfish/v1/systems/{item}`): 
  - Added `Oem.Hpe.AggregateHealthStatus.AggregateServerHealth` : Represents the overall health state.
- `#ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol` (`/redfish/v1/managers/{item}/networkprotocol`): 
  - Added `Oem.Hpe.EnhancedDownloadPerformanceEnabled`: Indicates whether enhanced download for virtual media and firmware update is enabled or disabled. 
- `#ServiceRoot.v1_5_1.ServiceRoot` (`/redfish/v1/`):
  - Added `Manager[{item}].ExternalManager`: Reports the current external manager of the system.

### RDE support changes

Added Redfish Device Enablement ([RDE](/docs/redfishservices/ilos/supplementdocuments/rdesupport/#redfish-device-enablement-rde-support)) support for the following URIs and HTTP methods:

- `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/Ports` (GET)
- `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/Ports/{@portId}` (GET, PATCH, POST )
- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/Ports` (GET, PATCH, POST)
- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/Ports/{@portId}` (GET, PATCH, POST)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@ControllerId}/Ports/{@portId}` (GET, PATCH)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/StorageControllers/{@StorageControllerId}/Ports/{@portId}` (GET, PATCH)

## iLO 5 2.60 new features and changes

### New URIs

- `HpeAutomaticCertEnrollment` (`/redfish/v1/Managers/{@managerId}/SecurityService/AutomaticCertificateEnrollment` (GET, PATCH, POST)) - the `HpeAutomaticCertEnrollment` schema supports obtaining and renewing SSL certificate automatically using the Simple Certificate Enrollment Protocol (SCEP).
  - `AutomaticCertificateEnrollmentSettings` - the `HPEAutomaticCertEnrollment` resource describes the features of Automatic Certificate Enrollment.
    - `AutomaticCertificateEnrollmentSettings.CACertificateName` - name of imported CA(Certificate Authority) Certificate which is used to sign the SSL certificate.
    - `AutomaticCertificateEnrollmentSettings.CertificateEnrollmentStatus` - Enrollment Status of SSL certificate.
    - `AutomaticCertificateEnrollmentSettings.ChallengePassword` - Challenge Password required to complete certificate Enrollment.
    - `AutomaticCertificateEnrollmentSettings.ServerUrl` - Link to Certificate Enrollment Server.
    - `AutomaticCertificateEnrollmentSettings.ServiceEnabled` - indicates whether the Automatic Certificate Enrollment(ACE) service is enabled.
    - `HttpsCertCSRSubjectValue(object)` - city, state, and country code of the organization or company that owns the iLO subsystem, the FQDN of the iLO subsystem, IP addresses in the CSR, along with the unit.

### HTTP methods - additions and deprecations

- Added POST for `/redfish/v1/Chassis/{@ChassisId}/Thermal`
- Added POST for `/redfish/v1/Systems/{@systemId}/Storage/`
- Added POST for `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes/`

### Deprecated URIs

No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- `HpeAutomaticCertEnrollment.v1_0_0.HpeAutomaticCertEnrollment`
  - `Import CA Certificate` - defines a property to import a CA Certificate in `HpeAutomaticCertEnrollment` resource.

### Schema updates

- `Memory.json` (`/redfish/v1/systems/{item}/memory/{item}`): A memory module is described by a Memory schema.
  - `DIMMManufacturingDate` - added date of manufacturing of the module in YYWW (year and week) format in the memory resource.

- `HpeiLOLicense.json` (`/redfish/v1/managers/{item}/licenseservice/{item}`): The License schema describes how to manage BMC licenses based on properties.
  - `AutoCertEnroll` - the property enables automatic certificate enrolment and included in HPE iLO License resource.

- `Thermal.json` (`/redfish/v1/chassis/{item}/thermal`): The Thermal schema defines the thermal metrics associated with the system. In other words, it represents the temperature and cooling properties of the system.
  - `CriticalTempUserThreshold` - temperature threshold value specified by the user that triggers a critical alert. This property is included in thermal resource.
  - `WarningTempUserThreshold` - temperature threshold value that the user sets for the sensor resulting in a warning alert. This property is added inside thermal resource.
  - `SetUserTempThreshold` - a user-defined temperature threshold for a PCIe slot temperature sensor. This action is included in thermal resource.

## iLO 5 2.55 new features and changes

### New URIs

No changes have been made to new URIs for this release.

### Deprecated URIs

No URIs deprecated for this release.

### Schema updates

- `#Drive.v1_1_0.Drive` updated to `#Drive.v1_7_0.Drive`
- `#Storage.v1_5_0.Storage` updated to `#Storage.v1_7_1.Storage`

### RDE support changes

Added Redfish Device Enablement ([RDE](/docs/redfishservices/ilos/supplementdocuments/rdesupport/#redfish-device-enablement-rde-support)) support for the following URIs and HTTP methods:

- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces` (GET)
- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}` (GET)
- `/redfish/v1/Systems/{@systemId}/EthernetInterfaces` (GET)
- `/redfish/v1/Systems/{@systemId}/EthernetInterfaces/{@nicId}` (GET)
- `/redfish/v1/Chassis/{@chassisId}/PCIeDevices` (GET)
- `/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}` (GET)
- `/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions` (GET)
- `/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions/{@PCIeFunctionId}` (GET)
- `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}` (PATCH, POST)
- `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkDeviceFunctions/{@pfId}` (PATCH, POST)
- `/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}` (PATCH, POST)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}` (PATCH, POST)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}` (PATCH, POST)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes/{@volumeId}` (PATCH, POST, DELETE,)
- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkDeviceFunctions/{@pfId}` (PATCH, POST)
- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts` (PATCH)
- `/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}/NetworkPorts/{@portId}` (PATCH)

## iLO 5 2.42 new features and changes

### New URIs

- `/redfish/v1/CertificateService` (GET, POST)
- `/redfish/v1/CertificateService/CertificateLocations` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/PlatformCert/Certificates` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/PlatformCert/Certificates/{@certId}` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIAK/Certificates` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIAK/Certificates/{@certId}` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIDevID/Certificates` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIDevID/Certificates/{@certId}` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/iLOIDevID/Certificates` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/iLOIDevID/Certificates/{@certId}` (GET)
- `/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates` (GET, POST)
- `/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates/{@certId}` (DELETE, GET)

### HTTP methods - additions and deprecations

No changes have been made to HTTP methods for this release.

### Deprecated URIs

No URIs deprecated for this release.

### Redfish actions - additions and deprecations

- Added `/redfish/v1/CertificateService/Actions/CertificateService.GenerateCSR`
- Added `/redfish/v1/Managers/1/ActiveHealthSystem/Actions/HpeiLOActiveHealthSystem.LogMilestone`
- Added `/redfish/v1/Managers/1/ActiveHealthSystem/Actions/HpeiLOActiveHealthSystem.CaptureSystemLog`

### Schema updates

The schema versions listed below correspond to iLO’s schemas which are not aligned to DMTF’s standard Redfish schemas versioning.

- `#HpePowerMetricsExt.v2_2_0.HpePowerMetricsExt` updated to `#HpePowerMetricsExt.v2_3_0.HpePowerMetricsExt`
- `#HpeSecurityService.v2_2_1.HpeSecurityService` updated to `#HpeSecurityService.v2_3_1.HpeSecurityService`
- `#HpeiLOActiveHealthSystem.v2_3_0.HpeiLOActiveHealthSystem` updated to `#HpeiLOActiveHealthSystem.v2_5_0.HpeiLOActiveHealthSystem`
- `#HpeiLODiagnostics.v2_2_2.HpeiLODiagnostics` updated to `#HpeiLODiagnostics.v2_3_0.HpeiLODiagnostics`
- `#NetworkPort.v1_2_0.NetworkPort` updated to `#NetworkPort.v1_2_5.NetworkPort`
- `#Processor.v1_0_0.Processor` updated to `#Processor.v1_7_2.Processor`
- `#SoftwareInventory.v1_0_0.SoftwareInventory` updated to `#SoftwareInventory.v1_2_0.SoftwareInventory`

## iLO 5 2.33 new features and changes

### New URIs

- `/redfish/v1/Chassis/{@chassisId}/PCIeDevices` (GET)
- `/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions` (GET)
- `/redfish/v1/Managers/{@managerId}/RemoteSupportService/ExtSettings` (GET, PATCH, POST)
- `/redfish/v1/Managers/{@managerId}/SerialInterface` (GET)
- `/redfish/v1/Managers/{@managerId}/SerialInterface/{@sInterfaceId}` (GET, PATCH)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}` (GET, PATCH, POST)
- `/redfish/v1/Systems/{@systemsId}/SecureEraseReportService` (GET, POST)
- `/redfish/v1/Systems/{@systemsId}/SecureEraseReportService/SecureEraseReportEntries` (GET)
- `/redfish/v1/Systems/{@systemsId}/SecureEraseReportService/SecureEraseReportEntries/{@entryId}` (GET)

### HTTP methods - additions and deprecations

- Added DELETE to `/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{@certId}`
- Added PATCH to `/redfish/v1/Chassis/{@ChassisId}/Thermal`

### Deprecated URIs

- `/redfish/v1/Chassis/{@chassisId}/Drives/{@driveId}`

### Redfish actions - additions and deprecations

- Added `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}/Actions/Drive.Reset`
- Added `/redfish/v1/Systems/1/SecureEraseReportService/Actions/HpeSecureEraseReportService.DeleteSecureEraseReport`

### Schema updates

The schema versions listed below correspond to iLO’s schemas which are not aligned to DMTF’s standard Redfish schemas versioning.

- `#AccountService.v1_3_0.AccountService` updated to `#AccountService.v1_5_0.AccountService`
- `#Chassis.v1_6_0.Chassis` updated to `#Chassis.v1_10_2.Chassis`
- `#ComputerSystem.v1_4_0.ComputerSystem` updated to `#ComputerSystem.v1_10_0.ComputerSystem`
- `#HpeNetworkPortEVB.v1_1_1.HpeNetworkPortEVB` updated to `#HpeNetworkPortEVB.v1_2_0.HpeNetworkPortEVB`
- `#HpeNetworkPortLLDP.v1_1_1.HpeNetworkPortLLDP` updated to `#HpeNetworkPortLLDP.v1_2_0.HpeNetworkPortLLDP`
- `#HpeRemoteSupport.v2_4_0.HpeRemoteSupport` updated to `#HpeRemoteSupport.v2_6_0.HpeRemoteSupport`
- `#HpeSecurityService.v2_2_0.HpeSecurityService` updated to `#HpeSecurityService.v2_2_1.HpeSecurityService`
- `#HpeiLOSnmpService.v2_2_0.HpeiLOSnmpService` updated to `#HpeiLOSnmpService.v2_3_0.HpeiLOSnmpService`
- `#ManagerAccount.v1_1_3.ManagerAccount` updated to `#ManagerAccount.v1_3_0.ManagerAccount`
- `#MemoryChunks.v1_2_2.MemoryChunks` updated to `#MemoryChunks.v1_2_3.MemoryChunks`
- `#NetworkAdapter.v1_3_0.NetworkAdapter` updated to `#NetworkAdapter.v1_4_0.NetworkAdapter`

### RDE support changes

Added Redfish Device Enablement ([RDE](/docs/redfishservices/ilos/supplementdocuments/rdesupport/#redfish-device-enablement-rde-support)) support for the following URIs and HTTP methods:

- `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters` (GET)
- `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}` (GET)
- `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkPorts` (GET)
- `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}` (GET)
- `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkDeviceFunctions` (GET)
- `/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkDeviceFunctions/{@pfId}` (GET)
- `/redfish/v1/Systems/{@systemId}/Storage/` (GET)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}` (GET)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}` (GET)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes` (GET)
- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes/{@volumeId}` (GET)

### BIOS Redfish changes (GEN 10 to GEN 10 Plus)

#### New URIs

- `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock` (GET)
- `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock/Settings` (GET, PATCH)
- `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock/Baseconfigs` (GET)
- `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig` (GET)
- `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig/Settings` (GET)
- `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig/Baseconfigs` (GET)

#### Migrated URIs

- `/redfish/v1/Systems/{item}/Bios/baseconfigs` moved to `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Baseconfigs`
- `/redfish/v1/Systems/{item}/Bios/boot` moved to `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot`
- `/redfish/v1/Systems/{item}/Bios/boot/Settings` moved to `/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot/Settings`

## iLO 5 2.30 new features and changes

- `AccountService.json` (`/redfish/v1/AccountService`)
  - `LDAP.Certificates`: Added a link to a collection of certificates used for the external account service.
- `Chassis.json` (`/redfish/v1/Chassis/{@ChassisId}/`)
  - `PCIeDevices`: Added a link to the `PCIeDeviceCollection` located in the chassis.
  - `PCIeSlots`: Added a link to the PCIe slot properties for the chassis.
- `Drive.json` (`/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}`)
  - `Drive.Reset`: Added action to reset a drive.
  - `IndicatorLED`: Added a state of the indicator LED.
- `HpeComputerSystemExt.json` (`/redfish/v1/Systems/{@systemId}`)
  - `CriticalTempRemainOff`: Added a property that indicates whether server should remain off after a thermal shutdown is triggered.
  - `PostState`: Added an enumerated type to `InPostDiscoveryStart` for a server that has started to discover devices.
- `HpeiLOServiceExt.json` (`/redfish/v1/root`)
  - `VNIC`: Added a virtual USB network interface to BMC name.
  - `SYSMGMT`: Added the System Management Experience property.
- `HpeiLOSnmpService.json` (`/redfish/v1/Managers/{@managerId}/SnmpService`)
  - `SNMPv1Enabled`: This new property indicates if the SNMPv1 protocol is enabled.
- `HpeiLOUpdateServiceExt.json` (`/redfish/v1/UpdateService`)
  - `Capabilities`: Added a property that indicates iLO support for various firmware update protocols.
  - `Capabilities.UpdateFWPKG`: Added a property inside `Capabilities`. The property indicates whether iLO supports FWPKG 2.0 firmware images.
  - `Capabilities.PLDMFirmwareUpdate`: Added a property inside `Capabilities`. The property indicates whether iLO supports PLDM firmware updates.
  - `Accept3rdPartyFirmware`: Added a property that enables or disables support for third-party firmware update packages.
- `HpeMemoryExt.json` (`/redfish/v1/Systems/{@systemId}/Memory`)
  - `PartNumber`: Added a property for the HPE product part number of the device.
- `HpeNetworkAdapter.json` (`/redfish/v1/Chassis/{@ChassisId}/NetworkAdapters/{​​​​@nicId}​​​​`)
  - `Controllers[x].RDMASupport`: Added `RDMASupport` to controller array. RDMA technology supported. [`RoCE`/`iWARP`].
  - `Controllers[x].UnderlyingDataSource`: Added `UnderlyingDataSource` to controller array. It is the protocol through which Redfish data is supplied for the adapter. [`RDE`/`DCi`]. Where x is the controller index.
- `HpeRemoteSupport.json` (`/Managers/{@managerId}/RemoteSupportService`)
  - `MessageId`: Added a property for a unique message identifier in UUID format used to match the registration with the request. It is returned in the submission package SOAP envelope header.
  - `ExternalAgentName`: Added a property for the name of the external remote support agent.
- `HpeServerPCISlot.json` (`/Systems/{@systemId}/PCISlots/{@PciSlotsId}`)
  - `Technology`: Added enumerated type `PCIExpressGen4`.
- `HpeThermalExt.json` (`/Chassis/{@ChassisId}/Thermal`)
  - `FanPercentMinimum`: Added a system-wide setting for fan speed minimum percentage.
  - `ThermalConfiguration`: Added a property that selects the fan cooling method for the system.
  - `OptimalCooling`: Added a property that provides the most efficient solution by configuring fan speeds to the minimum required to provide adequate cooling.
  - `IncreasedCooling`: Added a property that operates fans at a higher speed.
  - `MaximumCooling`: Added a property that provides the maximum cooling available for the system.
  - `EnhancedCooling`: Added a property that provides additional cooling to the processors, which can improve performance.
- `ManagerAccount.json` (`/redfish/v1/AccountService/Accounts/@AccountId`)
  - `PasswordChangeRequired`: Added a property that indicates that the password for the account must be changed. The service requires the password to be changed before access is allowed.
- `Storage.json` (`/Systems/{@systemId}/Storage/{@storageId}`)
  - `FirmwareVersion`: Added a property for the firmware version of the storage controller.
  - `Location`: Added a property for the location of the storage controller.
- `Thermal.json` (`/Chassis/{@ChassisId}/Thermal`)
  - `UpperThresholdUser`: Added a property for the user-given threshold values for inlet ambient temperature.
- `HpeRemoteSupportSettingsExt` (`/Managers/{@managerId}/RemoteSupportService/ExtSettings`)
  - `ChangeExternalControlMode`: Added an action to enable or disable remote support by external agent.
  - `RemoteSupportEnabled`: Added a property that indicates if the remote support service is available.
  - `ConnectModel`: Added the remote support connect model type `DirectConnect`/`CentralConnect`.
  - `AdditionalERSConfigurations`: Added a property that shows settings, such as IML mode, sending Active Health System (AHS) followed by a service event and the IML severity level in a `Get ERS` settings response.
  - `ImlMode`: Added a property that enables or disables the IML mode. It also indicates if the IML mode is enabled.
  - `ServiceEventAttachAHS`: Added a property that indicates if the AHS log transmission follows a service event.
  - `DirectConnectRegistrationIsCompleted`: Added a property for step 2 of Direct Connect Registration completion status.
  - `ExternalAgentName`: Added a property that indicates the name of the external remote support agent.
  - `IMLSeverityLevels`: Added a property that lists the IML severity levels available to Insight Remote Support (IRS).
- `HpeSecureEraseReport.json` (`/Systems/{@systemsId}/SecureEraseReportService/SecureEraseReportEntries/{@entryId}`) The new report describes the secure erase status and the other details of the devices during the secure system erase operation.
  - `DeviceType`: Added a property that indicates the device type being securely erased.
  - `EraseType`: Added a property that indicates the NIST SP800-88 Rev.1 (National Institute of Standards and Technology) approved techniques to sanitize a particular media or device.
  - `EraseStatus`: Added a property that indicates the secure erase status of the individual components.
  - `DeviceIdentifier`: Added a property that indicates the unique identifier for the device in the system like it's physical location or the exact device path etc.
  - `SerialNumber`: Added a property that indicates the serial number of the device being erased.
  - `EraseStartTime`: Added a property that indicates the date and time of the start of secure erase operation, ISO8601 Redfish-style time.
  - `EraseEndTime`: Added a property that indicates the date and time of the end of secure erase operation, ISO8601 Redfish-style time.
- `HpeSecureEraseReportService.json` (`/redfish/v1/Systems/{@systemsId}/SecureEraseReportService`)
  - `DeleteSecureEraseReport`: (`/redfish/v1/Systems/{@systemsId}/SecureEraseReportService/Actions/HpeSecureEraseReportService.DeleteSecureEraseReport`): Permanently removes the erase report in a secure manner and resets the management processor immediately.
  - `ServerSerialNumber`: Added a property that represents the server serial number.
  - `EraseInitiatedBy`: Added a property that indicates the user, who initiated the secure system erase process.
  - `Links`: Added a property that indicates the URIs to the resource related to `HpeSecureEraseReport`.
- `PCIeDevice.json` (`/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}`): It represents the properties of a PCIe Device attached to a System.
  - `DeviceType`: Added a property that indicates the device type for the PCIe device.
  - `FirmwareVersion`: Added a property that indicates the version of firmware for the PCIe device.
  - `Links`: Added a property that indicates the links to other resources that are related to the resource.
  - `Manufacturer`: Added a property that indicates the manufacturer of the PCIe device.
  - `Model`: Added a property that indicates the model number for the PCIe device.
  - `PCIeFunctions`: Added a property that indicates the link to the collection of PCIe functions associated with the PCIe device.
  - `PCIeInterface`: Added a property that that indicates the type that defines a PCI interface.
  - `PCIeInterface.LanesInUse`: Added a property that indicates the number of PCIe lanes in use by the device.
  - `PCIeInterface.MaxLanes`: Added a property that indicates the number of PCIe lanes supported by the device.
  - `PCIeInterface.MaxPCIeType`: Added a property that indicates the highest version of the PCIe specification supported by the device.
  - `PCIeInterface.PCIeType`: Added a property that indicates the version of the PCIe specification in use by the device.
  - `PartNumber`: Added a property that indicates the part number for the PCIe device.
  - `SKU`: Added a property that indicates the SKU for the PCIe device.
  - `SerialNumber`: Added a property that indicates the serial number for the PCIe device.
- `PCIeFunction.json` (`/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions/{@PCIeFunctionId}`): This new resource represents a PCIe function attached to a system.
  - `ClassCode`: Added a property that indicates the class code of the PCIe function.
  - `DeviceClass`: Added a property that indicates the class for the PCIe function.
  - `DeviceId`: Added a property that indicates the device ID of the PCIe function.
  - `FunctionId`: Added a property that indicates the PCIe function number.
  - `RevisionId`: Added a property that indicates the revision ID of the PCIe function.
  - `SubsystemId`: Added a property that indicates the subsystem ID of the PCIe function.
  - `SubsystemVendorId`: Added a property that indicates the subsystem vendor ID of the PCIe function.
  - `VendorId`: Added a property that indicates the vendor ID of the PCIe function.
- `PCIeSlots.json`: (`/Chassis/{@chassisId}/PCIeSlots`): The `PCIeSlots` schema describes PCIe slot properties.
  - `Slots`: Added a property that indicates the array of PCI Slot information.
  - `Slots.HotPluggable`: Added a property that indicates whether a PCIe slot supports a hotplug.
  - `Slots.Lanes`: Added a property that indicates the number of PCIe lanes supported by the slot.
  - `Slots.Location`: Added a property that indicates the location of the PCIe slot.
  - `Slots.PCIeType`: Added a property that indicates the PCIe specification supported by the slot.
  - `Slots.SlotType`: Added a property that indicates the PCIe slot type for a slot.
  - `Status`: Added a property that indicates the status of a PCIe slot.

## iLO 5 2.10 new features and changes

### Redfish features and fixes

- ComputerSystem (`/redfish/v1/Systems/{@systemsid}`) and sub-resources
  - Added `GracefulShutdown` to the `ComputerSystem` `ResetType` list - the performs a virtual button press if the system is on and does nothing if the system of off.
  - Added Redfish `BootOptions` for boot order management
  - Changed `ResetBios` action to not require a `ResetType` property to conform to the Redfish standard action, which is parameterless. NOTE: The Redfish client must still supply and empty JSON object `{}` as a request body.
  - Added `Status/HealthRollup` to `ComputerSystem` - the has the same value as `Health` and is provided for compatibility.
  - Added `InterfaceEnabled` to all host `EthernetInterfaces`
- Chassis (`/redfish/v1/Chassis/{@chassisid}`)
  - Added `IndicatorLED` property to `Chassis`
  - Added `PowerState` to `Chassis` resource
  - Added `AssetTag`
- Manager (`/redfish/v1/Managers/{@Managers}`)
  - Added `GracefulRestart` and `ForceRestart` `ResetType` allowable values to Manager (iLO reset)
  - Added `DateTime` and `DateTimeLocalOffset`
  - Added `Model`
  - Added `Status/Health`
- NVMe Drives
  - Added support for `Drive::PCIeInterface` information for NVMe drives (when data is available)
  - Added `DurableName` and `DurableNameFormat` to NVMe `Drive` resources
- Other
  - Added `ClearingLogic` to iLO Redfish Events registry
  - Added and/or modified the descriptions of many schema for conformity
  - Updated message registries to conform to `MessageRegistry.v1_2_0` schema
  - Updated the Base registry messages to include newer messages from Redfish standard Base registry.
  - Changed schema items with `#format": "uri"` to `"format": "uri-reference"` to match Redfish 2019.1
  - Removed X_HP-CHRP-Service-Version HTTP header in responses
  - Added `TransferProtocol@Redfish.AllowableValues` to `UpdateService`
  - Changed some properties in the API to not trigger Redfish events when they change to reduce event chattiness
  - Renamed from `NetworkAdapter.FlushConfigurationToNVM` to `HpeNetworkAdapter.FlushConfigurationToNVM` in `HpeNetworkAdapter.json` (`/redfish/v1/Chassis/1/NetworkAdapters/xxxx`). Invoking `NetworkAdapter.FlushConfigurationToNVM` instructs the network adapter to save its configuration state to non-volatile storage. This optional action may not be supported by all devices. Support is indicated by a target present in a GET response.

### HPE OEM features

- Added new OEM actions to ComputerSystem to enable special modes on reboot
  - `ServerIntelligentDiagnosticsMode`
  - `RestoreManufacturingDefaults`
  - `ServerSafeMode`
  - `RestoreSystemDefaults`

- Added the ability to set `EndOfPostDelaySeconds` to > 255 seconds. When PATCHed >255, it is internally converted to whole minutes (rounded up) and reported as the rounded seconds on GET. This enables a client to support up to 15300 seconds (255 minutes).

## iLO 5 1.40 new features and changes

iLO 5 1.40 adds support for several Redfish features:

- Redfish 1.6 support for the OpenAPI standard
- Support for the `?only` query parameter for easier access to key data
- Directory Services Configuration (`ExternalAccountProvider`)
- Local account roles (`Role`)
- TelemetryService support for CPU utilization (`TelemetryService`)
- Persistent Memory support (`MemoryDomains` and `MemoryChunks`)
- Improved `EthernetInterfaces` implementation for iLO's network
- Redfish host interface

Additionally, it includes support for new iLO 5 1.40 features:

- One-button secure erase (in `ComputerSystem` HPE OEM schema)
- iLO Configuration Backup and Restore (new `HpeiLOBackupRestoreService` HPE OEM schema)
- Configuration support for firmware downgrade policy (in `UpdateService` HPE OEM schema)
- Workload Performance advisor (new `HpeWorkloadPerformanceAdvisor` HPE OEM schema)

### Redfish 1.6 and OpenAPI

iLO 5 version 1.40 and later is conformant with the new Redfish 1.6 requirement to fix certain resource URIs in the data model.

Several resource URIs have been changed to conform to Redfish 1.6. A properly written Redfish client which traverses the data model and finds the URIs dynamically should not be affected, but clients which make assumptions about URIs may require modifications.

#### Trailing slashes on URIs

iLO 5 versions prior to 1.40 would return an HTTP 308 Redirect back to clients who requested URIs without a trailing slash. Clients must follow 308 Redirect to the alternate URI (the same URI path with a trailing slash.) In order to conform to Redfish 1.6, iLO 5 1.40 changes the behavior and aliases the same resources at both URIs. Requesting a URI with or without a trailing slash will return similar results with the exception that URIs in the returned data will be different. GETs of URIs with trailing slash will return links (@odata.id) with trailing slashes, and GETs of URIs without trailing slashes will return links without trailing slashes.

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

Starting in iLO 5 1.40, appending `?only` to GETs on single-member collections returns the one and only member instead. This is a convenient and efficient way to get to important data faster.

`GET /redfish/v1/Systems?only` returns the one and only `ComputerSystem` resource instead of the collection that includes it.

This works for collections that have only one member. Otherwise the GET returns the collection as if the query parameter was omitted.
