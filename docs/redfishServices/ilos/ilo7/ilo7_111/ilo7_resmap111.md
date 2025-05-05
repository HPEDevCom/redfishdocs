---
markdown:
  toc:
    hide: true
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
seo:
  title: iLO 7 version 1.11 Resource map
---

# Resource map of iLO 7 v1.11

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.


# Resource Map
|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](../ilo7_serviceroot_resourcedefns111/#serviceroot)|
|`/redfish/v1/accountservice`|[AccountService](../ilo7_other_resourcedefns111/#accountservice)|
|`/redfish/v1/accountservice/Oem/Hpe/appaccounts`|Collection of [HpeiLOAppAccount](../ilo7_hpe_resourcedefns111/#hpeiloappaccountcollection)|
|`/redfish/v1/accountservice/Oem/Hpe/appaccounts/{item}`|[HpeiLOAppAccount](../ilo7_hpe_resourcedefns111/#hpeiloappaccount)|
|`/redfish/v1/accountservice/accounts`|Collection of [HpeiLOAppAccount](../ilo7_hpe_resourcedefns111/#hpeiloappaccountcollection)|
|`/redfish/v1/accountservice/accounts/{item}`|[ManagerAccount](../ilo7_manager_resourcedefns111/#manageraccount)|
|`/redfish/v1/accountservice/accounts/{item}/keys`|Collection of [Key](../ilo7_other_resourcedefns111/#keycollection)|
|`/redfish/v1/accountservice/accounts/{item}/keys/{item}`|[Key](../ilo7_other_resourcedefns111/#key)|
|`/redfish/v1/accountservice/directorytest`|[HpeDirectoryTest](../ilo7_hpe_resourcedefns111/#hpedirectorytest)|
|`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/accountservice/roles`|Collection of [Role](../ilo7_other_resourcedefns111/#rolecollection)|
|`/redfish/v1/accountservice/roles/{item}`|[Role](../ilo7_other_resourcedefns111/#role)|
|`/redfish/v1/accountservice/usercertificatemapping`|Collection of [HpeiLOAccountCertificateMap](../ilo7_hpe_resourcedefns111/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/accountservice/usercertificatemapping/{item}`|[HpeiLOAccountCertificateMap](../ilo7_hpe_resourcedefns111/#hpeiloaccountcertificatemap)|
|`/redfish/v1/certificateservice`|[CertificateService](../ilo7_other_resourcedefns111/#certificateservice)|
|`/redfish/v1/certificateservice/certificatelocations`|[CertificateLocations](../ilo7_other_resourcedefns111/#certificatelocations)|
|`/redfish/v1/chassis`|Collection of [Chassis](../ilo7_chassis_resourcedefns111/#chassiscollection)|
|`/redfish/v1/chassis/{item}`|[Chassis](../ilo7_chassis_resourcedefns111/#chassis)|
|`/redfish/v1/chassis/{item}/basefrus`|Collection of [HpeiLOFrus](../ilo7_hpe_resourcedefns111/#hpeilofruscollection)|
|`/redfish/v1/chassis/{item}/basefrus/{item}`|[HpeiLOFrus](../ilo7_hpe_resourcedefns111/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/basefrus/{item}/details`|[HpeiLOFrus](../ilo7_hpe_resourcedefns111/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/devices`|Collection of [HpeServerDevice](../ilo7_hpe_resourcedefns111/#hpeserverdevicecollection)|
|`/redfish/v1/chassis/{item}/devices/{item}`|[HpeServerDevice](../ilo7_hpe_resourcedefns111/#hpeserverdevice)|
|`/redfish/v1/chassis/{item}/environmentmetrics`|[EnvironmentMetrics](../ilo7_other_resourcedefns111/#environmentmetrics)|
|`/redfish/v1/chassis/{item}/mezzfrus`|Collection of [HpeiLOFrus](../ilo7_hpe_resourcedefns111/#hpeilofruscollection)|
|`/redfish/v1/chassis/{item}/mezzfrus/{item}`|[HpeiLOFrus](../ilo7_hpe_resourcedefns111/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/mezzfrus/{item}/details`|[HpeiLOFrus](../ilo7_hpe_resourcedefns111/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/networkadapters`|Collection of [NetworkAdapter](../ilo7_network_resourcedefns111/#networkadaptercollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}`|[NetworkAdapter](../ilo7_network_resourcedefns111/#networkadapter)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions`|Collection of [NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunctioncollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}`|[NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunction)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}/settings`|[NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunction)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports`|Collection of [Port](../ilo7_other_resourcedefns111/#portcollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}/settings`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/settings`|[NetworkAdapter](../ilo7_network_resourcedefns111/#networkadapter)|
|`/redfish/v1/chassis/{item}/pciedevices`|Collection of [PCIeDevice](../ilo7_other_resourcedefns111/#pciedevicecollection)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}`|[PCIeDevice](../ilo7_other_resourcedefns111/#pciedevice)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}/pciefunctions`|Collection of [PCIeFunction](../ilo7_other_resourcedefns111/#pciefunctioncollection)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}/pciefunctions/{item}`|[PCIeFunction](../ilo7_other_resourcedefns111/#pciefunction)|
|`/redfish/v1/chassis/{item}/pcieslots`|[PCIeSlots](../ilo7_other_resourcedefns111/#pcieslots)|
|`/redfish/v1/chassis/{item}/power`|[Power](../ilo7_other_resourcedefns111/#power)|
|`/redfish/v1/chassis/{item}/power/fastpowermeter`|[HpePowerMeter](../ilo7_hpe_resourcedefns111/#hpepowermeter)|
|`/redfish/v1/chassis/{item}/power/powermeter`|[HpePowerMeter](../ilo7_hpe_resourcedefns111/#hpepowermeter)|
|`/redfish/v1/chassis/{item}/sensors`|Collection of [Sensor](../ilo7_other_resourcedefns111/#sensorcollection)|
|`/redfish/v1/chassis/{item}/sensors/{item}`|[Sensor](../ilo7_other_resourcedefns111/#sensor)|
|`/redfish/v1/chassis/{item}/thermal`|[Thermal](../ilo7_other_resourcedefns111/#thermal)|
|`/redfish/v1/chassis/{item}/thermalsubsystem`|[ThermalSubsystem](../ilo7_other_resourcedefns111/#thermalsubsystem)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans`|Collection of [Fan](../ilo7_other_resourcedefns111/#fancollection)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans/{item}`|[Fan](../ilo7_other_resourcedefns111/#fan)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans/{item}/assembly`|[Assembly](../ilo7_other_resourcedefns111/#assembly)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps`|Collection of [Pump](../ilo7_other_resourcedefns111/#pumpcollection)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps/{item}/assembly`|[Pump](../ilo7_other_resourcedefns111/#pump)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps/{item}/assembly`|[Assembly](../ilo7_other_resourcedefns111/#assembly)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/thermalmetrics`|[ThermalMetrics](../ilo7_other_resourcedefns111/#thermalmetrics)|
|`/redfish/v1/componentintegrity`|Collection of [ComponentIntegrity](../ilo7_other_resourcedefns111/#componentintegritycollection)|
|`/redfish/v1/componentintegrity/{item}`|[ComponentIntegrity](../ilo7_other_resourcedefns111/#componentintegrity)|
|`/redfish/v1/eventservice`|[EventService](../ilo7_other_resourcedefns111/#eventservice)|
|`/redfish/v1/eventservice/cacertificates`|Collection of [HpeCertificate](../ilo7_hpe_resourcedefns111/#hpecertificatecollection)|
|`/redfish/v1/eventservice/cacertificates/{item}`|[HpeCertificate](../ilo7_hpe_resourcedefns111/#hpecertificate)|
|`/redfish/v1/eventservice/subscriptions`|Collection of [EventDestination](#eventdestination-v1_13_0-eventdestination)|
|`/redfish/v1/eventservice/subscriptions/{item}`|[EventDestination](#eventdestination-v1_13_0-eventdestination)|
|`/redfish/v1/fabrics`|Collection of [Fabric](../ilo7_other_resourcedefns111/#fabriccollection)|
|`/redfish/v1/fabrics/{item}`|[Fabric](../ilo7_other_resourcedefns111/#fabric)|
|`/redfish/v1/fabrics/{item}/switches`|Collection of [SwitchCollection](#switchcollection-switchcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}`|[Switch](../ilo7_other_resourcedefns111/#switch)|
|`/redfish/v1/fabrics/{item}/switches/{item}/ports`|Collection of [Port](../ilo7_other_resourcedefns111/#portcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}/ports/{item}`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/jsonschemas`|Collection of [JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)|
|`/redfish/v1/jsonschemas/{item}`|[JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)|
|`/redfish/v1/managers`|Collection of [Manager](../ilo7_manager_resourcedefns111/#managercollection)|
|`/redfish/v1/managers/{item}`|[Manager](../ilo7_manager_resourcedefns111/#manager)|
|`/redfish/v1/managers/{item}/activehealthsystem`|[HpeiLOActiveHealthSystem](../ilo7_hpe_resourcedefns111/#hpeiloactivehealthsystem)|
|`/redfish/v1/managers/{item}/backuprestoreservice`|[HpeiLOBackupRestoreService](../ilo7_hpe_resourcedefns111/#hpeilobackuprestoreservice)|
|`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles`|Collection of [HpeiLOBackupFile](../ilo7_hpe_resourcedefns111/#hpeilobackupfilecollection)|
|`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles/{item}`|[HpeiLOBackupFile](../ilo7_hpe_resourcedefns111/#hpeilobackupfile)|
|`/redfish/v1/managers/{item}/datetime`|[HpeiLODateTime](../ilo7_hpe_resourcedefns111/#hpeilodatetime)|
|`/redfish/v1/managers/{item}/dedicatednetworkports`|Collection of [Port](../ilo7_other_resourcedefns111/#portcollection)|
|`/redfish/v1/managers/{item}/dedicatednetworkports/{item}`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/managers/{item}/ethernetinterfaces`|Collection of [EthernetInterface](../ilo7_network_resourcedefns111/#ethernetinterfacecollection)|
|`/redfish/v1/managers/{item}/ethernetinterfaces/{item}`|[EthernetInterface](../ilo7_network_resourcedefns111/#ethernetinterface)|
|`/redfish/v1/managers/{item}/hostinterfaces`|Collection of [HostInterface](../ilo7_other_resourcedefns111/#hostinterfacecollection)|
|`/redfish/v1/managers/{item}/hostinterfaces/{item}`|[HostInterface](../ilo7_other_resourcedefns111/#hostinterface)|
|`/redfish/v1/managers/{item}/licenseservice`|Collection of [HpeiLOLicense](../ilo7_hpe_resourcedefns111/#hpeilolicensecollection)|
|`/redfish/v1/managers/{item}/licenseservice/{item}`|[HpeiLOLicense](../ilo7_hpe_resourcedefns111/#hpeilolicense)|
|`/redfish/v1/managers/{item}/logservices`|Collection of [LogService](../ilo7_other_resourcedefns111/#logservicecollection)|
|`/redfish/v1/managers/{item}/logservices/iel`|[LogService](../ilo7_other_resourcedefns111/#logservice)|
|`/redfish/v1/managers/{item}/logservices/iel/entries`|Collection of [LogEntry](../ilo7_other_resourcedefns111/#logentrycollection)|
|`/redfish/v1/managers/{item}/logservices/iel/entries/{item}`|[LogEntry](../ilo7_other_resourcedefns111/#logentry)|
|`/redfish/v1/managers/{item}/networkprotocol`|[ManagerNetworkProtocol](../ilo7_manager_resourcedefns111/#managernetworkprotocol)|
|`/redfish/v1/managers/{item}/remotesupportservice`|[HpeRemoteSupport](../ilo7_hpe_resourcedefns111/#hperemotesupport)|
|`/redfish/v1/managers/{item}/remotesupportservice/serviceeventlogs`|Collection of [LogEntry](../ilo7_other_resourcedefns111/#logentrycollection)|
|`/redfish/v1/managers/{item}/remotesupportservice/serviceeventlogs/{item}`|[LogEntry](../ilo7_other_resourcedefns111/#logentry)|
|`/redfish/v1/managers/{item}/securityservice`|[HpeSecurityService](../ilo7_hpe_resourcedefns111/#hpesecurityservice)|
|`/redfish/v1/managers/{item}/securityservice/automaticcertificateenrollment`|[HpeAutomaticCertEnrollment](../ilo7_hpe_resourcedefns111/#hpeautomaticcertenrollment)|
|`/redfish/v1/managers/{item}/securityservice/bmchpeldevid/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmchpeldevid/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmciak/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmciak/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmcidevidpca/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmcidevidpca/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmclak/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmclak/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication`|[HpeCertAuth](../ilo7_hpe_resourcedefns111/#hpecertauth)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates`|Collection of [HpeCertificate](../ilo7_hpe_resourcedefns111/#hpecertificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates/{item}`|[HpeCertificate](../ilo7_hpe_resourcedefns111/#hpecertificate)|
|`/redfish/v1/managers/{item}/securityservice/eskm`|[HpeESKM](../ilo7_hpe_resourcedefns111/#hpeeskm)|
|`/redfish/v1/managers/{item}/securityservice/httpscert`|[HpeHttpsCert](../ilo7_hpe_resourcedefns111/#hpehttpscert)|
|`/redfish/v1/managers/{item}/securityservice/platformcert/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/platformcert/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard`|[HpeiLOSecurityDashboard](../ilo7_hpe_resourcedefns111/#hpeilosecuritydashboard)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams`|Collection of [HpeiLOSecurityParam](../ilo7_hpe_resourcedefns111/#hpeilosecurityparamcollection)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams/{item}`|[HpeiLOSecurityParam](../ilo7_hpe_resourcedefns111/#hpeilosecurityparam)|
|`/redfish/v1/managers/{item}/securityservice/sso`|[HpeiLOSSO](../ilo7_hpe_resourcedefns111/#hpeilosso)|
|`/redfish/v1/managers/{item}/securityservice/systemiak/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemiak/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemlak/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemlak/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemldevid/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemldevid/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/managers/{item}/serialinterfaces`|SerialInterfaceCollection|
|`/redfish/v1/managers/{item}/sharednetworkports`|Collection of [Port](../ilo7_other_resourcedefns111/#portcollection)|
|`/redfish/v1/managers/{item}/sharednetworkports/{item}`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/managers/{item}/snmpservice`|[HpeiLOSnmpService](../ilo7_hpe_resourcedefns111/#hpeilosnmpservice)|
|`/redfish/v1/managers/{item}/snmpservice/snmpalertdestinations`|Collection of [HpeSNMPAlertDestination](../ilo7_hpe_resourcedefns111/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/managers/{item}/snmpservice/snmpalertdestinations/{item}`|[HpeSNMPAlertDestination](../ilo7_hpe_resourcedefns111/#hpesnmpalertdestination)|
|`/redfish/v1/managers/{item}/snmpservice/snmpusers`|Collection of [HpeSNMPUser](../ilo7_hpe_resourcedefns111/#hpesnmpuserscollection)|
|`/redfish/v1/managers/{item}/snmpservice/snmpusers/{item}`|[HpeSNMPUser](../ilo7_hpe_resourcedefns111/#hpesnmpuser)|
|`/redfish/v1/managers/{item}/virtualmedia`|Collection of [VirtualMedia](../ilo7_other_resourcedefns111/#virtualmediacollection)|
|`/redfish/v1/managers/{item}/virtualmedia/{item}`|[VirtualMedia](../ilo7_other_resourcedefns111/#virtualmedia)|
|`/redfish/v1/registries`|Collection of [MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)|
|`/redfish/v1/registries/{item}`|[MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)|
|`/redfish/v1/resourcedirectory`|[HpeiLOResourceDirectory](../ilo7_hpe_resourcedefns111/#hpeiloresourcedirectory)|
|`/redfish/v1/sessionservice`|[SessionService](../ilo7_other_resourcedefns111/#sessionservice)|
|`/redfish/v1/sessionservice/sessions`|Collection of [Session](../ilo7_other_resourcedefns111/#sessioncollection)|
|`/redfish/v1/sessionservice/sessions/{item}`|[Session](../ilo7_other_resourcedefns111/#session)|
|`/redfish/v1/systems`|Collection of [ComputerSystem](../ilo7_computersystem_resourcedefns111/#computersystemcollection)|
|`/redfish/v1/systems/{item}`|[ComputerSystem](../ilo7_computersystem_resourcedefns111/#computersystem)|
|`/redfish/v1/systems/{item}/bios`|[Bios](../ilo7_bios_resourcedefns111/#bios)|
|`/redfish/v1/systems/{item}/bios/baseconfigs`|[HpeBaseConfigs](../ilo7_hpe_resourcedefns111/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot`|[HpeServerBootSettings](../ilo7_hpe_resourcedefns111/#hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/boot/baseconfigs`|[HpeBaseConfigs](../ilo7_hpe_resourcedefns111/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot/settings`|[HpeServerBootSettings](../ilo7_hpe_resourcedefns111/#hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/iscsi`|[HpeiSCSISoftwareInitiator](../ilo7_hpe_resourcedefns111/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/iscsi/baseconfigs`|[HpeBaseConfigs](../ilo7_hpe_resourcedefns111/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/iscsi/settings`|[HpeiSCSISoftwareInitiator](../ilo7_hpe_resourcedefns111/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/kmsconfig`|[HpeKmsConfig](../ilo7_hpe_resourcedefns111/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/baseconfigs`|[HpeBaseConfigs](../ilo7_hpe_resourcedefns111/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/settings`|[HpeKmsConfig](../ilo7_hpe_resourcedefns111/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/mappings`|[HpeBiosMapping](../ilo7_hpe_resourcedefns111/#hpebiosmapping)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig`|[HpeTlsConfig](../ilo7_hpe_resourcedefns111/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/baseconfigs`|[HpeBaseConfigs](../ilo7_hpe_resourcedefns111/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/settings`|[HpeTlsConfig](../ilo7_hpe_resourcedefns111/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock`|[HpeServerConfigLock](../ilo7_hpe_resourcedefns111/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/baseconfigs`|[HpeBaseConfigs](../ilo7_hpe_resourcedefns111/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/settings`|[HpeServerConfigLock](../ilo7_hpe_resourcedefns111/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/settings`|[Bios](../ilo7_bios_resourcedefns111/#bios)|
|`/redfish/v1/systems/{item}/bootoptions`|Collection of [BootOption](../ilo7_other_resourcedefns111/#bootoptioncollection)|
|`/redfish/v1/systems/{item}/bootoptions/{item}`|[BootOption](../ilo7_other_resourcedefns111/#bootoption)|
|`/redfish/v1/systems/{item}/ethernetinterfaces`|Collection of [EthernetInterface](../ilo7_network_resourcedefns111/#ethernetinterfacecollection)|
|`/redfish/v1/systems/{item}/ethernetinterfaces/{item}`|[EthernetInterface](../ilo7_network_resourcedefns111/#ethernetinterface)|
|`/redfish/v1/systems/{item}/logservices`|Collection of [LogService](../ilo7_other_resourcedefns111/#logservicecollection)|
|`/redfish/v1/systems/{item}/logservices/dpu`|[LogService](../ilo7_other_resourcedefns111/#logservice)|
|`/redfish/v1/systems/{item}/logservices/dpu/entries`|Collection of [LogEntry](../ilo7_other_resourcedefns111/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/dpu/entries/{item}`|[LogEntry](../ilo7_other_resourcedefns111/#logentry)|
|`/redfish/v1/systems/{item}/logservices/event`|[LogService](../ilo7_other_resourcedefns111/#logservice)|
|`/redfish/v1/systems/{item}/logservices/event/entries`|Collection of [LogEntry](../ilo7_other_resourcedefns111/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/event/entries/{item}`|[LogEntry](../ilo7_other_resourcedefns111/#logentry)|
|`/redfish/v1/systems/{item}/logservices/iml`|[LogService](../ilo7_other_resourcedefns111/#logservice)|
|`/redfish/v1/systems/{item}/logservices/iml/entries`|Collection of [LogEntry](../ilo7_other_resourcedefns111/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/iml/entries/{item}`|[LogEntry](../ilo7_other_resourcedefns111/#logentry)|
|`/redfish/v1/systems/{item}/logservices/sl`|[LogService](../ilo7_other_resourcedefns111/#logservice)|
|`/redfish/v1/systems/{item}/logservices/sl/entries`|Collection of [LogEntry](../ilo7_other_resourcedefns111/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/sl/entries/{item}`|[LogEntry](../ilo7_other_resourcedefns111/#logentry)|
|`/redfish/v1/systems/{item}/memory`|Collection of [Memory](../ilo7_other_resourcedefns111/#memorycollection)|
|`/redfish/v1/systems/{item}/memory/{item}`|[Memory](../ilo7_other_resourcedefns111/#memory)|
|`/redfish/v1/systems/{item}/memory/{item}/memorymetrics`|[MemoryMetrics](../ilo7_other_resourcedefns111/#memorymetrics)|
|`/redfish/v1/systems/{item}/memorydomains`|Collection of [MemoryDomain](../ilo7_other_resourcedefns111/#memorydomaincollection)|
|`/redfish/v1/systems/{item}/memorydomains/{item}`|[MemoryDomain](../ilo7_other_resourcedefns111/#memorydomain)|
|`/redfish/v1/systems/{item}/memorydomains/{item}/memorychunks`|Collection of [MemoryChunks](../ilo7_other_resourcedefns111/#memorychunkscollection)|
|`/redfish/v1/systems/{item}/memorydomains/{item}/memorychunks/{item}`|[MemoryChunks](../ilo7_other_resourcedefns111/#memorychunks)|
|`/redfish/v1/systems/{item}/networkinterfaces`|Collection of [NetworkInterface](../ilo7_network_resourcedefns111/#networkinterfacecollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}`|[NetworkInterface](../ilo7_network_resourcedefns111/#networkinterface)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions`|Collection of [NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunctioncollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions/{item}`|[NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunction)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions/{item}/settings`|[NetworkDeviceFunction](../ilo7_network_resourcedefns111/#networkdevicefunction)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports`|Collection of [Port](../ilo7_other_resourcedefns111/#portcollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}/settings`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/systems/{item}/pcidevices`|Collection of [HpeServerPciDevice](../ilo7_hpe_resourcedefns111/#hpeserverpcidevicecollection)|
|`/redfish/v1/systems/{item}/pcidevices/{item}`|[HpeServerPciDevice](../ilo7_hpe_resourcedefns111/#hpeserverpcidevice)|
|`/redfish/v1/systems/{item}/pcislots`|Collection of [HpeServerPCISlot](../ilo7_hpe_resourcedefns111/#hpeserverpcislotcollection)|
|`/redfish/v1/systems/{item}/pcislots/{item}`|[HpeServerPCISlot](../ilo7_hpe_resourcedefns111/#hpeserverpcislot)|
|`/redfish/v1/systems/{item}/processors`|Collection of [Processor](../ilo7_other_resourcedefns111/#processorcollection)|
|`/redfish/v1/systems/{item}/processors/{item}`|[Processor](../ilo7_other_resourcedefns111/#processor)|
|`/redfish/v1/systems/{item}/processors/{item}/environmentmetrics`|[EnvironmentMetrics](../ilo7_other_resourcedefns111/#environmentmetrics)|
|`/redfish/v1/systems/{item}/processors/{item}/processormetrics`|[ProcessorMetrics](../ilo7_other_resourcedefns111/#processormetrics)|
|`/redfish/v1/systems/{item}/secureboot`|[SecureBoot](../ilo7_other_resourcedefns111/#secureboot)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases`|Collection of [SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabasecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/signatures`|Collection of [Signature](../ilo7_other_resourcedefns111/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/signatures/{item}`|[Signature](../ilo7_other_resourcedefns111/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/signatures`|Collection of [Signature](../ilo7_other_resourcedefns111/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/signatures/{item}`|[Signature](../ilo7_other_resourcedefns111/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/signatures`|Collection of [Signature](../ilo7_other_resourcedefns111/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/signatures/{item}`|[Signature](../ilo7_other_resourcedefns111/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/signatures`|Collection of [Signature](../ilo7_other_resourcedefns111/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/signatures/{item}`|[Signature](../ilo7_other_resourcedefns111/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/signatures`|Collection of [Signature](../ilo7_other_resourcedefns111/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/signatures/{item}`|[Signature](../ilo7_other_resourcedefns111/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/signatures`|Collection of [Signature](../ilo7_other_resourcedefns111/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/signatures/{item}`|[Signature](../ilo7_other_resourcedefns111/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/signatures`|Collection of [Signature](../ilo7_other_resourcedefns111/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/signatures/{item}`|[Signature](../ilo7_other_resourcedefns111/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/signatures`|Collection of [Signature](../ilo7_other_resourcedefns111/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/signatures/{item}`|[Signature](../ilo7_other_resourcedefns111/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault`|[SecureBootDatabase](../ilo7_other_resourcedefns111/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault/certificates`|Collection of [Certificate](../ilo7_other_resourcedefns111/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault/certificates/{item}`|[Certificate](../ilo7_other_resourcedefns111/#certificate)|
|`/redfish/v1/systems/{item}/secureerasereportservice`|[HpeSecureEraseReportService](../ilo7_hpe_resourcedefns111/#hpesecureerasereportservice)|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries`|Collection of [HpeSecureEraseReport](../ilo7_hpe_resourcedefns111/#hpesecureerasereportcollection)|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries/{item}`|[HpeSecureEraseReport](../ilo7_hpe_resourcedefns111/#hpesecureerasereport)|
|`/redfish/v1/systems/{item}/storage`|Collection of [Storage](../ilo7_storage_resourcedefns111/#storagecollection)|
|`/redfish/v1/systems/{item}/storage/{item}`|[Storage](../ilo7_storage_resourcedefns111/#storage)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/`|Collection of [StorageController](../ilo7_storage_resourcedefns111/#storagecontrollercollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}`|[StorageController](../ilo7_storage_resourcedefns111/#storagecontroller)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports`|Collection of [Port](../ilo7_other_resourcedefns111/#portcollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports/{item}`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/systems/{item}/storage/{item}/drives/{item}`|[Drive](../ilo7_storage_resourcedefns111/#drive)|
|`/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports`|Collection of [Port](../ilo7_other_resourcedefns111/#portcollection)|
|`/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports/{item}`|[Port](../ilo7_other_resourcedefns111/#port)|
|`/redfish/v1/systems/{item}/storage/{item}/volumes`|Collection of [Volume](../ilo7_storage_resourcedefns111/#volumecollection)|
|`/redfish/v1/systems/{item}/storage/{item}/volumes/{item}`|[Volume](../ilo7_storage_resourcedefns111/#volume)|
|`/redfish/v1/systems/{item}/usbdevices`|Collection of [HpeUSBDevice](../ilo7_hpe_resourcedefns111/#hpeusbdevicescollection)|
|`/redfish/v1/systems/{item}/usbdevices/{item}`|[HpeUSBDevice](../ilo7_hpe_resourcedefns111/#hpeusbdevice)|
|`/redfish/v1/systems/{item}/usbports`|Collection of [HpeUSBPort](../ilo7_hpe_resourcedefns111/#hpeusbportscollection)|
|`/redfish/v1/systems/{item}/usbports/{item}`|[HpeUSBPort](../ilo7_hpe_resourcedefns111/#hpeusbport)|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor`|Collection of [HpeWorkloadPerformanceAdvisor](../ilo7_hpe_resourcedefns111/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor/{item}`|[HpeWorkloadPerformanceAdvisor](../ilo7_hpe_resourcedefns111/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/taskservice`|[TaskService](../ilo7_other_resourcedefns111/#taskservice)|
|`/redfish/v1/taskservice/tasks`|Collection of [Task](../ilo7_other_resourcedefns111/#taskcollection)|
|`/redfish/v1/taskservice/tasks/{item}`|[Task](../ilo7_other_resourcedefns111/#task)|
|`/redfish/v1/telemetryservice`|[TelemetryService](../ilo7_other_resourcedefns111/#telemetryservice)|
|`/redfish/v1/telemetryservice/metricdefinitions`|Collection of [MetricDefinition](../ilo7_other_resourcedefns111/#metricdefinitioncollection)|
|`/redfish/v1/telemetryservice/metricdefinitions/{item}`|[MetricDefinition](../ilo7_other_resourcedefns111/#metricdefinition)|
|`/redfish/v1/telemetryservice/metricreportdefinitions`|Collection of [MetricReportDefinition](../ilo7_other_resourcedefns111/#metricreportdefinitioncollection)|
|`/redfish/v1/telemetryservice/metricreportdefinitions/{item}`|[MetricReportDefinition](../ilo7_other_resourcedefns111/#metricreportdefinition)|
|`/redfish/v1/telemetryservice/metricreports`|Collection of [MetricReport](../ilo7_other_resourcedefns111/#metricreportcollection)|
|`/redfish/v1/telemetryservice/metricreports/{item}`|[MetricReport](../ilo7_other_resourcedefns111/#metricreport)|
|`/redfish/v1/telemetryservice/triggers`|Collection of [Triggers](../ilo7_other_resourcedefns111/#triggerscollection)|
|`/redfish/v1/telemetryservice/triggers/{item}`|[Triggers](../ilo7_other_resourcedefns111/#triggers)|
|`/redfish/v1/updateservice`|[UpdateService](../ilo7_other_resourcedefns111/#updateservice)|
|`/redfish/v1/updateservice/componentrepository`|Collection of [HpeComponent](../ilo7_hpe_resourcedefns111/#hpecomponentcollection)|
|`/redfish/v1/updateservice/componentrepository/{item}`|[HpeComponent](../ilo7_hpe_resourcedefns111/#hpecomponent)|
|`/redfish/v1/updateservice/firmwareinventory`|Collection of [SoftwareInventory](../ilo7_other_resourcedefns111/#softwareinventorycollection)|
|`/redfish/v1/updateservice/firmwareinventory/{item}`|[SoftwareInventory](../ilo7_other_resourcedefns111/#softwareinventory)|
|`/redfish/v1/updateservice/installsets`|Collection of [HpeComponentInstallSet](../ilo7_hpe_resourcedefns111/#hpecomponentinstallsetcollection)|
|`/redfish/v1/updateservice/installsets/{item}`|[HpeComponentInstallSet](../ilo7_hpe_resourcedefns111/#hpecomponentinstallset)|
|`/redfish/v1/updateservice/invalidimagerepository`|Collection of [HpeInvalidImage](../ilo7_hpe_resourcedefns111/#hpeinvalidimagecollection)|
|`/redfish/v1/updateservice/invalidimagerepository/{item}`|[HpeInvalidImage](../ilo7_hpe_resourcedefns111/#hpeinvalidimage)|
|`/redfish/v1/updateservice/maintenancewindows`|Collection of [HpeMaintenanceWindow](../ilo7_hpe_resourcedefns111/#hpemaintenancewindowcollection)|
|`/redfish/v1/updateservice/maintenancewindows/{item}`|[HpeMaintenanceWindow](../ilo7_hpe_resourcedefns111/#hpemaintenancewindow)|
|`/redfish/v1/updateservice/runningsoftwareinventory`|Collection of [HpeiLORunningSoftwareInventory](../ilo7_hpe_resourcedefns111/#hpeilorunningsoftwareinventorycollection)|
|`/redfish/v1/updateservice/runningsoftwareinventory/{item}`|[HpeiLORunningSoftwareInventory](../ilo7_hpe_resourcedefns111/#hpeilorunningsoftwareinventory)|
|`/redfish/v1/updateservice/softwareinventory`|Collection of [SoftwareInventory](../ilo7_other_resourcedefns111/#softwareinventorycollection)|
|`/redfish/v1/updateservice/softwareinventory/{item}`|[SoftwareInventory](../ilo7_other_resourcedefns111/#softwareinventory)|
|`/redfish/v1/updateservice/updatetaskqueue`|Collection of [HpeComponentUpdateTask](../ilo7_hpe_resourcedefns111/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/updateservice/updatetaskqueue/{item}`|[HpeComponentUpdateTask](../ilo7_hpe_resourcedefns111/#hpecomponentupdatetask)|
