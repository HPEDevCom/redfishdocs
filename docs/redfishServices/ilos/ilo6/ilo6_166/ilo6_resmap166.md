---
excludeFromSearch: true
seo:
  title: iLO 6 version 1.66 Resource map
markdown:
  toc:
    hide: true
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
---

# Resource map of iLO 6 v1.66

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](ilo6_serviceroot_resourcedefns166/#serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](ilo6_other_resourcedefns166/#accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](ilo6_manager_resourcedefns166/#manageraccountcollection)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](ilo6_manager_resourcedefns166/#manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](ilo6_hpe_resourcedefns166/#hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](ilo6_other_resourcedefns166/#rolecollection)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](ilo6_other_resourcedefns166/#role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](ilo6_hpe_resourcedefns166/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](ilo6_hpe_resourcedefns166/#hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService`|[CertificateService](ilo6_other_resourcedefns166/#certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations`|[CertificateLocations](ilo6_other_resourcedefns166/#certificatelocations)|
|`/redfish/v1/Chassis`|Collection of [Chassis](ilo6_chassis_resourcedefns166/#chassiscollection)|
|`/redfish/v1/Chassis/{item}`|[Chassis](ilo6_chassis_resourcedefns166/#chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](ilo6_hpe_resourcedefns166/#hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](ilo6_hpe_resourcedefns166/#hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](ilo6_hpe_resourcedefns166/#hpeserverdevicecollection)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](ilo6_hpe_resourcedefns166/#hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](ilo6_other_resourcedefns166/#power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](ilo6_hpe_resourcedefns166/#hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](ilo6_hpe_resourcedefns166/#hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](ilo6_hpe_resourcedefns166/#hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](ilo6_hpe_resourcedefns166/#hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](ilo6_hpe_resourcedefns166/#hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](ilo6_hpe_resourcedefns166/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](ilo6_hpe_resourcedefns166/#hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](ilo6_hpe_resourcedefns166/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](ilo6_other_resourcedefns166/#thermal)|
|`/redfish/v1/ComponentIntegrity`|Collection of [ComponentIntegrity](ilo6_other_resourcedefns166/#componentintegritycollection)|
|`/redfish/v1/ComponentIntegrity/{item}`|[ComponentIntegrity](ilo6_other_resourcedefns166/#componentintegrity)|
|`/redfish/v1/EventService`|[EventService](ilo6_other_resourcedefns166/#eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](ilo6_hpe_resourcedefns166/#hpecertificatecollection)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](ilo6_hpe_resourcedefns166/#hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](ilo6_other_resourcedefns166/#eventdestinationcollection)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](ilo6_other_resourcedefns166/#eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](ilo6_other_resourcedefns166/#jsonschemafilecollection)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](ilo6_other_resourcedefns166/#jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](ilo6_manager_resourcedefns166/#managercollection)|
|`/redfish/v1/Managers/{item}`|[Manager](ilo6_manager_resourcedefns166/#manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](ilo6_hpe_resourcedefns166/#hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](ilo6_hpe_resourcedefns166/#hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](ilo6_hpe_resourcedefns166/#hpeilobackupfilecollection)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](ilo6_hpe_resourcedefns166/#hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](ilo6_hpe_resourcedefns166/#hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](ilo6_hpe_resourcedefns166/#hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](ilo6_network_resourcedefns166/#ethernetinterfacecollection)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](ilo6_network_resourcedefns166/#ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](ilo6_hpe_resourcedefns166/#hpeilofederationgroupcollection)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](ilo6_hpe_resourcedefns166/#hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](ilo6_hpe_resourcedefns166/#hpeilofederationpeerscollection)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](ilo6_hpe_resourcedefns166/#hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](ilo6_other_resourcedefns166/#hostinterfacecollection)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](ilo6_other_resourcedefns166/#hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](ilo6_hpe_resourcedefns166/#hpeilolicensecollection)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](ilo6_hpe_resourcedefns166/#hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](ilo6_other_resourcedefns166/#logservicecollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](ilo6_other_resourcedefns166/#logentrycollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](ilo6_other_resourcedefns166/#logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](ilo6_manager_resourcedefns166/#managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](ilo6_hpe_resourcedefns166/#hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](ilo6_other_resourcedefns166/#logentrycollection)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](ilo6_other_resourcedefns166/#logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](ilo6_hpe_resourcedefns166/#hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](ilo6_hpe_resourcedefns166/#hpeautomaticcertenrollment)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](ilo6_hpe_resourcedefns166/#hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](ilo6_hpe_resourcedefns166/#hpecertificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](ilo6_hpe_resourcedefns166/#hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](ilo6_hpe_resourcedefns166/#hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](ilo6_hpe_resourcedefns166/#hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](ilo6_hpe_resourcedefns166/#hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](ilo6_hpe_resourcedefns166/#hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](ilo6_hpe_resourcedefns166/#hpeilosecurityparamcollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](ilo6_hpe_resourcedefns166/#hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Managers/{item}/SerialInterfaces`|Collection of [SerialInterface](ilo6_other_resourcedefns166/#serialinterfacecollection)|
|`/redfish/v1/Managers/{item}/SerialInterfaces/{item}`|[SerialInterface](ilo6_other_resourcedefns166/#serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](ilo6_hpe_resourcedefns166/#hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](ilo6_hpe_resourcedefns166/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](ilo6_hpe_resourcedefns166/#hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](ilo6_hpe_resourcedefns166/#hpesnmpuserscollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](ilo6_hpe_resourcedefns166/#hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](ilo6_other_resourcedefns166/#virtualmediacollection)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](ilo6_other_resourcedefns166/#virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](ilo6_other_resourcedefns166/#messageregistryfilecollection)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](ilo6_other_resourcedefns166/#messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](ilo6_hpe_resourcedefns166/#hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](ilo6_other_resourcedefns166/#sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](ilo6_other_resourcedefns166/#sessioncollection)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](ilo6_other_resourcedefns166/#session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](ilo6_computersystem_resourcedefns166/#computersystemcollection)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](ilo6_computersystem_resourcedefns166/#computersystem)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](ilo6_bios_resourcedefns166/#bios)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns166/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|[HpeKmsConfig](ilo6_hpe_resourcedefns166/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns166/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|[HpeServerConfigLock](ilo6_hpe_resourcedefns166/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](ilo6_bios_resourcedefns166/#bios)|
|`/redfish/v1/Systems/{item}/Bios/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns166/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/boot`|[HpeServerBootSettings](ilo6_hpe_resourcedefns166/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/Settings`|[HpeServerBootSettings](ilo6_hpe_resourcedefns166/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns166/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/iscsi`|[HpeiSCSISoftwareInitiator](ilo6_hpe_resourcedefns166/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/Settings`|[HpeiSCSISoftwareInitiator](ilo6_hpe_resourcedefns166/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns166/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/mappings`|[HpeBiosMapping](ilo6_hpe_resourcedefns166/#hpebiosmapping)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](ilo6_other_resourcedefns166/#bootoptioncollection)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](ilo6_other_resourcedefns166/#bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](ilo6_network_resourcedefns166/#ethernetinterfacecollection)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](ilo6_network_resourcedefns166/#ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](ilo6_other_resourcedefns166/#logservicecollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU`|[LogService](ilo6_other_resourcedefns166/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries`|Collection of [LogEntry](ilo6_other_resourcedefns166/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries/{item}`|[LogEntry](ilo6_other_resourcedefns166/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/Event`|[LogService](ilo6_other_resourcedefns166/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries`|Collection of [LogEntry](ilo6_other_resourcedefns166/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries/{item}`|[LogEntry](ilo6_other_resourcedefns166/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](ilo6_other_resourcedefns166/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](ilo6_other_resourcedefns166/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](ilo6_other_resourcedefns166/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/SL`|[LogService](ilo6_other_resourcedefns166/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries`|Collection of [LogEntry](ilo6_other_resourcedefns166/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries/{item}`|[LogEntry](ilo6_other_resourcedefns166/#logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](ilo6_other_resourcedefns166/#memorycollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](ilo6_other_resourcedefns166/#memorydomaincollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](ilo6_other_resourcedefns166/#memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](ilo6_other_resourcedefns166/#memorychunkscollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](ilo6_other_resourcedefns166/#memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](ilo6_network_resourcedefns166/#networkdevicefunction)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](ilo6_hpe_resourcedefns166/#hpeserverpcidevicecollection)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](ilo6_hpe_resourcedefns166/#hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](ilo6_hpe_resourcedefns166/#hpeserverpcislotcollection)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](ilo6_hpe_resourcedefns166/#hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](ilo6_other_resourcedefns166/#secureboot)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases`|Collection of [SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabasecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Signatures`|Collection of [Signature](ilo6_other_resourcedefns166/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Signatures/{item}`|[Signature](ilo6_other_resourcedefns166/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Signatures`|Collection of [Signature](ilo6_other_resourcedefns166/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Signatures/{item}`|[Signature](ilo6_other_resourcedefns166/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Signatures`|Collection of [Signature](ilo6_other_resourcedefns166/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Signatures/{item}`|[Signature](ilo6_other_resourcedefns166/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures`|Collection of [Signature](ilo6_other_resourcedefns166/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures/{item}`|[Signature](ilo6_other_resourcedefns166/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Signatures`|Collection of [Signature](ilo6_other_resourcedefns166/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Signatures/{item}`|[Signature](ilo6_other_resourcedefns166/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures`|Collection of [Signature](ilo6_other_resourcedefns166/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures/{item}`|[Signature](ilo6_other_resourcedefns166/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Signatures`|Collection of [Signature](ilo6_other_resourcedefns166/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Signatures/{item}`|[Signature](ilo6_other_resourcedefns166/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures`|Collection of [Signature](ilo6_other_resourcedefns166/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures/{item}`|[Signature](ilo6_other_resourcedefns166/#signature)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](ilo6_storage_resourcedefns166/#storagecollection)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](ilo6_hpe_resourcedefns166/#hpeusbdevicescollection)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](ilo6_hpe_resourcedefns166/#hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](ilo6_hpe_resourcedefns166/#hpeusbportscollection)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](ilo6_hpe_resourcedefns166/#hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [HpeWorkloadPerformanceAdvisor](ilo6_hpe_resourcedefns166/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](ilo6_hpe_resourcedefns166/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](ilo6_other_resourcedefns166/#taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](ilo6_other_resourcedefns166/#taskcollection)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](ilo6_other_resourcedefns166/#task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](ilo6_other_resourcedefns166/#telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](ilo6_other_resourcedefns166/#metricdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](ilo6_other_resourcedefns166/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](ilo6_other_resourcedefns166/#metricreportdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](ilo6_other_resourcedefns166/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](ilo6_other_resourcedefns166/#metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](ilo6_other_resourcedefns166/#metricreportcollection)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Triggers](ilo6_other_resourcedefns166/#triggerscollection)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](ilo6_other_resourcedefns166/#triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](ilo6_other_resourcedefns166/#updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](ilo6_hpe_resourcedefns166/#hpecomponentcollection)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](ilo6_hpe_resourcedefns166/#hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](ilo6_other_resourcedefns166/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](ilo6_other_resourcedefns166/#softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](ilo6_hpe_resourcedefns166/#hpecomponentinstallsetcollection)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](ilo6_hpe_resourcedefns166/#hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](ilo6_hpe_resourcedefns166/#hpeinvalidimagecollection)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](ilo6_hpe_resourcedefns166/#hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](ilo6_hpe_resourcedefns166/#hpemaintenancewindowcollection)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](ilo6_hpe_resourcedefns166/#hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](ilo6_other_resourcedefns166/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](ilo6_other_resourcedefns166/#softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](ilo6_hpe_resourcedefns166/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](ilo6_hpe_resourcedefns166/#hpecomponentupdatetask)|
|`/redfish/v1/accountservice/accounts/{item}/keys`|Collection of [Key](ilo6_other_resourcedefns166/#keycollection)|
|`/redfish/v1/accountservice/accounts/{item}/keys/{item}`|[Key](ilo6_other_resourcedefns166/#key)|
|`/redfish/v1/chassis/{item}/environmentmetrics`|[EnvironmentMetrics](ilo6_other_resourcedefns166/#environmentmetrics)|
|`/redfish/v1/chassis/{item}/networkadapters`|Collection of [NetworkAdapter](ilo6_network_resourcedefns166/#networkadaptercollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}`|[NetworkAdapter](ilo6_network_resourcedefns166/#networkadapter)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/assembly`|[Assembly](ilo6_other_resourcedefns166/#assembly)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions`|Collection of [NetworkDeviceFunction](ilo6_network_resourcedefns166/#networkdevicefunctioncollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}`|[NetworkDeviceFunction](ilo6_network_resourcedefns166/#networkdevicefunction)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}/settings`|[NetworkDeviceFunction](ilo6_network_resourcedefns166/#networkdevicefunction)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns166/#portcollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}/settings`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/settings`|[NetworkAdapter](ilo6_network_resourcedefns166/#networkadapter)|
|`/redfish/v1/chassis/{item}/sensors/{item}`|[Sensor](ilo6_other_resourcedefns166/#sensor)|
|`/redfish/v1/chassis/{item}/thermalsubsystem`|[ThermalSubsystem](ilo6_other_resourcedefns166/#thermalsubsystem)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans`|Collection of [Fan](ilo6_other_resourcedefns166/#fancollection)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans/{item}`|[Fan](ilo6_other_resourcedefns166/#fan)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans/{item}/assembly`|[Assembly](ilo6_other_resourcedefns166/#assembly)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps`|Collection of [Pump](ilo6_other_resourcedefns166/#pumpcollection)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps/{item}`|[Pump](ilo6_other_resourcedefns166/#pump)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps/{item}/assembly`|[Assembly](ilo6_other_resourcedefns166/#assembly)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/thermalmetrics`|[ThermalMetrics](ilo6_other_resourcedefns166/#thermalmetrics)|
|`/redfish/v1/fabrics`|Collection of [Fabric](ilo6_other_resourcedefns166/#fabriccollection)|
|`/redfish/v1/fabrics/{item}`|[Fabric](ilo6_other_resourcedefns166/#fabric)|
|`/redfish/v1/fabrics/{item}/switches`|Collection of [Switch](ilo6_other_resourcedefns166/#switchcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}`|[Switch](ilo6_other_resourcedefns166/#switch)|
|`/redfish/v1/fabrics/{item}/switches/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns166/#portcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/managers/{item}/dedicatednetworkports`|Collection of [Port](ilo6_other_resourcedefns166/#portcollection)|
|`/redfish/v1/managers/{item}/dedicatednetworkports/{item}`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/managers/{item}/logservices/iel`|[LogService](ilo6_other_resourcedefns166/#logservice)|
|`/redfish/v1/managers/{item}/securityservice/bmchpeldevid/certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmchpeldevid/certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmciak/certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmciak/certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmcidevidpca/certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmcidevidpca/certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmclak/certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmclak/certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemlak/certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemlak/certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemldevid/certificates`|Collection of [Certificate](ilo6_other_resourcedefns166/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemldevid/certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/managers/{item}/sharednetworkports`|Collection of [Port](ilo6_other_resourcedefns166/#portcollection)|
|`/redfish/v1/managers/{item}/sharednetworkports/{item}`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/systems/{item}/bios/Kmsconfig`|[HpeKmsConfig](ilo6_hpe_resourcedefns166/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/Serverconfiglock`|[HpeServerConfigLock](ilo6_hpe_resourcedefns166/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig`|[HpeTlsConfig](ilo6_hpe_resourcedefns166/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/Settings`|[HpeTlsConfig](ilo6_hpe_resourcedefns166/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns166/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/memory/{item}`|[Memory](ilo6_other_resourcedefns166/#memory)|
|`/redfish/v1/systems/{item}/memory/{item}/memorymetrics`|[MemoryMetrics](ilo6_other_resourcedefns166/#memorymetrics)|
|`/redfish/v1/systems/{item}/networkinterfaces`|Collection of [NetworkInterface](ilo6_network_resourcedefns166/#networkinterfacecollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}`|[NetworkInterface](ilo6_network_resourcedefns166/#networkinterface)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](ilo6_network_resourcedefns166/#networkdevicefunctioncollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns166/#portcollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}/settings`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/systems/{item}/processors`|Collection of [Processor](ilo6_other_resourcedefns166/#processorcollection)|
|`/redfish/v1/systems/{item}/processors/{item}`|[Processor](ilo6_other_resourcedefns166/#processor)|
|`/redfish/v1/systems/{item}/processors/{item}/environmentmetrics`|[EnvironmentMetrics](ilo6_other_resourcedefns166/#environmentmetrics)|
|`/redfish/v1/systems/{item}/processors/{item}/processormetrics`|[ProcessorMetrics](ilo6_other_resourcedefns166/#processormetrics)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault`|[SecureBootDatabase](ilo6_other_resourcedefns166/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates/{item}`|[Certificate](ilo6_other_resourcedefns166/#certificate)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/`|Collection of [StorageController](ilo6_storage_resourcedefns166/#storagecontrollercollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}`|[StorageController](ilo6_storage_resourcedefns166/#storagecontroller)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns166/#portcollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/systems/{item}/storage/{item}/storageControllers/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns166/#port)|
|`/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns166/#portcollection)|
|`redfish/v1/Chassis/{item}/BaseFrus`|Collection of [HpeiLOFrus](ilo6_hpe_resourcedefns166/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}`|[HpeiLOFrus](ilo6_hpe_resourcedefns166/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}/Details`|[HpeiLOFrus](ilo6_hpe_resourcedefns166/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus`|Collection of [HpeiLOFrus](ilo6_hpe_resourcedefns166/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}`|[HpeiLOFrus](ilo6_hpe_resourcedefns166/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}/Details`|[HpeiLOFrus](ilo6_hpe_resourcedefns166/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/PCIeDevices`|Collection of [PCIeDevice](ilo6_other_resourcedefns166/#pciedevicecollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}`|[PCIeDevice](ilo6_other_resourcedefns166/#pciedevice)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions`|Collection of [PCIeFunction](ilo6_other_resourcedefns166/#pciefunctioncollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions/{item}`|[PCIeFunction](ilo6_other_resourcedefns166/#pciefunction)|
|`redfish/v1/Chassis/{item}/PCIeSlots`|[PCIeSlots](ilo6_other_resourcedefns166/#pcieslots)|
|`redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](ilo6_network_resourcedefns166/#networkdevicefunction)|
|`redfish/v1/Systems/{item}/SecureEraseReportService`|[HpeSecureEraseReportService](ilo6_hpe_resourcedefns166/#hpesecureerasereportservice)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](ilo6_hpe_resourcedefns166/#hpesecureerasereportcollection)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/{item}`|[HpeSecureEraseReport](ilo6_hpe_resourcedefns166/#hpesecureerasereport)|
|`redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}`|[Drive](ilo6_storage_resourcedefns166/#drive)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes`|Collection of [Volume](ilo6_storage_resourcedefns166/#volumecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}`|[Volume](ilo6_storage_resourcedefns166/#volume)|
|`redfish/v1/systems/{item}/storage/{item}`|[Storage](ilo6_storage_resourcedefns166/#storage)|
