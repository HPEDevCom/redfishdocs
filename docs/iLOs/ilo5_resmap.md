---
disableLastModified: true
enableToc: false
---


# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](../resourcedefns/#servicerootv151serviceroot)|
|`/redfish/v1/AccountService`|[AccountService](../ilo5_resourcedefns/#accountservicev130accountservice)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](../resourcedefns/#manageraccountv113manageraccount)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](../resourcedefns/#manageraccountv113manageraccount)|
|`/redfish/v1/AccountService/DirectoryTest`|[HpeDirectoryTest](../resourcedefns/#hpedirectorytestv100hpedirectorytest)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates`|Collection of [Certificate](../resourcedefns/#certificatev110certificate)|
|`/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{item}`|[Certificate](../resourcedefns/#certificatev110certificate)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](../resourcedefns/#rolev121role)|
|`/redfish/v1/AccountService/Roles/{item}`|[Role](../resourcedefns/#rolev121role)|
|`/redfish/v1/AccountService/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../resourcedefns/#hpeiloaccountcertificatemapv101hpeiloaccountcertificatemap)|
|`/redfish/v1/AccountService/UserCertificateMapping/{item}`|[HpeiLOAccountCertificateMap](../resourcedefns/#hpeiloaccountcertificatemapv101hpeiloaccountcertificatemap)|
|`/redfish/v1/Chassis`|Collection of [Chassis](../resourcedefns/#chassisv160chassis)|
|`/redfish/v1/Chassis/{item}`|[Chassis](../resourcedefns/#chassisv160chassis)|
|`/redfish/v1/Chassis/{item}/AccHddService`|[HpeServerAccHddService](../resourcedefns/#hpeserveracchddservicev100hpeserveracchddservice)|
|`/redfish/v1/Chassis/{item}/AccHddService/Zone`|[HpeServerAccHddZone](../resourcedefns/#hpeserveracchddzonev100hpeserveracchddzone)|
|`/redfish/v1/Chassis/{item}/Devices`|Collection of [HpeServerDevice](../resourcedefns/#hpeserverdevicev200hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/Devices/{item}`|[HpeServerDevice](../resourcedefns/#hpeserverdevicev200hpeserverdevice)|
|`/redfish/v1/Chassis/{item}/Drives/{interface}/{item}`|[Drive](../resourcedefns/#drivev100drive)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters`|Collection of [NetworkAdapter](../resourcedefns/#networkadapterv130networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}`|[NetworkAdapter](../resourcedefns/#networkadapterv130networkadapter)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkDeviceFunctions/{item}/Settings`|[NetworkDeviceFunction](../resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts`|Collection of [NetworkPort](../resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}`|[NetworkPort](../resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../resourcedefns/#hpenetworkportevbv111hpenetworkportevb)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../resourcedefns/#hpenetworkportlldpv111hpenetworkportlldp)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Chassis/{item}/NetworkAdapters/{item}/Settings`|[NetworkAdapter](../resourcedefns/#networkadapterv130networkadapter)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](../resourcedefns/#powerv130power)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService`|[HpeServerAccPowerService](../resourcedefns/#hpeserveraccpowerservicev100hpeserveraccpowerservice)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Calibration`|[HpeServerAccPowerCalibration](../resourcedefns/#hpeserveraccpowercalibrationv100hpeserveraccpowercalibration)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/NodesInfo`|[HpeServerAccPowerNodesInfo](../resourcedefns/#hpeserveraccpowernodesinfov100hpeserveraccpowernodesinfo)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/PowerLimit`|[HpeServerAccPowerLimit](../resourcedefns/#hpeserveraccpowerlimitv100hpeserveraccpowerlimit)|
|`/redfish/v1/Chassis/{item}/Power/AccPowerService/Zone`|[HpeServerAccPowerZone](../resourcedefns/#hpeserveraccpowerzonev100hpeserveraccpowerzone)|
|`/redfish/v1/Chassis/{item}/Power/FastPowerMeter`|[HpePowerMeter](../resourcedefns/#hpepowermeterv201hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Power/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](../resourcedefns/#hpeilofederatedgroupcappingv200hpeilofederatedgroupcapping)|
|`/redfish/v1/Chassis/{item}/Power/PowerMeter`|[HpePowerMeter](../resourcedefns/#hpepowermeterv201hpepowermeter)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](../resourcedefns/#thermalv110thermal)|
|`/redfish/v1/EventService`|[EventService](../resourcedefns/#eventservicev108eventservice)|
|`/redfish/v1/EventService/CACertificates`|Collection of [HpeCertificate](../resourcedefns/#hpecertificatev090hpecertificate)|
|`/redfish/v1/EventService/CACertificates/{item}`|[HpeCertificate](../resourcedefns/#hpecertificatev090hpecertificate)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](../resourcedefns/#eventdestinationv100eventdestination)|
|`/redfish/v1/EventService/Subscriptions/{item}`|[EventDestination](../resourcedefns/#eventdestinationv100eventdestination)|
|`/redfish/v1/JsonSchemas`|Collection of [JsonSchemaFile](../resourcedefns/#jsonschemafilev104jsonschemafile)|
|`/redfish/v1/JsonSchemas/{item}`|[JsonSchemaFile](../resourcedefns/#jsonschemafilev104jsonschemafile)|
|`/redfish/v1/Managers`|Collection of [Manager](../resourcedefns/#managerv151manager)|
|`/redfish/v1/Managers/{item}`|[Manager](../resourcedefns/#managerv151manager)|
|`/redfish/v1/Managers/{item}/ActiveHealthSystem`|[HpeiLOActiveHealthSystem](../resourcedefns/#hpeiloactivehealthsystemv230hpeiloactivehealthsystem)|
|`/redfish/v1/Managers/{item}/BackupRestoreService`|[HpeiLOBackupRestoreService](../resourcedefns/#hpeilobackuprestoreservicev220hpeilobackuprestoreservice)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles`|Collection of [HpeiLOBackupFile](../resourcedefns/#hpeilobackupfilev100hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/BackupRestoreService/BackupFiles/{item}`|[HpeiLOBackupFile](../resourcedefns/#hpeilobackupfilev100hpeilobackupfile)|
|`/redfish/v1/Managers/{item}/DateTime`|[HpeiLODateTime](../resourcedefns/#hpeilodatetimev200hpeilodatetime)|
|`/redfish/v1/Managers/{item}/EmbeddedMedia`|[HpeiLOEmbeddedMedia](../resourcedefns/#hpeiloembeddedmediav200hpeiloembeddedmedia)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../resourcedefns/#ethernetinterfacev141ethernetinterface)|
|`/redfish/v1/Managers/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../resourcedefns/#ethernetinterfacev141ethernetinterface)|
|`/redfish/v1/Managers/{item}/FederationGroups`|Collection of [HpeiLOFederationGroup](../resourcedefns/#hpeilofederationgroupv200hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationGroups/{item}`|[HpeiLOFederationGroup](../resourcedefns/#hpeilofederationgroupv200hpeilofederationgroup)|
|`/redfish/v1/Managers/{item}/FederationPeers`|Collection of [HpeiLOFederationPeers](../resourcedefns/#hpeilofederationpeersv200hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/FederationPeers/{item}`|[HpeiLOFederationPeers](../resourcedefns/#hpeilofederationpeersv200hpeilofederationpeers)|
|`/redfish/v1/Managers/{item}/HostInterfaces`|Collection of [HostInterface](../resourcedefns/#hostinterfacev111hostinterface)|
|`/redfish/v1/Managers/{item}/HostInterfaces/{item}`|[HostInterface](../resourcedefns/#hostinterfacev111hostinterface)|
|`/redfish/v1/Managers/{item}/LicenseService`|Collection of [HpeiLOLicense](../resourcedefns/#hpeilolicensev230hpeilolicense)|
|`/redfish/v1/Managers/{item}/LicenseService/{item}`|[HpeiLOLicense](../resourcedefns/#hpeilolicensev230hpeilolicense)|
|`/redfish/v1/Managers/{item}/LogServices`|Collection of [LogService](../resourcedefns/#logservicev100logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL`|[LogService](../resourcedefns/#logservicev100logservice)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries`|Collection of [LogEntry](../resourcedefns/#logentryv110logentry)|
|`/redfish/v1/Managers/{item}/LogServices/IEL/Entries/{item}`|[LogEntry](../resourcedefns/#logentryv100logentry)|
|`/redfish/v1/Managers/{item}/NetworkProtocol`|[ManagerNetworkProtocol](../resourcedefns/#managernetworkprotocolv100managernetworkprotocol)|
|`/redfish/v1/Managers/{item}/RemoteSupportService`|[HpeRemoteSupport](../resourcedefns/#hperemotesupportv240hperemotesupport)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs`|Collection of [LogEntry](../resourcedefns/#logentryv110logentry)|
|`/redfish/v1/Managers/{item}/RemoteSupportService/ServiceEventLogs/{item}`|[LogEntry](../resourcedefns/#logentryv100logentry)|
|`/redfish/v1/Managers/{item}/SecurityService`|[HpeSecurityService](../resourcedefns/#hpesecurityservicev220hpesecurityservice)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication`|[HpeCertAuth](../resourcedefns/#hpecertauthv110hpecertauth)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates`|Collection of [HpeCertificate](../resourcedefns/#hpecertificatev090hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/CertificateAuthentication/CACertificates/{item}`|[HpeCertificate](../resourcedefns/#hpecertificatev090hpecertificate)|
|`/redfish/v1/Managers/{item}/SecurityService/ESKM`|[HpeESKM](../resourcedefns/#hpeeskmv200hpeeskm)|
|`/redfish/v1/Managers/{item}/SecurityService/HttpsCert`|[HpeHttpsCert](../resourcedefns/#hpehttpscertv200hpehttpscert)|
|`/redfish/v1/Managers/{item}/SecurityService/SSO`|[HpeiLOSSO](../resourcedefns/#hpeilossov200hpeilosso)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard`|[HpeiLOSecurityDashboard](../resourcedefns/#hpeilosecuritydashboardv100hpeilosecuritydashboard)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams`|Collection of [HpeiLOSecurityParam](../resourcedefns/#hpeilosecurityparamv110hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SecurityService/SecurityDashboard/SecurityParams/{item}`|[HpeiLOSecurityParam](../resourcedefns/#hpeilosecurityparamv110hpeilosecurityparam)|
|`/redfish/v1/Managers/{item}/SnmpService`|[HpeiLOSnmpService](../resourcedefns/#hpeilosnmpservicev220hpeilosnmpservice)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../resourcedefns/#hpesnmpalertdestinationv200hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPAlertDestinations/{item}`|[HpeSNMPAlertDestination](../resourcedefns/#hpesnmpalertdestinationv200hpesnmpalertdestination)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers`|Collection of [HpeSNMPUser](../resourcedefns/#hpesnmpuserv210hpesnmpuser)|
|`/redfish/v1/Managers/{item}/SnmpService/SNMPUsers/{item}`|[HpeSNMPUser](../resourcedefns/#hpesnmpuserv210hpesnmpuser)|
|`/redfish/v1/Managers/{item}/VirtualMedia`|Collection of [VirtualMedia](../resourcedefns/#virtualmediav120virtualmedia)|
|`/redfish/v1/Managers/{item}/VirtualMedia/{item}`|[VirtualMedia](../resourcedefns/#virtualmediav120virtualmedia)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](../resourcedefns/#messageregistryfilev104messageregistryfile)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](../resourcedefns/#messageregistryfilev104messageregistryfile)|
|`/redfish/v1/ResourceDirectory`|[HpeiLOResourceDirectory](../resourcedefns/#hpeiloresourcedirectoryv200hpeiloresourcedirectory)|
|`/redfish/v1/SessionService`|[SessionService](../resourcedefns/#sessionservicev100sessionservice)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](../resourcedefns/#sessionv100session)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](../resourcedefns/#sessionv100session)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](../resourcedefns/#computersystemv140computersystem)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](../resourcedefns/#computersystemv140computersystem)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters`|Collection of [HpeBaseNetworkAdapter](../resourcedefns/#hpebasenetworkadapterv200hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/BaseNetworkAdapters/{item}`|[HpeBaseNetworkAdapter](../resourcedefns/#hpebasenetworkadapterv200hpebasenetworkadapter)|
|`/redfish/v1/Systems/{item}/Bios`|[Bios](../resourcedefns/#biosv100bios)|
|`/redfish/v1/Systems/{item}/Bios/Settings`|[Bios](../resourcedefns/#biosv100bios)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Baseconfigs`|[HpeBaseConfigs](../resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot`|[HpeServerBootSettings](../resourcedefns/#hpeserverbootsettingsv200hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot/Settings`|[HpeServerBootSettings](../resourcedefns/#hpeserverbootsettingsv200hpeserverbootsettings)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Boot/Baseconfigs`|[HpeBaseConfigs](../resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Iscsi`|[HpeiSCSISoftwareInitiator](../resourcedefns/#hpeiscsisoftwareinitiatorv200hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Iscsi/Settings`|[HpeiSCSISoftwareInitiator](../resourcedefns/#hpeiscsisoftwareinitiatorv200hpeiscsisoftwareinitiator)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Iscsi/Baseconfigs`|[HpeBaseConfigs](../resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Mappings`|[HpeBiosMapping](../resourcedefns/#hpebiosmappingv200hpebiosmapping)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Tlsconfig`|[HpeTlsConfig](../resourcedefns/#hpetlsconfigv100hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Tlsconfig/Settings`|[HpeTlsConfig](../resourcedefns/#hpetlsconfigv100hpetlsconfig)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Tlsconfig/Baseconfigs`|[HpeBaseConfigs](../resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock`|[HpeServerConfigLock](../resourcedefns/#hpeServerConfigLockv100HpeServerConfigLock)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock/Settings`|[HpeServerConfigLock](../resourcedefns/#hpeServerConfigLockv100HpeServerConfigLock)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Serverconfiglock/Baseconfigs`|[HpeBaseConfigs](../resourcedefns/#hpebaseconfigsv200hpebaseconfigs)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig`|[HpeKmsConfig](HpeKmsConfigv100HpeKmsConfig)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig/Settings`|[HpeKmsConfig](../resourcedefns/#hpeServerConfigLockv100HpeServerConfigLock)|
|`/redfish/v1/Systems/{item}/Bios/Oem/Hpe/Kmsconfig/Baseconfigs`|[HpeBaseConfigs](HpeKmsConfigv100HpeKmsConfig)|
|`/redfish/v1/Systems/{item}/BootOptions`|Collection of [BootOption](../resourcedefns/#bootoptionv101bootoption)|
|`/redfish/v1/Systems/{item}/BootOptions/{item}`|[BootOption](../resourcedefns/#bootoptionv101bootoption)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](../resourcedefns/#ethernetinterfacev141ethernetinterface)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](../resourcedefns/#ethernetinterfacev141ethernetinterface)|
|`/redfish/v1/Systems/{item}/LogServices`|Collection of [LogService](../resourcedefns/#logservicev100logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML`|[LogService](../resourcedefns/#logservicev100logservice)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries`|Collection of [LogEntry](../resourcedefns/#logentryv110logentry)|
|`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}`|[LogEntry](../resourcedefns/#logentryv110logentry)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](../resourcedefns/#memoryv171memory)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](../resourcedefns/#memoryv171memory)|
|`/redfish/v1/Systems/{item}/MemoryDomains`|Collection of [MemoryDomain](../resourcedefns/#memorydomainv121memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}`|[MemoryDomain](../resourcedefns/#memorydomainv121memorydomain)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks`|Collection of [MemoryChunks](../resourcedefns/#memorychunksv122memorychunks)|
|`/redfish/v1/Systems/{item}/MemoryDomains/{item}/MemoryChunks/{item}`|[MemoryChunks](../resourcedefns/#memorychunksv122memorychunks)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces`|Collection of [NetworkInterface](../resourcedefns/#networkinterfacev111networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}`|[NetworkInterface](../resourcedefns/#networkinterfacev111networkinterface)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](../resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkDeviceFunctions/{item}`|[NetworkDeviceFunction](../resourcedefns/#networkdevicefunctionv130networkdevicefunction)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts`|Collection of [NetworkPort](../resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}`|[NetworkPort](../resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeEVB`|[HpeNetworkPortEVB](../resourcedefns/#hpenetworkportevbv111hpenetworkportevb)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/HpeLLDP`|[HpeNetworkPortLLDP](../resourcedefns/#hpenetworkportlldpv111hpenetworkportlldp)|
|`/redfish/v1/Systems/{item}/NetworkInterfaces/{item}/NetworkPorts/{item}/Settings`|[NetworkPort](../resourcedefns/#networkportv120networkport)|
|`/redfish/v1/Systems/{item}/PCIDevices`|Collection of [HpeServerPciDevice](../resourcedefns/#hpeserverpcidevicev200hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCIDevices/{item}`|[HpeServerPciDevice](../resourcedefns/#hpeserverpcidevicev200hpeserverpcidevice)|
|`/redfish/v1/Systems/{item}/PCISlots`|Collection of [HpeServerPCISlot](../resourcedefns/#hpeserverpcislotv210hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/PCISlots/{item}`|[HpeServerPCISlot](../resourcedefns/#hpeserverpcislotv210hpeserverpcislot)|
|`/redfish/v1/Systems/{item}/Processors`|Collection of [Processor](../resourcedefns/#processorv100processor)|
|`/redfish/v1/Systems/{item}/Processors/{item}`|[Processor](../resourcedefns/#processorv100processor)|
|`/redfish/v1/Systems/{item}/SecureBoot`|[SecureBoot](../resourcedefns/#securebootv100secureboot)|
|`/redfish/v1/Systems/{item}/SmartStorage`|[HpeSmartStorage](../resourcedefns/#hpesmartstoragev200hpesmartstorage)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers`|Collection of [HpeSmartStorageArrayController](../resourcedefns/#hpesmartstoragearraycontrollerv220hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}`|[HpeSmartStorageArrayController](../resourcedefns/#hpesmartstoragearraycontrollerv220hpesmartstoragearraycontroller)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](../resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](../resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives`|Collection of [HpeSmartStorageLogicalDrive](../resourcedefns/#hpesmartstoragelogicaldrivev230hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}`|[HpeSmartStorageLogicalDrive](../resourcedefns/#hpesmartstoragelogicaldrivev230hpesmartstoragelogicaldrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/LogicalDrives/{item}/DataDrives`|Collection of [HpeSmartStorageDiskDrive](../resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures`|Collection of [HpeSmartStorageStorageEnclosure](../resourcedefns/#hpesmartstoragestorageenclosurev200hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/StorageEnclosures/{item}`|[HpeSmartStorageStorageEnclosure](../resourcedefns/#hpesmartstoragestorageenclosurev200hpesmartstoragestorageenclosure)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives`|Collection of [HpeSmartStorageDiskDrive](../resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/ArrayControllers/{item}/UnconfiguredDrives/{item}`|[HpeSmartStorageDiskDrive](../resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters`|Collection of [HpeSmartStorageHostBusAdapter](../resourcedefns/#hpesmartstoragehostbusadapterv200hpesmartstoragehostbusadapter)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}`|[HpeSmartStorageHostBusAdapter](../resourcedefns/#hpesmartstoragehostbusadapterv200hpesmartstoragehostbusadapter)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives`|Collection of [HpeSmartStorageDiskDrive](../resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorage/HostBusAdapters/{item}/DiskDrives/{item}`|[HpeSmartStorageDiskDrive](../resourcedefns/#hpesmartstoragediskdrivev210hpesmartstoragediskdrive)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig`|[SmartStorageConfig](../resourcedefns/#smartstorageconfigv200smartstorageconfig)|
|`/redfish/v1/Systems/{item}/SmartStorageConfig/Settings`|[SmartStorageConfig](../resourcedefns/#smartstorageconfigv200smartstorageconfig)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](../resourcedefns/#storagev150storage)|
|`/redfish/v1/Systems/{item}/Storage/{interface}/{item}`|[Storage](../resourcedefns/#storagev150storage)|
|`/redfish/v1/Systems/{item}/Storage/{interface}/{item}/Volumes`|Collection of [Volume](../resourcedefns/#volumev100volume)|
|`/redfish/v1/Systems/{item}/Storage/{interface}/{item}/Volumes/{item}`|[Volume](../resourcedefns/#volumev100volume)|
|`/redfish/v1/Systems/{item}/USBDevices`|Collection of [HpeUSBDevice](../resourcedefns/#hpeusbdevicev200hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBDevices/{item}`|[HpeUSBDevice](../resourcedefns/#hpeusbdevicev200hpeusbdevice)|
|`/redfish/v1/Systems/{item}/USBPorts`|Collection of [HpeUSBPort](../resourcedefns/#hpeusbportv200hpeusbport)|
|`/redfish/v1/Systems/{item}/USBPorts/{item}`|[HpeUSBPort](../resourcedefns/#hpeusbportv200hpeusbport)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor`|Collection of [v1_0_0](../resourcedefns/#v1_0_0)|
|`/redfish/v1/Systems/{item}/WorkloadPerformanceAdvisor/{item}`|[HpeWorkloadPerformanceAdvisor](../resourcedefns/#hpeworkloadperformanceadvisorv100hpeworkloadperformanceadvisor)|
|`/redfish/v1/TaskService`|[TaskService](../resourcedefns/#taskservicev111taskservice)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](../resourcedefns/#taskv130task)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](../resourcedefns/#taskv130task)|
|`/redfish/v1/TelemetryService`|[TelemetryService](../resourcedefns/#telemetryservicev100telemetryservice)|
|`/redfish/v1/TelemetryService/MetricDefinitions`|Collection of [MetricDefinition](../resourcedefns/#metricdefinitionv100metricdefinition)|
|`/redfish/v1/TelemetryService/MetricDefinitions/{item}`|[MetricDefinition](../resourcedefns/#metricdefinitionv100metricdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions`|Collection of [MetricReportDefinition](../resourcedefns/#metricreportdefinitionv100metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}`|[MetricReportDefinition](../resourcedefns/#metricreportdefinitionv100metricreportdefinition)|
|`/redfish/v1/TelemetryService/MetricReports/{item}`|[MetricReport](../resourcedefns/#metricreportv100metricreport)|
|`/redfish/v1/TelemetryService/MetricsReport`|Collection of [MetricReport](../resourcedefns/#metricreportv100metricreport)|
|`/redfish/v1/TelemetryService/Triggers`|Collection of [Trigger](../resourcedefns/#triggerv100trigger)|
|`/redfish/v1/TelemetryService/Triggers/{item}`|[Triggers](../resourcedefns/#triggersv100triggers)|
|`/redfish/v1/UpdateService`|[UpdateService](../resourcedefns/#updateservicev111updateservice)|
|`/redfish/v1/UpdateService/ComponentRepository`|Collection of [HpeComponent](../resourcedefns/#hpecomponentv101hpecomponent)|
|`/redfish/v1/UpdateService/ComponentRepository/{item}`|[HpeComponent](../resourcedefns/#hpecomponentv101hpecomponent)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](../resourcedefns/#softwareinventoryv100softwareinventory)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](../resourcedefns/#softwareinventoryv100softwareinventory)|
|`/redfish/v1/UpdateService/InstallSets`|Collection of [HpeComponentInstallSet](../resourcedefns/#hpecomponentinstallsetv110hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InstallSets/{item}`|[HpeComponentInstallSet](../resourcedefns/#hpecomponentinstallsetv110hpecomponentinstallset)|
|`/redfish/v1/UpdateService/InvalidImageRepository`|Collection of [HpeInvalidImage](../resourcedefns/#hpeinvalidimagev100hpeinvalidimage)|
|`/redfish/v1/UpdateService/InvalidImageRepository/{item}`|[HpeInvalidImage](../resourcedefns/#hpeinvalidimagev100hpeinvalidimage)|
|`/redfish/v1/UpdateService/MaintenanceWindows`|Collection of [HpeMaintenanceWindow](../resourcedefns/#hpemaintenancewindowv101hpemaintenancewindow)|
|`/redfish/v1/UpdateService/MaintenanceWindows/{item}`|[HpeMaintenanceWindow](../resourcedefns/#hpemaintenancewindowv101hpemaintenancewindow)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](../resourcedefns/#softwareinventoryv100softwareinventory)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](../resourcedefns/#softwareinventoryv100softwareinventory)|
|`/redfish/v1/UpdateService/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](../resourcedefns/#hpecomponentupdatetaskv120hpecomponentupdatetask)|
|`/redfish/v1/UpdateService/UpdateTaskQueue/{item}`|[HpeComponentUpdateTask](../resourcedefns/#hpecomponentupdatetaskv120hpecomponentupdatetask)|
