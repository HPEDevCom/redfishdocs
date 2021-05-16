---
disableLastModified: true
enableToc: false
---

# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](../ilo5_resourcedefns/#servicerootv151serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](../ilo5_resourcedefns/#accountservicev130accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](../ilo5_resourcedefns/#manageraccountv113manageraccount)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](../ilo5_resourcedefns/#manageraccountv113manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](../ilo5_resourcedefns/#hpedirectorytestv100hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](../ilo5_resourcedefns/#certificatev110certificate)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](../ilo5_resourcedefns/#certificatev110certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](../ilo5_resourcedefns/#rolev121role)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](../ilo5_resourcedefns/#rolev121role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../ilo5_resourcedefns/#hpeiloaccountcertificatemapv101hpeiloaccountcertificatemap)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](../ilo5_resourcedefns/#hpeiloaccountcertificatemapv101hpeiloaccountcertificatemap)|
|`/redfish/v1/Chassis`|Collection of [Chassis](../ilo5_resourcedefns/#chassisv160chassis)|
|`/redfish/v1/Chassis/{item}`|[Chassis](../ilo5_resourcedefns/#chassisv160chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](../ilo5_resourcedefns/#hpeserveracchddservicev100hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](../ilo5_resourcedefns/#hpeserveracchddzonev100hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](../ilo5_resourcedefns/#hpeserverdevicev200hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](../ilo5_resourcedefns/#hpeserverdevicev200hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/Drives/{interface}/{item}`|[Drive](../ilo5_resourcedefns/#drivev100drive)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters`|Collection of [NetworkAdapter](../ilo5_resourcedefns/#networkadapterv130networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}`|[NetworkAdapter](../ilo5_resourcedefns/#networkadapterv130networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts`|Collection of [NetworkPort](../ilo5_resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}`|[NetworkPort](../ilo5_resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../ilo5_resourcedefns/#hpenetworkportevbv111hpenetworkportevb)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../ilo5_resourcedefns/#hpenetworkportlldpv111hpenetworkportlldp)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../ilo5_resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Settings`|[NetworkAdapter](../ilo5_resourcedefns/#networkadapterv130networkadapter)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](../ilo5_resourcedefns/#powerv130power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](../ilo5_resourcedefns/#hpeserveraccpowerservicev100hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](../ilo5_resourcedefns/#hpeserveraccpowercalibrationv100hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](../ilo5_resourcedefns/#hpeserveraccpowernodesinfov100hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](../ilo5_resourcedefns/#hpeserveraccpowerlimitv100hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](../ilo5_resourcedefns/#hpeserveraccpowerzonev100hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](../ilo5_resourcedefns/#hpepowermeterv201hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](../ilo5_resourcedefns/#hpeilofederatedgroupcappingv200hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](../ilo5_resourcedefns/#hpepowermeterv201hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](../ilo5_resourcedefns/#thermalv110thermal)|
|`/redfish/v1/EventService`|[EventService](../ilo5_resourcedefns/#eventservicev108eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](../ilo5_resourcedefns/#hpecertificatev090hpecertificate)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](../ilo5_resourcedefns/#hpecertificatev090hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](../ilo5_resourcedefns/#eventdestinationv100eventdestination)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](../ilo5_resourcedefns/#eventdestinationv100eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](../ilo5_resourcedefns/#jsonschemafilev104jsonschemafile)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](../ilo5_resourcedefns/#jsonschemafilev104jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](../ilo5_resourcedefns/#managerv151manager)|
|`/redfish/v1/Managers/{item}`|[Manager](../ilo5_resourcedefns/#managerv151manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](../ilo5_resourcedefns/#hpeiloactivehealthsystemv230hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](../ilo5_resourcedefns/#hpeilobackuprestoreservicev220hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](../ilo5_resourcedefns/#hpeilobackupfilev100hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](../ilo5_resourcedefns/#hpeilobackupfilev100hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](../ilo5_resourcedefns/#hpeilodatetimev200hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](../ilo5_resourcedefns/#hpeiloembeddedmediav200hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo5_resourcedefns/#ethernetinterfacev141ethernetinterface)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo5_resourcedefns/#ethernetinterfacev141ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](../ilo5_resourcedefns/#hpeilofederationgroupv200hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](../ilo5_resourcedefns/#hpeilofederationgroupv200hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](../ilo5_resourcedefns/#hpeilofederationpeersv200hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](../ilo5_resourcedefns/#hpeilofederationpeersv200hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](../ilo5_resourcedefns/#hostinterfacev111hostinterface)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](../ilo5_resourcedefns/#hostinterfacev111hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](../ilo5_resourcedefns/#hpeilolicensev230hpeilolicense)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](../ilo5_resourcedefns/#hpeilolicensev230hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](../ilo5_resourcedefns/#logservicev100logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL`|[LogService](../ilo5_resourcedefns/#logservicev100logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](../ilo5_resourcedefns/#logentryv110logentry)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](../ilo5_resourcedefns/#logentryv100logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](../ilo5_resourcedefns/#managernetworkprotocolv100managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](../ilo5_resourcedefns/#hperemotesupportv240hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](../ilo5_resourcedefns/#logentryv110logentry)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](../ilo5_resourcedefns/#logentryv100logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](../ilo5_resourcedefns/#hpesecurityservicev220hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](../ilo5_resourcedefns/#hpecertauthv110hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](../ilo5_resourcedefns/#hpecertificatev090hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](../ilo5_resourcedefns/#hpecertificatev090hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](../ilo5_resourcedefns/#hpeeskmv200hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](../ilo5_resourcedefns/#hpehttpscertv200hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](../ilo5_resourcedefns/#hpeilossov200hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](../ilo5_resourcedefns/#hpeilosecuritydashboardv100hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo5_resourcedefns/#hpeilosecurityparamv110hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](../ilo5_resourcedefns/#hpeilosecurityparamv110hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](../ilo5_resourcedefns/#hpeilosnmpservicev220hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../ilo5_resourcedefns/#hpesnmpalertdestinationv200hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](../ilo5_resourcedefns/#hpesnmpalertdestinationv200hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](../ilo5_resourcedefns/#hpesnmpuserv210hpesnmpuser)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](../ilo5_resourcedefns/#hpesnmpuserv210hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](../ilo5_resourcedefns/#virtualmediav120virtualmedia)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](../ilo5_resourcedefns/#virtualmediav120virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](../ilo5_resourcedefns/#messageregistryfilev104messageregistryfile)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](../ilo5_resourcedefns/#messageregistryfilev104messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](../ilo5_resourcedefns/#hpeiloresourcedirectoryv200hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](../ilo5_resourcedefns/#sessionservicev100sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](../ilo5_resourcedefns/#sessionv100session)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](../ilo5_resourcedefns/#sessionv100session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](../ilo5_resourcedefns/#computersystemv140computersystem)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](../ilo5_resourcedefns/#computersystemv140computersystem)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters`|Collection of [HpeBaseNetworkAdapter](../ilo5_resourcedefns/#hpebasenetworkadapterv200hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/{item}`|[HpeBaseNetworkAdapter](../ilo5_resourcedefns/#hpebasenetworkadapterv200hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](../ilo5_resourcedefns/#biosv100bios)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](../ilo5_resourcedefns/#biosv100bios)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Baseconfigs`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot`|[HpeServerBootSettings](../ilo5_resourcedefns/#hpeserverbootsettingsv200hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot/Settings`|[HpeServerBootSettings](../ilo5_resourcedefns/#hpeserverbootsettingsv200hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot/Baseconfigs`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Iscsi`|[HpeiSCSISoftwareInitiator](../ilo5_resourcedefns/#hpeiscsisoftwareinitiatorv200hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Iscsi/Settings`|[HpeiSCSISoftwareInitiator](../ilo5_resourcedefns/#hpeiscsisoftwareinitiatorv200hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Iscsi/Baseconfigs`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Mappings`|[HpeBiosMapping](../ilo5_resourcedefns/#hpebiosmappingv200hpebiosmapping)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Tlsconfig`|[HpeTlsConfig](../ilo5_resourcedefns/#hpetlsconfigv100hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Tlsconfig/Settings`|[HpeTlsConfig](../ilo5_resourcedefns/#hpetlsconfigv100hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Tlsconfig/Baseconfigs`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock`|[HpeServerConfigLock](../ilo5_resourcedefns/#hpeServerConfigLockv100HpeServerConfigLock)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock/Settings`|[HpeServerConfigLock](../ilo5_resourcedefns/#hpeServerConfigLockv100HpeServerConfigLock)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](../ilo5_resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig`|[HpeKmsConfig](HpeKmsConfigv100HpeKmsConfig)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig/Settings`|[HpeKmsConfig](../ilo5_resourcedefns/#hpeServerConfigLockv100HpeServerConfigLock)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](HpeKmsConfigv100HpeKmsConfig)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](../ilo5_resourcedefns/#bootoptionv101bootoption)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](../ilo5_resourcedefns/#bootoptionv101bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../ilo5_resourcedefns/#ethernetinterfacev141ethernetinterface)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../ilo5_resourcedefns/#ethernetinterfacev141ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](../ilo5_resourcedefns/#logservicev100logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](../ilo5_resourcedefns/#logservicev100logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](../ilo5_resourcedefns/#logentryv110logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](../ilo5_resourcedefns/#logentryv110logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](../ilo5_resourcedefns/#memoryv171memory)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](../ilo5_resourcedefns/#memoryv171memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](../ilo5_resourcedefns/#memorydomainv121memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](../ilo5_resourcedefns/#memorydomainv121memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](../ilo5_resourcedefns/#memorychunksv122memorychunks)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](../ilo5_resourcedefns/#memorychunksv122memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces`|Collection of [NetworkInterface](../ilo5_resourcedefns/#networkinterfacev111networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}`|[NetworkInterface](../ilo5_resourcedefns/#networkinterfacev111networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../ilo5_resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts`|Collection of [NetworkPort](../ilo5_resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}`|[NetworkPort](../ilo5_resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../ilo5_resourcedefns/#hpenetworkportevbv111hpenetworkportevb)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../ilo5_resourcedefns/#hpenetworkportlldpv111hpenetworkportlldp)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../ilo5_resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](../ilo5_resourcedefns/#hpeserverpcidevicev200hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](../ilo5_resourcedefns/#hpeserverpcidevicev200hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](../ilo5_resourcedefns/#hpeserverpcislotv210hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](../ilo5_resourcedefns/#hpeserverpcislotv210hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors`|Collection of [Processor](../ilo5_resourcedefns/#processorv100processor)|
|`/redfish/v1/Systems/{item}/Processors/{item}`|[Processor](../ilo5_resourcedefns/#processorv100processor)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](../ilo5_resourcedefns/#securebootv100secureboot)|
|`/redfish/v1/Systems/{item}/SmartStorage`|[HpeSmartStorage](../ilo5_resourcedefns/#hpesmartstoragev200hpesmartstorage)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers`|Collection of [HpeSmartStorageArrayController](../ilo5_resourcedefns/#hpesmartstoragearraycontrollerv220hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}`|[HpeSmartStorageArrayController](../ilo5_resourcedefns/#hpesmartstoragearraycontrollerv220hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives`|Collection of [HpeSmartStorageLogicalDrive](../ilo5_resourcedefns/#hpesmartstoragelogicaldrivev230hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}`|[HpeSmartStorageLogicalDrive](../ilo5_resourcedefns/#hpesmartstoragelogicaldrivev230hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/DataDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures`|Collection of [HpeSmartStorageStorageEnclosure](../ilo5_resourcedefns/#hpesmartstoragestorageenclosurev200hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/{item}`|[HpeSmartStorageStorageEnclosure](../ilo5_resourcedefns/#hpesmartstoragestorageenclosurev200hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters`|Collection of [HpeSmartStorageHostBusAdapter](../ilo5_resourcedefns/#hpesmartstoragehostbusadapterv200hpesmartstoragehostbusadapter)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}`|[HpeSmartStorageHostBusAdapter](../ilo5_resourcedefns/#hpesmartstoragehostbusadapterv200hpesmartstoragehostbusadapter)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](../ilo5_resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig`|[SmartStorageConfig](../ilo5_resourcedefns/#smartstorageconfigv200smartstorageconfig)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig/Settings`|[SmartStorageConfig](../ilo5_resourcedefns/#smartstorageconfigv200smartstorageconfig)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](../ilo5_resourcedefns/#storagev150storage)|
|`/redfish/v1/Systems/{item}/Storage/{interface}/{item}`|[Storage](../ilo5_resourcedefns/#storagev150storage)|
|`/redfish/v1/Systems/{item}/Storage/{interface}/{item}/Volumes`|Collection of [Volume](../ilo5_resourcedefns/#volumev100volume)|
|`/redfish/v1/Systems/{item}/Storage/{interface}/{item}/Volumes/{item}`|[Volume](../ilo5_resourcedefns/#volumev100volume)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](../ilo5_resourcedefns/#hpeusbdevicev200hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](../ilo5_resourcedefns/#hpeusbdevicev200hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](../ilo5_resourcedefns/#hpeusbportv200hpeusbport)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](../ilo5_resourcedefns/#hpeusbportv200hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [v1_0_0](../ilo5_resourcedefns/#v1_0_0)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](../ilo5_resourcedefns/#hpeworkloadperformanceadvisorv100hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](../ilo5_resourcedefns/#taskservicev111taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](../ilo5_resourcedefns/#taskv130task)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](../ilo5_resourcedefns/#taskv130task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](../ilo5_resourcedefns/#telemetryservicev100telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](../ilo5_resourcedefns/#metricdefinitionv100metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](../ilo5_resourcedefns/#metricdefinitionv100metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](../ilo5_resourcedefns/#metricreportdefinitionv100metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](../ilo5_resourcedefns/#metricreportdefinitionv100metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](../ilo5_resourcedefns/#metricreportv100metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](../ilo5_resourcedefns/#metricreportv100metricreport)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Trigger](../ilo5_resourcedefns/#triggerv100trigger)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](../ilo5_resourcedefns/#triggersv100triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](../ilo5_resourcedefns/#updateservicev111updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](../ilo5_resourcedefns/#hpecomponentv101hpecomponent)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](../ilo5_resourcedefns/#hpecomponentv101hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](../ilo5_resourcedefns/#softwareinventoryv100softwareinventory)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](../ilo5_resourcedefns/#softwareinventoryv100softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](../ilo5_resourcedefns/#hpecomponentinstallsetv110hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](../ilo5_resourcedefns/#hpecomponentinstallsetv110hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](../ilo5_resourcedefns/#hpeinvalidimagev100hpeinvalidimage)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](../ilo5_resourcedefns/#hpeinvalidimagev100hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](../ilo5_resourcedefns/#hpemaintenancewindowv101hpemaintenancewindow)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](../ilo5_resourcedefns/#hpemaintenancewindowv101hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](../ilo5_resourcedefns/#softwareinventoryv100softwareinventory)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](../ilo5_resourcedefns/#softwareinventoryv100softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](../ilo5_resourcedefns/#hpecomponentupdatetaskv120hpecomponentupdatetask)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](../ilo5_resourcedefns/#hpecomponentupdatetaskv120hpecomponentupdatetask)|
