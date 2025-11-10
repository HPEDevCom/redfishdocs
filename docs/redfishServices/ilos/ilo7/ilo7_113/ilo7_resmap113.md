---
excludeFromSearch: true
seo:
  title: iLO 7 version 1.13 Resource map
markdown:
  toc:
    hide: true
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
---

# Resource map of iLO 7 v1.13

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](ilo7_serviceroot_resourcedefns113/#serviceroot)|
|`/redfish/v1/accountservice`|[AccountService](ilo7_other_resourcedefns113/#accountservice)|
|`/redfish/v1/accountservice/Oem/Hpe/appaccounts`|Collection of [HpeiLOAppAccount](ilo7_hpe_resourcedefns113/#hpeiloappaccountcollection)|
|`/redfish/v1/accountservice/Oem/Hpe/appaccounts/{item}`|[HpeiLOAppAccount](ilo7_hpe_resourcedefns113/#hpeiloappaccount)|
|`/redfish/v1/accountservice/accounts`|Collection of [ManagerAccount](ilo7_manager_resourcedefns113/#manageraccountcollection)|
|`/redfish/v1/accountservice/accounts/{item}`|[ManagerAccount](ilo7_manager_resourcedefns113/#manageraccount)|
|`/redfish/v1/accountservice/accounts/{item}/keys`|Collection of [Key](ilo7_other_resourcedefns113/#keycollection)|
|`/redfish/v1/accountservice/accounts/{item}/keys/{item}`|[Key](ilo7_other_resourcedefns113/#key)|
|`/redfish/v1/accountservice/directorytest`|[HpeDirectoryTest](ilo7_hpe_resourcedefns113/#hpedirectorytest)|
|`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/accountservice/roles`|Collection of [Role](ilo7_other_resourcedefns113/#rolecollection)|
|`/redfish/v1/accountservice/roles/{item}`|[Role](ilo7_other_resourcedefns113/#role)|
|`/redfish/v1/accountservice/usercertificatemapping`|Collection of [HpeiLOAccountCertificateMap](ilo7_hpe_resourcedefns113/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/accountservice/usercertificatemapping/{item}`|[HpeiLOAccountCertificateMap](ilo7_hpe_resourcedefns113/#hpeiloaccountcertificatemap)|
|`/redfish/v1/certificateservice`|[CertificateService](ilo7_other_resourcedefns113/#certificateservice)|
|`/redfish/v1/certificateservice/certificatelocations`|[CertificateLocations](ilo7_other_resourcedefns113/#certificatelocations)|
|`/redfish/v1/chassis`|Collection of [Chassis](ilo7_chassis_resourcedefns113/#chassiscollection)|
|`/redfish/v1/chassis/{item}`|[Chassis](ilo7_chassis_resourcedefns113/#chassis)|
|`/redfish/v1/chassis/{item}/basefrus`|Collection of [HpeiLOFrus](ilo7_hpe_resourcedefns113/#hpeilofruscollection)|
|`/redfish/v1/chassis/{item}/basefrus/{item}`|[HpeiLOFrus](ilo7_hpe_resourcedefns113/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/basefrus/{item}/details`|[HpeiLOFrus](ilo7_hpe_resourcedefns113/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/devices`|Collection of [HpeServerDevice](ilo7_hpe_resourcedefns113/#hpeserverdevicecollection)|
|`/redfish/v1/chassis/{item}/devices/{item}`|[HpeServerDevice](ilo7_hpe_resourcedefns113/#hpeserverdevice)|
|`/redfish/v1/chassis/{item}/environmentmetrics`|[EnvironmentMetrics](ilo7_other_resourcedefns113/#environmentmetrics)|
|`/redfish/v1/chassis/{item}/mezzfrus`|Collection of [HpeiLOFrus](ilo7_hpe_resourcedefns113/#hpeilofruscollection)|
|`/redfish/v1/chassis/{item}/mezzfrus/{item}`|[HpeiLOFrus](ilo7_hpe_resourcedefns113/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/mezzfrus/{item}/details`|[HpeiLOFrus](ilo7_hpe_resourcedefns113/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/networkadapters`|Collection of [NetworkAdapter](ilo7_network_resourcedefns113/#networkadaptercollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}`|[NetworkAdapter](ilo7_network_resourcedefns113/#networkadapter)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions`|Collection of [NetworkDeviceFunction](ilo7_network_resourcedefns113/#networkdevicefunctioncollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}`|[NetworkDeviceFunction](ilo7_network_resourcedefns113/#networkdevicefunction)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}/settings`|[NetworkDeviceFunction](ilo7_network_resourcedefns113/#networkdevicefunction)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports`|Collection of [Port](ilo7_other_resourcedefns113/#portcollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}/settings`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/settings`|[NetworkAdapter](ilo7_network_resourcedefns113/#networkadapter)|
|`/redfish/v1/chassis/{item}/pciedevices`|Collection of [PCIeDevice](ilo7_other_resourcedefns113/#pciedevicecollection)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}`|[PCIeDevice](ilo7_other_resourcedefns113/#pciedevice)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}/pciefunctions`|Collection of [PCIeFunction](ilo7_other_resourcedefns113/#pciefunctioncollection)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}/pciefunctions/{item}`|[PCIeFunction](ilo7_other_resourcedefns113/#pciefunction)|
|`/redfish/v1/chassis/{item}/pcieslots`|[PCIeSlots](ilo7_other_resourcedefns113/#pcieslots)|
|`/redfish/v1/chassis/{item}/power`|[Power](ilo7_other_resourcedefns113/#power)|
|`/redfish/v1/chassis/{item}/power/fastpowermeter`|[HpePowerMeter](ilo7_hpe_resourcedefns113/#hpepowermeter)|
|`/redfish/v1/chassis/{item}/power/powermeter`|[HpePowerMeter](ilo7_hpe_resourcedefns113/#hpepowermeter)|
|`/redfish/v1/chassis/{item}/sensors/{item}`|[Sensor](ilo7_other_resourcedefns113/#sensor)|
|`/redfish/v1/chassis/{item}/thermal`|[Thermal](ilo7_other_resourcedefns113/#thermal)|
|`/redfish/v1/chassis/{item}/thermalsubsystem`|[ThermalSubsystem](ilo7_other_resourcedefns113/#thermalsubsystem)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans`|Collection of [Fan](ilo7_other_resourcedefns113/#fancollection)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans/{item}`|[Fan](ilo7_other_resourcedefns113/#fan)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans/{item}/assembly`|[Assembly](ilo7_other_resourcedefns113/#assembly)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps`|Collection of [Pump](ilo7_other_resourcedefns113/#pumpcollection)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps/{item}/assembly`|[Assembly](ilo7_other_resourcedefns113/#assembly)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps/{item}/assembly`|[Pump](ilo7_other_resourcedefns113/#pump)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/thermalmetrics`|[ThermalMetrics](ilo7_other_resourcedefns113/#thermalmetrics)|
|`/redfish/v1/componentintegrity`|Collection of [ComponentIntegrity](ilo7_other_resourcedefns113/#componentintegritycollection)|
|`/redfish/v1/componentintegrity/{item}`|[ComponentIntegrity](ilo7_other_resourcedefns113/#componentintegrity)|
|`/redfish/v1/eventservice`|[EventService](ilo7_other_resourcedefns113/#eventservice)|
|`/redfish/v1/eventservice/cacertificates`|Collection of [HpeCertificate](ilo7_hpe_resourcedefns113/#hpecertificatecollection)|
|`/redfish/v1/eventservice/cacertificates/{item}`|[HpeCertificate](ilo7_hpe_resourcedefns113/#hpecertificate)|
|`/redfish/v1/eventservice/subscriptions`|Collection of [EventDestination](ilo7_other_resourcedefns113/#eventdestinationcollection)|
|`/redfish/v1/eventservice/subscriptions/{item}`|[EventDestination](ilo7_other_resourcedefns113/#eventdestination)|
|`/redfish/v1/fabrics`|Collection of [Fabric](ilo7_other_resourcedefns113/#fabriccollection)|
|`/redfish/v1/fabrics/{item}`|[Fabric](ilo7_other_resourcedefns113/#fabric)|
|`/redfish/v1/fabrics/{item}/switches`|Collection of [Switch](ilo7_other_resourcedefns113/#switchcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}`|[Switch](ilo7_other_resourcedefns113/#switch)|
|`/redfish/v1/fabrics/{item}/switches/{item}/ports`|Collection of [Port](ilo7_other_resourcedefns113/#portcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}/ports/{item}`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/jsonschemas`|Collection of [JsonSchemaFile](ilo7_other_resourcedefns113/#jsonschemafilecollection)|
|`/redfish/v1/jsonschemas/{item}`|[JsonSchemaFile](ilo7_other_resourcedefns113/#jsonschemafile)|
|`/redfish/v1/managers`|Collection of [Manager](ilo7_manager_resourcedefns113/#managercollection)|
|`/redfish/v1/managers/{item}`|[Manager](ilo7_manager_resourcedefns113/#manager)|
|`/redfish/v1/managers/{item}/activehealthsystem`|[HpeiLOActiveHealthSystem](ilo7_hpe_resourcedefns113/#hpeiloactivehealthsystem)|
|`/redfish/v1/managers/{item}/backuprestoreservice`|[HpeiLOBackupRestoreService](ilo7_hpe_resourcedefns113/#hpeilobackuprestoreservice)|
|`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles`|Collection of [HpeiLOBackupFile](ilo7_hpe_resourcedefns113/#hpeilobackupfilecollection)|
|`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles/{item}`|[HpeiLOBackupFile](ilo7_hpe_resourcedefns113/#hpeilobackupfile)|
|`/redfish/v1/managers/{item}/datetime`|[HpeiLODateTime](ilo7_hpe_resourcedefns113/#hpeilodatetime)|
|`/redfish/v1/managers/{item}/dedicatednetworkports`|Collection of [Port](ilo7_other_resourcedefns113/#portcollection)|
|`/redfish/v1/managers/{item}/dedicatednetworkports/{item}`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/managers/{item}/ethernetinterfaces`|Collection of [EthernetInterface](ilo7_network_resourcedefns113/#ethernetinterfacecollection)|
|`/redfish/v1/managers/{item}/ethernetinterfaces/{item}`|[EthernetInterface](ilo7_network_resourcedefns113/#ethernetinterface)|
|`/redfish/v1/managers/{item}/hostinterfaces`|Collection of [HostInterface](ilo7_other_resourcedefns113/#hostinterfacecollection)|
|`/redfish/v1/managers/{item}/hostinterfaces/{item}`|[HostInterface](ilo7_other_resourcedefns113/#hostinterface)|
|`/redfish/v1/managers/{item}/licenseservice`|Collection of [HpeiLOLicense](ilo7_hpe_resourcedefns113/#hpeilolicensecollection)|
|`/redfish/v1/managers/{item}/licenseservice/{item}`|[HpeiLOLicense](ilo7_hpe_resourcedefns113/#hpeilolicense)|
|`/redfish/v1/managers/{item}/logservices`|Collection of [LogService](ilo7_other_resourcedefns113/#logservicecollection)|
|`/redfish/v1/managers/{item}/logservices/iel`|[LogService](ilo7_other_resourcedefns113/#logservice)|
|`/redfish/v1/managers/{item}/logservices/iel/entries`|Collection of [LogEntry](ilo7_other_resourcedefns113/#logentrycollection)|
|`/redfish/v1/managers/{item}/logservices/iel/entries/{item}`|[LogEntry](ilo7_other_resourcedefns113/#logentry)|
|`/redfish/v1/managers/{item}/networkprotocol`|[ManagerNetworkProtocol](ilo7_manager_resourcedefns113/#managernetworkprotocol)|
|`/redfish/v1/managers/{item}/remotesupportservice`|[HpeRemoteSupport](ilo7_hpe_resourcedefns113/#hperemotesupport)|
|`/redfish/v1/managers/{item}/remotesupportservice/serviceeventlogs`|Collection of [LogEntry](ilo7_other_resourcedefns113/#logentrycollection)|
|`/redfish/v1/managers/{item}/remotesupportservice/serviceeventlogs/{item}`|[LogEntry](ilo7_other_resourcedefns113/#logentry)|
|`/redfish/v1/managers/{item}/securityservice`|[HpeSecurityService](ilo7_hpe_resourcedefns113/#hpesecurityservice)|
|`/redfish/v1/managers/{item}/securityservice/bmchpeldevid/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmchpeldevid/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmciak/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmciak/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmcidevidpca/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmcidevidpca/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmclak/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmclak/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication`|[HpeCertAuth](ilo7_hpe_resourcedefns113/#hpecertauth)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates`|Collection of [HpeCertificate](ilo7_hpe_resourcedefns113/#hpecertificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates/{item}`|[HpeCertificate](ilo7_hpe_resourcedefns113/#hpecertificate)|
|`/redfish/v1/managers/{item}/securityservice/eskm`|[HpeESKM](ilo7_hpe_resourcedefns113/#hpeeskm)|
|`/redfish/v1/managers/{item}/securityservice/httpscert`|[HpeHttpsCert](ilo7_hpe_resourcedefns113/#hpehttpscert)|
|`/redfish/v1/managers/{item}/securityservice/platformcert/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/platformcert/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard`|[HpeiLOSecurityDashboard](ilo7_hpe_resourcedefns113/#hpeilosecuritydashboard)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams`|Collection of [HpeiLOSecurityParam](ilo7_hpe_resourcedefns113/#hpeilosecurityparamcollection)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams/{item}`|[HpeiLOSecurityParam](ilo7_hpe_resourcedefns113/#hpeilosecurityparam)|
|`/redfish/v1/managers/{item}/securityservice/sso`|[HpeiLOSSO](ilo7_hpe_resourcedefns113/#hpeilosso)|
|`/redfish/v1/managers/{item}/securityservice/systemiak/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemiak/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemlak/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemlak/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemldevid/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemldevid/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/managers/{item}/sharednetworkports`|Collection of [Port](ilo7_other_resourcedefns113/#portcollection)|
|`/redfish/v1/managers/{item}/sharednetworkports/{item}`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/managers/{item}/snmpservice`|[HpeiLOSnmpService](ilo7_hpe_resourcedefns113/#hpeilosnmpservice)|
|`/redfish/v1/managers/{item}/snmpservice/snmpalertdestinations`|Collection of [HpeSNMPAlertDestination](ilo7_hpe_resourcedefns113/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/managers/{item}/snmpservice/snmpalertdestinations/{item}`|[HpeSNMPAlertDestination](ilo7_hpe_resourcedefns113/#hpesnmpalertdestination)|
|`/redfish/v1/managers/{item}/snmpservice/snmpusers`|Collection of [HpeSNMPUser](ilo7_hpe_resourcedefns113/#hpesnmpuserscollection)|
|`/redfish/v1/managers/{item}/snmpservice/snmpusers/{item}`|[HpeSNMPUser](ilo7_hpe_resourcedefns113/#hpesnmpuser)|
|`/redfish/v1/managers/{item}/virtualmedia`|Collection of [VirtualMedia](ilo7_other_resourcedefns113/#virtualmediacollection)|
|`/redfish/v1/managers/{item}/virtualmedia/{item}`|[VirtualMedia](ilo7_other_resourcedefns113/#virtualmedia)|
|`/redfish/v1/registries`|Collection of [MessageRegistryFile](ilo7_other_resourcedefns113/#messageregistryfilecollection)|
|`/redfish/v1/registries/{item}`|[MessageRegistryFile](ilo7_other_resourcedefns113/#messageregistryfile)|
|`/redfish/v1/resourcedirectory`|[HpeiLOResourceDirectory](ilo7_hpe_resourcedefns113/#hpeiloresourcedirectory)|
|`/redfish/v1/sessionservice`|[SessionService](ilo7_other_resourcedefns113/#sessionservice)|
|`/redfish/v1/sessionservice/sessions`|Collection of [Session](ilo7_other_resourcedefns113/#sessioncollection)|
|`/redfish/v1/sessionservice/sessions/{item}`|[Session](ilo7_other_resourcedefns113/#session)|
|`/redfish/v1/systems`|Collection of [ComputerSystem](ilo7_computersystem_resourcedefns113/#computersystemcollection)|
|`/redfish/v1/systems/{item}`|[ComputerSystem](ilo7_computersystem_resourcedefns113/#computersystem)|
|`/redfish/v1/systems/{item}/bios`|[Bios](ilo7_bios_resourcedefns113/#bios)|
|`/redfish/v1/systems/{item}/bios/baseconfigs`|[HpeBaseConfigs](ilo7_hpe_resourcedefns113/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot`|[HpeServerBootSettings](ilo7_hpe_resourcedefns113/#hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/boot/baseconfigs`|[HpeBaseConfigs](ilo7_hpe_resourcedefns113/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot/settings`|[HpeServerBootSettings](ilo7_hpe_resourcedefns113/#hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/iscsi`|[HpeiSCSISoftwareInitiator](ilo7_hpe_resourcedefns113/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/iscsi/baseconfigs`|[HpeBaseConfigs](ilo7_hpe_resourcedefns113/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/iscsi/settings`|[HpeiSCSISoftwareInitiator](ilo7_hpe_resourcedefns113/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/kmsconfig`|[HpeKmsConfig](ilo7_hpe_resourcedefns113/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/baseconfigs`|[HpeBaseConfigs](ilo7_hpe_resourcedefns113/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/settings`|[HpeKmsConfig](ilo7_hpe_resourcedefns113/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/mappings`|[HpeBiosMapping](ilo7_hpe_resourcedefns113/#hpebiosmapping)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig`|[HpeTlsConfig](ilo7_hpe_resourcedefns113/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/baseconfigs`|[HpeBaseConfigs](ilo7_hpe_resourcedefns113/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/settings`|[HpeTlsConfig](ilo7_hpe_resourcedefns113/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock`|[HpeServerConfigLock](ilo7_hpe_resourcedefns113/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/baseconfigs`|[HpeBaseConfigs](ilo7_hpe_resourcedefns113/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/settings`|[HpeServerConfigLock](ilo7_hpe_resourcedefns113/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/settings`|[Bios](ilo7_bios_resourcedefns113/#bios)|
|`/redfish/v1/systems/{item}/bootoptions`|Collection of [BootOption](ilo7_other_resourcedefns113/#bootoptioncollection)|
|`/redfish/v1/systems/{item}/bootoptions/{item}`|[BootOption](ilo7_other_resourcedefns113/#bootoption)|
|`/redfish/v1/systems/{item}/ethernetinterfaces`|Collection of [EthernetInterface](ilo7_network_resourcedefns113/#ethernetinterfacecollection)|
|`/redfish/v1/systems/{item}/ethernetinterfaces/{item}`|[EthernetInterface](ilo7_network_resourcedefns113/#ethernetinterface)|
|`/redfish/v1/systems/{item}/logservices`|Collection of [LogService](ilo7_other_resourcedefns113/#logservicecollection)|
|`/redfish/v1/systems/{item}/logservices/dpu`|[LogService](ilo7_other_resourcedefns113/#logservice)|
|`/redfish/v1/systems/{item}/logservices/dpu/entries`|Collection of [LogEntry](ilo7_other_resourcedefns113/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/dpu/entries/{item}`|[LogEntry](ilo7_other_resourcedefns113/#logentry)|
|`/redfish/v1/systems/{item}/logservices/event`|[LogService](ilo7_other_resourcedefns113/#logservice)|
|`/redfish/v1/systems/{item}/logservices/event/entries`|Collection of [LogEntry](ilo7_other_resourcedefns113/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/event/entries/{item}`|[LogEntry](ilo7_other_resourcedefns113/#logentry)|
|`/redfish/v1/systems/{item}/logservices/iml`|[LogService](ilo7_other_resourcedefns113/#logservice)|
|`/redfish/v1/systems/{item}/logservices/iml/entries`|Collection of [LogEntry](ilo7_other_resourcedefns113/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/iml/entries/{item}`|[LogEntry](ilo7_other_resourcedefns113/#logentry)|
|`/redfish/v1/systems/{item}/logservices/sl`|[LogService](ilo7_other_resourcedefns113/#logservice)|
|`/redfish/v1/systems/{item}/logservices/sl/entries`|Collection of [LogEntry](ilo7_other_resourcedefns113/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/sl/entries/{item}`|[LogEntry](ilo7_other_resourcedefns113/#logentry)|
|`/redfish/v1/systems/{item}/memory`|Collection of [Memory](ilo7_other_resourcedefns113/#memorycollection)|
|`/redfish/v1/systems/{item}/memory/{item}`|[Memory](ilo7_other_resourcedefns113/#memory)|
|`/redfish/v1/systems/{item}/memory/{item}/memorymetrics`|[MemoryMetrics](ilo7_other_resourcedefns113/#memorymetrics)|
|`/redfish/v1/systems/{item}/memorydomains`|Collection of [MemoryDomain](ilo7_other_resourcedefns113/#memorydomaincollection)|
|`/redfish/v1/systems/{item}/memorydomains/{item}`|[MemoryDomain](ilo7_other_resourcedefns113/#memorydomain)|
|`/redfish/v1/systems/{item}/memorydomains/{item}/memorychunks`|Collection of [MemoryChunks](ilo7_other_resourcedefns113/#memorychunkscollection)|
|`/redfish/v1/systems/{item}/memorydomains/{item}/memorychunks/{item}`|[MemoryChunks](ilo7_other_resourcedefns113/#memorychunks)|
|`/redfish/v1/systems/{item}/networkinterfaces`|Collection of [NetworkInterface](ilo7_network_resourcedefns113/#networkinterfacecollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}`|[NetworkInterface](ilo7_network_resourcedefns113/#networkinterface)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions`|Collection of [NetworkDeviceFunction](ilo7_network_resourcedefns113/#networkdevicefunctioncollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions/{item}`|[NetworkDeviceFunction](ilo7_network_resourcedefns113/#networkdevicefunction)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions/{item}/settings`|[NetworkDeviceFunction](ilo7_network_resourcedefns113/#networkdevicefunction)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports`|Collection of [Port](ilo7_other_resourcedefns113/#portcollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}/settings`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/systems/{item}/pcidevices`|Collection of [HpeServerPciDevice](ilo7_hpe_resourcedefns113/#hpeserverpcidevicecollection)|
|`/redfish/v1/systems/{item}/pcidevices/{item}`|[HpeServerPciDevice](ilo7_hpe_resourcedefns113/#hpeserverpcidevice)|
|`/redfish/v1/systems/{item}/pcislots`|Collection of [HpeServerPCISlot](ilo7_hpe_resourcedefns113/#hpeserverpcislotcollection)|
|`/redfish/v1/systems/{item}/pcislots/{item}`|[HpeServerPCISlot](ilo7_hpe_resourcedefns113/#hpeserverpcislot)|
|`/redfish/v1/systems/{item}/processors`|Collection of [Processor](ilo7_other_resourcedefns113/#processorcollection)|
|`/redfish/v1/systems/{item}/processors/{item}`|[Processor](ilo7_other_resourcedefns113/#processor)|
|`/redfish/v1/systems/{item}/processors/{item}/environmentmetrics`|[EnvironmentMetrics](ilo7_other_resourcedefns113/#environmentmetrics)|
|`/redfish/v1/systems/{item}/processors/{item}/processormetrics`|[ProcessorMetrics](ilo7_other_resourcedefns113/#processormetrics)|
|`/redfish/v1/systems/{item}/secureboot`|[SecureBoot](ilo7_other_resourcedefns113/#secureboot)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases`|Collection of [SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabasecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/signatures`|Collection of [Signature](ilo7_other_resourcedefns113/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/signatures/{item}`|[Signature](ilo7_other_resourcedefns113/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/signatures`|Collection of [Signature](ilo7_other_resourcedefns113/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/signatures/{item}`|[Signature](ilo7_other_resourcedefns113/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/signatures`|Collection of [Signature](ilo7_other_resourcedefns113/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/signatures/{item}`|[Signature](ilo7_other_resourcedefns113/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/signatures`|Collection of [Signature](ilo7_other_resourcedefns113/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/signatures/{item}`|[Signature](ilo7_other_resourcedefns113/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/signatures`|Collection of [Signature](ilo7_other_resourcedefns113/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/signatures/{item}`|[Signature](ilo7_other_resourcedefns113/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/signatures`|Collection of [Signature](ilo7_other_resourcedefns113/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/signatures/{item}`|[Signature](ilo7_other_resourcedefns113/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/signatures`|Collection of [Signature](ilo7_other_resourcedefns113/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/signatures/{item}`|[Signature](ilo7_other_resourcedefns113/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/signatures`|Collection of [Signature](ilo7_other_resourcedefns113/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/signatures/{item}`|[Signature](ilo7_other_resourcedefns113/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault`|[SecureBootDatabase](ilo7_other_resourcedefns113/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault/certificates`|Collection of [Certificate](ilo7_other_resourcedefns113/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault/certificates/{item}`|[Certificate](ilo7_other_resourcedefns113/#certificate)|
|`/redfish/v1/systems/{item}/secureerasereportservice`|[HpeSecureEraseReportService](ilo7_hpe_resourcedefns113/#hpesecureerasereportservice)|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries`|Collection of [HpeSecureEraseReport](ilo7_hpe_resourcedefns113/#hpesecureerasereportcollection)|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries/{item}`|[HpeSecureEraseReport](ilo7_hpe_resourcedefns113/#hpesecureerasereport)|
|`/redfish/v1/systems/{item}/storage`|Collection of [Storage](ilo7_storage_resourcedefns113/#storagecollection)|
|`/redfish/v1/systems/{item}/storage/{item}`|[Storage](ilo7_storage_resourcedefns113/#storage)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/`|Collection of [StorageController](ilo7_storage_resourcedefns113/#storagecontrollercollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}`|[StorageController](ilo7_storage_resourcedefns113/#storagecontroller)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports`|Collection of [Port](ilo7_other_resourcedefns113/#portcollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports/{item}`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/systems/{item}/storage/{item}/drives/{item}`|[Drive](ilo7_storage_resourcedefns113/#drive)|
|`/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports`|Collection of [Port](ilo7_other_resourcedefns113/#portcollection)|
|`/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports/{item}`|[Port](ilo7_other_resourcedefns113/#port)|
|`/redfish/v1/systems/{item}/storage/{item}/volumes`|Collection of [Volume](ilo7_storage_resourcedefns113/#volumecollection)|
|`/redfish/v1/systems/{item}/storage/{item}/volumes/{item}`|[Volume](ilo7_storage_resourcedefns113/#volume)|
|`/redfish/v1/systems/{item}/usbdevices`|Collection of [HpeUSBDevice](ilo7_hpe_resourcedefns113/#hpeusbdevicescollection)|
|`/redfish/v1/systems/{item}/usbdevices/{item}`|[HpeUSBDevice](ilo7_hpe_resourcedefns113/#hpeusbdevice)|
|`/redfish/v1/systems/{item}/usbports`|Collection of [HpeUSBPort](ilo7_hpe_resourcedefns113/#hpeusbportscollection)|
|`/redfish/v1/systems/{item}/usbports/{item}`|[HpeUSBPort](ilo7_hpe_resourcedefns113/#hpeusbport)|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor`|Collection of [HpeWorkloadPerformanceAdvisor](ilo7_hpe_resourcedefns113/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor/{item}`|[HpeWorkloadPerformanceAdvisor](ilo7_hpe_resourcedefns113/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/taskservice`|[TaskService](ilo7_other_resourcedefns113/#taskservice)|
|`/redfish/v1/taskservice/tasks`|Collection of [Task](ilo7_other_resourcedefns113/#taskcollection)|
|`/redfish/v1/taskservice/tasks/{item}`|[Task](ilo7_other_resourcedefns113/#task)|
|`/redfish/v1/telemetryservice`|[TelemetryService](ilo7_other_resourcedefns113/#telemetryservice)|
|`/redfish/v1/telemetryservice/metricdefinitions`|Collection of [MetricDefinition](ilo7_other_resourcedefns113/#metricdefinitioncollection)|
|`/redfish/v1/telemetryservice/metricdefinitions/{item}`|[MetricDefinition](ilo7_other_resourcedefns113/#metricdefinition)|
|`/redfish/v1/telemetryservice/metricreportdefinitions`|Collection of [MetricReportDefinition](ilo7_other_resourcedefns113/#metricreportdefinitioncollection)|
|`/redfish/v1/telemetryservice/metricreportdefinitions/{item}`|[MetricReportDefinition](ilo7_other_resourcedefns113/#metricreportdefinition)|
|`/redfish/v1/telemetryservice/metricreports`|Collection of [MetricReport](ilo7_other_resourcedefns113/#metricreportcollection)|
|`/redfish/v1/telemetryservice/metricreports/{item}`|[MetricReport](ilo7_other_resourcedefns113/#metricreport)|
|`/redfish/v1/telemetryservice/triggers`|Collection of [Triggers](ilo7_other_resourcedefns113/#triggerscollection)|
|`/redfish/v1/telemetryservice/triggers/{item}`|[Triggers](ilo7_other_resourcedefns113/#triggers)|
|`/redfish/v1/updateservice`|[UpdateService](ilo7_other_resourcedefns113/#updateservice)|
|`/redfish/v1/updateservice/componentrepository`|Collection of [HpeComponent](ilo7_hpe_resourcedefns113/#hpecomponentcollection)|
|`/redfish/v1/updateservice/componentrepository/{item}`|[HpeComponent](ilo7_hpe_resourcedefns113/#hpecomponent)|
|`/redfish/v1/updateservice/firmwareinventory`|Collection of [SoftwareInventory](ilo7_other_resourcedefns113/#softwareinventorycollection)|
|`/redfish/v1/updateservice/firmwareinventory/{item}`|[SoftwareInventory](ilo7_other_resourcedefns113/#softwareinventory)|
|`/redfish/v1/updateservice/installsets`|Collection of [HpeComponentInstallSet](ilo7_hpe_resourcedefns113/#hpecomponentinstallsetcollection)|
|`/redfish/v1/updateservice/installsets/{item}`|[HpeComponentInstallSet](ilo7_hpe_resourcedefns113/#hpecomponentinstallset)|
|`/redfish/v1/updateservice/invalidimagerepository`|Collection of [HpeInvalidImage](ilo7_hpe_resourcedefns113/#hpeinvalidimagecollection)|
|`/redfish/v1/updateservice/invalidimagerepository/{item}`|[HpeInvalidImage](ilo7_hpe_resourcedefns113/#hpeinvalidimage)|
|`/redfish/v1/updateservice/maintenancewindows`|Collection of [HpeMaintenanceWindow](ilo7_hpe_resourcedefns113/#hpemaintenancewindowcollection)|
|`/redfish/v1/updateservice/maintenancewindows/{item}`|[HpeMaintenanceWindow](ilo7_hpe_resourcedefns113/#hpemaintenancewindow)|
|`/redfish/v1/updateservice/runningsoftwareinventory`|Collection of [HpeiLORunningSoftwareInventory](ilo7_hpe_resourcedefns113/#hpeilorunningsoftwareinventorycollection)|
|`/redfish/v1/updateservice/runningsoftwareinventory/{item}`|[HpeiLORunningSoftwareInventory](ilo7_hpe_resourcedefns113/#hpeilorunningsoftwareinventory)|
|`/redfish/v1/updateservice/softwareinventory`|Collection of [SoftwareInventory](ilo7_other_resourcedefns113/#softwareinventorycollection)|
|`/redfish/v1/updateservice/softwareinventory/{item}`|[SoftwareInventory](ilo7_other_resourcedefns113/#softwareinventory)|
|`/redfish/v1/updateservice/updatetaskqueue`|Collection of [HpeComponentUpdateTask](ilo7_hpe_resourcedefns113/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/updateservice/updatetaskqueue/{item}`|[HpeComponentUpdateTask](ilo7_hpe_resourcedefns113/#hpecomponentupdatetask)|
