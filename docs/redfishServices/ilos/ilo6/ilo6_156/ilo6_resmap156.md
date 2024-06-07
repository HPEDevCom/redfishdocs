---
excludeFromSearch: true
seo:
  title: iLO 6 version 1.56 Resource map
toc:
  enable: false
disableLastModified: false
---

# Resource map of iLO 6 v1.56

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](../ilo6_serviceroot_resourcedefns156/#serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](../ilo6_other_resourcedefns156/#accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](../ilo6_manager_resourcedefns156/#manageraccountcollection)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](../ilo6_manager_resourcedefns156/#manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](../ilo6_hpe_resourcedefns156/#hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](../ilo6_other_resourcedefns156/#rolecollection)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](../ilo6_other_resourcedefns156/#role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../ilo6_hpe_resourcedefns156/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](../ilo6_hpe_resourcedefns156/#hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService`|[CertificateService](../ilo6_other_resourcedefns156/#certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations`|[CertificateLocations](../ilo6_other_resourcedefns156/#certificatelocations)|
|`/redfish/v1/Chassis`|Collection of [Chassis](../ilo6_chassis_resourcedefns156/#chassiscollection)|
|`/redfish/v1/Chassis/{item}`|[Chassis](../ilo6_chassis_resourcedefns156/#chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](../ilo6_hpe_resourcedefns156/#hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](../ilo6_hpe_resourcedefns156/#hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](../ilo6_hpe_resourcedefns156/#hpeserverdevicecollection)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](../ilo6_hpe_resourcedefns156/#hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters`|Collection of [NetworkAdapter](../ilo6_network_resourcedefns156/#networkadaptercollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}`|[NetworkAdapter](../ilo6_network_resourcedefns156/#networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo6_network_resourcedefns156/#networkdevicefunctioncollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo6_network_resourcedefns156/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo6_network_resourcedefns156/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports`|Collection of [Port](../ilo6_other_resourcedefns156/#portcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns156/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}/Settings`|[Port](../ilo6_other_resourcedefns156/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Settings`|[NetworkAdapter](../ilo6_network_resourcedefns156/#networkadapter)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](../ilo6_other_resourcedefns156/#power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](../ilo6_hpe_resourcedefns156/#hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](../ilo6_hpe_resourcedefns156/#hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](../ilo6_hpe_resourcedefns156/#hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](../ilo6_hpe_resourcedefns156/#hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](../ilo6_hpe_resourcedefns156/#hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](../ilo6_hpe_resourcedefns156/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](../ilo6_hpe_resourcedefns156/#hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](../ilo6_hpe_resourcedefns156/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](../ilo6_other_resourcedefns156/#thermal)|
|`/redfish/v1/ComponentIntegrity`|Collection of [ComponentIntegrity](../ilo6_other_resourcedefns156/#componentintegritycollection)|
|`/redfish/v1/ComponentIntegrity/{item}`|[ComponentIntegrity](../ilo6_other_resourcedefns156/#componentintegrity)|
|`/redfish/v1/EventService`|[EventService](../ilo6_other_resourcedefns156/#eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](../ilo6_hpe_resourcedefns156/#hpecertificatecollection)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](../ilo6_hpe_resourcedefns156/#hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](../ilo6_other_resourcedefns156/#eventdestinationcollection)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](../ilo6_other_resourcedefns156/#eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](../ilo6_other_resourcedefns156/#jsonschemafilecollection)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](../ilo6_other_resourcedefns156/#jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](../ilo6_manager_resourcedefns156/#managercollection)|
|`/redfish/v1/Managers/{item}`|[Manager](../ilo6_manager_resourcedefns156/#manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](../ilo6_hpe_resourcedefns156/#hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](../ilo6_hpe_resourcedefns156/#hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](../ilo6_hpe_resourcedefns156/#hpeilobackupfilecollection)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](../ilo6_hpe_resourcedefns156/#hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](../ilo6_hpe_resourcedefns156/#hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](../ilo6_hpe_resourcedefns156/#hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo6_network_resourcedefns156/#ethernetinterfacecollection)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo6_network_resourcedefns156/#ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](../ilo6_hpe_resourcedefns156/#hpeilofederationgroupcollection)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](../ilo6_hpe_resourcedefns156/#hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](../ilo6_hpe_resourcedefns156/#hpeilofederationpeerscollection)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](../ilo6_hpe_resourcedefns156/#hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](../ilo6_other_resourcedefns156/#hostinterfacecollection)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](../ilo6_other_resourcedefns156/#hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](../ilo6_hpe_resourcedefns156/#hpeilolicensecollection)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](../ilo6_hpe_resourcedefns156/#hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](../ilo6_other_resourcedefns156/#logservicecollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL`|[LogService](../ilo6_other_resourcedefns156/#logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns156/#logentrycollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns156/#logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](../ilo6_manager_resourcedefns156/#managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](../ilo6_hpe_resourcedefns156/#hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](../ilo6_other_resourcedefns156/#logentrycollection)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](../ilo6_other_resourcedefns156/#logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](../ilo6_hpe_resourcedefns156/#hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](../ilo6_hpe_resourcedefns156/#hpeautomaticcertenrollment)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](../ilo6_hpe_resourcedefns156/#hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](../ilo6_hpe_resourcedefns156/#hpecertificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](../ilo6_hpe_resourcedefns156/#hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](../ilo6_hpe_resourcedefns156/#hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](../ilo6_hpe_resourcedefns156/#hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](../ilo6_hpe_resourcedefns156/#hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](../ilo6_hpe_resourcedefns156/#hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo6_hpe_resourcedefns156/#hpeilosecurityparamcollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](../ilo6_hpe_resourcedefns156/#hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Managers/{item}/SerialInterfaces`|Collection of [SerialInterface](../ilo6_other_resourcedefns156/#serialinterfacecollection)|
|`/redfish/v1/Managers/{item}/SerialInterfaces/{item}`|[SerialInterface](../ilo6_other_resourcedefns156/#serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](../ilo6_hpe_resourcedefns156/#hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../ilo6_hpe_resourcedefns156/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](../ilo6_hpe_resourcedefns156/#hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](../ilo6_hpe_resourcedefns156/#hpesnmpuserscollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](../ilo6_hpe_resourcedefns156/#hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](../ilo6_other_resourcedefns156/#virtualmediacollection)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](../ilo6_other_resourcedefns156/#virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](../ilo6_other_resourcedefns156/#messageregistryfilecollection)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](../ilo6_other_resourcedefns156/#messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](../ilo6_hpe_resourcedefns156/#hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](../ilo6_other_resourcedefns156/#sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](../ilo6_other_resourcedefns156/#sessioncollection)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](../ilo6_other_resourcedefns156/#session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](../ilo6_computersystem_resourcedefns156/#computersystemcollection)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](../ilo6_computersystem_resourcedefns156/#computersystem)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](../ilo6_bios_resourcedefns156/#bios)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns156/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|[HpeKmsConfig](../ilo6_hpe_resourcedefns156/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns156/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|[HpeServerConfigLock](../ilo6_hpe_resourcedefns156/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](../ilo6_bios_resourcedefns156/#bios)|
|`/redfish/v1/Systems/{item}/Bios/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns156/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/boot`|[HpeServerBootSettings](../ilo6_hpe_resourcedefns156/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/Settings`|[HpeServerBootSettings](../ilo6_hpe_resourcedefns156/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns156/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/iscsi`|[HpeiSCSISoftwareInitiator](../ilo6_hpe_resourcedefns156/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/Settings`|[HpeiSCSISoftwareInitiator](../ilo6_hpe_resourcedefns156/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns156/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/mappings`|[HpeBiosMapping](../ilo6_hpe_resourcedefns156/#hpebiosmapping)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig`|[HpeTlsConfig](../ilo6_hpe_resourcedefns156/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig/Settings`|[HpeTlsConfig](../ilo6_hpe_resourcedefns156/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns156/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](../ilo6_other_resourcedefns156/#bootoptioncollection)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](../ilo6_other_resourcedefns156/#bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo6_network_resourcedefns156/#ethernetinterfacecollection)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo6_network_resourcedefns156/#ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](../ilo6_other_resourcedefns156/#logservicecollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU`|[LogService](../ilo6_other_resourcedefns156/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns156/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns156/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/Event`|[LogService](../ilo6_other_resourcedefns156/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns156/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns156/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](../ilo6_other_resourcedefns156/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns156/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns156/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/SL`|[LogService](../ilo6_other_resourcedefns156/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns156/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns156/#logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](../ilo6_other_resourcedefns156/#memorycollection)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](../ilo6_other_resourcedefns156/#memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](../ilo6_other_resourcedefns156/#memorydomaincollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](../ilo6_other_resourcedefns156/#memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](../ilo6_other_resourcedefns156/#memorychunkscollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](../ilo6_other_resourcedefns156/#memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces`|Collection of [NetworkInterface](../ilo6_network_resourcedefns156/#networkinterfacecollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}`|[NetworkInterface](../ilo6_network_resourcedefns156/#networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo6_network_resourcedefns156/#networkdevicefunctioncollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo6_network_resourcedefns156/#networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports`|Collection of [Port](../ilo6_other_resourcedefns156/#portcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns156/#port)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}/Settings`|[Port](../ilo6_other_resourcedefns156/#port)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](../ilo6_hpe_resourcedefns156/#hpeserverpcidevicecollection)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](../ilo6_hpe_resourcedefns156/#hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](../ilo6_hpe_resourcedefns156/#hpeserverpcislotcollection)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](../ilo6_hpe_resourcedefns156/#hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors`|Collection of [Processor](../ilo6_other_resourcedefns156/#processorcollection)|
|`/redfish/v1/Systems/{item}/Processors/{item}`|[Processor](../ilo6_other_resourcedefns156/#processor)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](../ilo6_other_resourcedefns156/#secureboot)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases`|Collection of [SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabasecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEK/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/KEKDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PKDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns156/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/db/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns156/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns156/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbDefault/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns156/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns156/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbr/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns156/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns156/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbrDefault/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns156/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns156/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbt/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns156/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns156/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbtDefault/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns156/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns156/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbx/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns156/#signature)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns156/#certificatecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures`|Collection of [Signature](../ilo6_other_resourcedefns156/#signaturecollection)|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/dbxDefault/Signatures/{item}`|[Signature](../ilo6_other_resourcedefns156/#signature)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](../ilo6_storage_resourcedefns156/#storagecollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/`|Collection of [StorageController](../ilo6_storage_resourcedefns156/#storagecontrollercollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}`|[StorageController](../ilo6_storage_resourcedefns156/#storagecontroller)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns156/#port)|
|`/redfish/v1/Systems/{item}/Storage/{item}/StorageControllers/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns156/#port)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](../ilo6_hpe_resourcedefns156/#hpeusbdevicescollection)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](../ilo6_hpe_resourcedefns156/#hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](../ilo6_hpe_resourcedefns156/#hpeusbportscollection)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](../ilo6_hpe_resourcedefns156/#hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [HpeWorkloadPerformanceAdvisor](../ilo6_hpe_resourcedefns156/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](../ilo6_hpe_resourcedefns156/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](../ilo6_other_resourcedefns156/#taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](../ilo6_other_resourcedefns156/#taskcollection)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](../ilo6_other_resourcedefns156/#task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](../ilo6_other_resourcedefns156/#telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](../ilo6_other_resourcedefns156/#metricdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](../ilo6_other_resourcedefns156/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](../ilo6_other_resourcedefns156/#metricreportdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](../ilo6_other_resourcedefns156/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](../ilo6_other_resourcedefns156/#metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](../ilo6_other_resourcedefns156/#metricreportcollection)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Triggers](../ilo6_other_resourcedefns156/#triggerscollection)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](../ilo6_other_resourcedefns156/#triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](../ilo6_other_resourcedefns156/#updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](../ilo6_hpe_resourcedefns156/#hpecomponentcollection)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](../ilo6_hpe_resourcedefns156/#hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](../ilo6_other_resourcedefns156/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](../ilo6_other_resourcedefns156/#softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](../ilo6_hpe_resourcedefns156/#hpecomponentinstallsetcollection)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](../ilo6_hpe_resourcedefns156/#hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](../ilo6_hpe_resourcedefns156/#hpeinvalidimagecollection)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](../ilo6_hpe_resourcedefns156/#hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](../ilo6_hpe_resourcedefns156/#hpemaintenancewindowcollection)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](../ilo6_hpe_resourcedefns156/#hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](../ilo6_other_resourcedefns156/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](../ilo6_other_resourcedefns156/#softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](../ilo6_hpe_resourcedefns156/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](../ilo6_hpe_resourcedefns156/#hpecomponentupdatetask)|
|`/redfish/v1/fabrics`|Collection of [Fabric](../ilo6_other_resourcedefns156/#fabriccollection)|
|`/redfish/v1/fabrics/{item}`|[Fabric](../ilo6_other_resourcedefns156/#fabric)|
|`/redfish/v1/fabrics/{item}/switches`|Collection of [SwitchCollection](#switchcollection-switchcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}`|[Switch](../ilo6_other_resourcedefns156/#switch)|
|`/redfish/v1/fabrics/{item}/switches/{item}/Ports`|Collection of [Port](../ilo6_other_resourcedefns156/#portcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns156/#port)|
|`/redfish/v1/systems/{item}/bios/Kmsconfig`|[HpeKmsConfig](../ilo6_hpe_resourcedefns156/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/Serverconfiglock`|[HpeServerConfigLock](../ilo6_hpe_resourcedefns156/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault`|[SecureBootDatabase](../ilo6_other_resourcedefns156/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates/{item}`|[Certificate](../ilo6_other_resourcedefns156/#certificate)|
|`redfish/v1/Chassis/{item}/BaseFrus`|Collection of [HpeiLOFrus](../ilo6_hpe_resourcedefns156/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}`|[HpeiLOFrus](../ilo6_hpe_resourcedefns156/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}/Details`|[HpeiLOFrus](../ilo6_hpe_resourcedefns156/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus`|Collection of [HpeiLOFrus](../ilo6_hpe_resourcedefns156/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}`|[HpeiLOFrus](../ilo6_hpe_resourcedefns156/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}/Details`|[HpeiLOFrus](../ilo6_hpe_resourcedefns156/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/PCIeDevices`|Collection of [PCIeDevice](../ilo6_other_resourcedefns156/#pciedevicecollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}`|[PCIeDevice](../ilo6_other_resourcedefns156/#pciedevice)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions`|Collection of [PCIeFunction](../ilo6_other_resourcedefns156/#pciefunctioncollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions/{item}`|[PCIeFunction](../ilo6_other_resourcedefns156/#pciefunction)|
|`redfish/v1/Chassis/{item}/PCIeSlots`|[PCIeSlots](../ilo6_other_resourcedefns156/#pcieslots)|
|`redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo6_network_resourcedefns156/#networkdevicefunction)|
|`redfish/v1/Systems/{item}/SecureEraseReportService`|[HpeSecureEraseReportService](../ilo6_hpe_resourcedefns156/#hpesecureerasereportservice)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](../ilo6_hpe_resourcedefns156/#hpesecureerasereportcollection)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/{item}`|[HpeSecureEraseReport](../ilo6_hpe_resourcedefns156/#hpesecureerasereport)|
|`redfish/v1/Systems/{item}/Storage/{item}`|[Storage](../ilo6_storage_resourcedefns156/#storage)|
|`redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}`|[Drive](../ilo6_storage_resourcedefns156/#drive)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes`|Collection of [Volume](../ilo6_storage_resourcedefns156/#volumecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}`|[Volume](../ilo6_storage_resourcedefns156/#volume)|
