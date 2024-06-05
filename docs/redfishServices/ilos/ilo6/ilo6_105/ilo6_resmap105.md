---
excludeFromSearch: true
seo:
  title: iLO 6 version 1.05 Resource map
toc:
  enable: false
disableLastModified: false
---

# Resource map of iLO 6 v1.05

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.


# Resource Map
|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](../ilo6_serviceroot_resourcedefns105/#serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](../ilo6_other_resourcedefns105/#accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](../ilo6_manager_resourcedefns105/#manageraccountcollection)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](../ilo6_manager_resourcedefns105/#manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](../ilo6_hpe_resourcedefns105/#hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns105/#certificatecollection)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns105/#certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](../ilo6_other_resourcedefns105/#rolecollection)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](../ilo6_other_resourcedefns105/#role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../ilo6_hpe_resourcedefns105/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](../ilo6_hpe_resourcedefns105/#hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService`|[CertificateService](../ilo6_other_resourcedefns105/#certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations`|[CertificateLocations](../ilo6_other_resourcedefns105/#certificatelocations)|
|`/redfish/v1/Chassis`|Collection of [Chassis](../ilo6_chassis_resourcedefns105/#chassiscollection)|
|`/redfish/v1/Chassis/{item}`|[Chassis](../ilo6_chassis_resourcedefns105/#chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](../ilo6_hpe_resourcedefns105/#hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](../ilo6_hpe_resourcedefns105/#hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](../ilo6_hpe_resourcedefns105/#hpeserverdevicecollection)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](../ilo6_hpe_resourcedefns105/#hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters`|Collection of [NetworkAdapter](../ilo6_network_resourcedefns105/#networkadaptercollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}`|[NetworkAdapter](../ilo6_network_resourcedefns105/#networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo6_network_resourcedefns105/#networkdevicefunctioncollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo6_network_resourcedefns105/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo6_network_resourcedefns105/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts`|Collection of [NetworkPort](../ilo6_network_resourcedefns105/#networkportcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}`|[NetworkPort](../ilo6_network_resourcedefns105/#networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../ilo6_hpe_resourcedefns105/#hpenetworkportevb)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../ilo6_hpe_resourcedefns105/#hpenetworkportlldp)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../ilo6_network_resourcedefns105/#networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports`|Collection of [Port](../ilo6_other_resourcedefns105/#portcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns105/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}/Settings`|[Port](../ilo6_other_resourcedefns105/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Settings`|[NetworkAdapter](../ilo6_network_resourcedefns105/#networkadapter)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](../ilo6_other_resourcedefns105/#power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](../ilo6_hpe_resourcedefns105/#hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](../ilo6_hpe_resourcedefns105/#hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](../ilo6_hpe_resourcedefns105/#hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](../ilo6_hpe_resourcedefns105/#hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](../ilo6_hpe_resourcedefns105/#hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](../ilo6_hpe_resourcedefns105/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](../ilo6_hpe_resourcedefns105/#hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](../ilo6_hpe_resourcedefns105/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](../ilo6_other_resourcedefns105/#thermal)|
|`/redfish/v1/EventService`|[EventService](../ilo6_other_resourcedefns105/#eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](../ilo6_hpe_resourcedefns105/#hpecertificatecollection)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](../ilo6_hpe_resourcedefns105/#hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](../ilo6_other_resourcedefns105/#eventdestinationcollection)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](../ilo6_other_resourcedefns105/#eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](../ilo6_other_resourcedefns105/#jsonschemafilecollection)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](../ilo6_other_resourcedefns105/#jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](../ilo6_manager_resourcedefns105/#managercollection)|
|`/redfish/v1/Managers/{item}`|[Manager](../ilo6_manager_resourcedefns105/#manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](../ilo6_hpe_resourcedefns105/#hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](../ilo6_hpe_resourcedefns105/#hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](../ilo6_hpe_resourcedefns105/#hpeilobackupfilecollection)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](../ilo6_hpe_resourcedefns105/#hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](../ilo6_hpe_resourcedefns105/#hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](../ilo6_hpe_resourcedefns105/#hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo6_network_resourcedefns105/#ethernetinterfacecollection)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo6_network_resourcedefns105/#ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](../ilo6_hpe_resourcedefns105/#hpeilofederationgroupcollection)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](../ilo6_hpe_resourcedefns105/#hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](../ilo6_hpe_resourcedefns105/#hpeilofederationpeerscollection)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](../ilo6_hpe_resourcedefns105/#hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](../ilo6_other_resourcedefns105/#hostinterfacecollection)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](../ilo6_other_resourcedefns105/#hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](../ilo6_hpe_resourcedefns105/#hpeilolicensecollection)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](../ilo6_hpe_resourcedefns105/#hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](../ilo6_other_resourcedefns105/#logservicecollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL`|[LogService](../ilo6_other_resourcedefns105/#logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns105/#logentrycollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns105/#logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](../ilo6_manager_resourcedefns105/#managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](../ilo6_hpe_resourcedefns105/#hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](../ilo6_other_resourcedefns105/#logentrycollection)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](../ilo6_other_resourcedefns105/#logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](../ilo6_hpe_resourcedefns105/#hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](../ilo6_hpe_resourcedefns105/#hpeautomaticcertenrollment)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](../ilo6_hpe_resourcedefns105/#hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](../ilo6_hpe_resourcedefns105/#hpecertificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](../ilo6_hpe_resourcedefns105/#hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](../ilo6_hpe_resourcedefns105/#hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](../ilo6_hpe_resourcedefns105/#hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns105/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns105/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](../ilo6_hpe_resourcedefns105/#hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](../ilo6_hpe_resourcedefns105/#hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo6_hpe_resourcedefns105/#hpeilosecurityparamcollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](../ilo6_hpe_resourcedefns105/#hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns105/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns105/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns105/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns105/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns105/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns105/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns105/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/{item}`|[Certificate](../ilo6_other_resourcedefns105/#certificate)|
|`/redfish/v1/Managers/{item}/SerialInterfaces`|Collection of [SerialInterface](../ilo6_other_resourcedefns105/#serialinterfacecollection)|
|`/redfish/v1/Managers/{item}/SerialInterfaces/{item}`|[SerialInterface](../ilo6_other_resourcedefns105/#serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](../ilo6_hpe_resourcedefns105/#hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../ilo6_hpe_resourcedefns105/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](../ilo6_hpe_resourcedefns105/#hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](../ilo6_hpe_resourcedefns105/#hpesnmpuserscollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](../ilo6_hpe_resourcedefns105/#hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](../ilo6_other_resourcedefns105/#virtualmediacollection)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](../ilo6_other_resourcedefns105/#virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](../ilo6_other_resourcedefns105/#messageregistryfilecollection)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](../ilo6_other_resourcedefns105/#messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](../ilo6_hpe_resourcedefns105/#hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](../ilo6_other_resourcedefns105/#sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](../ilo6_other_resourcedefns105/#sessioncollection)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](../ilo6_other_resourcedefns105/#session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](../ilo6_computersystem_resourcedefns105/#computersystemcollection)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](../ilo6_computersystem_resourcedefns105/#computersystem)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters`|Collection of [HpeBaseNetworkAdapter](../ilo6_hpe_resourcedefns105/#hpebasenetworkadaptercollection)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/{item}`|[HpeBaseNetworkAdapter](../ilo6_hpe_resourcedefns105/#hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](../ilo6_bios_resourcedefns105/#bios)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](../ilo6_bios_resourcedefns105/#bios)|
|`/redfish/v1/Systems/{item}/Bios/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns105/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/boot`|[HpeServerBootSettings](../ilo6_hpe_resourcedefns105/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/Settings`|[HpeServerBootSettings](../ilo6_hpe_resourcedefns105/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns105/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/iscsi`|[HpeiSCSISoftwareInitiator](../ilo6_hpe_resourcedefns105/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/Settings`|[HpeiSCSISoftwareInitiator](../ilo6_hpe_resourcedefns105/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns105/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/mappings`|[HpeBiosMapping](../ilo6_hpe_resourcedefns105/#hpebiosmapping)|
|`/redfish/v1/Systems/{item}/Bios/oem/hpe/tlsconfig`|[HpeTlsConfig](../ilo6_hpe_resourcedefns105/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/oem/hpe/tlsconfig/Settings`|[HpeTlsConfig](../ilo6_hpe_resourcedefns105/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/oem/hpe/tlsconfig/baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns105/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock`|[HpeServerConfigLock](../ilo6_hpe_resourcedefns105/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|[HpeServerConfigLock](../ilo6_hpe_resourcedefns105/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns105/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig`|[HpeKmsConfig](../ilo6_hpe_resourcedefns105/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|[HpeKmsConfig](../ilo6_hpe_resourcedefns105/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns105/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](../ilo6_other_resourcedefns105/#bootoptioncollection)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](../ilo6_other_resourcedefns105/#bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo6_network_resourcedefns105/#ethernetinterfacecollection)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo6_network_resourcedefns105/#ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](../ilo6_other_resourcedefns105/#logservicecollection)|
|`/redfish/v1/Systems/{item}/LogServices/Event`|[LogService](../ilo6_other_resourcedefns105/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns105/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns105/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](../ilo6_other_resourcedefns105/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns105/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns105/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/SL`|[LogService](../ilo6_other_resourcedefns105/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns105/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries/{item}`|[LogEntry](../ilo6_other_resourcedefns105/#logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](../ilo6_other_resourcedefns105/#memorycollection)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](../ilo6_other_resourcedefns105/#memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](../ilo6_other_resourcedefns105/#memorydomaincollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](../ilo6_other_resourcedefns105/#memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](../ilo6_other_resourcedefns105/#memorychunkscollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](../ilo6_other_resourcedefns105/#memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces`|Collection of [NetworkInterface](../ilo6_network_resourcedefns105/#networkinterfacecollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}`|[NetworkInterface](../ilo6_network_resourcedefns105/#networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo6_network_resourcedefns105/#networkdevicefunctioncollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo6_network_resourcedefns105/#networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts`|Collection of [NetworkPort](../ilo6_network_resourcedefns105/#networkportcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}`|[NetworkPort](../ilo6_network_resourcedefns105/#networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../ilo6_hpe_resourcedefns105/#hpenetworkportevb)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../ilo6_hpe_resourcedefns105/#hpenetworkportlldp)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../ilo6_network_resourcedefns105/#networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports`|Collection of [Port](../ilo6_other_resourcedefns105/#portcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns105/#port)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}/Settings`|[Port](../ilo6_other_resourcedefns105/#port)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](../ilo6_hpe_resourcedefns105/#hpeserverpcidevicecollection)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](../ilo6_hpe_resourcedefns105/#hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](../ilo6_hpe_resourcedefns105/#hpeserverpcislotcollection)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](../ilo6_hpe_resourcedefns105/#hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors`|Collection of [Processor](../ilo6_other_resourcedefns105/#processorcollection)|
|`/redfish/v1/Systems/{item}/Processors/{item}`|[Processor](../ilo6_other_resourcedefns105/#processor)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](../ilo6_other_resourcedefns105/#secureboot)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](../ilo6_storage_resourcedefns105/#storagecollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/`|Collection of [StorageController](../ilo6_storage_resourcedefns105/#storagecontrollercollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}`|[StorageController](../ilo6_storage_resourcedefns105/#storagecontroller)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns105/#port)|
|`/redfish/v1/Systems/{item}/Storage/{item}/StorageControllers/{item}/Ports/{item}`|[Port](../ilo6_other_resourcedefns105/#port)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](../ilo6_hpe_resourcedefns105/#hpeusbdevicescollection)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](../ilo6_hpe_resourcedefns105/#hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](../ilo6_hpe_resourcedefns105/#hpeusbportscollection)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](../ilo6_hpe_resourcedefns105/#hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [HpeWorkloadPerformanceAdvisor](../ilo6_hpe_resourcedefns105/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](../ilo6_hpe_resourcedefns105/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](../ilo6_other_resourcedefns105/#taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](../ilo6_other_resourcedefns105/#taskcollection)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](../ilo6_other_resourcedefns105/#task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](../ilo6_other_resourcedefns105/#telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](../ilo6_other_resourcedefns105/#metricdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](../ilo6_other_resourcedefns105/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](../ilo6_other_resourcedefns105/#metricreportdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](../ilo6_other_resourcedefns105/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](../ilo6_other_resourcedefns105/#metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](../ilo6_other_resourcedefns105/#metricreportcollection)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Triggers](../ilo6_other_resourcedefns105/#triggerscollection)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](../ilo6_other_resourcedefns105/#triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](../ilo6_other_resourcedefns105/#updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](../ilo6_hpe_resourcedefns105/#hpecomponentcollection)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](../ilo6_hpe_resourcedefns105/#hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](../ilo6_other_resourcedefns105/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](../ilo6_other_resourcedefns105/#softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](../ilo6_hpe_resourcedefns105/#hpecomponentinstallsetcollection)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](../ilo6_hpe_resourcedefns105/#hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](../ilo6_hpe_resourcedefns105/#hpeinvalidimagecollection)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](../ilo6_hpe_resourcedefns105/#hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](../ilo6_hpe_resourcedefns105/#hpemaintenancewindowcollection)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](../ilo6_hpe_resourcedefns105/#hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](../ilo6_other_resourcedefns105/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](../ilo6_other_resourcedefns105/#softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](../ilo6_hpe_resourcedefns105/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](../ilo6_hpe_resourcedefns105/#hpecomponentupdatetask)|
|`redfish/v1/Chassis/{item}/BaseFrus`|Collection of [HpeiLOFrus](../ilo6_hpe_resourcedefns105/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}`|[HpeiLOFrus](../ilo6_hpe_resourcedefns105/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}/Details`|[HpeiLOFrus](../ilo6_hpe_resourcedefns105/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus`|Collection of [HpeiLOFrus](../ilo6_hpe_resourcedefns105/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}`|[HpeiLOFrus](../ilo6_hpe_resourcedefns105/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}/Details`|[HpeiLOFrus](../ilo6_hpe_resourcedefns105/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/PCIeDevices`|Collection of [PCIeDevice](../ilo6_other_resourcedefns105/#pciedevicecollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}`|[PCIeDevice](../ilo6_other_resourcedefns105/#pciedevice)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions`|Collection of [PCIeFunction](../ilo6_other_resourcedefns105/#pciefunctioncollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions/{item}`|[PCIeFunction](../ilo6_other_resourcedefns105/#pciefunction)|
|`redfish/v1/Chassis/{item}/PCIeSlots`|[PCIeSlots](../ilo6_other_resourcedefns105/#pcieslots)|
|`redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo6_network_resourcedefns105/#networkdevicefunction)|
|`redfish/v1/Systems/{item}/SecureEraseReportService`|[HpeSecureEraseReportService](../ilo6_hpe_resourcedefns105/#hpesecureerasereportservice)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](../ilo6_hpe_resourcedefns105/#hpesecureerasereportcollection)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/{item}`|[HpeSecureEraseReport](../ilo6_hpe_resourcedefns105/#hpesecureerasereport)|
|`redfish/v1/Systems/{item}/Storage/{item}`|[Storage](../ilo6_storage_resourcedefns105/#storage)|
|`redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}`|[Drive](../ilo6_storage_resourcedefns105/#drive)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes`|Collection of [Volume](../ilo6_storage_resourcedefns105/#volumecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}`|[Volume](../ilo6_storage_resourcedefns105/#volume)|
