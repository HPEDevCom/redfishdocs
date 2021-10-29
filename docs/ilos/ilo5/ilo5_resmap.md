---
disableLastModified: true
enableToc: false
---

# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](../ilo5_resourcedefns/#serviceroot-v1_5_1-serviceroot)|
|`/redfish/v1/AccountService/`|[AccountService](../ilo5_resourcedefns/#accountservice-v1_5_0-accountservice)|
|`/redfish/v1/AccountService/Accounts/`|Collection of [ManagerAccount](../ilo5_resourcedefns/#manageraccount-v1_3_0-manageraccount)|
|`/redfish/v1/AccountService/Accounts/{item}/`|[ManagerAccount](../ilo5_resourcedefns/#manageraccount-v1_3_0-manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest/`|[HpeDirectoryTest](../ilo5_resourcedefns/#hpedirectorytest-v1_0_0-hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/`|CertificateCollection|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}/`|[Certificate](../ilo5_resourcedefns/#certificate-v1_1_0-certificate)|
|`/redfish/v1/AccountService/Roles/`|Collection of [Role](../ilo5_resourcedefns/#role-v1_2_1-role)|
|`/redfish/v1/AccountService/Roles/Administrator/`|[Role](../ilo5_resourcedefns/#role-v1_2_1-role)|
|`/redfish/v1/AccountService/UserCertificateMapping/`|Collection of [HpeiLOAccountCertificateMap](../ilo5_resourcedefns/#hpeiloaccountcertificatemap-v1_0_1-hpeiloaccountcertificatemap)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}/`|[HpeiLOAccountCertificateMap](../ilo5_resourcedefns/#hpeiloaccountcertificatemap-v1_0_1-hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService/`|[CertificateService](../ilo5_resourcedefns/#certificateservice-v1_0_3-certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations/`|[CertificateLocations](../ilo5_resourcedefns/#certificatelocations-v1_0_2-certificatelocations)|
|`/redfish/v1/Chassis/`|Collection of [Chassis](../ilo5_resourcedefns/#chassis-v1_10_2-chassis)|
|`/redfish/v1/Chassis/{item}/`|[Chassis](../ilo5_resourcedefns/#chassis-v1_10_2-chassis)|
|`/redfish/v1/Chassis/{item}/Devices/`|Collection of [HpeServerDevice](../ilo5_resourcedefns/#hpeserverdevice-v2_0_0-hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/Devices/{item}/`|[HpeServerDevice](../ilo5_resourcedefns/#hpeserverdevice-v2_0_0-hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/`|Collection of [NetworkAdapter](../ilo5_resourcedefns/#networkadapter-v1_4_0-networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/`|[NetworkAdapter](../ilo5_resourcedefns/#networkadapter-v1_4_0-networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/`|Collection of [NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunction-v1_3_0-networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/`|[NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunction-v1_3_0-networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/`|Collection of [NetworkPort](../ilo5_resourcedefns/#networkport-v1_2_5-networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/`|[NetworkPort](../ilo5_resourcedefns/#networkport-v1_2_5-networkport)|
|`/redfish/v1/Chassis/{item}/PCIeDevices/`|Collection of [PCIeDevice](../ilo5_resourcedefns/#pciedevice-v1_4_0-pciedevice)|
|`/redfish/v1/Chassis/{item}/PCIeDevices/{item}98/`|[PCIeDevice](../ilo5_resourcedefns/#pciedevice-v1_4_0-pciedevice)|
|`/redfish/v1/Chassis/{item}/PCIeDevices/{item}98/PCIeFunctions/`|Collection of [PCIeFunction](../ilo5_resourcedefns/#pciefunction-v1_2_3-pciefunction)|
|`/redfish/v1/Chassis/{item}/PCIeDevices/{item}98/PCIeFunctions/{item}/`|[PCIeFunction](../ilo5_resourcedefns/#pciefunction-v1_2_3-pciefunction)|
|`/redfish/v1/Chassis/{item}/PCIeSlots/`|[PCIeSlots](../ilo5_resourcedefns/#pcieslots-v1_3_0-pcieslots)|
|`/redfish/v1/Chassis/{item}/Power/`|[Power](../ilo5_resourcedefns/#power-v1_3_0-power)|
|`/redfish/v1/Chassis/{item}/Power/#PowerControl/{item}`|[Power](../ilo5_resourcedefns/#power-v1_3_0-power)|
|`/redfish/v1/Chassis/{item}/Power/#PowerSupplies/{item}`|[Power](../ilo5_resourcedefns/#power-v1_3_0-power)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter/`|[HpePowerMeter](../ilo5_resourcedefns/#hpepowermeter-v2_0_1-hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping/`|[HpeiLOFederatedGroupCapping](../ilo5_resourcedefns/#hpeilofederatedgroupcapping-v2_0_0-hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter/`|[HpePowerMeter](../ilo5_resourcedefns/#hpepowermeter-v2_0_1-hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/SlowPowerMeter/`|[HpePowerMeter](../ilo5_resourcedefns/#hpepowermeter-v2_0_1-hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal/`|[Thermal](../ilo5_resourcedefns/#thermal-v1_6_2-thermal)|
|`/redfish/v1/Chassis/{item}/Thermal/#Fans/{item}`|[Thermal](../ilo5_resourcedefns/#thermal-v1_6_2-thermal)|
|`/redfish/v1/Chassis/{item}/Thermal/#Temperatures/{item}`|[Thermal](../ilo5_resourcedefns/#thermal-v1_6_2-thermal)|
|`/redfish/v1/EventService/`|[EventService](../ilo5_resourcedefns/#eventservice-v1_0_8-eventservice)|
|`/redfish/v1/EventService/CACertificates/`|HpeCertificateCollection|
|`/redfish/v1/EventService/Subscriptions/`|EventDestinationCollection|
|`/redfish/v1/JsonSchemas/`|Collection of [JsonSchemaFile](../ilo5_resourcedefns/#jsonschemafile-v1_0_4-jsonschemafile)|
|`/redfish/v1/JsonSchemas/{item}/`|[JsonSchemaFile](../ilo5_resourcedefns/#jsonschemafile-v1_0_4-jsonschemafile)|
|`/redfish/v1/Managers/`|Collection of [Manager](../ilo5_resourcedefns/#manager-v1_5_1-manager)|
|`/redfish/v1/Managers/{item}/`|[Manager](../ilo5_resourcedefns/#manager-v1_5_1-manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem/`|[HpeiLOActiveHealthSystem](../ilo5_resourcedefns/#hpeiloactivehealthsystem-v2_5_0-hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/`|[HpeiLOBackupRestoreService](../ilo5_resourcedefns/#hpeilobackuprestoreservice-v2_2_0-hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/`|HpeiLOBackupFileCollection|
|`/redfish/v1/Managers/{item}/DateTime/`|[HpeiLODateTime](../ilo5_resourcedefns/#hpeilodatetime-v2_0_0-hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia/`|[HpeiLOEmbeddedMedia](../ilo5_resourcedefns/#hpeiloembeddedmedia-v2_0_0-hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/`|Collection of [EthernetInterface](../ilo5_resourcedefns/#ethernetinterface-v1_4_1-ethernetinterface)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}/`|[EthernetInterface](../ilo5_resourcedefns/#ethernetinterface-v1_4_1-ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups/`|Collection of [HpeiLOFederationGroup](../ilo5_resourcedefns/#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}/`|[HpeiLOFederationGroup](../ilo5_resourcedefns/#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers/`|Collection of [HpeiLOFederationPeers](../ilo5_resourcedefns/#hpeilofederationpeers-v2_0_0-hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}/`|[HpeiLOFederationPeers](../ilo5_resourcedefns/#hpeilofederationpeers-v2_0_0-hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/GUIService/`|[HpeiLOGUIService](../ilo5_resourcedefns/#hpeiloguiservice-v1_1_0-hpeiloguiservice)|
|`/redfish/v1/Managers/{item}/HostInterfaces/`|Collection of [HostInterface](../ilo5_resourcedefns/#hostinterface-v1_1_1-hostinterface)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}/`|[HostInterface](../ilo5_resourcedefns/#hostinterface-v1_1_1-hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService/`|Collection of [HpeiLOLicense](../ilo5_resourcedefns/#hpeilolicense-v2_3_0-hpeilolicense)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}/`|[HpeiLOLicense](../ilo5_resourcedefns/#hpeilolicense-v2_3_0-hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices/`|Collection of [LogService](../ilo5_resourcedefns/#logservice-v1_0_0-logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/`|[LogService](../ilo5_resourcedefns/#logservice-v1_0_0-logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/`|LogEntryCollection|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}/`|[LogEntry](../ilo5_resourcedefns/#logentry-v1_1_0-logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol/`|[ManagerNetworkProtocol](../ilo5_resourcedefns/#managernetworkprotocol-v1_0_0-managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/`|[HpeRemoteSupport](../ilo5_resourcedefns/#hperemotesupport-v2_6_0-hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/`|LogEntryCollection|
|`/redfish/v1/Managers/{item}/SecurityService/`|[HpeSecurityService](../ilo5_resourcedefns/#hpesecurityservice-v2_3_1-hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/`|[HpeCertAuth](../ilo5_resourcedefns/#hpecertauth-v1_1_0-hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/`|HpeCertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}/`|[HpeCertificate](../ilo5_resourcedefns/#hpecertificate-v1_0_0-hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM/`|[HpeESKM](../ilo5_resourcedefns/#hpeeskm-v2_0_0-hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert/`|[HpeHttpsCert](../ilo5_resourcedefns/#hpehttpscert-v2_0_0-hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/SSO/`|[HpeiLOSSO](../ilo5_resourcedefns/#hpeilosso-v2_0_0-hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/`|[HpeiLOSecurityDashboard](../ilo5_resourcedefns/#hpeilosecuritydashboard-v1_0_0-hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo5_resourcedefns/#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/`|Collection of [HpeiLOSecurityParam](../ilo5_resourcedefns/#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}/`|[HpeiLOSecurityParam](../ilo5_resourcedefns/#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SerialInterface/`|Collection of [SerialInterface](../ilo5_resourcedefns/#serialinterface-v1_1_7-serialinterface)|
|`/redfish/v1/Managers/{item}/SerialInterface/{item}/`|[SerialInterface](../ilo5_resourcedefns/#serialinterface-v1_1_7-serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService/`|[HpeiLOSnmpService](../ilo5_resourcedefns/#hpeilosnmpservice-v2_3_0-hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/`|HpeSNMPAlertDestinationCollection|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/`|HpeSNMPUsersCollection|
|`/redfish/v1/Managers/{item}/VirtualMedia/`|Collection of [VirtualMedia](../ilo5_resourcedefns/#virtualmedia-v1_2_0-virtualmedia)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}/`|[VirtualMedia](../ilo5_resourcedefns/#virtualmedia-v1_2_0-virtualmedia)|
|`/redfish/v1/Registries/`|Collection of [MessageRegistryFile](../ilo5_resourcedefns/#messageregistryfile-v1_0_4-messageregistryfile)|
|`/redfish/v1/Registries/{item}/`|[MessageRegistryFile](../ilo5_resourcedefns/#messageregistryfile-v1_0_4-messageregistryfile)|
|`/redfish/v1/ResourceDirectory/`|[HpeiLOResourceDirectory](../ilo5_resourcedefns/#hpeiloresourcedirectory-v2_0_0-hpeiloresourcedirectory)|
|`/redfish/v1/SessionService/`|[SessionService](../ilo5_resourcedefns/#sessionservice-v1_0_0-sessionservice)|
|`/redfish/v1/SessionService/Sessions/`|Collection of [Session](../ilo5_resourcedefns/#session-v1_0_0-session)|
|`/redfish/v1/SessionService/Sessions/{item}/`|[Session](../ilo5_resourcedefns/#session-v1_0_0-session)|
|`/redfish/v1/SessionService/Sessions/{item}/`|[Session](../ilo5_resourcedefns/#session-v1_0_0-session)|
|`/redfish/v1/Systems/`|Collection of [ComputerSystem](../ilo5_resourcedefns/#computersystem-v1_10_0-computersystem)|
|`/redfish/v1/Systems/{item}/`|[ComputerSystem](../ilo5_resourcedefns/#computersystem-v1_10_0-computersystem)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/`|Collection of [HpeBaseNetworkAdapter](../ilo5_resourcedefns/#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/{item}/`|[HpeBaseNetworkAdapter](../ilo5_resourcedefns/#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/BootOptions/`|Collection of [BootOption](../ilo5_resourcedefns/#bootoption-v1_0_1-bootoption)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}/`|[BootOption](../ilo5_resourcedefns/#bootoption-v1_0_1-bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/`|Collection of [EthernetInterface](../ilo5_resourcedefns/#ethernetinterface-v1_4_1-ethernetinterface)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}/`|[EthernetInterface](../ilo5_resourcedefns/#ethernetinterface-v1_4_1-ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices/`|Collection of [LogService](../ilo5_resourcedefns/#logservice-v1_0_0-logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/`|[LogService](../ilo5_resourcedefns/#logservice-v1_0_0-logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/`|LogEntryCollection|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}/`|[LogEntry](../ilo5_resourcedefns/#logentry-v1_1_0-logentry)|
|`/redfish/v1/Systems/{item}/Memory/`|Collection of [Memory](../ilo5_resourcedefns/#memory-v1_7_1-memory)|
|`/redfish/v1/Systems/{item}/Memory/{item}/`|[Memory](../ilo5_resourcedefns/#memory-v1_7_1-memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains/`|MemoryDomainCollection|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/`|Collection of [NetworkInterface](../ilo5_resourcedefns/#networkinterface-v1_1_1-networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{interface}/`|[NetworkInterface](../ilo5_resourcedefns/#networkinterface-v1_1_1-networkinterface)|
|`/redfish/v1/Systems/{item}/PCIDevices/`|Collection of [HpeServerPciDevice](../ilo5_resourcedefns/#hpeserverpcidevice-v2_0_0-hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}/`|[HpeServerPciDevice](../ilo5_resourcedefns/#hpeserverpcidevice-v2_0_0-hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots/`|Collection of [HpeServerPCISlot](../ilo5_resourcedefns/#hpeserverpcislot-v2_1_0-hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}/`|[HpeServerPCISlot](../ilo5_resourcedefns/#hpeserverpcislot-v2_1_0-hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors/`|Collection of [Processor](../ilo5_resourcedefns/#processor-v1_7_2-processor)|
|`/redfish/v1/Systems/{item}/Processors/{item}/`|[Processor](../ilo5_resourcedefns/#processor-v1_7_2-processor)|
|`/redfish/v1/Systems/{item}/SecureBoot/`|[SecureBoot](../ilo5_resourcedefns/#secureboot-v1_0_0-secureboot)|
|`/redfish/v1/Systems/{item}/SecureEraseReportService/`|[HpeSecureEraseReportService](../ilo5_resourcedefns/#hpesecureerasereportservice-v1_0_0-hpesecureerasereportservice)|
|`/redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/`|HpeSecureEraseReportCollection|
|`/redfish/v1/Systems/{item}/SmartStorage/`|[HpeSmartStorage](../ilo5_resourcedefns/#hpesmartstorage-v2_0_0-hpesmartstorage)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/`|Collection of [HpeSmartStorageArrayController](../ilo5_resourcedefns/#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/`|[HpeSmartStorageArrayController](../ilo5_resourcedefns/#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/{item}/`|[HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/`|Collection of [HpeSmartStorageLogicalDrive](../ilo5_resourcedefns/#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/`|[HpeSmartStorageLogicalDrive](../ilo5_resourcedefns/#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/DataDrives/`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/`|Collection of [HpeSmartStorageStorageEnclosure](../ilo5_resourcedefns/#hpesmartstoragestorageenclosure-v2_0_0-hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/{item}/`|[HpeSmartStorageStorageEnclosure](../ilo5_resourcedefns/#hpesmartstoragestorageenclosure-v2_0_0-hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives/`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/`|HpeSmartStorageHostBusAdapterCollection|
|`/redfish/v1/Systems/{item}/Storage/`|StorageCollection|
|`/redfish/v1/Systems/{item}/USBDevices/`|Collection of [HpeUSBDevice](../ilo5_resourcedefns/#hpeusbdevice-v2_0_0-hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}/`|[HpeUSBDevice](../ilo5_resourcedefns/#hpeusbdevice-v2_0_0-hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts/`|Collection of [HpeUSBPort](../ilo5_resourcedefns/#hpeusbport-v2_0_0-hpeusbport)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}/`|[HpeUSBPort](../ilo5_resourcedefns/#hpeusbport-v2_0_0-hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/`|Collection of [HpeWorkloadPerformanceAdvisor](../ilo5_resourcedefns/#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}/`|[HpeWorkloadPerformanceAdvisor](../ilo5_resourcedefns/#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService/`|[TaskService](../ilo5_resourcedefns/#taskservice-v1_1_1-taskservice)|
|`/redfish/v1/TaskService/Tasks/`|TaskCollection|
|`/redfish/v1/TelemetryService/`|[TelemetryService](../ilo5_resourcedefns/#telemetryservice-v1_0_0-telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions/`|Collection of [MetricDefinition](../ilo5_resourcedefns/#metricdefinition-v1_0_0-metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/CPUUtil/`|[MetricDefinition](../ilo5_resourcedefns/#metricdefinition-v1_0_0-metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/`|Collection of [MetricReportDefinition](../ilo5_resourcedefns/#metricreportdefinition-v1_0_0-metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtilCustom1/`|[MetricReportDefinition](../ilo5_resourcedefns/#metricreportdefinition-v1_0_0-metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/`|Collection of [MetricReport](../ilo5_resourcedefns/#metricreport-v1_0_0-metricreport)|
|`/redfish/v1/TelemetryService/MetricReports/CPUUtilCustom1/`|[MetricReport](../ilo5_resourcedefns/#metricreport-v1_0_0-metricreport)|
|`/redfish/v1/TelemetryService/Triggers/`|Collection of [Triggers](../ilo5_resourcedefns/#triggers-v1_0_0-triggers)|
|`/redfish/v1/TelemetryService/Triggers/CPUUtilTriggers/`|[Triggers](../ilo5_resourcedefns/#triggers-v1_0_0-triggers)|
|`/redfish/v1/UpdateService/`|[UpdateService](../ilo5_resourcedefns/#updateservice-v1_1_1-updateservice)|
|`/redfish/v1/UpdateService/BundleUpdateReport/`|Collection of [HpeBundleUpdateReport](../ilo5_resourcedefns/#hpebundleupdatereport-v1_0_0-hpebundleupdatereport)|
|`/redfish/v1/UpdateService/BundleUpdateReport/Current/`|[HpeBundleUpdateReport](../ilo5_resourcedefns/#hpebundleupdatereport-v1_0_0-hpebundleupdatereport)|
|`/redfish/v1/UpdateService/BundleUpdateReport/Current/Entries/`|HpeComponentUpdateEntryCollection|
|`/redfish/v1/UpdateService/ComponentRepository/`|Collection of [HpeComponent](../ilo5_resourcedefns/#hpecomponent-v1_0_1-hpecomponent)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}/`|[HpeComponent](../ilo5_resourcedefns/#hpecomponent-v1_0_1-hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory/`|Collection of [SoftwareInventory](../ilo5_resourcedefns/#softwareinventory-v1_2_0-softwareinventory)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}/`|[SoftwareInventory](../ilo5_resourcedefns/#softwareinventory-v1_2_0-softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets/`|Collection of [HpeComponentInstallSet](../ilo5_resourcedefns/#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InstallSets/{item}/`|[HpeComponentInstallSet](../ilo5_resourcedefns/#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository/`|HpeInvalidImageCollection|
|`/redfish/v1/UpdateService/MaintenanceWindows/`|HpeMaintenanceWindowCollection|
|`/redfish/v1/UpdateService/SoftwareInventory/`|Collection of [SoftwareInventory](../ilo5_resourcedefns/#softwareinventory-v1_2_0-softwareinventory)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}/`|[SoftwareInventory](../ilo5_resourcedefns/#softwareinventory-v1_2_0-softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/`|HpeComponentUpdateTaskQueueCollection|
|`/redfish/v1/systems/{item}/bios/`|[Bios](../ilo5_resourcedefns/#bios-v1_0_0-bios)|
|`/redfish/v1/systems/{item}/bios/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigs-v2_0_0-hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot/`|[HpeServerBootSettings](../ilo5_resourcedefns/#hpeserverbootsettings-v2_0_0-hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/boot/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigs-v2_0_0-hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot/settings/`|[HpeServerBootSettings](../ilo5_resourcedefns/#hpeserverbootsettings-v2_0_0-hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/iscsi/`|[HpeiSCSISoftwareInitiator](../ilo5_resourcedefns/#hpeiscsisoftwareinitiator-v2_0_0-hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/iscsi/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigs-v2_0_0-hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/iscsi/settings/`|[HpeiSCSISoftwareInitiator](../ilo5_resourcedefns/#hpeiscsisoftwareinitiator-v2_0_0-hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/`|[HpeKmsConfig](../ilo5_resourcedefns/#hpekmsconfig-v1_0_0-hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigs-v2_0_0-hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/settings/`|[HpeKmsConfig](../ilo5_resourcedefns/#hpekmsconfig-v1_0_0-hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/mappings/`|[HpeBiosMapping](../ilo5_resourcedefns/#hpebiosmapping-v2_0_0-hpebiosmapping)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/`|[HpeServerConfigLock](../ilo5_resourcedefns/#hpeserverconfiglock-v1_0_0-hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigs-v2_0_0-hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/settings/`|[HpeServerConfigLock](../ilo5_resourcedefns/#hpeserverconfiglock-v1_0_0-hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/settings/`|[Bios](../ilo5_resourcedefns/#bios-v1_0_0-bios)|
|`/redfish/v1/systems/{item}/bios/tlsconfig/`|[HpeTlsConfig](../ilo5_resourcedefns/#hpetlsconfig-v1_0_0-hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/tlsconfig/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigs-v2_0_0-hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/tlsconfig/settings/`|[HpeTlsConfig](../ilo5_resourcedefns/#hpetlsconfig-v1_0_0-hpetlsconfig)|
|`/redfish/v1/systems/{item}/smartstorageconfig/`|[SmartStorageConfig](../ilo5_resourcedefns/#smartstorageconfig-v2_0_2-smartstorageconfig)|
|`/redfish/v1/systems/{item}/smartstorageconfig/settings/`|[SmartStorageConfig](../ilo5_resourcedefns/#smartstorageconfig-v2_0_2-smartstorageconfig)|
