---
excludeFromSearch: true
seo:
  title: iLO 5 version 2.96 Resource map
toc:
  enable: false
disableLastModified: false
---

# Resource map of iLO 5 v2.96

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

# Resource Map

|URI|Type|
|:---|:---|
|` /redfish/v1/TelemetryService/MetricDefinitions/UnachCap`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/`|[ServiceRoot](../ilo5_serviceroot_resourcedefns296/#serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](../ilo5_other_resourcedefns296/#accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](../ilo5_manager_resourcedefns296/#manageraccountcollection)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](../ilo5_manager_resourcedefns296/#manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](../ilo5_hpe_resourcedefns296/#hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns296/#certificatecollection)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns296/#certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](../ilo5_other_resourcedefns296/#rolecollection)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](../ilo5_other_resourcedefns296/#role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../ilo5_hpe_resourcedefns296/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](../ilo5_hpe_resourcedefns296/#hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService`|[CertificateService](../ilo5_other_resourcedefns296/#certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations`|[CertificateLocations](../ilo5_other_resourcedefns296/#certificatelocations)|
|`/redfish/v1/Chassis`|Collection of [Chassis](../ilo5_chassis_resourcedefns296/#chassiscollection)|
|`/redfish/v1/Chassis/{item}`|[Chassis](../ilo5_chassis_resourcedefns296/#chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](../ilo5_hpe_resourcedefns296/#hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](../ilo5_hpe_resourcedefns296/#hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](../ilo5_hpe_resourcedefns296/#hpeserverdevicecollection)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](../ilo5_hpe_resourcedefns296/#hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters`|Collection of [NetworkAdapter](../ilo5_network_resourcedefns296/#networkadaptercollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}`|[NetworkAdapter](../ilo5_network_resourcedefns296/#networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo5_network_resourcedefns296/#networkdevicefunctioncollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo5_network_resourcedefns296/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo5_network_resourcedefns296/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts`|Collection of [NetworkPort](../ilo5_network_resourcedefns296/#networkportcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}`|[NetworkPort](../ilo5_network_resourcedefns296/#networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../ilo5_hpe_resourcedefns296/#hpenetworkportevb)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../ilo5_hpe_resourcedefns296/#hpenetworkportlldp)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../ilo5_network_resourcedefns296/#networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports`|Collection of [Port](../ilo5_other_resourcedefns296/#portcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns296/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}/Settings`|[Port](../ilo5_other_resourcedefns296/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Settings`|[NetworkAdapter](../ilo5_network_resourcedefns296/#networkadapter)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](../ilo5_other_resourcedefns296/#power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](../ilo5_hpe_resourcedefns296/#hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](../ilo5_hpe_resourcedefns296/#hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](../ilo5_hpe_resourcedefns296/#hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](../ilo5_hpe_resourcedefns296/#hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](../ilo5_hpe_resourcedefns296/#hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](../ilo5_hpe_resourcedefns296/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](../ilo5_hpe_resourcedefns296/#hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](../ilo5_hpe_resourcedefns296/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](../ilo5_other_resourcedefns296/#thermal)|
|`/redfish/v1/EventService`|[EventService](../ilo5_other_resourcedefns296/#eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](../ilo5_hpe_resourcedefns296/#hpecertificatecollection)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](../ilo5_hpe_resourcedefns296/#hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](../ilo5_other_resourcedefns296/#eventdestinationcollection)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](../ilo5_other_resourcedefns296/#eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](../ilo5_other_resourcedefns296/#jsonschemafilecollection)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](../ilo5_other_resourcedefns296/#jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](../ilo5_manager_resourcedefns296/#managercollection)|
|`/redfish/v1/Managers/{item}`|[Manager](../ilo5_manager_resourcedefns296/#manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](../ilo5_hpe_resourcedefns296/#hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](../ilo5_hpe_resourcedefns296/#hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](../ilo5_hpe_resourcedefns296/#hpeilobackupfilecollection)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](../ilo5_hpe_resourcedefns296/#hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](../ilo5_hpe_resourcedefns296/#hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](../ilo5_hpe_resourcedefns296/#hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo5_network_resourcedefns296/#ethernetinterfacecollection)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo5_network_resourcedefns296/#ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](../ilo5_hpe_resourcedefns296/#hpeilofederationgroupcollection)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](../ilo5_hpe_resourcedefns296/#hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](../ilo5_hpe_resourcedefns296/#hpeilofederationpeerscollection)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](../ilo5_hpe_resourcedefns296/#hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](../ilo5_other_resourcedefns296/#hostinterfacecollection)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](../ilo5_other_resourcedefns296/#hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](../ilo5_hpe_resourcedefns296/#hpeilolicensecollection)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](../ilo5_hpe_resourcedefns296/#hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](../ilo5_other_resourcedefns296/#logservicecollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL`|[LogService](../ilo5_other_resourcedefns296/#logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns296/#logentrycollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns296/#logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](../ilo5_manager_resourcedefns296/#managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](../ilo5_hpe_resourcedefns296/#hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](../ilo5_other_resourcedefns296/#logentrycollection)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](../ilo5_other_resourcedefns296/#logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](../ilo5_hpe_resourcedefns296/#hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](../ilo5_hpe_resourcedefns296/#hpeautomaticcertenrollment)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](../ilo5_hpe_resourcedefns296/#hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](../ilo5_hpe_resourcedefns296/#hpecertificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](../ilo5_hpe_resourcedefns296/#hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](../ilo5_hpe_resourcedefns296/#hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](../ilo5_hpe_resourcedefns296/#hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns296/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns296/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](../ilo5_hpe_resourcedefns296/#hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](../ilo5_hpe_resourcedefns296/#hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo5_hpe_resourcedefns296/#hpeilosecurityparamcollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](../ilo5_hpe_resourcedefns296/#hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns296/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns296/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns296/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns296/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns296/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns296/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns296/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns296/#certificate)|
|`/redfish/v1/Managers/{item}/SerialInterfaces`|Collection of [SerialInterface](../ilo5_other_resourcedefns296/#serialinterfacecollection)|
|`/redfish/v1/Managers/{item}/SerialInterfaces/{item}`|[SerialInterface](../ilo5_other_resourcedefns296/#serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](../ilo5_hpe_resourcedefns296/#hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../ilo5_hpe_resourcedefns296/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](../ilo5_hpe_resourcedefns296/#hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](../ilo5_hpe_resourcedefns296/#hpesnmpuserscollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](../ilo5_hpe_resourcedefns296/#hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](../ilo5_other_resourcedefns296/#virtualmediacollection)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](../ilo5_other_resourcedefns296/#virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](../ilo5_other_resourcedefns296/#messageregistryfilecollection)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](../ilo5_other_resourcedefns296/#messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](../ilo5_hpe_resourcedefns296/#hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](../ilo5_other_resourcedefns296/#sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](../ilo5_other_resourcedefns296/#sessioncollection)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](../ilo5_other_resourcedefns296/#session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](../ilo5_computersystem_resourcedefns296/#computersystemcollection)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](../ilo5_computersystem_resourcedefns296/#computersystem)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters`|Collection of [HpeBaseNetworkAdapter](../ilo5_hpe_resourcedefns296/#hpebasenetworkadaptercollection)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/{item}`|[HpeBaseNetworkAdapter](../ilo5_hpe_resourcedefns296/#hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](../ilo5_bios_resourcedefns296/#bios)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns296/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|[HpeKmsConfig](../ilo5_hpe_resourcedefns296/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns296/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|[HpeServerConfigLock](../ilo5_hpe_resourcedefns296/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](../ilo5_bios_resourcedefns296/#bios)|
|`/redfish/v1/Systems/{item}/Bios/baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns296/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/boot`|[HpeServerBootSettings](../ilo5_hpe_resourcedefns296/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/Settings`|[HpeServerBootSettings](../ilo5_hpe_resourcedefns296/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns296/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/hpescalablepmem`|[HpeScalablePmem](#hpescalablepmem-v1_0_0-hpescalablepmem)|
|`/redfish/v1/Systems/{item}/Bios/hpescalablepmem/Settings`|[HpeScalablePmem](#hpescalablepmem-v1_0_0-hpescalablepmem)|
|`/redfish/v1/Systems/{item}/Bios/iscsi`|[HpeiSCSISoftwareInitiator](../ilo5_hpe_resourcedefns296/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/Settings`|[HpeiSCSISoftwareInitiator](../ilo5_hpe_resourcedefns296/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns296/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/mappings`|[HpeBiosMapping](../ilo5_hpe_resourcedefns296/#hpebiosmapping)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig`|[HpeTlsConfig](../ilo5_hpe_resourcedefns296/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig/Settings`|[HpeTlsConfig](../ilo5_hpe_resourcedefns296/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig/baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns296/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](../ilo5_other_resourcedefns296/#bootoptioncollection)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](../ilo5_other_resourcedefns296/#bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo5_network_resourcedefns296/#ethernetinterfacecollection)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo5_network_resourcedefns296/#ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](../ilo5_other_resourcedefns296/#logservicecollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU`|[LogService](../ilo5_other_resourcedefns296/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns296/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns296/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/Event`|[LogService](../ilo5_other_resourcedefns296/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns296/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns296/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](../ilo5_other_resourcedefns296/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns296/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns296/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/SL`|[LogService](../ilo5_other_resourcedefns296/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns296/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns296/#logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](../ilo5_other_resourcedefns296/#memorycollection)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](../ilo5_other_resourcedefns296/#memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](../ilo5_other_resourcedefns296/#memorydomaincollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](../ilo5_other_resourcedefns296/#memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](../ilo5_other_resourcedefns296/#memorychunkscollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](../ilo5_other_resourcedefns296/#memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces`|Collection of [NetworkInterface](../ilo5_network_resourcedefns296/#networkinterfacecollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}`|[NetworkInterface](../ilo5_network_resourcedefns296/#networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo5_network_resourcedefns296/#networkdevicefunctioncollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo5_network_resourcedefns296/#networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts`|Collection of [NetworkPort](../ilo5_network_resourcedefns296/#networkportcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}`|[NetworkPort](../ilo5_network_resourcedefns296/#networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../ilo5_hpe_resourcedefns296/#hpenetworkportevb)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../ilo5_hpe_resourcedefns296/#hpenetworkportlldp)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../ilo5_network_resourcedefns296/#networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports`|Collection of [Port](../ilo5_other_resourcedefns296/#portcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns296/#port)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}/Settings`|[Port](../ilo5_other_resourcedefns296/#port)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](../ilo5_hpe_resourcedefns296/#hpeserverpcidevicecollection)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](../ilo5_hpe_resourcedefns296/#hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](../ilo5_hpe_resourcedefns296/#hpeserverpcislotcollection)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](../ilo5_hpe_resourcedefns296/#hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors`|Collection of [Processor](../ilo5_other_resourcedefns296/#processorcollection)|
|`/redfish/v1/Systems/{item}/Processors/{item}`|[Processor](../ilo5_other_resourcedefns296/#processor)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](../ilo5_other_resourcedefns296/#secureboot)|
|`/redfish/v1/Systems/{item}/SmartStorage`|[HpeSmartStorage](../ilo5_hpe_resourcedefns296/#hpesmartstorage)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers`|Collection of [HpeSmartStorageArrayController](../ilo5_hpe_resourcedefns296/#hpesmartstoragearraycontrollercollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}`|[HpeSmartStorageArrayController](../ilo5_hpe_resourcedefns296/#hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives`|Collection of [HpeSmartStorageLogicalDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragelogicaldrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}`|[HpeSmartStorageLogicalDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/DataDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures`|Collection of [HpeSmartStorageStorageEnclosure](../ilo5_hpe_resourcedefns296/#hpesmartstoragestorageenclosurecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/{item}`|[HpeSmartStorageStorageEnclosure](../ilo5_hpe_resourcedefns296/#hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters`|Collection of [HpeSmartStorageHostBusAdapter](../ilo5_hpe_resourcedefns296/#hpesmartstoragehostbusadaptercollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}`|[HpeSmartStorageHostBusAdapter](../ilo5_hpe_resourcedefns296/#hpesmartstoragehostbusadapter)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig`|[SmartStorageConfig](../ilo5_other_resourcedefns296/#smartstorageconfig)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig/Settings`|[SmartStorageConfig](../ilo5_other_resourcedefns296/#smartstorageconfig)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](../ilo5_storage_resourcedefns296/#storagecollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/`|Collection of [StorageController](../ilo5_storage_resourcedefns296/#storagecontrollercollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}`|[StorageController](../ilo5_storage_resourcedefns296/#storagecontroller)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns296/#port)|
|`/redfish/v1/Systems/{item}/Storage/{item}/StorageControllers/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns296/#port)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](../ilo5_hpe_resourcedefns296/#hpeusbdevicescollection)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](../ilo5_hpe_resourcedefns296/#hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](../ilo5_hpe_resourcedefns296/#hpeusbportscollection)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](../ilo5_hpe_resourcedefns296/#hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [HpeWorkloadPerformanceAdvisor](../ilo5_hpe_resourcedefns296/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](../ilo5_hpe_resourcedefns296/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](../ilo5_other_resourcedefns296/#taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](../ilo5_other_resourcedefns296/#taskcollection)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](../ilo5_other_resourcedefns296/#task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](../ilo5_other_resourcedefns296/#telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricDefinitions/AmbTemp`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/AverageConsumedWatts`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/Cap`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/CpuCapLim`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/CpuMax`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/CpuPwrSavLim`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/CpuWatts`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/DimmWatts`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/GpuWatts`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/MaxConsumedWatts`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/MinConsumedWatts`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/PrMode`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/PunCap`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](../ilo5_other_resourcedefns296/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPUXFreq`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/CPUICUtil`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtil`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/CPUXPower`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/IOBusUtil`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/JitterCount`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/MemoryBusUtil`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/PowerMetrics`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](../ilo5_other_resourcedefns296/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](../ilo5_other_resourcedefns296/#metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](../ilo5_other_resourcedefns296/#metricreportcollection)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Triggers](../ilo5_other_resourcedefns296/#triggerscollection)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](../ilo5_other_resourcedefns296/#triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](../ilo5_other_resourcedefns296/#updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](../ilo5_hpe_resourcedefns296/#hpecomponentcollection)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](../ilo5_hpe_resourcedefns296/#hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](../ilo5_other_resourcedefns296/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](../ilo5_other_resourcedefns296/#softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](../ilo5_hpe_resourcedefns296/#hpecomponentinstallsetcollection)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](../ilo5_hpe_resourcedefns296/#hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](../ilo5_hpe_resourcedefns296/#hpeinvalidimagecollection)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](../ilo5_hpe_resourcedefns296/#hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](../ilo5_hpe_resourcedefns296/#hpemaintenancewindowcollection)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](../ilo5_hpe_resourcedefns296/#hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](../ilo5_other_resourcedefns296/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](../ilo5_other_resourcedefns296/#softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](../ilo5_hpe_resourcedefns296/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](../ilo5_hpe_resourcedefns296/#hpecomponentupdatetask)|
|`/redfish/v1/systems/{item}/bios/Kmsconfig`|[HpeKmsConfig](../ilo5_hpe_resourcedefns296/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/Serverconfiglock`|[HpeServerConfigLock](../ilo5_hpe_resourcedefns296/#hpeserverconfiglock)|
|`/redfish/v1/telemetryservice/metricreports/PowerMetrics`|[MetricReport](../ilo5_other_resourcedefns296/#metricreport)|
|`redfish/v1/Chassis/{item}/BaseFrus`|Collection of [HpeiLOFrus](../ilo5_hpe_resourcedefns296/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}`|[HpeiLOFrus](../ilo5_hpe_resourcedefns296/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}/Details`|[HpeiLOFrus](../ilo5_hpe_resourcedefns296/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus`|Collection of [HpeiLOFrus](../ilo5_hpe_resourcedefns296/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}`|[HpeiLOFrus](../ilo5_hpe_resourcedefns296/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}/Details`|[HpeiLOFrus](../ilo5_hpe_resourcedefns296/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/PCIeDevices`|Collection of [PCIeDevice](../ilo5_other_resourcedefns296/#pciedevicecollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}`|[PCIeDevice](../ilo5_other_resourcedefns296/#pciedevice)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions`|Collection of [PCIeFunction](../ilo5_other_resourcedefns296/#pciefunctioncollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions/{item}`|[PCIeFunction](../ilo5_other_resourcedefns296/#pciefunction)|
|`redfish/v1/Chassis/{item}/PCIeSlots`|[PCIeSlots](../ilo5_other_resourcedefns296/#pcieslots)|
|`redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo5_network_resourcedefns296/#networkdevicefunction)|
|`redfish/v1/Systems/{item}/SecureEraseReportService`|[HpeSecureEraseReportService](../ilo5_hpe_resourcedefns296/#hpesecureerasereportservice)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](../ilo5_hpe_resourcedefns296/#hpesecureerasereportcollection)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/{item}`|[HpeSecureEraseReport](../ilo5_hpe_resourcedefns296/#hpesecureerasereport)|
|`redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/ActiveSpareDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrivecollection)|
|`redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/StandbySpareDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns296/#hpesmartstoragediskdrivecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}`|[Storage](../ilo5_storage_resourcedefns296/#storage)|
|`redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}`|[Drive](../ilo5_storage_resourcedefns296/#drive)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes`|Collection of [Volume](../ilo5_storage_resourcedefns296/#volumecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}`|[Volume](../ilo5_storage_resourcedefns296/#volume)|
