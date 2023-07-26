---
seo:
  title: iLO 6 changelog
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Changelog

The HPE iLO 6 Redfish service implements the DMTF Redfish specification <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.6.0.pdf" target="_blank">version 1.6.0</a> and the schemas implemented by iLO 6 adhere to the DMTF Redfish schema bundle <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP8010_2021.4.zip" target="_blank">8010_2021.4</a>.

For a better understanding of the conformance to the DMTF Redfish, read the _Redfish versioning_ paragraph of this <a href="https://developer.hpe.com/blog/getting-started-with-ilo-restful-api-redfish-api-conformance/" target="_blank">article</a>.

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
    - `Nonce` (string) : A set of bytes as a hex-encoded string that is signed with the measurements.  The value should be unique.
    - `Target` (string): Link to invoke action
    - `Title` (string) : Friendly action name
    - `SlotId`(integer): The slot identifier for the certificate containing the private key to generate the signature over the measurements.
    - `MeasurementIndices` (array): An array of indices that identify the measurement blocks to sign.
  - Added `ComponentIntegrity.TPMGetSignedMeasurements`: This action gets the TPM Signed Measurements.The following parameters are added:
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
      - `SecurityVersionNumber` : The security version number the measurement represents.
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
    - Added `BoardMemoryType` to `MemoryCollection`. The memory collection now lists HBM memory as members, in supported Gen11 servers.

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
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/db/Certificates/{@CertificateId}` (GET,DELETE)
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
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/db/Signatures/{@SignatureId}` (GET,DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbDefault/Signatures/{@SignatureId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbr/Signatures/{@SignatureId}` (GET,DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures/{@SignatureId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbt/Signatures/{@SignatureId}` (GET,DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures/{@SignatureId}` (GET)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbx/Signatures/{@SignatureId}` (GET,DELETE)
  - `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures/{@SignatureId}` (GET)
  
- `/redfish/v1/Systems/{@systemsId}/SecureBoot/SecureBootDatabases` (GET,POST)`#SecureBootDatabaseCollection.SecureBootDatabaseCollection` - A collection of SecureBootDatabase resource instances.

- `#SecureBootDatabase.v1_0_0.SecureBootDatabase` : The SecureBootDatabase schema describes a UEFI Secure Boot database used to store certificates or hashes.
  - Added `Certificates`: A link to the collection of certificates contained in the UEFI Secure Boot database.
  - Added `DatabaseId`: The property contains the name of the UEFI Secure Boot database.
  - Added `Signatures`: A link to the collection of signatures contained in the UEFI Secure Boot database.
  - Added `Actions`:
    - `SecureBootDatabase.ResetKeys`: Action to perform reset of the Secure Boot Database Keys.
  - Added `Parameters`:<ul>
    - Added `ResetKeysType (string)` (the parameter specifies what type of reset action to perform). The values are `DeleteAllKeys` (delete all Secure Boot Database keys on next boot) and `ResetAllKeysToDefault` (reset to default Secure Boot Database keys on next boot).</ul></br>
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

- `/redfish/v1/Systems/{@systemId}/LogServices/DPU/Entries` (GET,POST) `#LogEntryCollection.LogEntryCollection` - A Collection of LogEntry resource instances.

- `/redfish/v1/Systems/{@systemId}/LogServices/DPU/Entries/{@entriesId}` (GET,PATCH)  `#LogEntry.v1_11_0.LogEntry` - Defines the record format of a log.

- `/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@StorageControllerId}` (GET) `#StorageController.v1_0_0.StorageController` : Describes a storage controller and its properties. The storage controller represents a physical or virtual storage device that produces volumes.
  
- `/redfish/v1/systems/{item}/ethernetinterfaces/{item}` (GET,PATCH,POST) `#EthernetInterface.v1_4_1.EthernetInterface`:The EthernetInterface resource describes a single, logical ethernet interface or network interface controller (NIC).

- `/redfish/v1/managers/{item}/backuprestoreservice` (GET,PATCH) `#HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService`: The HpeiLOBackupRestoreService resource describes the properties for using the BMC backup and restore features.
  
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
  - Added `Issuer` and `Subject`: <ul>
    - `City`: The city or locality of the organization of the entity.
    - `CommonName`: The fully qualified domain name of the entity.
    - `Country`: The country of the organization of the entity.
    - `DisplayString`: A human-readable string for this identifier.
    - `Email`: The email address of the contact within the organization of the entity.
    - `Organization`: The name of the organization of the entity.
    - `OrganizationalUnit`: The name of the unit or division of the organization of the entity.
    - `State`: The state, province, or region of the organization of the entity.</ul>

- `#Chassis.v1_10_2.Chassis` updated to `#Chassis.v1_19_2.Chassis`
  - Deprecated `IndicatorLED`
  - Added `Oem.Hpe.IndicatorLED`: The state of the indicator LED. Following are the supported values: `Null`, `Lit`, `Blinking` and `Off`. This is a fall back provided for clients who want to continue using `IndicatorLED`.
  - Added `LocationIndicatorActive`: An indicator allowing an operator to physically locate this resource. This property replaces `IndicatorLED`and is in-line with the updated DMTF schema.
  - Added `EnvironmentalClass`: The ASHRAE Environmental Class for the chassis. Following are the supported values: A2 - ASHRAE Environmental Class 'A2', A3 - ASHRAE Environmental Class 'A3', and A4 - ASHRAE Environmental Class 'A4'.
  - Added `Location.PartLocation`:<ul> 
    - `LocationOrdinalValue`: The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.
    - `LocationType`: The location types for PartLocation. Following are the supported values: `Null`, `Slot`, `Bay`, `Connection`, `Socket`, and `Embedded`.
    - `Orientation`: The orientation for the ordering of the part location ordinal value. Following are the supported values: `Null`, `FrontToBack`, `BackToFront`, `TopToBottom`, `BottomToTop`, `LeftToRight`, and `RightToLeft`.
    - `Reference`: The reference area for the location of the part. Following are the supported values: `Null`, `Top`, `Bottom`, `Front`, `Rear`, `Left`, `Right`, and `Middle`.
    - `ServiceLabel`: The label of the part location, such as a silk-screened name or a printed label. </ul>
  - Added `Location.Placement`: <ul>
    - `AdditionalInfo`: Area designation or other additional info.
    - `Rack`: The name of a rack location within a row.
    - `RackOffset`: The vertical location of the item, in terms of RackOffsetUnits.
    - `RackOffsetUnits`: The type of rack unit in use. Following are the supported values: `Null`, `OpenU` (a rack unit that is equal to 1.89 inches (48 mm)), and `EIA_310` (a rack unit that is equal to 1.75 inches (44.45 mm).
    - `Row`: The name of the row.</ul>
  - Added `CpuMezzProgrammableLogicDevice` to  `Oem.Hpe.Firmware`: The firmware version of the CPLD (System Programmable Logic Device).
  - Added `Oem.Hpe.TelcoModeEnabled`: This property indicates if Telco mode is enabled on the server.

- `#ComputerSystem.v1_10_0.ComputerSystem` updated to `#ComputerSystem.v1_17_0.ComputerSystem`
  - Deprecated `IndicatorLED`
  - Added `Oem.Hpe.IndicatorLED`: The state of the indicator LED. Following are the supported values: `Null`, `Lit`, `Blinking` and `Off`. This is a fall back added for clients that want to continue to use `IndicatorLED`
  - Added `LocationIndicatorActive`: An indicator allowing an operator to physically locate this resource. This property replaces `IndicatorLED`and is in-line with the updated DMTF schema.
  - Added `BootProgress`: <ul>
    - `LastState`: SmartNIC device operating system status. Following are the supported values: `OSBootStarted`, `OSRunning` and `OEM`.
    - `OemLastState`: SmartNIC device operating system oem status. Following are the supported values: `OSServicesReady`, `OSServicesOffline`, `OSHalting` and `OSHalted`. </ul>
  - Added `Oem.Hpe.AvailableSystemCapabilities`: Indicates SmartNIC DPU supports OS-triggered DPC. `OSTriggeredDPC` is the supported value.
  - Added `Oem.Hpe.BootProgress`: <ul>
    - Added `OemResetReason`: The Smart NIC Device Operating system OEM reset reason. Following are the supported values: `Unknown`, `OSNormal`, `BMCNormal`, `OSCrash`, `HWWatchdog` and `Thermal`.
    - Added `ResetReason`: The Smart NIC Device Operating system reset reason . Following are the supported values: `OEM`, `Unknown`, `OSNormal`, `BMCNormal`, `OSCrash`, `HWWatchdog` and `Thermal`. </ul>
  - Added `Oem.Hpe.EnabledSystemCapabilities`: Indicates that SmartNIC DPU supports OS-triggered DPC. `OSTriggeredDPC` is the supported value.
  - Added `OsReadyTimeout` to `Oem.Hpe.IntegrationConfig`.
  - Added `Kernel.Version` to  `Oem.Hpe.OperatingSystem`: SmartNIC device operating system kernel version.
  - `PowerState`: This is the current power state of the system. Added the following supported values: `PoweringOn` and `PoweringOff`.
  - `SystemType`: The type of computer system that this resource represents. `DPU` is added to the supported values.
  - Added `ComputerSystem.SetSimpleUpdateStatus`: Added the following Parameters: <ul>
    - `Message (string)`: Message to be displayed
    - `TaskState (string)`: TaskState identifies the type of action to be performed. Following are the supported values: `New`, `Starting`, `Running`,`Suspended`,`Interrupted`,`Pending`, `Stopping`, `Completed`, `Killed`,`Exception` and `Service`.
    - `PercentComplete (integer)`: Percentage of task complete. 
    - `TaskStatus (string)`: Current status of the ongoing task. Following are the supported values: `Ok`, `Warning` and `Critical`. </ul>
  
- `#Drive.v1_7_0.Drive` upgraded to `Drive.v1_14_0.Drive`
  - Deprecated `IndicatorLED`
  - Added `Oem.Hpe.IndicatorLED`: The state of the indicator LED. Following are the supported values: `Null`, `Lit`, `Blinking` and `Off`.  This is a fall back added for clients that want to continue to use `IndicatorLED`
  - Added `LocationIndicatorActive`: An indicator allowing an operator to physically locate this resource. This property replaces `IndicatorLED`and is in-line with the updated DMTF schema.
  
- `#HpeSecureEraseReport.v1_1_0.HpeSecureEraseReport`
  - `DeviceType`: `PCIControllers` added as supported value.

- `#HpeSecurityService.v2_3_1.HpeSecurityService`
  - Added `ComponentIntegrityPolicy`: `NoPolicy` and `HaltBootOnSPDMFailure` are the supported values.
  - Added `GlobalComponentIntegrity`: `Enabled` and `Disabled` are the supported values.
  - Added the following to `TrustedOSSecurity`:<ul>
    - `EnableBackgroundScan`: Enables or disables background scan of host OS software.
    - `LastScanResult`: Health of the host after the last scan done by Trusted OS Security scan engine. Following are the supported values: `OK`, `Critical`, `Unknown`.
    - `LastScanTime`: The time stamp of the last Trusted OS Security scan.
    - `OnIntegrityFailure`: Sets the policy for how the Trusted OS Security check handles integrity failures. Following are the supported values: `NoAction`, `Alert`, `PowerOff`, `PowerOffForce`,`Reset`, `ForceNMI` .
    - `ScanEverySeconds`: Sets the interval between Trusted OS Security scans in second increments.</ul>

- `#HpeServerDevice.v2_1_0.HpeServerDevice`
  - Added `FirmwareVersion`: <ul>
    - `ComponentName`: Name of GPU cores
    - `VersionString`: Version String of GPU cores </ul>

- `#LogService.v1_0_0.LogService` updated to `LogService.v1_1_0.LogService` 
  - Added `DateTime`: The current date and time, with UTC offset, that the Log Service uses to set or read time.
  - Added `DateTimeLocalOffset`: The UTC offset that the current DateTime property value contains in the `+HH:MM` format.
  - Added `ServiceEnabled`: An indication of whether this service is enabled.

- `#Manager.v1_5_1.Manager`
  - ` DateTime`: `Read Only` updated to `TRUE`
  - `iLOSelfTestResults[{item}].SelfTestName` : Following are the supported values:`SecureElement`

- `#Memory.v1_7_1.Memory` updated to `#Memory.v1_14_0.Memory`
  - Added the value `DDR5` to the supported values in `MemoryDeviceType`.
 
- `#NetworkAdapter.v1_5_0.NetworkAdapter` upgraded to `#NetworkAdapter.v1_9_0.NetworkAdapter`
  - Added `Location.PartLocation`: <ul>
    - `LocationOrdinalValue`: The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.
    - `LocationType`: The location types for PartLocation. Following are the supported values: `Null`, `Slot`, `Bay`,`Connector`,`Socket`and `Embedded`.
    - `Orientation`: The orientation for the ordering of the part location ordinal value. Following are the supported values: `Null`, `FrontToBack`,`BackToFront`,`TopToBottom`,`BottomToTop`, `LeftToRight` and `RightToLeft`.
    - `Reference`: The reference area for the location of the part. Following are the supported values: `Null`, `Top`,`Bottom`,`Front`,`Rear`, `Left`,`Right` and `Middle`.
    - `ServiceLabel`: The label of the part location, such as a silk-screened name or a printed label. </ul>
  - Added `Location.Placement`: <ul>
    - `AdditionalInfo`: Area designation or other additional info.
    - `Rack`: The name of a rack location within a row.
    - `RackOffset`: The vertical location of the item, in terms of RackOffsetUnits.
    - `RackOffsetUnits`: The type of rack unit in use. Following are the supported values: `Null`, `OpenU` and `EIA_310`.
    - `Row`: The name of the row. </ul>
  - Added `Oem.Hpe.FcPorts`: is an array containing elements of: <ul>
    - `PortNumber`: Port Number
    - `WWNN`: World Wide Node Name
    - `WWPN`: World Wide Port Name </ul>
  - Added `Oem.Hpe.PhysicalPorts`: <ul>
    - `BadReceives`: A count of frames that were received by the adapter but which had an error.  This counter is the sum of mib items `cpqNicIfPhysAdapterAlignmentErrors`, `cpqNicIfPhysAdapterFCSErrors`, `cpqNicIfPhysAdapterFrameTooLongs`, and `cpqNicIfPhysAdapterInternalMacReceiveErrors`. If this counter increments frequently, check the more detailed error statistics and take appropriate action.
    - `BadTransmits`: A count of frames that were not transmitted by the adapter because of an error.  This counter is the sum of MIB items cpqNicIfPhysAdapterDeferredTransmissions, cpqNicIfPhysAdapterLateCollisions, cpqNicIfPhysAdapterExcessiveCollisions, cpqNicIfPhysAdapterCarrierSenseErrors, and cpqNicIfPhysAdapterInternalMacTransmitErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.
    - `FullDuplex`: Full-duplex data transmission means that data can be transmitted in both directions on a signal carrier at the same time.
    - `GoodReceives`: A count of frames successfully received by the physical adapter.
    - `GoodTransmits`: A count of frames successfully transmitted by the physical adapter.
    - `IPv4Addresses`: This is the IPv4 Address. Following value is added: `Address`.
    - `LinkStatus` : The link status of this interface (port). Following are the supported values: `LinkUp`,`NoLink`,`LinkDown` and `Null`.
    - `MacAddress`: The port MAC address.
    - `SpeedMbps`: An estimate of the current bandwidth of the interface in Megabits per second.  For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object contains the nominal bandwidth.
    - `StructuredName`:PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in `/rest/v1/Systems/x/PCIDevices`)
    - `Team`: If a port is configured for NIC teaming, the name of the configured link between the physical ports that form a logical network adapter. This value is displayed for system NICs only (embedded and stand-up).
    - `UEFIDevicePath`: UEFIDevice Path for correlation purposes.</ul>

- `#NetworkDeviceFunction.v1_5_0.NetworkDeviceFunction` updated to `#NetworkDeviceFunction.v1_8_0.NetworkDeviceFunction`

- `#PCIeDevice.v1_4_0.PCIeDevice` updated to `#PCIeDevice.v1_5_0.PCIeDevice`
  - Added `Oem.Hpe.FirmwareVersion`:<ul>
    - `ComponentName`: Name of GPU cores
    - `VersionString`: Version string of GPU cores</ul>

- `#Port.v1_5_0.Port` updated to `#Port.v1_6_1.Port`
  - Added `AssociatedWorldWideNames`to `FibreChannel`
  
- `#Power.v1_3_0.Power`
  - Added `Oem.Hpe.Domains`:<ul>
    - `DomainName`:Power Supply Domain Name. Following values are supported: `System` and `GPU`.
    - `HighEfficiencyMode`: The redundant power supply mode that will be used when redundant power supplies are configured. The following values are supported: `Null`, `Auto`, `Balanced`, `Even`, `Odd` and `NoSupport`.
    - `PowerSupplies`: `PowerSupplies` is an array containing elements of: `PowerSupplies[{item}].@odata.id`
    - `PowerSupplyRedundancy`: This indicates if the Power Supply is redundant or not. Following values are supported: `Redundant`, `NonRedundant`, `FailedRedundant` and `Unknown`.</ul>
  - `Oem.Hpe.HighEfficiencyMode`: Added `NoSupport` to supported values.
  - Added  `PowerSupplies.Oem.Hpe.Domain`: This indicates the domain of the specific power supply. Following values are supported: `System` and `GPU`.
  - `Oem.Hpe.HighEfficiencyMode`: `NoSupport` added as a supported value.
  
- `#ServiceRoot.v1_5_1.ServiceRoot` updated to `#ServiceRoot.v1_13_0.ServiceRoot`
  - Added `ComponentIntegrity`: The URI to the collection resource.

- `#Thermal.v1_7_1.Thermal`
  - `Temperatures[{item}].PhysicalContext`: Added the following enum values: `LiquidInlet`, `LiquidOutlet`, `CPUSubsystem`, `GPUSubsystem`, `FPGA`, `Accelerator`, `ASIC`, `PowerSubsystem`, `Rectifier`, `MemorySubsystem`, `Chassis`, `Fan`, `CoolingSubsystem`, `Motor`, `Transformer`, `ACUtilityInput`, `ACStaticBypassInput`, `ACMaintenanceBypassInput`, `DCBus`, `ACOutput`,`ACInput`, `TrustedModule`, `Board`, `Transceiver`, `Battery` and `Pump`

- `#UpdateService.v1_1_1.UpdateService` updated to `#UpdateService.v1_2_1.UpdateService`

- `#VirtualMedia.v1_2_0.VirtualMedia` updated to `#VirtualMedia.v1_3_0.VirtualMedia`
