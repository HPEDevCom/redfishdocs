---
excludeFromSearch: true
seo:
  title: iLO 6 version 1.57 Resource map
toc:
  enable: false
disableLastModified: false
---

# Resource map of iLO 6 v1.57

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](../ilo6_serviceroot_resourcedefns157/#serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](../ilo6_other_resourcedefns157/#accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](../ilo6_manager_resourcedefns157/#manageraccountcollection)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](../ilo6_manager_resourcedefns157/#manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](../ilo6_hpe_resourcedefns157/#hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](../ilo6_other_resourcedefns157/#rolecollection)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](../ilo6_other_resourcedefns157/#role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../ilo6_hpe_resourcedefns157/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](../ilo6_hpe_resourcedefns157/#hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService`|[CertificateService](../ilo6_other_resourcedefns157/#certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations`|[CertificateLocations](../ilo6_other_resourcedefns157/#certificatelocations)|
|`/redfish/v1/Chassis`|Collection of [Chassis](../ilo6_chassis_resourcedefns157/#chassiscollection)|
|`/redfish/v1/Chassis/{item}`|[Chassis](../ilo6_chassis_resourcedefns157/#chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](../ilo6_hpe_resourcedefns157/#hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](../ilo6_hpe_resourcedefns157/#hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](../ilo6_hpe_resourcedefns157/#hpeserverdevicecollection)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](../ilo6_hpe_resourcedefns157/#hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters`|Collection of [NetworkAdapter](../ilo6_network_resourcedefns157/#networkadaptercollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}`|[NetworkAdapter](../ilo6_network_resourcedefns157/#networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo6_network_resourcedefns157/#networkdevicefunctioncollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo6_network_resourcedefns157/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo6_network_resourcedefns157/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports`|Collection of [Port](../ilo6_other_resourcedefns157/#portcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns157/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}/Settings`|[Port](../ilo6_other_resourcedefns157/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Settings`|[NetworkAdapter](../ilo6_network_resourcedefns157/#networkadapter)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](../ilo6_other_resourcedefns157/#power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](../ilo6_hpe_resourcedefns157/#hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](../ilo6_hpe_resourcedefns157/#hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](../ilo6_hpe_resourcedefns157/#hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](../ilo6_hpe_resourcedefns157/#hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](../ilo6_hpe_resourcedefns157/#hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](../ilo6_hpe_resourcedefns157/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](../ilo6_hpe_resourcedefns157/#hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](../ilo6_hpe_resourcedefns157/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](../ilo6_other_resourcedefns157/#thermal)|
|`/redfish/v1/ComponentIntegrity`|Collection of [ComponentIntegrity](../ilo6_other_resourcedefns157/#componentintegritycollection)|
|`/redfish/v1/ComponentIntegrity/{item}`|[ComponentIntegrity](../ilo6_other_resourcedefns157/#componentintegrity)|
|`/redfish/v1/EventService`|[EventService](../ilo6_other_resourcedefns157/#eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](../ilo6_hpe_resourcedefns157/#hpecertificatecollection)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](../ilo6_hpe_resourcedefns157/#hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](../ilo6_other_resourcedefns157/#eventdestinationcollection)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](../ilo6_other_resourcedefns157/#eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](../ilo6_other_resourcedefns157/#jsonschemafilecollection)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](../ilo6_other_resourcedefns157/#jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](../ilo6_manager_resourcedefns157/#managercollection)|
|`/redfish/v1/Managers/{item}`|[Manager](../ilo6_manager_resourcedefns157/#manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](../ilo6_hpe_resourcedefns157/#hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](../ilo6_hpe_resourcedefns157/#hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](../ilo6_hpe_resourcedefns157/#hpeilobackupfilecollection)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](../ilo6_hpe_resourcedefns157/#hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](../ilo6_hpe_resourcedefns157/#hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](../ilo6_hpe_resourcedefns157/#hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo6_network_resourcedefns157/#ethernetinterfacecollection)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo6_network_resourcedefns157/#ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](../ilo6_hpe_resourcedefns157/#hpeilofederationgroupcollection)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](../ilo6_hpe_resourcedefns157/#hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](../ilo6_hpe_resourcedefns157/#hpeilofederationpeerscollection)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](../ilo6_hpe_resourcedefns157/#hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](../ilo6_other_resourcedefns157/#hostinterfacecollection)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](../ilo6_other_resourcedefns157/#hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](../ilo6_hpe_resourcedefns157/#hpeilolicensecollection)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](../ilo6_hpe_resourcedefns157/#hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](../ilo6_other_resourcedefns157/#logservicecollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL`|[LogService](../ilo6_other_resourcedefns157/#logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns157/#logentrycollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns157/#logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](../ilo6_manager_resourcedefns157/#managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](../ilo6_hpe_resourcedefns157/#hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](../ilo6_other_resourcedefns157/#logentrycollection)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](../ilo6_other_resourcedefns157/#logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](../ilo6_hpe_resourcedefns157/#hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](../ilo6_hpe_resourcedefns157/#hpeautomaticcertenrollment)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](../ilo6_hpe_resourcedefns157/#hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](../ilo6_hpe_resourcedefns157/#hpecertificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](../ilo6_hpe_resourcedefns157/#hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](../ilo6_hpe_resourcedefns157/#hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](../ilo6_hpe_resourcedefns157/#hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](../ilo6_hpe_resourcedefns157/#hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](../ilo6_hpe_resourcedefns157/#hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo6_hpe_resourcedefns157/#hpeilosecurityparamcollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](../ilo6_hpe_resourcedefns157/#hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Managers/{item}/SerialInterfaces`|Collection of [SerialInterface](../ilo6_other_resourcedefns157/#serialinterfacecollection)|
|`/redfish/v1/Managers/{item}/SerialInterfaces/{item}`|[SerialInterface](../ilo6_other_resourcedefns157/#serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](../ilo6_hpe_resourcedefns157/#hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../ilo6_hpe_resourcedefns157/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](../ilo6_hpe_resourcedefns157/#hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](../ilo6_hpe_resourcedefns157/#hpesnmpuserscollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](../ilo6_hpe_resourcedefns157/#hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](../ilo6_other_resourcedefns157/#virtualmediacollection)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](../ilo6_other_resourcedefns157/#virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](../ilo6_other_resourcedefns157/#messageregistryfilecollection)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](../ilo6_other_resourcedefns157/#messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](../ilo6_hpe_resourcedefns157/#hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](../ilo6_other_resourcedefns157/#sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](../ilo6_other_resourcedefns157/#sessioncollection)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](../ilo6_other_resourcedefns157/#session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](../ilo6_computersystem_resourcedefns157/#computersystemcollection)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](../ilo6_computersystem_resourcedefns157/#computersystem)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](../ilo6_bios_resourcedefns157/#bios)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns157/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|[HpeKmsConfig](../ilo6_hpe_resourcedefns157/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns157/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|[HpeServerConfigLock](../ilo6_hpe_resourcedefns157/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](../ilo6_bios_resourcedefns157/#bios)|
|`/redfish/v1/Systems/{item}/Bios/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns157/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/boot`|[HpeServerBootSettings](../ilo6_hpe_resourcedefns157/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/Settings`|[HpeServerBootSettings](../ilo6_hpe_resourcedefns157/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns157/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/iscsi`|[HpeiSCSISoftwareInitiator](../ilo6_hpe_resourcedefns157/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/Settings`|[HpeiSCSISoftwareInitiator](../ilo6_hpe_resourcedefns157/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns157/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/mappings`|[HpeBiosMapping](../ilo6_hpe_resourcedefns157/#hpebiosmapping)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig`|[HpeTlsConfig](../ilo6_hpe_resourcedefns157/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/Settings`|[HpeTlsConfig](../ilo6_hpe_resourcedefns157/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns157/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](../ilo6_other_resourcedefns157/#bootoptioncollection)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](../ilo6_other_resourcedefns157/#bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo6_network_resourcedefns157/#ethernetinterfacecollection)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo6_network_resourcedefns157/#ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](../ilo6_other_resourcedefns157/#logservicecollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU`|[LogService](../ilo6_other_resourcedefns157/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns157/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns157/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/Event`|[LogService](../ilo6_other_resourcedefns157/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns157/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns157/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](../ilo6_other_resourcedefns157/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns157/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns157/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/SL`|[LogService](../ilo6_other_resourcedefns157/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns157/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns157/#logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](../ilo6_other_resourcedefns157/#memorycollection)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](../ilo6_other_resourcedefns157/#memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](../ilo6_other_resourcedefns157/#memorydomaincollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](../ilo6_other_resourcedefns157/#memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](../ilo6_other_resourcedefns157/#memorychunkscollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](../ilo6_other_resourcedefns157/#memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces`|Collection of [NetworkInterface](../ilo6_network_resourcedefns157/#networkinterfacecollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}`|[NetworkInterface](../ilo6_network_resourcedefns157/#networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo6_network_resourcedefns157/#networkdevicefunctioncollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo6_network_resourcedefns157/#networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports`|Collection of [Port](../ilo6_other_resourcedefns157/#portcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns157/#port)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}/Settings`|[Port](../ilo6_other_resourcedefns157/#port)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](../ilo6_hpe_resourcedefns157/#hpeserverpcidevicecollection)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](../ilo6_hpe_resourcedefns157/#hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](../ilo6_hpe_resourcedefns157/#hpeserverpcislotcollection)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](../ilo6_hpe_resourcedefns157/#hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors`|Collection of [Processor](../ilo6_other_resourcedefns157/#processorcollection)|
|`/redfish/v1/Systems/{item}/Processors/{item}`|[Processor](../ilo6_other_resourcedefns157/#processor)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](../ilo6_other_resourcedefns157/#secureboot)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases`|Collection of [SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabasecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns157/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns157/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns157/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns157/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns157/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns157/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns157/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns157/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns157/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns157/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns157/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns157/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns157/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns157/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns157/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns157/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns157/#signature)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](../ilo6_storage_resourcedefns157/#storagecollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/`|Collection of [StorageController](../ilo6_storage_resourcedefns157/#storagecontrollercollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}`|[StorageController](../ilo6_storage_resourcedefns157/#storagecontroller)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns157/#port)|
|`/redfish/v1/Systems/{item}/Storage/{item}/StorageControllers/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns157/#port)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](../ilo6_hpe_resourcedefns157/#hpeusbdevicescollection)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](../ilo6_hpe_resourcedefns157/#hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](../ilo6_hpe_resourcedefns157/#hpeusbportscollection)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](../ilo6_hpe_resourcedefns157/#hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [HpeWorkloadPerformanceAdvisor](../ilo6_hpe_resourcedefns157/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](../ilo6_hpe_resourcedefns157/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](../ilo6_other_resourcedefns157/#taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](../ilo6_other_resourcedefns157/#taskcollection)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](../ilo6_other_resourcedefns157/#task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](../ilo6_other_resourcedefns157/#telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](../ilo6_other_resourcedefns157/#metricdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](../ilo6_other_resourcedefns157/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](../ilo6_other_resourcedefns157/#metricreportdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](../ilo6_other_resourcedefns157/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](../ilo6_other_resourcedefns157/#metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](../ilo6_other_resourcedefns157/#metricreportcollection)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Triggers](../ilo6_other_resourcedefns157/#triggerscollection)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](../ilo6_other_resourcedefns157/#triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](../ilo6_other_resourcedefns157/#updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](../ilo6_hpe_resourcedefns157/#hpecomponentcollection)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](../ilo6_hpe_resourcedefns157/#hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](../ilo6_other_resourcedefns157/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](../ilo6_other_resourcedefns157/#softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](../ilo6_hpe_resourcedefns157/#hpecomponentinstallsetcollection)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](../ilo6_hpe_resourcedefns157/#hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](../ilo6_hpe_resourcedefns157/#hpeinvalidimagecollection)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](../ilo6_hpe_resourcedefns157/#hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](../ilo6_hpe_resourcedefns157/#hpemaintenancewindowcollection)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](../ilo6_hpe_resourcedefns157/#hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](../ilo6_other_resourcedefns157/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](../ilo6_other_resourcedefns157/#softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](../ilo6_hpe_resourcedefns157/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](../ilo6_hpe_resourcedefns157/#hpecomponentupdatetask)|
|`/redfish/v1/fabrics`|Collection of [Fabric](../ilo6_other_resourcedefns157/#fabriccollection)|
|`/redfish/v1/fabrics/{item}`|[Fabric](../ilo6_other_resourcedefns157/#fabric)|
|`/redfish/v1/fabrics/{item}/switches`|Collection of [SwitchCollection](#switchcollection-switchcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}`|[Switch](../ilo6_other_resourcedefns157/#switch)|
|`/redfish/v1/fabrics/{item}/switches/{item}/Ports`|Collection of [Port](../ilo6_other_resourcedefns157/#portcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns157/#port)|
|`/redfish/v1/systems/{item}/bios/Kmsconfig`|[HpeKmsConfig](../ilo6_hpe_resourcedefns157/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/Serverconfiglock`|[HpeServerConfigLock](../ilo6_hpe_resourcedefns157/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault`|[SecureBootDatabase](../ilo6_other_resourcedefns157/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates/{item}`|[Certificate](../ilo6_other_resourcedefns157/#certificate)|
|`redfish/v1/Chassis/{item}/BaseFrus`|Collection of [HpeiLOFrus](../ilo6_hpe_resourcedefns157/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}`|[HpeiLOFrus](../ilo6_hpe_resourcedefns157/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}/Details`|[HpeiLOFrus](../ilo6_hpe_resourcedefns157/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus`|Collection of [HpeiLOFrus](../ilo6_hpe_resourcedefns157/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}`|[HpeiLOFrus](../ilo6_hpe_resourcedefns157/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}/Details`|[HpeiLOFrus](../ilo6_hpe_resourcedefns157/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/PCIeDevices`|Collection of [PCIeDevice](../ilo6_other_resourcedefns157/#pciedevicecollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}`|[PCIeDevice](../ilo6_other_resourcedefns157/#pciedevice)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions`|Collection of [PCIeFunction](../ilo6_other_resourcedefns157/#pciefunctioncollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions/{item}`|[PCIeFunction](../ilo6_other_resourcedefns157/#pciefunction)|
|`redfish/v1/Chassis/{item}/PCIeSlots`|[PCIeSlots](../ilo6_other_resourcedefns157/#pcieslots)|
|`redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo6_network_resourcedefns157/#networkdevicefunction)|
|`redfish/v1/Systems/{item}/SecureEraseReportService`|[HpeSecureEraseReportService](../ilo6_hpe_resourcedefns157/#hpesecureerasereportservice)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](../ilo6_hpe_resourcedefns157/#hpesecureerasereportcollection)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/{item}`|[HpeSecureEraseReport](../ilo6_hpe_resourcedefns157/#hpesecureerasereport)|
|`redfish/v1/Systems/{item}/Storage/{item}`|[Storage](../ilo6_storage_resourcedefns157/#storage)|
|`redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}`|[Drive](../ilo6_storage_resourcedefns157/#drive)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes`|Collection of [Volume](../ilo6_storage_resourcedefns157/#volumecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}`|[Volume](../ilo6_storage_resourcedefns157/#volume)|
