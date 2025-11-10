---
excludeFromSearch: true
seo:
  title: iLO 5 version 2.73 Resource map
markdown:
  toc:
    hide: true
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
---

# Resource map of iLO 5 v2.73

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](ilo5_serviceroot_resourcedefns273/#serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](ilo5_other_resourcedefns273/#accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](ilo5_manager_resourcedefns273/#manageraccountcollection)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](ilo5_manager_resourcedefns273/#manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](ilo5_hpe_resourcedefns273/#hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](ilo5_other_resourcedefns273/#certificatecollection)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](ilo5_other_resourcedefns273/#certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](ilo5_other_resourcedefns273/#rolecollection)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](ilo5_other_resourcedefns273/#role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](ilo5_hpe_resourcedefns273/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](ilo5_hpe_resourcedefns273/#hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService`|[CertificateService](ilo5_other_resourcedefns273/#certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations`|[CertificateLocations](ilo5_other_resourcedefns273/#certificatelocations)|
|`/redfish/v1/Chassis`|Collection of [Chassis](ilo5_chassis_resourcedefns273/#chassiscollection)|
|`/redfish/v1/Chassis/{item}`|[Chassis](ilo5_chassis_resourcedefns273/#chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](ilo5_hpe_resourcedefns273/#hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](ilo5_hpe_resourcedefns273/#hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](ilo5_hpe_resourcedefns273/#hpeserverdevicecollection)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](ilo5_hpe_resourcedefns273/#hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters`|Collection of [NetworkAdapter](ilo5_network_resourcedefns273/#networkadaptercollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}`|[NetworkAdapter](ilo5_network_resourcedefns273/#networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](ilo5_network_resourcedefns273/#networkdevicefunctioncollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](ilo5_network_resourcedefns273/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](ilo5_network_resourcedefns273/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts`|Collection of [NetworkPort](ilo5_network_resourcedefns273/#networkportcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}`|[NetworkPort](ilo5_network_resourcedefns273/#networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](ilo5_hpe_resourcedefns273/#hpenetworkportevb)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](ilo5_hpe_resourcedefns273/#hpenetworkportlldp)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](ilo5_network_resourcedefns273/#networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports`|Collection of [Port](ilo5_other_resourcedefns273/#portcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}`|[Port](ilo5_other_resourcedefns273/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}/Settings`|[Port](ilo5_other_resourcedefns273/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Settings`|[NetworkAdapter](ilo5_network_resourcedefns273/#networkadapter)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](ilo5_other_resourcedefns273/#power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](ilo5_hpe_resourcedefns273/#hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](ilo5_hpe_resourcedefns273/#hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](ilo5_hpe_resourcedefns273/#hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](ilo5_hpe_resourcedefns273/#hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](ilo5_hpe_resourcedefns273/#hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](ilo5_hpe_resourcedefns273/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](ilo5_hpe_resourcedefns273/#hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](ilo5_hpe_resourcedefns273/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](ilo5_other_resourcedefns273/#thermal)|
|`/redfish/v1/EventService`|[EventService](ilo5_other_resourcedefns273/#eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](ilo5_hpe_resourcedefns273/#hpecertificatecollection)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](ilo5_hpe_resourcedefns273/#hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](ilo5_other_resourcedefns273/#eventdestinationcollection)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](ilo5_other_resourcedefns273/#eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](ilo5_other_resourcedefns273/#jsonschemafilecollection)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](ilo5_other_resourcedefns273/#jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](ilo5_manager_resourcedefns273/#managercollection)|
|`/redfish/v1/Managers/{item}`|[Manager](ilo5_manager_resourcedefns273/#manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](ilo5_hpe_resourcedefns273/#hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](ilo5_hpe_resourcedefns273/#hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](ilo5_hpe_resourcedefns273/#hpeilobackupfilecollection)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](ilo5_hpe_resourcedefns273/#hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](ilo5_hpe_resourcedefns273/#hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](ilo5_hpe_resourcedefns273/#hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](ilo5_network_resourcedefns273/#ethernetinterfacecollection)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](ilo5_network_resourcedefns273/#ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](ilo5_hpe_resourcedefns273/#hpeilofederationgroupcollection)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](ilo5_hpe_resourcedefns273/#hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](ilo5_hpe_resourcedefns273/#hpeilofederationpeerscollection)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](ilo5_hpe_resourcedefns273/#hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](ilo5_other_resourcedefns273/#hostinterfacecollection)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](ilo5_other_resourcedefns273/#hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](ilo5_hpe_resourcedefns273/#hpeilolicensecollection)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](ilo5_hpe_resourcedefns273/#hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](ilo5_other_resourcedefns273/#logservicecollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL`|[LogService](ilo5_other_resourcedefns273/#logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](ilo5_other_resourcedefns273/#logentrycollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](ilo5_other_resourcedefns273/#logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](ilo5_manager_resourcedefns273/#managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](ilo5_hpe_resourcedefns273/#hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](ilo5_other_resourcedefns273/#logentrycollection)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](ilo5_other_resourcedefns273/#logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](ilo5_hpe_resourcedefns273/#hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](ilo5_hpe_resourcedefns273/#hpeautomaticcertenrollment)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](ilo5_hpe_resourcedefns273/#hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](ilo5_hpe_resourcedefns273/#hpecertificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](ilo5_hpe_resourcedefns273/#hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](ilo5_hpe_resourcedefns273/#hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](ilo5_hpe_resourcedefns273/#hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates`|Collection of [Certificate](ilo5_other_resourcedefns273/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/{item}`|[Certificate](ilo5_other_resourcedefns273/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](ilo5_hpe_resourcedefns273/#hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](ilo5_hpe_resourcedefns273/#hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](ilo5_hpe_resourcedefns273/#hpeilosecurityparamcollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](ilo5_hpe_resourcedefns273/#hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates`|Collection of [Certificate](ilo5_other_resourcedefns273/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/{item}`|[Certificate](ilo5_other_resourcedefns273/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates`|Collection of [Certificate](ilo5_other_resourcedefns273/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/{item}`|[Certificate](ilo5_other_resourcedefns273/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates`|Collection of [Certificate](ilo5_other_resourcedefns273/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/{item}`|[Certificate](ilo5_other_resourcedefns273/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates`|Collection of [Certificate](ilo5_other_resourcedefns273/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/{item}`|[Certificate](ilo5_other_resourcedefns273/#certificate)|
|`/redfish/v1/Managers/{item}/SerialInterfaces`|Collection of [SerialInterface](ilo5_other_resourcedefns273/#serialinterfacecollection)|
|`/redfish/v1/Managers/{item}/SerialInterfaces/{item}`|[SerialInterface](ilo5_other_resourcedefns273/#serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](ilo5_hpe_resourcedefns273/#hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](ilo5_hpe_resourcedefns273/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](ilo5_hpe_resourcedefns273/#hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](ilo5_hpe_resourcedefns273/#hpesnmpuserscollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](ilo5_hpe_resourcedefns273/#hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](ilo5_other_resourcedefns273/#virtualmediacollection)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](ilo5_other_resourcedefns273/#virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](ilo5_other_resourcedefns273/#messageregistryfilecollection)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](ilo5_other_resourcedefns273/#messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](ilo5_hpe_resourcedefns273/#hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](ilo5_other_resourcedefns273/#sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](ilo5_other_resourcedefns273/#sessioncollection)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](ilo5_other_resourcedefns273/#session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](ilo5_computersystem_resourcedefns273/#computersystemcollection)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](ilo5_computersystem_resourcedefns273/#computersystem)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters`|Collection of [HpeBaseNetworkAdapter](ilo5_hpe_resourcedefns273/#hpebasenetworkadaptercollection)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/{item}`|[HpeBaseNetworkAdapter](ilo5_hpe_resourcedefns273/#hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](ilo5_bios_resourcedefns273/#bios)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](ilo5_bios_resourcedefns273/#bios)|
|`/redfish/v1/Systems/{item}/Bios/baseconfigs`|[HpeBaseConfigs](ilo5_hpe_resourcedefns273/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/boot`|[HpeServerBootSettings](ilo5_hpe_resourcedefns273/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/Settings`|[HpeServerBootSettings](ilo5_hpe_resourcedefns273/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/baseconfigs`|[HpeBaseConfigs](ilo5_hpe_resourcedefns273/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/hpescalablepmem`|[HpeScalablePmem](#hpescalablepmem-v1_0_0-hpescalablepmem)|
|`/redfish/v1/Systems/{item}/Bios/hpescalablepmem/Settings`|[HpeScalablePmem](#hpescalablepmem-v1_0_0-hpescalablepmem)|
|`/redfish/v1/Systems/{item}/Bios/iscsi`|[HpeiSCSISoftwareInitiator](ilo5_hpe_resourcedefns273/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/Settings`|[HpeiSCSISoftwareInitiator](ilo5_hpe_resourcedefns273/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/baseconfigs`|[HpeBaseConfigs](ilo5_hpe_resourcedefns273/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/mappings`|[HpeBiosMapping](ilo5_hpe_resourcedefns273/#hpebiosmapping)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig`|[HpeTlsConfig](ilo5_hpe_resourcedefns273/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig/Settings`|[HpeTlsConfig](ilo5_hpe_resourcedefns273/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig/baseconfigs`|[HpeBaseConfigs](ilo5_hpe_resourcedefns273/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock`|[HpeServerConfigLock](ilo5_hpe_resourcedefns273/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|[HpeServerConfigLock](ilo5_hpe_resourcedefns273/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](ilo5_hpe_resourcedefns273/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig`|[HpeKmsConfig](ilo5_hpe_resourcedefns273/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|[HpeKmsConfig](ilo5_hpe_resourcedefns273/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](ilo5_hpe_resourcedefns273/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](ilo5_other_resourcedefns273/#bootoptioncollection)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](ilo5_other_resourcedefns273/#bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](ilo5_network_resourcedefns273/#ethernetinterfacecollection)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](ilo5_network_resourcedefns273/#ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](ilo5_other_resourcedefns273/#logservicecollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU`|[LogService](ilo5_other_resourcedefns273/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries`|Collection of [LogEntry](ilo5_other_resourcedefns273/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries/{item}`|[LogEntry](ilo5_other_resourcedefns273/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/Event`|[LogService](ilo5_other_resourcedefns273/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries`|Collection of [LogEntry](ilo5_other_resourcedefns273/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries/{item}`|[LogEntry](ilo5_other_resourcedefns273/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](ilo5_other_resourcedefns273/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](ilo5_other_resourcedefns273/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](ilo5_other_resourcedefns273/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/SL`|[LogService](ilo5_other_resourcedefns273/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries`|Collection of [LogEntry](ilo5_other_resourcedefns273/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries/{item}`|[LogEntry](ilo5_other_resourcedefns273/#logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](ilo5_other_resourcedefns273/#memorycollection)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](ilo5_other_resourcedefns273/#memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](ilo5_other_resourcedefns273/#memorydomaincollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](ilo5_other_resourcedefns273/#memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](ilo5_other_resourcedefns273/#memorychunkscollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](ilo5_other_resourcedefns273/#memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces`|Collection of [NetworkInterface](ilo5_network_resourcedefns273/#networkinterfacecollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}`|[NetworkInterface](ilo5_network_resourcedefns273/#networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](ilo5_network_resourcedefns273/#networkdevicefunctioncollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](ilo5_network_resourcedefns273/#networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts`|Collection of [NetworkPort](ilo5_network_resourcedefns273/#networkportcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}`|[NetworkPort](ilo5_network_resourcedefns273/#networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](ilo5_hpe_resourcedefns273/#hpenetworkportevb)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](ilo5_hpe_resourcedefns273/#hpenetworkportlldp)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](ilo5_network_resourcedefns273/#networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports`|Collection of [Port](ilo5_other_resourcedefns273/#portcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}`|[Port](ilo5_other_resourcedefns273/#port)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}/Settings`|[Port](ilo5_other_resourcedefns273/#port)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](ilo5_hpe_resourcedefns273/#hpeserverpcidevicecollection)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](ilo5_hpe_resourcedefns273/#hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](ilo5_hpe_resourcedefns273/#hpeserverpcislotcollection)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](ilo5_hpe_resourcedefns273/#hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors`|Collection of [Processor](ilo5_other_resourcedefns273/#processorcollection)|
|`/redfish/v1/Systems/{item}/Processors/{item}`|[Processor](ilo5_other_resourcedefns273/#processor)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](ilo5_other_resourcedefns273/#secureboot)|
|`/redfish/v1/Systems/{item}/SmartStorage`|[HpeSmartStorage](ilo5_hpe_resourcedefns273/#hpesmartstorage)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers`|Collection of [HpeSmartStorageArrayController](ilo5_hpe_resourcedefns273/#hpesmartstoragearraycontrollercollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}`|[HpeSmartStorageArrayController](ilo5_hpe_resourcedefns273/#hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives`|Collection of [HpeSmartStorageLogicalDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragelogicaldrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}`|[HpeSmartStorageLogicalDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/DataDrives`|Collection of [HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures`|Collection of [HpeSmartStorageStorageEnclosure](ilo5_hpe_resourcedefns273/#hpesmartstoragestorageenclosurecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/{item}`|[HpeSmartStorageStorageEnclosure](ilo5_hpe_resourcedefns273/#hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives`|Collection of [HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives/{item}`|[HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters`|Collection of [HpeSmartStorageHostBusAdapter](ilo5_hpe_resourcedefns273/#hpesmartstoragehostbusadaptercollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}`|[HpeSmartStorageHostBusAdapter](ilo5_hpe_resourcedefns273/#hpesmartstoragehostbusadapter)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig`|[SmartStorageConfig](ilo5_other_resourcedefns273/#smartstorageconfig)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig/Settings`|[SmartStorageConfig](ilo5_other_resourcedefns273/#smartstorageconfig)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](ilo5_storage_resourcedefns273/#storagecollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/`|Collection of [StorageController](ilo5_storage_resourcedefns273/#storagecontrollercollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}`|[StorageController](ilo5_storage_resourcedefns273/#storagecontroller)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}/Ports/{item}`|[Port](ilo5_other_resourcedefns273/#port)|
|`/redfish/v1/Systems/{item}/Storage/{item}/StorageControllers/{item}/Ports/{item}`|[Port](ilo5_other_resourcedefns273/#port)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](ilo5_hpe_resourcedefns273/#hpeusbdevicescollection)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](ilo5_hpe_resourcedefns273/#hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](ilo5_hpe_resourcedefns273/#hpeusbportscollection)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](ilo5_hpe_resourcedefns273/#hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [HpeWorkloadPerformanceAdvisor](ilo5_hpe_resourcedefns273/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](ilo5_hpe_resourcedefns273/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](ilo5_other_resourcedefns273/#taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](ilo5_other_resourcedefns273/#taskcollection)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](ilo5_other_resourcedefns273/#task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](ilo5_other_resourcedefns273/#telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](ilo5_other_resourcedefns273/#metricdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](ilo5_other_resourcedefns273/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](ilo5_other_resourcedefns273/#metricreportdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](ilo5_other_resourcedefns273/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](ilo5_other_resourcedefns273/#metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](ilo5_other_resourcedefns273/#metricreportcollection)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Triggers](ilo5_other_resourcedefns273/#triggerscollection)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](ilo5_other_resourcedefns273/#triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](ilo5_other_resourcedefns273/#updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](ilo5_hpe_resourcedefns273/#hpecomponentcollection)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](ilo5_hpe_resourcedefns273/#hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](ilo5_other_resourcedefns273/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](ilo5_other_resourcedefns273/#softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](ilo5_hpe_resourcedefns273/#hpecomponentinstallsetcollection)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](ilo5_hpe_resourcedefns273/#hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](ilo5_hpe_resourcedefns273/#hpeinvalidimagecollection)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](ilo5_hpe_resourcedefns273/#hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](ilo5_hpe_resourcedefns273/#hpemaintenancewindowcollection)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](ilo5_hpe_resourcedefns273/#hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](ilo5_other_resourcedefns273/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](ilo5_other_resourcedefns273/#softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](ilo5_hpe_resourcedefns273/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](ilo5_hpe_resourcedefns273/#hpecomponentupdatetask)|
|`redfish/v1/Chassis/{item}/BaseFrus`|Collection of [HpeiLOFrus](ilo5_hpe_resourcedefns273/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}`|[HpeiLOFrus](ilo5_hpe_resourcedefns273/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}/Details`|[HpeiLOFrus](ilo5_hpe_resourcedefns273/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus`|Collection of [HpeiLOFrus](ilo5_hpe_resourcedefns273/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}`|[HpeiLOFrus](ilo5_hpe_resourcedefns273/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}/Details`|[HpeiLOFrus](ilo5_hpe_resourcedefns273/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/PCIeDevices`|Collection of [PCIeDevice](ilo5_other_resourcedefns273/#pciedevicecollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}`|[PCIeDevice](ilo5_other_resourcedefns273/#pciedevice)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions`|Collection of [PCIeFunction](ilo5_other_resourcedefns273/#pciefunctioncollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions/{item}`|[PCIeFunction](ilo5_other_resourcedefns273/#pciefunction)|
|`redfish/v1/Chassis/{item}/PCIeSlots`|[PCIeSlots](ilo5_other_resourcedefns273/#pcieslots)|
|`redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](ilo5_network_resourcedefns273/#networkdevicefunction)|
|`redfish/v1/Systems/{item}/SecureEraseReportService`|[HpeSecureEraseReportService](ilo5_hpe_resourcedefns273/#hpesecureerasereportservice)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](ilo5_hpe_resourcedefns273/#hpesecureerasereportcollection)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/{item}`|[HpeSecureEraseReport](ilo5_hpe_resourcedefns273/#hpesecureerasereport)|
|`redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/ActiveSpareDrives`|Collection of [HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrivecollection)|
|`redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/StandbySpareDrives`|Collection of [HpeSmartStorageDiskDrive](ilo5_hpe_resourcedefns273/#hpesmartstoragediskdrivecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}`|[Storage](ilo5_storage_resourcedefns273/#storage)|
|`redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}`|[Drive](ilo5_storage_resourcedefns273/#drive)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes`|Collection of [Volume](ilo5_storage_resourcedefns273/#volumecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}`|[Volume](ilo5_storage_resourcedefns273/#volume)|
