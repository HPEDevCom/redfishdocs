---
seo:
  title: iLO 5 Resource map
disableLastModified: true
toc:
  enable: false
---

# Resource map

The following table lists HPE iLO 5 Redfish resource types and their associated URIs.

|URI|Resource type|
|:---|:---|
|`/redfish/v1`|[ServiceRoot](../ilo5_resourcedefns/#servicerootv1_5_1serviceroot)|
|`/redfish/v1/`|[ServiceRoot](../ilo5_resourcedefns/#servicerootv1_5_1serviceroot)|
|`/redfish/v1/AccountService/`|[AccountService](../ilo5_resourcedefns/#accountservicev1_5_0accountservice)|
|`/redfish/v1/AccountService/Accounts/`|Collection of [ManagerAccount](../ilo5_resourcedefns/#manageraccountv1_3_0manageraccount)|
|`/redfish/v1/AccountService/Accounts/{item}/`|[ManagerAccount](../ilo5_resourcedefns/#manageraccountv1_3_0manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest/`|[HpeDirectoryTest](../ilo5_resourcedefns/#hpedirectorytestv1_0_0hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/`|CertificateCollection|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}/`|[Certificate](../ilo5_resourcedefns/#certificatev1_1_0certificate)|
|`/redfish/v1/AccountService/Roles/`|Collection of [Role](../ilo5_resourcedefns/#rolev1_2_1role)|
|`/redfish/v1/AccountService/Roles/Administrator/`|[Role](../ilo5_resourcedefns/#rolev1_2_1role)|
|`/redfish/v1/AccountService/UserCertificateMapping/`|Collection of [HpeiLOAccountCertificateMap](../ilo5_resourcedefns/#hpeiloaccountcertificatemapv1_0_1hpeiloaccountcertificatemap)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}/`|[HpeiLOAccountCertificateMap](../ilo5_resourcedefns/#hpeiloaccountcertificatemapv1_0_1hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService/`|[CertificateService](../ilo5_resourcedefns/#certificateservicev1_0_3certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations/`|[CertificateLocations](../ilo5_resourcedefns/#certificatelocationsv1_0_2certificatelocations)|
|`/redfish/v1/Chassis/`|Collection of [Chassis](../ilo5_resourcedefns/#chassisv1_10_2chassis)|
|`/redfish/v1/Chassis/{item}/`|[Chassis](../ilo5_resourcedefns/#chassisv1_10_2chassis)|
|`/redfish/v1/Chassis/{item}/Devices/`|Collection of [HpeServerDevice](../ilo5_resourcedefns/#hpeserverdevicev2_0_0hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/Devices/{item}/`|[HpeServerDevice](../ilo5_resourcedefns/#hpeserverdevicev2_0_0hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/`|Collection of [NetworkAdapter](../ilo5_resourcedefns/#networkadapterv1_4_0networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/`|[NetworkAdapter](../ilo5_resourcedefns/#networkadapterv1_4_0networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/`|Collection of [NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunctionv1_3_0networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/`|[NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunctionv1_3_0networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/`|Collection of [NetworkPort](../ilo5_resourcedefns/#networkportv1_2_5networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/`|[NetworkPort](../ilo5_resourcedefns/#networkportv1_2_5networkport)|
|`/redfish/v1/Chassis/{item}/PCIeDevices/`|Collection of [PCIeDevice](../ilo5_resourcedefns/#pciedevicev1_4_0pciedevice)|
|`/redfish/v1/Chassis/{item}/PCIeDevices/{item}98/`|[PCIeDevice](../ilo5_resourcedefns/#pciedevicev1_4_0pciedevice)|
|`/redfish/v1/Chassis/{item}/PCIeDevices/{item}98/PCIeFunctions/`|Collection of [PCIeFunction](../ilo5_resourcedefns/#pciefunctionv1_2_3pciefunction)|
|`/redfish/v1/Chassis/{item}/PCIeDevices/{item}98/PCIeFunctions/{item}/`|[PCIeFunction](../ilo5_resourcedefns/#pciefunctionv1_2_3pciefunction)|
|`/redfish/v1/Chassis/{item}/PCIeSlots/`|[PCIeSlots](../ilo5_resourcedefns/#pcieslotsv1_3_0pcieslots)|
|`/redfish/v1/Chassis/{item}/Power/`|[Power](../ilo5_resourcedefns/#powerv1_3_0power)|
|`/redfish/v1/Chassis/{item}/Power/#PowerControl/{item}`|[Power](../ilo5_resourcedefns/#powerv1_3_0power)|
|`/redfish/v1/Chassis/{item}/Power/#PowerSupplies/{item}`|[Power](../ilo5_resourcedefns/#powerv1_3_0power)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter/`|[HpePowerMeter](../ilo5_resourcedefns/#hpepowermeterv2_0_1hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping/`|[HpeiLOFederatedGroupCapping](../ilo5_resourcedefns/#hpeilofederatedgroupcappingv2_0_0hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter/`|[HpePowerMeter](../ilo5_resourcedefns/#hpepowermeterv2_0_1hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/SlowPowerMeter/`|[HpePowerMeter](../ilo5_resourcedefns/#hpepowermeterv2_0_1hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal/`|[Thermal](../ilo5_resourcedefns/#thermalv1_6_2thermal)|
|`/redfish/v1/Chassis/{item}/Thermal/#Fans/{item}`|[Thermal](../ilo5_resourcedefns/#thermalv1_6_2thermal)|
|`/redfish/v1/Chassis/{item}/Thermal/#Temperatures/{item}`|[Thermal](../ilo5_resourcedefns/#thermalv1_6_2thermal)|
|`/redfish/v1/EventService/`|[EventService](../ilo5_resourcedefns/#eventservicev1_0_8eventservice)|
|`/redfish/v1/EventService/CACertificates/`|HpeCertificateCollection|
|`/redfish/v1/EventService/Subscriptions/`|EventDestinationCollection|
|`/redfish/v1/JsonSchemas/`|Collection of [JsonSchemaFile](../ilo5_resourcedefns/#jsonschemafilev1_0_4jsonschemafile)|
|`/redfish/v1/JsonSchemas/{item}/`|[JsonSchemaFile](../ilo5_resourcedefns/#jsonschemafilev1_0_4jsonschemafile)|
|`/redfish/v1/Managers/`|Collection of [Manager](../ilo5_resourcedefns/#managerv1_5_1manager)|
|`/redfish/v1/Managers/{item}/`|[Manager](../ilo5_resourcedefns/#managerv1_5_1manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem/`|[HpeiLOActiveHealthSystem](../ilo5_resourcedefns/#hpeiloactivehealthsystemv2_5_0hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/`|[HpeiLOBackupRestoreService](../ilo5_resourcedefns/#hpeilobackuprestoreservicev2_2_0hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/`|HpeiLOBackupFileCollection|
|`/redfish/v1/Managers/{item}/DateTime/`|[HpeiLODateTime](../ilo5_resourcedefns/#hpeilodatetimev2_0_0hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia/`|[HpeiLOEmbeddedMedia](../ilo5_resourcedefns/#hpeiloembeddedmediav2_0_0hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/`|Collection of [EthernetInterface](../ilo5_resourcedefns/#ethernetinterfacev1_4_1ethernetinterface)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}/`|[EthernetInterface](../ilo5_resourcedefns/#ethernetinterfacev1_4_1ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups/`|Collection of [HpeiLOFederationGroup](../ilo5_resourcedefns/#hpeilofederationgroupv2_0_0hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}/`|[HpeiLOFederationGroup](../ilo5_resourcedefns/#hpeilofederationgroupv2_0_0hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers/`|Collection of [HpeiLOFederationPeers](../ilo5_resourcedefns/#hpeilofederationpeersv2_0_0hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}/`|[HpeiLOFederationPeers](../ilo5_resourcedefns/#hpeilofederationpeersv2_0_0hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/GUIService/`|[HpeiLOGUIService](../ilo5_resourcedefns/#hpeiloguiservicev1_1_0hpeiloguiservice)|
|`/redfish/v1/Managers/{item}/HostInterfaces/`|Collection of [HostInterface](../ilo5_resourcedefns/#hostinterfacev1_1_1hostinterface)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}/`|[HostInterface](../ilo5_resourcedefns/#hostinterfacev1_1_1hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService/`|Collection of [HpeiLOLicense](../ilo5_resourcedefns/#hpeilolicensev2_3_0hpeilolicense)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}/`|[HpeiLOLicense](../ilo5_resourcedefns/#hpeilolicensev2_3_0hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices/`|Collection of [LogService](../ilo5_resourcedefns/#logservicev1_0_0logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/`|[LogService](../ilo5_resourcedefns/#logservicev1_0_0logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/`|LogEntryCollection|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}/`|[LogEntry](../ilo5_resourcedefns/#logentryv1_1_0logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol/`|[ManagerNetworkProtocol](../ilo5_resourcedefns/#managernetworkprotocolv1_0_0managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/`|[HpeRemoteSupport](../ilo5_resourcedefns/#hperemotesupportv2_6_0hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/`|LogEntryCollection|
|`/redfish/v1/Managers/{item}/SecurityService/`|[HpeSecurityService](../ilo5_resourcedefns/#hpesecurityservicev2_3_1hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/`|[HpeCertAuth](../ilo5_resourcedefns/#hpecertauthv1_1_0hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/`|HpeCertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}/`|[HpeCertificate](../ilo5_resourcedefns/#hpecertificatev1_0_0hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM/`|[HpeESKM](../ilo5_resourcedefns/#hpeeskmv2_0_0hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert/`|[HpeHttpsCert](../ilo5_resourcedefns/#hpehttpscertv2_0_0hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/SSO/`|[HpeiLOSSO](../ilo5_resourcedefns/#hpeilossov2_0_0hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/`|[HpeiLOSecurityDashboard](../ilo5_resourcedefns/#hpeilosecuritydashboardv1_0_0hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo5_resourcedefns/#hpeilosecurityparamv1_1_0hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/`|Collection of [HpeiLOSecurityParam](../ilo5_resourcedefns/#hpeilosecurityparamv1_1_0hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}/`|[HpeiLOSecurityParam](../ilo5_resourcedefns/#hpeilosecurityparamv1_1_0hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/`|CertificateCollection|
|`/redfish/v1/Managers/{item}/SerialInterface/`|Collection of [SerialInterface](../ilo5_resourcedefns/#serialinterfacev1_1_7serialinterface)|
|`/redfish/v1/Managers/{item}/SerialInterface/{item}/`|[SerialInterface](../ilo5_resourcedefns/#serialinterfacev1_1_7serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService/`|[HpeiLOSnmpService](../ilo5_resourcedefns/#hpeilosnmpservicev2_3_0hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/`|HpeSNMPAlertDestinationCollection|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/`|HpeSNMPUsersCollection|
|`/redfish/v1/Managers/{item}/VirtualMedia/`|Collection of [VirtualMedia](../ilo5_resourcedefns/#virtualmediav1_2_0virtualmedia)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}/`|[VirtualMedia](../ilo5_resourcedefns/#virtualmediav1_2_0virtualmedia)|
|`/redfish/v1/Registries/`|Collection of [MessageRegistryFile](../ilo5_resourcedefns/#messageregistryfilev1_0_4messageregistryfile)|
|`/redfish/v1/Registries/{item}/`|[MessageRegistryFile](../ilo5_resourcedefns/#messageregistryfilev1_0_4messageregistryfile)|
|`/redfish/v1/ResourceDirectory/`|[HpeiLOResourceDirectory](../ilo5_resourcedefns/#hpeiloresourcedirectoryv2_0_0hpeiloresourcedirectory)|
|`/redfish/v1/SessionService/`|[SessionService](../ilo5_resourcedefns/#sessionservicev1_0_0sessionservice)|
|`/redfish/v1/SessionService/Sessions/`|Collection of [Session](../ilo5_resourcedefns/#sessionv1_0_0session)|
|`/redfish/v1/SessionService/Sessions/{item}/`|[Session](../ilo5_resourcedefns/#sessionv1_0_0session)|
|`/redfish/v1/Systems/`|Collection of [ComputerSystem](../ilo5_resourcedefns/#computersystemv1_10_0computersystem)|
|`/redfish/v1/Systems/{item}/`|[ComputerSystem](../ilo5_resourcedefns/#computersystemv1_10_0computersystem)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/`|Collection of [HpeBaseNetworkAdapter](../ilo5_resourcedefns/#hpebasenetworkadapterv2_0_0hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/{item}/`|[HpeBaseNetworkAdapter](../ilo5_resourcedefns/#hpebasenetworkadapterv2_0_0hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/BootOptions/`|Collection of [BootOption](../ilo5_resourcedefns/#bootoptionv1_0_1bootoption)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}/`|[BootOption](../ilo5_resourcedefns/#bootoptionv1_0_1bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/`|Collection of [EthernetInterface](../ilo5_resourcedefns/#ethernetinterfacev1_4_1ethernetinterface)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}/`|[EthernetInterface](../ilo5_resourcedefns/#ethernetinterfacev1_4_1ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices/`|Collection of [LogService](../ilo5_resourcedefns/#logservicev1_0_0logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/`|[LogService](../ilo5_resourcedefns/#logservicev1_0_0logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/`|LogEntryCollection|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}/`|[LogEntry](../ilo5_resourcedefns/#logentryv1_1_0logentry)|
|`/redfish/v1/Systems/{item}/Memory/`|Collection of [Memory](../ilo5_resourcedefns/#memoryv1_7_1memory)|
|`/redfish/v1/Systems/{item}/Memory/{item}/`|[Memory](../ilo5_resourcedefns/#memoryv1_7_1memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains/`|MemoryDomainCollection|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/`|Collection of [NetworkInterface](../ilo5_resourcedefns/#networkinterfacev1_1_1networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{interface}/`|[NetworkInterface](../ilo5_resourcedefns/#networkinterfacev1_1_1networkinterface)|
|`/redfish/v1/Systems/{item}/PCIDevices/`|Collection of [HpeServerPciDevice](../ilo5_resourcedefns/#hpeserverpcidevicev2_0_0hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}/`|[HpeServerPciDevice](../ilo5_resourcedefns/#hpeserverpcidevicev2_0_0hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots/`|Collection of [HpeServerPCISlot](../ilo5_resourcedefns/#hpeserverpcislotv2_1_0hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}/`|[HpeServerPCISlot](../ilo5_resourcedefns/#hpeserverpcislotv2_1_0hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors/`|Collection of [Processor](../ilo5_resourcedefns/#processorv1_7_2processor)|
|`/redfish/v1/Systems/{item}/Processors/{item}/`|[Processor](../ilo5_resourcedefns/#processorv1_7_2processor)|
|`/redfish/v1/Systems/{item}/SecureBoot/`|[SecureBoot](../ilo5_resourcedefns/#securebootv1_0_0secureboot)|
|`/redfish/v1/Systems/{item}/SecureEraseReportService/`|[HpeSecureEraseReportService](../ilo5_resourcedefns/#hpesecureerasereportservicev1_0_0hpesecureerasereportservice)|
|`/redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/`|HpeSecureEraseReportCollection|
|`/redfish/v1/Systems/{item}/SmartStorage/`|[HpeSmartStorage](../ilo5_resourcedefns/#hpesmartstoragev2_0_0hpesmartstorage)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/`|Collection of [HpeSmartStorageArrayController](../ilo5_resourcedefns/#hpesmartstoragearraycontrollerv2_2_0hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/`|[HpeSmartStorageArrayController](../ilo5_resourcedefns/#hpesmartstoragearraycontrollerv2_2_0hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev2_1_0hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/{item}/`|[HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev2_1_0hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/`|Collection of [HpeSmartStorageLogicalDrive](../ilo5_resourcedefns/#hpesmartstoragelogicaldrivev2_3_0hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/`|[HpeSmartStorageLogicalDrive](../ilo5_resourcedefns/#hpesmartstoragelogicaldrivev2_3_0hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/DataDrives/`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev2_1_0hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/`|Collection of [HpeSmartStorageStorageEnclosure](../ilo5_resourcedefns/#hpesmartstoragestorageenclosurev2_0_0hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/{item}/`|[HpeSmartStorageStorageEnclosure](../ilo5_resourcedefns/#hpesmartstoragestorageenclosurev2_0_0hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives/`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev2_1_0hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/`|HpeSmartStorageHostBusAdapterCollection|
|`/redfish/v1/Systems/{item}/Storage/`|StorageCollection|
|`/redfish/v1/Systems/{item}/USBDevices/`|Collection of [HpeUSBDevice](../ilo5_resourcedefns/#hpeusbdevicev2_0_0hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}/`|[HpeUSBDevice](../ilo5_resourcedefns/#hpeusbdevicev2_0_0hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts/`|Collection of [HpeUSBPort](../ilo5_resourcedefns/#hpeusbportv2_0_0hpeusbport)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}/`|[HpeUSBPort](../ilo5_resourcedefns/#hpeusbportv2_0_0hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/`|Collection of [HpeWorkloadPerformanceAdvisor](../ilo5_resourcedefns/#hpeworkloadperformanceadvisorv1_0_0hpeworkloadperformanceadvisor)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}/`|[HpeWorkloadPerformanceAdvisor](../ilo5_resourcedefns/#hpeworkloadperformanceadvisorv1_0_0hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService/`|[TaskService](../ilo5_resourcedefns/#taskservicev1_1_1taskservice)|
|`/redfish/v1/TaskService/Tasks/`|TaskCollection|
|`/redfish/v1/TelemetryService/`|[TelemetryService](../ilo5_resourcedefns/#telemetryservicev1_0_0telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions/`|Collection of [MetricDefinition](../ilo5_resourcedefns/#metricdefinitionv1_0_0metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/CPUUtil/`|[MetricDefinition](../ilo5_resourcedefns/#metricdefinitionv1_0_0metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/`|Collection of [MetricReportDefinition](../ilo5_resourcedefns/#metricreportdefinitionv1_0_0metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtilCustom1/`|[MetricReportDefinition](../ilo5_resourcedefns/#metricreportdefinitionv1_0_0metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/`|Collection of [MetricReport](../ilo5_resourcedefns/#metricreportv1_0_0metricreport)|
|`/redfish/v1/TelemetryService/MetricReports/CPUUtilCustom1/`|[MetricReport](../ilo5_resourcedefns/#metricreportv1_0_0metricreport)|
|`/redfish/v1/TelemetryService/Triggers/`|Collection of [Triggers](../ilo5_resourcedefns/#triggersv1_0_0triggers)|
|`/redfish/v1/TelemetryService/Triggers/CPUUtilTriggers/`|[Triggers](../ilo5_resourcedefns/#triggersv1_0_0triggers)|
|`/redfish/v1/UpdateService/`|[UpdateService](../ilo5_resourcedefns/#updateservicev1_1_1updateservice)|
|`/redfish/v1/UpdateService/BundleUpdateReport/`|Collection of [HpeBundleUpdateReport](../ilo5_resourcedefns/#hpebundleupdatereportv1_0_0hpebundleupdatereport)|
|`/redfish/v1/UpdateService/BundleUpdateReport/Current/`|[HpeBundleUpdateReport](../ilo5_resourcedefns/#hpebundleupdatereportv1_0_0hpebundleupdatereport)|
|`/redfish/v1/UpdateService/BundleUpdateReport/Current/Entries/`|HpeComponentUpdateEntryCollection|
|`/redfish/v1/UpdateService/ComponentRepository/`|Collection of [HpeComponent](../ilo5_resourcedefns/#hpecomponentv1_0_1hpecomponent)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}/`|[HpeComponent](../ilo5_resourcedefns/#hpecomponentv1_0_1hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory/`|Collection of [SoftwareInventory](../ilo5_resourcedefns/#softwareinventoryv1_2_0softwareinventory)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}/`|[SoftwareInventory](../ilo5_resourcedefns/#softwareinventoryv1_2_0softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets/`|Collection of [HpeComponentInstallSet](../ilo5_resourcedefns/#hpecomponentinstallsetv1_1_0hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InstallSets/{item}/`|[HpeComponentInstallSet](../ilo5_resourcedefns/#hpecomponentinstallsetv1_1_0hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository/`|HpeInvalidImageCollection|
|`/redfish/v1/UpdateService/MaintenanceWindows/`|HpeMaintenanceWindowCollection|
|`/redfish/v1/UpdateService/SoftwareInventory/`|Collection of [SoftwareInventory](../ilo5_resourcedefns/#softwareinventoryv1_2_0softwareinventory)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}/`|[SoftwareInventory](../ilo5_resourcedefns/#softwareinventoryv1_2_0softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/`|HpeComponentUpdateTaskQueueCollection|
|`/redfish/v1/systems/{item}/bios/`|[Bios](../ilo5_resourcedefns/#biosv1_0_0bios)|
|`/redfish/v1/systems/{item}/bios/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv2_0_0hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot/`|[HpeServerBootSettings](../ilo5_resourcedefns/#hpeserverbootsettingsv2_0_0hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/boot/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv2_0_0hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot/settings/`|[HpeServerBootSettings](../ilo5_resourcedefns/#hpeserverbootsettingsv2_0_0hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/iscsi/`|[HpeiSCSISoftwareInitiator](../ilo5_resourcedefns/#hpeiscsisoftwareinitiatorv2_0_0hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/iscsi/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv2_0_0hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/iscsi/settings/`|[HpeiSCSISoftwareInitiator](../ilo5_resourcedefns/#hpeiscsisoftwareinitiatorv2_0_0hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/`|[HpeKmsConfig](../ilo5_resourcedefns/#hpekmsconfigv1_0_0hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv2_0_0hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/settings/`|[HpeKmsConfig](../ilo5_resourcedefns/#hpekmsconfigv1_0_0hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/mappings/`|[HpeBiosMapping](../ilo5_resourcedefns/#hpebiosmappingv2_0_0hpebiosmapping)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/`|[HpeServerConfigLock](../ilo5_resourcedefns/#hpeserverconfiglockv1_0_0hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv2_0_0hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/settings/`|[HpeServerConfigLock](../ilo5_resourcedefns/#hpeserverconfiglockv1_0_0hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/settings/`|[Bios](../ilo5_resourcedefns/#biosv1_0_0bios)|
|`/redfish/v1/systems/{item}/bios/tlsconfig/`|[HpeTlsConfig](../ilo5_resourcedefns/#hpetlsconfigv1_0_0hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/tlsconfig/baseconfigs/`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv2_0_0hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/tlsconfig/settings/`|[HpeTlsConfig](../ilo5_resourcedefns/#hpetlsconfigv1_0_0hpetlsconfig)|
|`/redfish/v1/systems/{item}/smartstorageconfig/`|[SmartStorageConfig](../ilo5_resourcedefns/#smartstorageconfigv2_0_2smartstorageconfig)|
|`/redfish/v1/systems/{item}/smartstorageconfig/settings/`|[SmartStorageConfig](../ilo5_resourcedefns/#smartstorageconfigv2_0_2smartstorageconfig)|
