---
excludeFromSearch: true
seo:
  title: iLO 5 version 3.00 Resource map
toc:
  enable: false
disableLastModified: false
---

# Resource map of iLO 5 v3.00

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.


# Resource Map
|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](../ilo5_serviceroot_resourcedefns300/#serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](../ilo5_other_resourcedefns300/#accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](../ilo5_manager_resourcedefns300/#manageraccountcollection)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](../ilo5_manager_resourcedefns300/#manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](../ilo5_hpe_resourcedefns300/#hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns300/#certificatecollection)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns300/#certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](../ilo5_other_resourcedefns300/#rolecollection)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](../ilo5_other_resourcedefns300/#role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../ilo5_hpe_resourcedefns300/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](../ilo5_hpe_resourcedefns300/#hpeiloaccountcertificatemap)|
|`/redfish/v1/CertificateService`|[CertificateService](../ilo5_other_resourcedefns300/#certificateservice)|
|`/redfish/v1/CertificateService/CertificateLocations`|[CertificateLocations](../ilo5_other_resourcedefns300/#certificatelocations)|
|`/redfish/v1/Chassis`|Collection of [Chassis](../ilo5_chassis_resourcedefns300/#chassiscollection)|
|`/redfish/v1/Chassis/{item}`|[Chassis](../ilo5_chassis_resourcedefns300/#chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](../ilo5_hpe_resourcedefns300/#hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](../ilo5_hpe_resourcedefns300/#hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](../ilo5_hpe_resourcedefns300/#hpeserverdevicecollection)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](../ilo5_hpe_resourcedefns300/#hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters`|Collection of [NetworkAdapter](../ilo5_network_resourcedefns300/#networkadaptercollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}`|[NetworkAdapter](../ilo5_network_resourcedefns300/#networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunctioncollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts`|Collection of [NetworkPort](../ilo5_network_resourcedefns300/#networkportcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}`|[NetworkPort](../ilo5_network_resourcedefns300/#networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../ilo5_hpe_resourcedefns300/#hpenetworkportevb)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../ilo5_hpe_resourcedefns300/#hpenetworkportlldp)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../ilo5_network_resourcedefns300/#networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports`|Collection of [Port](../ilo5_other_resourcedefns300/#portcollection)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns300/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Ports/{item}/Settings`|[Port](../ilo5_other_resourcedefns300/#port)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Settings`|[NetworkAdapter](../ilo5_network_resourcedefns300/#networkadapter)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](../ilo5_other_resourcedefns300/#power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](../ilo5_hpe_resourcedefns300/#hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](../ilo5_hpe_resourcedefns300/#hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](../ilo5_hpe_resourcedefns300/#hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](../ilo5_hpe_resourcedefns300/#hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](../ilo5_hpe_resourcedefns300/#hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](../ilo5_hpe_resourcedefns300/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](../ilo5_hpe_resourcedefns300/#hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](../ilo5_hpe_resourcedefns300/#hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](../ilo5_other_resourcedefns300/#thermal)|
|`/redfish/v1/EventService`|[EventService](../ilo5_other_resourcedefns300/#eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](../ilo5_hpe_resourcedefns300/#hpecertificatecollection)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](../ilo5_hpe_resourcedefns300/#hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](../ilo5_other_resourcedefns300/#eventdestinationcollection)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](../ilo5_other_resourcedefns300/#eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](../ilo5_other_resourcedefns300/#jsonschemafilecollection)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](../ilo5_other_resourcedefns300/#jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](../ilo5_manager_resourcedefns300/#managercollection)|
|`/redfish/v1/Managers/{item}`|[Manager](../ilo5_manager_resourcedefns300/#manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](../ilo5_hpe_resourcedefns300/#hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](../ilo5_hpe_resourcedefns300/#hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](../ilo5_hpe_resourcedefns300/#hpeilobackupfilecollection)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](../ilo5_hpe_resourcedefns300/#hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](../ilo5_hpe_resourcedefns300/#hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](../ilo5_hpe_resourcedefns300/#hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo5_network_resourcedefns300/#ethernetinterfacecollection)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo5_network_resourcedefns300/#ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](../ilo5_hpe_resourcedefns300/#hpeilofederationgroupcollection)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](../ilo5_hpe_resourcedefns300/#hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](../ilo5_hpe_resourcedefns300/#hpeilofederationpeerscollection)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](../ilo5_hpe_resourcedefns300/#hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](../ilo5_other_resourcedefns300/#hostinterfacecollection)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](../ilo5_other_resourcedefns300/#hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](../ilo5_hpe_resourcedefns300/#hpeilolicensecollection)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](../ilo5_hpe_resourcedefns300/#hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](../ilo5_other_resourcedefns300/#logservicecollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL`|[LogService](../ilo5_other_resourcedefns300/#logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns300/#logentrycollection)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns300/#logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](../ilo5_manager_resourcedefns300/#managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](../ilo5_hpe_resourcedefns300/#hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](../ilo5_other_resourcedefns300/#logentrycollection)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](../ilo5_other_resourcedefns300/#logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](../ilo5_hpe_resourcedefns300/#hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](../ilo5_hpe_resourcedefns300/#hpeautomaticcertenrollment)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](../ilo5_hpe_resourcedefns300/#hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](../ilo5_hpe_resourcedefns300/#hpecertificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](../ilo5_hpe_resourcedefns300/#hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](../ilo5_hpe_resourcedefns300/#hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](../ilo5_hpe_resourcedefns300/#hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns300/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/PlatformCert/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns300/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](../ilo5_hpe_resourcedefns300/#hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](../ilo5_hpe_resourcedefns300/#hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo5_hpe_resourcedefns300/#hpeilosecurityparamcollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](../ilo5_hpe_resourcedefns300/#hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns300/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIAK/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns300/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns300/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/SystemIDevID/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns300/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns300/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOIDevID/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns300/#certificate)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates`|Collection of [Certificate](../ilo5_other_resourcedefns300/#certificatecollection)|
|`/redfish/v1/Managers/{item}/SecurityService/iLOLDevID/Certificates/{item}`|[Certificate](../ilo5_other_resourcedefns300/#certificate)|
|`/redfish/v1/Managers/{item}/SerialInterfaces`|Collection of [SerialInterface](../ilo5_other_resourcedefns300/#serialinterfacecollection)|
|`/redfish/v1/Managers/{item}/SerialInterfaces/{item}`|[SerialInterface](../ilo5_other_resourcedefns300/#serialinterface)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](../ilo5_hpe_resourcedefns300/#hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../ilo5_hpe_resourcedefns300/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](../ilo5_hpe_resourcedefns300/#hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](../ilo5_hpe_resourcedefns300/#hpesnmpuserscollection)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](../ilo5_hpe_resourcedefns300/#hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](../ilo5_other_resourcedefns300/#virtualmediacollection)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](../ilo5_other_resourcedefns300/#virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](../ilo5_other_resourcedefns300/#messageregistryfilecollection)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](../ilo5_other_resourcedefns300/#messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](../ilo5_hpe_resourcedefns300/#hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](../ilo5_other_resourcedefns300/#sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](../ilo5_other_resourcedefns300/#sessioncollection)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](../ilo5_other_resourcedefns300/#session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](../ilo5_computersystem_resourcedefns300/#computersystemcollection)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](../ilo5_computersystem_resourcedefns300/#computersystem)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters`|Collection of [HpeBaseNetworkAdapter](../ilo5_hpe_resourcedefns300/#hpebasenetworkadaptercollection)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/{item}`|[HpeBaseNetworkAdapter](../ilo5_hpe_resourcedefns300/#hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](../ilo5_bios_resourcedefns300/#bios)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns300/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|[HpeKmsConfig](../ilo5_hpe_resourcedefns300/#hpekmsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns300/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|[HpeServerConfigLock](../ilo5_hpe_resourcedefns300/#hpeserverconfiglock)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](../ilo5_bios_resourcedefns300/#bios)|
|`/redfish/v1/Systems/{item}/Bios/baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns300/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/boot`|[HpeServerBootSettings](../ilo5_hpe_resourcedefns300/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/Settings`|[HpeServerBootSettings](../ilo5_hpe_resourcedefns300/#hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/boot/baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns300/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/hpescalablepmem`|[HpeScalablePmem](#hpescalablepmem-v1_0_0-hpescalablepmem)|
|`/redfish/v1/Systems/{item}/Bios/hpescalablepmem/Settings`|[HpeScalablePmem](#hpescalablepmem-v1_0_0-hpescalablepmem)|
|`/redfish/v1/Systems/{item}/Bios/iscsi`|[HpeiSCSISoftwareInitiator](../ilo5_hpe_resourcedefns300/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/Settings`|[HpeiSCSISoftwareInitiator](../ilo5_hpe_resourcedefns300/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/iscsi/baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns300/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/mappings`|[HpeBiosMapping](../ilo5_hpe_resourcedefns300/#hpebiosmapping)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig`|[HpeTlsConfig](../ilo5_hpe_resourcedefns300/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig/Settings`|[HpeTlsConfig](../ilo5_hpe_resourcedefns300/#hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/tlsconfig/baseconfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns300/#hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](../ilo5_other_resourcedefns300/#bootoptioncollection)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](../ilo5_other_resourcedefns300/#bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo5_network_resourcedefns300/#ethernetinterfacecollection)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo5_network_resourcedefns300/#ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](../ilo5_other_resourcedefns300/#logservicecollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU`|[LogService](../ilo5_other_resourcedefns300/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns300/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/DPU/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns300/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/Event`|[LogService](../ilo5_other_resourcedefns300/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns300/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/Event/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns300/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](../ilo5_other_resourcedefns300/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns300/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns300/#logentry)|
|`/redfish/v1/Systems/{item}/LogServices/SL`|[LogService](../ilo5_other_resourcedefns300/#logservice)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries`|Collection of [LogEntry](../ilo5_other_resourcedefns300/#logentrycollection)|
|`/redfish/v1/Systems/{item}/LogServices/SL/Entries/{item}`|[LogEntry](../ilo5_other_resourcedefns300/#logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](../ilo5_other_resourcedefns300/#memorycollection)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](../ilo5_other_resourcedefns300/#memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](../ilo5_other_resourcedefns300/#memorydomaincollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](../ilo5_other_resourcedefns300/#memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](../ilo5_other_resourcedefns300/#memorychunkscollection)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](../ilo5_other_resourcedefns300/#memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces`|Collection of [NetworkInterface](../ilo5_network_resourcedefns300/#networkinterfacecollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}`|[NetworkInterface](../ilo5_network_resourcedefns300/#networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunctioncollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts`|Collection of [NetworkPort](../ilo5_network_resourcedefns300/#networkportcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}`|[NetworkPort](../ilo5_network_resourcedefns300/#networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../ilo5_hpe_resourcedefns300/#hpenetworkportevb)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../ilo5_hpe_resourcedefns300/#hpenetworkportlldp)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../ilo5_network_resourcedefns300/#networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports`|Collection of [Port](../ilo5_other_resourcedefns300/#portcollection)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns300/#port)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/Ports/{item}/Settings`|[Port](../ilo5_other_resourcedefns300/#port)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](../ilo5_hpe_resourcedefns300/#hpeserverpcidevicecollection)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](../ilo5_hpe_resourcedefns300/#hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](../ilo5_hpe_resourcedefns300/#hpeserverpcislotcollection)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](../ilo5_hpe_resourcedefns300/#hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors`|Collection of [Processor](../ilo5_other_resourcedefns300/#processorcollection)|
|`/redfish/v1/Systems/{item}/Processors/{item}`|[Processor](../ilo5_other_resourcedefns300/#processor)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](../ilo5_other_resourcedefns300/#secureboot)|
|`/redfish/v1/Systems/{item}/SmartStorage`|[HpeSmartStorage](../ilo5_hpe_resourcedefns300/#hpesmartstorage)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers`|Collection of [HpeSmartStorageArrayController](../ilo5_hpe_resourcedefns300/#hpesmartstoragearraycontrollercollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}`|[HpeSmartStorageArrayController](../ilo5_hpe_resourcedefns300/#hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives`|Collection of [HpeSmartStorageLogicalDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragelogicaldrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}`|[HpeSmartStorageLogicalDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/DataDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures`|Collection of [HpeSmartStorageStorageEnclosure](../ilo5_hpe_resourcedefns300/#hpesmartstoragestorageenclosurecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/{item}`|[HpeSmartStorageStorageEnclosure](../ilo5_hpe_resourcedefns300/#hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters`|Collection of [HpeSmartStorageHostBusAdapter](../ilo5_hpe_resourcedefns300/#hpesmartstoragehostbusadaptercollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}`|[HpeSmartStorageHostBusAdapter](../ilo5_hpe_resourcedefns300/#hpesmartstoragehostbusadapter)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrivecollection)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig`|[SmartStorageConfig](../ilo5_other_resourcedefns300/#smartstorageconfig)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig/Settings`|[SmartStorageConfig](../ilo5_other_resourcedefns300/#smartstorageconfig)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](../ilo5_storage_resourcedefns300/#storagecollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/`|Collection of [StorageController](../ilo5_storage_resourcedefns300/#storagecontrollercollection)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}`|[StorageController](../ilo5_storage_resourcedefns300/#storagecontroller)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns300/#port)|
|`/redfish/v1/Systems/{item}/Storage/{item}/StorageControllers/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns300/#port)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](../ilo5_hpe_resourcedefns300/#hpeusbdevicescollection)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](../ilo5_hpe_resourcedefns300/#hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](../ilo5_hpe_resourcedefns300/#hpeusbportscollection)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](../ilo5_hpe_resourcedefns300/#hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [HpeWorkloadPerformanceAdvisor](../ilo5_hpe_resourcedefns300/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](../ilo5_hpe_resourcedefns300/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](../ilo5_other_resourcedefns300/#taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](../ilo5_other_resourcedefns300/#taskcollection)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](../ilo5_other_resourcedefns300/#task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](../ilo5_other_resourcedefns300/#telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](../ilo5_other_resourcedefns300/#metricdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](../ilo5_other_resourcedefns300/#metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](../ilo5_other_resourcedefns300/#metricreportdefinitioncollection)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](../ilo5_other_resourcedefns300/#metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](../ilo5_other_resourcedefns300/#metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](../ilo5_other_resourcedefns300/#metricreportcollection)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Triggers](../ilo5_other_resourcedefns300/#triggerscollection)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](../ilo5_other_resourcedefns300/#triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](../ilo5_other_resourcedefns300/#updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](../ilo5_hpe_resourcedefns300/#hpecomponentcollection)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](../ilo5_hpe_resourcedefns300/#hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](../ilo5_other_resourcedefns300/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](../ilo5_other_resourcedefns300/#softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](../ilo5_hpe_resourcedefns300/#hpecomponentinstallsetcollection)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](../ilo5_hpe_resourcedefns300/#hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](../ilo5_hpe_resourcedefns300/#hpeinvalidimagecollection)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](../ilo5_hpe_resourcedefns300/#hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](../ilo5_hpe_resourcedefns300/#hpemaintenancewindowcollection)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](../ilo5_hpe_resourcedefns300/#hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](../ilo5_other_resourcedefns300/#softwareinventorycollection)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](../ilo5_other_resourcedefns300/#softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](../ilo5_hpe_resourcedefns300/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](../ilo5_hpe_resourcedefns300/#hpecomponentupdatetask)|
|`/redfish/v1/fabrics`|Collection of [Fabric](../ilo5_other_resourcedefns300/#fabriccollection)|
|`/redfish/v1/fabrics/{item}`|[Fabric](../ilo5_other_resourcedefns300/#fabric)|
|`/redfish/v1/fabrics/{item}/switches`|Collection of [SwitchCollection](#switchcollection-switchcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}`|[Switch](../ilo5_other_resourcedefns300/#switch)|
|`/redfish/v1/fabrics/{item}/switches/{item}/Ports`|Collection of [Port](../ilo5_other_resourcedefns300/#portcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}/Ports/{item}`|[Port](../ilo5_other_resourcedefns300/#port)|
|`/redfish/v1/systems/{item}/bios/Kmsconfig`|[HpeKmsConfig](../ilo5_hpe_resourcedefns300/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/Serverconfiglock`|[HpeServerConfigLock](../ilo5_hpe_resourcedefns300/#hpeserverconfiglock)|
|`redfish/v1/Chassis/{item}/BaseFrus`|Collection of [HpeiLOFrus](../ilo5_hpe_resourcedefns300/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}`|[HpeiLOFrus](../ilo5_hpe_resourcedefns300/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/BaseFrus/{item}/Details`|[HpeiLOFrus](../ilo5_hpe_resourcedefns300/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus`|Collection of [HpeiLOFrus](../ilo5_hpe_resourcedefns300/#hpeilofruscollection)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}`|[HpeiLOFrus](../ilo5_hpe_resourcedefns300/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/MezzFrus/{item}/Details`|[HpeiLOFrus](../ilo5_hpe_resourcedefns300/#hpeilofrus)|
|`redfish/v1/Chassis/{item}/PCIeDevices`|Collection of [PCIeDevice](../ilo5_other_resourcedefns300/#pciedevicecollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}`|[PCIeDevice](../ilo5_other_resourcedefns300/#pciedevice)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions`|Collection of [PCIeFunction](../ilo5_other_resourcedefns300/#pciefunctioncollection)|
|`redfish/v1/Chassis/{item}/PCIeDevices/{item}/PCIeFunctions/{item}`|[PCIeFunction](../ilo5_other_resourcedefns300/#pciefunction)|
|`redfish/v1/Chassis/{item}/PCIeSlots`|[PCIeSlots](../ilo5_other_resourcedefns300/#pcieslots)|
|`redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo5_network_resourcedefns300/#networkdevicefunction)|
|`redfish/v1/Systems/{item}/SecureEraseReportService`|[HpeSecureEraseReportService](../ilo5_hpe_resourcedefns300/#hpesecureerasereportservice)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](../ilo5_hpe_resourcedefns300/#hpesecureerasereportcollection)|
|`redfish/v1/Systems/{item}/SecureEraseReportService/SecureEraseReportEntries/{item}`|[HpeSecureEraseReport](../ilo5_hpe_resourcedefns300/#hpesecureerasereport)|
|`redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/ActiveSpareDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrivecollection)|
|`redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/StandbySpareDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns300/#hpesmartstoragediskdrivecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}`|[Storage](../ilo5_storage_resourcedefns300/#storage)|
|`redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}`|[Drive](../ilo5_storage_resourcedefns300/#drive)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes`|Collection of [Volume](../ilo5_storage_resourcedefns300/#volumecollection)|
|`redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}`|[Volume](../ilo5_storage_resourcedefns300/#volume)|
