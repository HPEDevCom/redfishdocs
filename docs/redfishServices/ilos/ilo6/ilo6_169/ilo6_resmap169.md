---
excludeFromSearch: true
seo:
  title: iLO 6 version 1.69 Resource map
markdown:
  toc:
    hide: true
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
---

# Resource map of iLO 6 v1.69

The following table lists HPE iLO Redfish resource types and their associated URIs.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

# Resource Map

|URI|Type|
|:---|:---|
|`/redfish/v1/`|[ServiceRoot](ilo6_serviceroot_resourcedefns169/#serviceroot)|
|`/redfish/v1/accountservice`|[AccountService](ilo6_other_resourcedefns169/#accountservice)|
|`/redfish/v1/accountservice/accounts`|Collection of [ManagerAccount](ilo6_manager_resourcedefns169/#manageraccountcollection)|
|`/redfish/v1/accountservice/accounts/{item}`|[ManagerAccount](ilo6_manager_resourcedefns169/#manageraccount)|
|`/redfish/v1/accountservice/accounts/{item}/keys`|Collection of [Key](ilo6_other_resourcedefns169/#keycollection)|
|`/redfish/v1/accountservice/accounts/{item}/keys/{item}`|[Key](ilo6_other_resourcedefns169/#key)|
|`/redfish/v1/accountservice/directorytest`|[HpeDirectoryTest](ilo6_hpe_resourcedefns169/#hpedirectorytest)|
|`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/accountservice/roles`|Collection of [Role](ilo6_other_resourcedefns169/#rolecollection)|
|`/redfish/v1/accountservice/roles/{item}`|[Role](ilo6_other_resourcedefns169/#role)|
|`/redfish/v1/accountservice/usercertificatemapping`|Collection of [HpeiLOAccountCertificateMap](ilo6_hpe_resourcedefns169/#hpeiloaccountcertificatemapcollection)|
|`/redfish/v1/accountservice/usercertificatemapping/{item}`|[HpeiLOAccountCertificateMap](ilo6_hpe_resourcedefns169/#hpeiloaccountcertificatemap)|
|`/redfish/v1/certificateservice`|[CertificateService](ilo6_other_resourcedefns169/#certificateservice)|
|`/redfish/v1/certificateservice/certificatelocations`|[CertificateLocations](ilo6_other_resourcedefns169/#certificatelocations)|
|`/redfish/v1/chassis`|Collection of [Chassis](ilo6_chassis_resourcedefns169/#chassiscollection)|
|`/redfish/v1/chassis/{item}`|[Chassis](ilo6_chassis_resourcedefns169/#chassis)|
|`/redfish/v1/chassis/{item}/acchddservice`|[HpeServerAccHddService](ilo6_hpe_resourcedefns169/#hpeserveracchddservice)|
|`/redfish/v1/chassis/{item}/acchddservice/zone`|[HpeServerAccHddZone](ilo6_hpe_resourcedefns169/#hpeserveracchddzone)|
|`/redfish/v1/chassis/{item}/basefrus`|Collection of [HpeiLOFrus](ilo6_hpe_resourcedefns169/#hpeilofruscollection)|
|`/redfish/v1/chassis/{item}/basefrus/{item}`|[HpeiLOFrus](ilo6_hpe_resourcedefns169/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/basefrus/{item}/details`|[HpeiLOFrus](ilo6_hpe_resourcedefns169/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/devices`|Collection of [HpeServerDevice](ilo6_hpe_resourcedefns169/#hpeserverdevicecollection)|
|`/redfish/v1/chassis/{item}/devices/{item}`|[HpeServerDevice](ilo6_hpe_resourcedefns169/#hpeserverdevice)|
|`/redfish/v1/chassis/{item}/environmentmetrics`|[EnvironmentMetrics](ilo6_other_resourcedefns169/#environmentmetrics)|
|`/redfish/v1/chassis/{item}/fallbacksensors`|Collection of [FallBackSensor](ilo6_hpe_resourcedefns169/#hpefallbacksensorcollection)|
|`/redfish/v1/chassis/{item}/sensors/{item}`|[FallBackSensor](ilo6_other_resourcedefns169/#sensor)|
|`/redfish/v1/chassis/{item}/mezzfrus`|Collection of [HpeiLOFrus](ilo6_hpe_resourcedefns169/#hpeilofruscollection)|
|`/redfish/v1/chassis/{item}/mezzfrus/{item}`|[HpeiLOFrus](ilo6_hpe_resourcedefns169/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/mezzfrus/{item}/details`|[HpeiLOFrus](ilo6_hpe_resourcedefns169/#hpeilofrus)|
|`/redfish/v1/chassis/{item}/networkadapters`|Collection of [NetworkAdapter](ilo6_network_resourcedefns169/#networkadaptercollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}`|[NetworkAdapter](ilo6_network_resourcedefns169/#networkadapter)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/assembly`|[Assembly](ilo6_other_resourcedefns169/#assembly)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions`|Collection of [NetworkDeviceFunction](ilo6_network_resourcedefns169/#networkdevicefunctioncollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}`|[NetworkDeviceFunction](ilo6_network_resourcedefns169/#networkdevicefunction)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkdevicefunctions/{item}/settings`|[NetworkDeviceFunction](ilo6_network_resourcedefns169/#networkdevicefunction)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns169/#portcollection)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}/portmetrics`|[PortMetrics](ilo6_other_resourcedefns169/#portmetrics)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}/settings`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/settings`|[NetworkAdapter](ilo6_network_resourcedefns169/#networkadapter)|
|`/redfish/v1/chassis/{item}/pciedevices`|Collection of [PCIeDevice](ilo6_other_resourcedefns169/#pciedevicecollection)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}`|[PCIeDevice](ilo6_other_resourcedefns169/#pciedevice)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}/pciefunctions`|Collection of [PCIeFunction](ilo6_other_resourcedefns169/#pciefunctioncollection)|
|`/redfish/v1/chassis/{item}/pciedevices/{item}/pciefunctions/{item}`|[PCIeFunction](ilo6_other_resourcedefns169/#pciefunction)|
|`/redfish/v1/chassis/{item}/pcieslots`|[PCIeSlots](ilo6_other_resourcedefns169/#pcieslots)|
|`/redfish/v1/chassis/{item}/power`|[Power](ilo6_other_resourcedefns169/#power)|
|`/redfish/v1/chassis/{item}/power/accpowerservice`|[HpeServerAccPowerService](ilo6_hpe_resourcedefns169/#hpeserveraccpowerservice)|
|`/redfish/v1/chassis/{item}/power/accpowerservice/calibration`|[HpeServerAccPowerCalibration](ilo6_hpe_resourcedefns169/#hpeserveraccpowercalibration)|
|`/redfish/v1/chassis/{item}/power/accpowerservice/nodesinfo`|[HpeServerAccPowerNodesInfo](ilo6_hpe_resourcedefns169/#hpeserveraccpowernodesinfo)|
|`/redfish/v1/chassis/{item}/power/accpowerservice/powerlimit`|[HpeServerAccPowerLimit](ilo6_hpe_resourcedefns169/#hpeserveraccpowerlimit)|
|`/redfish/v1/chassis/{item}/power/accpowerservice/zone`|[HpeServerAccPowerZone](ilo6_hpe_resourcedefns169/#hpeserveraccpowerzone)|
|`/redfish/v1/chassis/{item}/power/fastpowermeter`|[HpePowerMeter](ilo6_hpe_resourcedefns169/#hpepowermeter)|
|`/redfish/v1/chassis/{item}/power/federatedgroupcapping`|[HpeiLOFederatedGroupCapping](ilo6_hpe_resourcedefns169/#hpeilofederatedgroupcapping)|
|`/redfish/v1/chassis/{item}/power/powermeter`|[HpePowerMeter](ilo6_hpe_resourcedefns169/#hpepowermeter)|
|`/redfish/v1/chassis/{item}/sensors/{item}`|[Sensor](ilo6_other_resourcedefns169/#sensor)|
|`/redfish/v1/chassis/{item}/thermal`|[Thermal](ilo6_other_resourcedefns169/#thermal)|
|`/redfish/v1/chassis/{item}/thermalsubsystem`|[ThermalSubsystem](ilo6_other_resourcedefns169/#thermalsubsystem)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans`|Collection of [Fan](ilo6_other_resourcedefns169/#fancollection)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans/{item}`|[Fan](ilo6_other_resourcedefns169/#fan)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/fans/{item}/assembly`|[Assembly](ilo6_other_resourcedefns169/#assembly)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps`|Collection of [Pump](ilo6_other_resourcedefns169/#pumpcollection)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps/{item}`|[Pump](ilo6_other_resourcedefns169/#pump)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/pumps/{item}/assembly`|[Assembly](ilo6_other_resourcedefns169/#assembly)|
|`/redfish/v1/chassis/{item}/thermalsubsystem/thermalmetrics`|[ThermalMetrics](ilo6_other_resourcedefns169/#thermalmetrics)|
|`/redfish/v1/componentintegrity`|Collection of [ComponentIntegrity](ilo6_other_resourcedefns169/#componentintegritycollection)|
|`/redfish/v1/componentintegrity/{item}`|[ComponentIntegrity](ilo6_other_resourcedefns169/#componentintegrity)|
|`/redfish/v1/eventservice`|[EventService](ilo6_other_resourcedefns169/#eventservice)|
|`/redfish/v1/eventservice/cacertificates`|Collection of [HpeCertificate](ilo6_hpe_resourcedefns169/#hpecertificatecollection)|
|`/redfish/v1/eventservice/cacertificates/{item}`|[HpeCertificate](ilo6_hpe_resourcedefns169/#hpecertificate)|
|`/redfish/v1/eventservice/subscriptions`|Collection of [EventDestination](ilo6_other_resourcedefns169/#eventdestinationcollection)|
|`/redfish/v1/eventservice/subscriptions/{item}`|[EventDestination](ilo6_other_resourcedefns169/#eventdestination)|
|`/redfish/v1/fabrics`|Collection of [Fabric](ilo6_other_resourcedefns169/#fabriccollection)|
|`/redfish/v1/fabrics/{item}`|[Fabric](ilo6_other_resourcedefns169/#fabric)|
|`/redfish/v1/fabrics/{item}/switches`|Collection of [Switch](ilo6_other_resourcedefns169/#switchcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}`|[Switch](ilo6_other_resourcedefns169/#switch)|
|`/redfish/v1/fabrics/{item}/switches/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns169/#portcollection)|
|`/redfish/v1/fabrics/{item}/switches/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/jsonschemas`|Collection of [JsonSchemaFile](ilo6_other_resourcedefns169/#jsonschemafilecollection)|
|`/redfish/v1/jsonschemas/{item}`|[JsonSchemaFile](ilo6_other_resourcedefns169/#jsonschemafile)|
|`/redfish/v1/managers`|Collection of [Manager](ilo6_manager_resourcedefns169/#managercollection)|
|`/redfish/v1/managers/{item}`|[Manager](ilo6_manager_resourcedefns169/#manager)|
|`/redfish/v1/managers/{item}/activehealthsystem`|[HpeiLOActiveHealthSystem](ilo6_hpe_resourcedefns169/#hpeiloactivehealthsystem)|
|`/redfish/v1/managers/{item}/backuprestoreservice`|[HpeiLOBackupRestoreService](ilo6_hpe_resourcedefns169/#hpeilobackuprestoreservice)|
|`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles`|Collection of [HpeiLOBackupFile](ilo6_hpe_resourcedefns169/#hpeilobackupfilecollection)|
|`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles/{item}`|[HpeiLOBackupFile](ilo6_hpe_resourcedefns169/#hpeilobackupfile)|
|`/redfish/v1/managers/{item}/datetime`|[HpeiLODateTime](ilo6_hpe_resourcedefns169/#hpeilodatetime)|
|`/redfish/v1/managers/{item}/dedicatednetworkports`|Collection of [Port](ilo6_other_resourcedefns169/#portcollection)|
|`/redfish/v1/managers/{item}/dedicatednetworkports/{item}`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/managers/{item}/embeddedmedia`|[HpeiLOEmbeddedMedia](ilo6_hpe_resourcedefns169/#hpeiloembeddedmedia)|
|`/redfish/v1/managers/{item}/ethernetinterfaces`|Collection of [EthernetInterface](ilo6_network_resourcedefns169/#ethernetinterfacecollection)|
|`/redfish/v1/managers/{item}/ethernetinterfaces/{item}`|[EthernetInterface](ilo6_network_resourcedefns169/#ethernetinterface)|
|`/redfish/v1/managers/{item}/federationgroups`|Collection of [HpeiLOFederationGroup](ilo6_hpe_resourcedefns169/#hpeilofederationgroupcollection)|
|`/redfish/v1/managers/{item}/federationgroups/{item}`|[HpeiLOFederationGroup](ilo6_hpe_resourcedefns169/#hpeilofederationgroup)|
|`/redfish/v1/managers/{item}/federationpeers`|Collection of [HpeiLOFederationPeers](ilo6_hpe_resourcedefns169/#hpeilofederationpeerscollection)|
|`/redfish/v1/managers/{item}/federationpeers/{item}`|[HpeiLOFederationPeers](ilo6_hpe_resourcedefns169/#hpeilofederationpeers)|
|`/redfish/v1/managers/{item}/hostinterfaces`|Collection of [HostInterface](ilo6_other_resourcedefns169/#hostinterfacecollection)|
|`/redfish/v1/managers/{item}/hostinterfaces/{item}`|[HostInterface](ilo6_other_resourcedefns169/#hostinterface)|
|`/redfish/v1/managers/{item}/licenseservice`|Collection of [HpeiLOLicense](ilo6_hpe_resourcedefns169/#hpeilolicensecollection)|
|`/redfish/v1/managers/{item}/licenseservice/{item}`|[HpeiLOLicense](ilo6_hpe_resourcedefns169/#hpeilolicense)|
|`/redfish/v1/managers/{item}/logservices`|Collection of [LogService](ilo6_other_resourcedefns169/#logservicecollection)|
|`/redfish/v1/managers/{item}/logservices/iel`|[LogService](ilo6_other_resourcedefns169/#logservice)|
|`/redfish/v1/managers/{item}/logservices/iel/entries`|Collection of [LogEntry](ilo6_other_resourcedefns169/#logentrycollection)|
|`/redfish/v1/managers/{item}/logservices/iel/entries/{item}`|[LogEntry](ilo6_other_resourcedefns169/#logentry)|
|`/redfish/v1/managers/{item}/networkprotocol`|[ManagerNetworkProtocol](ilo6_manager_resourcedefns169/#managernetworkprotocol)|
|`/redfish/v1/managers/{item}/remotesupportservice`|[HpeRemoteSupport](ilo6_hpe_resourcedefns169/#hperemotesupport)|
|`/redfish/v1/managers/{item}/remotesupportservice/serviceeventlogs`|Collection of [LogEntry](ilo6_other_resourcedefns169/#logentrycollection)|
|`/redfish/v1/managers/{item}/remotesupportservice/serviceeventlogs/{item}`|[LogEntry](ilo6_other_resourcedefns169/#logentry)|
|`/redfish/v1/managers/{item}/securityservice`|[HpeSecurityService](ilo6_hpe_resourcedefns169/#hpesecurityservice)|
|`/redfish/v1/managers/{item}/securityservice/automaticcertificateenrollment`|[HpeAutomaticCertEnrollment](ilo6_hpe_resourcedefns169/#hpeautomaticcertenrollment)|
|`/redfish/v1/managers/{item}/securityservice/bmchpeldevid/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmchpeldevid/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmciak/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmciak/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmcidevidpca/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmcidevidpca/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/bmclak/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/bmclak/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication`|[HpeCertAuth](ilo6_hpe_resourcedefns169/#hpecertauth)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates`|Collection of [HpeCertificate](ilo6_hpe_resourcedefns169/#hpecertificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates/{item}`|[HpeCertificate](ilo6_hpe_resourcedefns169/#hpecertificate)|
|`/redfish/v1/managers/{item}/securityservice/eskm`|[HpeESKM](ilo6_hpe_resourcedefns169/#hpeeskm)|
|`/redfish/v1/managers/{item}/securityservice/httpscert`|[HpeHttpsCert](ilo6_hpe_resourcedefns169/#hpehttpscert)|
|`/redfish/v1/managers/{item}/securityservice/iloidevid/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/iloidevid/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/iloldevid/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/iloldevid/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/platformcert/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/platformcert/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard`|[HpeiLOSecurityDashboard](ilo6_hpe_resourcedefns169/#hpeilosecuritydashboard)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams`|Collection of [HpeiLOSecurityParam](ilo6_hpe_resourcedefns169/#hpeilosecurityparamcollection)|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams/{item}`|[HpeiLOSecurityParam](ilo6_hpe_resourcedefns169/#hpeilosecurityparam)|
|`/redfish/v1/managers/{item}/securityservice/sso`|[HpeiLOSSO](ilo6_hpe_resourcedefns169/#hpeilosso)|
|`/redfish/v1/managers/{item}/securityservice/systemiak/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemiak/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemlak/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemlak/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/securityservice/systemldevid/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/managers/{item}/securityservice/systemldevid/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/managers/{item}/serialinterfaces`|Collection of [SerialInterface](ilo6_other_resourcedefns169/#serialinterfacecollection)|
|`/redfish/v1/managers/{item}/serialinterfaces/{item}`|[SerialInterface](ilo6_other_resourcedefns169/#serialinterface)|
|`/redfish/v1/managers/{item}/sharednetworkports`|Collection of [Port](ilo6_other_resourcedefns169/#portcollection)|
|`/redfish/v1/managers/{item}/sharednetworkports/{item}`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/managers/{item}/snmpservice`|[HpeiLOSnmpService](ilo6_hpe_resourcedefns169/#hpeilosnmpservice)|
|`/redfish/v1/managers/{item}/snmpservice/snmpalertdestinations`|Collection of [HpeSNMPAlertDestination](ilo6_hpe_resourcedefns169/#hpesnmpalertdestinationcollection)|
|`/redfish/v1/managers/{item}/snmpservice/snmpalertdestinations/{item}`|[HpeSNMPAlertDestination](ilo6_hpe_resourcedefns169/#hpesnmpalertdestination)|
|`/redfish/v1/managers/{item}/snmpservice/snmpusers`|Collection of [HpeSNMPUser](ilo6_hpe_resourcedefns169/#hpesnmpuserscollection)|
|`/redfish/v1/managers/{item}/snmpservice/snmpusers/{item}`|[HpeSNMPUser](ilo6_hpe_resourcedefns169/#hpesnmpuser)|
|`/redfish/v1/managers/{item}/virtualmedia`|Collection of [VirtualMedia](ilo6_other_resourcedefns169/#virtualmediacollection)|
|`/redfish/v1/managers/{item}/virtualmedia/{item}`|[VirtualMedia](ilo6_other_resourcedefns169/#virtualmedia)|
|`/redfish/v1/registries`|Collection of [MessageRegistryFile](ilo6_other_resourcedefns169/#messageregistryfilecollection)|
|`/redfish/v1/registries/{item}`|[MessageRegistryFile](ilo6_other_resourcedefns169/#messageregistryfile)|
|`/redfish/v1/resourcedirectory`|[HpeiLOResourceDirectory](ilo6_hpe_resourcedefns169/#hpeiloresourcedirectory)|
|`/redfish/v1/sessionservice`|[SessionService](ilo6_other_resourcedefns169/#sessionservice)|
|`/redfish/v1/sessionservice/sessions`|Collection of [Session](ilo6_other_resourcedefns169/#sessioncollection)|
|`/redfish/v1/sessionservice/sessions/{item}`|[Session](ilo6_other_resourcedefns169/#session)|
|`/redfish/v1/systems`|Collection of [ComputerSystem](ilo6_computersystem_resourcedefns169/#computersystemcollection)|
|`/redfish/v1/systems/{item}`|[ComputerSystem](ilo6_computersystem_resourcedefns169/#computersystem)|
|`/redfish/v1/systems/{item}/bios`|[Bios](ilo6_bios_resourcedefns169/#bios)|
|`/redfish/v1/systems/{item}/bios/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns169/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot`|[HpeServerBootSettings](ilo6_hpe_resourcedefns169/#hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/boot/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns169/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/boot/settings`|[HpeServerBootSettings](ilo6_hpe_resourcedefns169/#hpeserverbootsettings)|
|`/redfish/v1/systems/{item}/bios/iscsi`|[HpeiSCSISoftwareInitiator](ilo6_hpe_resourcedefns169/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/iscsi/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns169/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/iscsi/settings`|[HpeiSCSISoftwareInitiator](ilo6_hpe_resourcedefns169/#hpeiscsisoftwareinitiator)|
|`/redfish/v1/systems/{item}/bios/kmsconfig`|[HpeKmsConfig](ilo6_hpe_resourcedefns169/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns169/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/kmsconfig/settings`|[HpeKmsConfig](ilo6_hpe_resourcedefns169/#hpekmsconfig)|
|`/redfish/v1/systems/{item}/bios/mappings`|[HpeBiosMapping](ilo6_hpe_resourcedefns169/#hpebiosmapping)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig`|[HpeTlsConfig](ilo6_hpe_resourcedefns169/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns169/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/settings`|[HpeTlsConfig](ilo6_hpe_resourcedefns169/#hpetlsconfig)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock`|[HpeServerConfigLock](ilo6_hpe_resourcedefns169/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/baseconfigs`|[HpeBaseConfigs](ilo6_hpe_resourcedefns169/#hpebaseconfigs)|
|`/redfish/v1/systems/{item}/bios/serverconfiglock/settings`|[HpeServerConfigLock](ilo6_hpe_resourcedefns169/#hpeserverconfiglock)|
|`/redfish/v1/systems/{item}/bios/settings`|[Bios](ilo6_bios_resourcedefns169/#bios)|
|`/redfish/v1/systems/{item}/bootoptions`|Collection of [BootOption](ilo6_other_resourcedefns169/#bootoptioncollection)|
|`/redfish/v1/systems/{item}/bootoptions/{item}`|[BootOption](ilo6_other_resourcedefns169/#bootoption)|
|`/redfish/v1/systems/{item}/ethernetinterfaces`|Collection of [EthernetInterface](ilo6_network_resourcedefns169/#ethernetinterfacecollection)|
|`/redfish/v1/systems/{item}/ethernetinterfaces/{item}`|[EthernetInterface](ilo6_network_resourcedefns169/#ethernetinterface)|
|`/redfish/v1/systems/{item}/logservices`|Collection of [LogService](ilo6_other_resourcedefns169/#logservicecollection)|
|`/redfish/v1/systems/{item}/logservices/dpu`|[LogService](ilo6_other_resourcedefns169/#logservice)|
|`/redfish/v1/systems/{item}/logservices/dpu/entries`|Collection of [LogEntry](ilo6_other_resourcedefns169/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/dpu/entries/{item}`|[LogEntry](ilo6_other_resourcedefns169/#logentry)|
|`/redfish/v1/systems/{item}/logservices/event`|[LogService](ilo6_other_resourcedefns169/#logservice)|
|`/redfish/v1/systems/{item}/logservices/event/entries`|Collection of [LogEntry](ilo6_other_resourcedefns169/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/event/entries/{item}`|[LogEntry](ilo6_other_resourcedefns169/#logentry)|
|`/redfish/v1/systems/{item}/logservices/iml`|[LogService](ilo6_other_resourcedefns169/#logservice)|
|`/redfish/v1/systems/{item}/logservices/iml/entries`|Collection of [LogEntry](ilo6_other_resourcedefns169/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/iml/entries/{item}`|[LogEntry](ilo6_other_resourcedefns169/#logentry)|
|`/redfish/v1/systems/{item}/logservices/sl`|[LogService](ilo6_other_resourcedefns169/#logservice)|
|`/redfish/v1/systems/{item}/logservices/sl/entries`|Collection of [LogEntry](ilo6_other_resourcedefns169/#logentrycollection)|
|`/redfish/v1/systems/{item}/logservices/sl/entries/{item}`|[LogEntry](ilo6_other_resourcedefns169/#logentry)|
|`/redfish/v1/systems/{item}/memory`|Collection of [Memory](ilo6_other_resourcedefns169/#memorycollection)|
|`/redfish/v1/systems/{item}/memory/{item}`|[Memory](ilo6_other_resourcedefns169/#memory)|
|`/redfish/v1/systems/{item}/memory/{item}/memorymetrics`|[MemoryMetrics](ilo6_other_resourcedefns169/#memorymetrics)|
|`/redfish/v1/systems/{item}/memorydomains`|Collection of [MemoryDomain](ilo6_other_resourcedefns169/#memorydomaincollection)|
|`/redfish/v1/systems/{item}/memorydomains/{item}`|[MemoryDomain](ilo6_other_resourcedefns169/#memorydomain)|
|`/redfish/v1/systems/{item}/memorydomains/{item}/memorychunks`|Collection of [MemoryChunks](ilo6_other_resourcedefns169/#memorychunkscollection)|
|`/redfish/v1/systems/{item}/memorydomains/{item}/memorychunks/{item}`|[MemoryChunks](ilo6_other_resourcedefns169/#memorychunks)|
|`/redfish/v1/systems/{item}/networkinterfaces`|Collection of [NetworkInterface](ilo6_network_resourcedefns169/#networkinterfacecollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}`|[NetworkInterface](ilo6_network_resourcedefns169/#networkinterface)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions`|Collection of [NetworkDeviceFunction](ilo6_network_resourcedefns169/#networkdevicefunctioncollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions/{item}`|[NetworkDeviceFunction](ilo6_network_resourcedefns169/#networkdevicefunction)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkdevicefunctions/{item}/settings`|[NetworkDeviceFunction](ilo6_network_resourcedefns169/#networkdevicefunction)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns169/#portcollection)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}/settings`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/systems/{item}/pcidevices`|Collection of [HpeServerPciDevice](ilo6_hpe_resourcedefns169/#hpeserverpcidevicecollection)|
|`/redfish/v1/systems/{item}/pcidevices/{item}`|[HpeServerPciDevice](ilo6_hpe_resourcedefns169/#hpeserverpcidevice)|
|`/redfish/v1/systems/{item}/pcislots`|Collection of [HpeServerPCISlot](ilo6_hpe_resourcedefns169/#hpeserverpcislotcollection)|
|`/redfish/v1/systems/{item}/pcislots/{item}`|[HpeServerPCISlot](ilo6_hpe_resourcedefns169/#hpeserverpcislot)|
|`/redfish/v1/systems/{item}/processors`|Collection of [Processor](ilo6_other_resourcedefns169/#processorcollection)|
|`/redfish/v1/systems/{item}/processors/{item}`|[Processor](ilo6_other_resourcedefns169/#processor)|
|`/redfish/v1/systems/{item}/processors/{item}/environmentmetrics`|[EnvironmentMetrics](ilo6_other_resourcedefns169/#environmentmetrics)|
|`/redfish/v1/systems/{item}/processors/{item}/processormetrics`|[ProcessorMetrics](ilo6_other_resourcedefns169/#processormetrics)|
|`/redfish/v1/systems/{item}/secureboot`|[SecureBoot](ilo6_other_resourcedefns169/#secureboot)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases`|Collection of [SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabasecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/signatures`|Collection of [Signature](ilo6_other_resourcedefns169/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/signatures/{item}`|[Signature](ilo6_other_resourcedefns169/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/signatures`|Collection of [Signature](ilo6_other_resourcedefns169/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/signatures/{item}`|[Signature](ilo6_other_resourcedefns169/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/signatures`|Collection of [Signature](ilo6_other_resourcedefns169/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/signatures/{item}`|[Signature](ilo6_other_resourcedefns169/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/signatures`|Collection of [Signature](ilo6_other_resourcedefns169/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/signatures/{item}`|[Signature](ilo6_other_resourcedefns169/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/signatures`|Collection of [Signature](ilo6_other_resourcedefns169/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/signatures/{item}`|[Signature](ilo6_other_resourcedefns169/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/signatures`|Collection of [Signature](ilo6_other_resourcedefns169/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/signatures/{item}`|[Signature](ilo6_other_resourcedefns169/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/signatures`|Collection of [Signature](ilo6_other_resourcedefns169/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/signatures/{item}`|[Signature](ilo6_other_resourcedefns169/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/signatures`|Collection of [Signature](ilo6_other_resourcedefns169/#signaturecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/signatures/{item}`|[Signature](ilo6_other_resourcedefns169/#signature)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault`|[SecureBootDatabase](ilo6_other_resourcedefns169/#securebootdatabase)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/secureerasereportservice`|[HpeSecureEraseReportService](ilo6_hpe_resourcedefns169/#hpesecureerasereportservice)|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries`|Collection of [HpeSecureEraseReport](ilo6_hpe_resourcedefns169/#hpesecureerasereportcollection)|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries/{item}`|[HpeSecureEraseReport](ilo6_hpe_resourcedefns169/#hpesecureerasereport)|
|`/redfish/v1/systems/{item}/storage`|Collection of [Storage](ilo6_storage_resourcedefns169/#storagecollection)|
|`/redfish/v1/systems/{item}/storage/{item}`|[Storage](ilo6_storage_resourcedefns169/#storage)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/`|Collection of [StorageController](ilo6_storage_resourcedefns169/#storagecontrollercollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}`|[StorageController](ilo6_storage_resourcedefns169/#storagecontroller)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/certificates`|Collection of [Certificate](ilo6_other_resourcedefns169/#certificatecollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/certificates/{item}`|[Certificate](ilo6_other_resourcedefns169/#certificate)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns169/#portcollection)|
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/systems/{item}/storage/{item}/drives/{item}`|[Drive](ilo6_storage_resourcedefns169/#drive)|
|`/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports`|Collection of [Port](ilo6_other_resourcedefns169/#portcollection)|
|`/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports/{item}`|[Port](ilo6_other_resourcedefns169/#port)|
|`/redfish/v1/systems/{item}/storage/{item}/volumes`|Collection of [Volume](ilo6_storage_resourcedefns169/#volumecollection)|
|`/redfish/v1/systems/{item}/storage/{item}/volumes/{item}`|[Volume](ilo6_storage_resourcedefns169/#volume)|
|`/redfish/v1/systems/{item}/usbdevices`|Collection of [HpeUSBDevice](ilo6_hpe_resourcedefns169/#hpeusbdevicescollection)|
|`/redfish/v1/systems/{item}/usbdevices/{item}`|[HpeUSBDevice](ilo6_hpe_resourcedefns169/#hpeusbdevice)|
|`/redfish/v1/systems/{item}/usbports`|Collection of [HpeUSBPort](ilo6_hpe_resourcedefns169/#hpeusbportscollection)|
|`/redfish/v1/systems/{item}/usbports/{item}`|[HpeUSBPort](ilo6_hpe_resourcedefns169/#hpeusbport)|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor`|Collection of [HpeWorkloadPerformanceAdvisor](ilo6_hpe_resourcedefns169/#hpeworkloadperformanceadvisorcollection)|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor/{item}`|[HpeWorkloadPerformanceAdvisor](ilo6_hpe_resourcedefns169/#hpeworkloadperformanceadvisor)|
|`/redfish/v1/taskservice`|[TaskService](ilo6_other_resourcedefns169/#taskservice)|
|`/redfish/v1/taskservice/tasks`|Collection of [Task](ilo6_other_resourcedefns169/#taskcollection)|
|`/redfish/v1/taskservice/tasks/{item}`|[Task](ilo6_other_resourcedefns169/#task)|
|`/redfish/v1/telemetryservice`|[TelemetryService](ilo6_other_resourcedefns169/#telemetryservice)|
|`/redfish/v1/telemetryservice/metricdefinitions`|Collection of [MetricDefinition](ilo6_other_resourcedefns169/#metricdefinitioncollection)|
|`/redfish/v1/telemetryservice/metricdefinitions/{item}`|[MetricDefinition](ilo6_other_resourcedefns169/#metricdefinition)|
|`/redfish/v1/telemetryservice/metricreportdefinitions`|Collection of [MetricReportDefinition](ilo6_other_resourcedefns169/#metricreportdefinitioncollection)|
|`/redfish/v1/telemetryservice/metricreportdefinitions/{item}`|[MetricReportDefinition](ilo6_other_resourcedefns169/#metricreportdefinition)|
|`/redfish/v1/telemetryservice/metricreports`|Collection of [MetricReport](ilo6_other_resourcedefns169/#metricreportcollection)|
|`/redfish/v1/telemetryservice/metricreports/{item}`|[MetricReport](ilo6_other_resourcedefns169/#metricreport)|
|`/redfish/v1/telemetryservice/triggers`|Collection of [Triggers](ilo6_other_resourcedefns169/#triggerscollection)|
|`/redfish/v1/telemetryservice/triggers/{item}`|[Triggers](ilo6_other_resourcedefns169/#triggers)|
|`/redfish/v1/updateservice`|[UpdateService](ilo6_other_resourcedefns169/#updateservice)|
|`/redfish/v1/updateservice/componentrepository`|Collection of [HpeComponent](ilo6_hpe_resourcedefns169/#hpecomponentcollection)|
|`/redfish/v1/updateservice/componentrepository/{item}`|[HpeComponent](ilo6_hpe_resourcedefns169/#hpecomponent)|
|`/redfish/v1/updateservice/firmwareinventory`|Collection of [SoftwareInventory](ilo6_other_resourcedefns169/#softwareinventorycollection)|
|`/redfish/v1/updateservice/firmwareinventory/{item}`|[SoftwareInventory](ilo6_other_resourcedefns169/#softwareinventory)|
|`/redfish/v1/updateservice/installsets`|Collection of [HpeComponentInstallSet](ilo6_hpe_resourcedefns169/#hpecomponentinstallsetcollection)|
|`/redfish/v1/updateservice/installsets/{item}`|[HpeComponentInstallSet](ilo6_hpe_resourcedefns169/#hpecomponentinstallset)|
|`/redfish/v1/updateservice/invalidimagerepository`|Collection of [HpeInvalidImage](ilo6_hpe_resourcedefns169/#hpeinvalidimagecollection)|
|`/redfish/v1/updateservice/invalidimagerepository/{item}`|[HpeInvalidImage](ilo6_hpe_resourcedefns169/#hpeinvalidimage)|
|`/redfish/v1/updateservice/maintenancewindows`|Collection of [HpeMaintenanceWindow](ilo6_hpe_resourcedefns169/#hpemaintenancewindowcollection)|
|`/redfish/v1/updateservice/maintenancewindows/{item}`|[HpeMaintenanceWindow](ilo6_hpe_resourcedefns169/#hpemaintenancewindow)|
|`/redfish/v1/updateservice/softwareinventory`|Collection of [SoftwareInventory](ilo6_other_resourcedefns169/#softwareinventorycollection)|
|`/redfish/v1/updateservice/softwareinventory/{item}`|[SoftwareInventory](ilo6_other_resourcedefns169/#softwareinventory)|
|`/redfish/v1/updateservice/updatetaskqueue`|Collection of [HpeComponentUpdateTask](ilo6_hpe_resourcedefns169/#hpecomponentupdatetaskqueuecollection)|
|`/redfish/v1/updateservice/updatetaskqueue/{item}`|[HpeComponentUpdateTask](ilo6_hpe_resourcedefns169/#hpecomponentupdatetask)|
