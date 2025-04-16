---
seo:
  title: Adapting from iLO 6
sidebar:
  hide: false
markdown:
  toc:
    hide: true
    depth: 3
  lastUpdatedBlock:
    hide: true---

# Adapting from iLO 6

This section is a guide to help Redfish client code adapt from the
iLO 6 RESTful API to the iLO 7 RESTful API.

## Introduction

The iLO 7 RESTful API is fully conformant with the Redfish® protocol and data model mentioned in the [Changelog](/docs/redfishservices/ilos/ilo7/ilo7_changelog/#changelog) file. Any remaining support for the pre-Redfish iLO RESTful API has been removed and is replaced by the Redfish equivalents. HPE continues to extend the Redfish data model (`Oem.Hpe` extensions) to enable value for the customer.

Refer to the [Conformance](/docs/concepts/redfishconformance) section for more details on this subject.

## Schema removals

The following schemas have been removed
from the iLO 7 version 1.11.00 and later versions,
unless formal notification in the [iLO 7 Changelog](../ilo7_changelog) file.

<!-- 
FDZ>>> The PowerSubsystem has been introduced silently
as per a mail from Vinayak Ram and Pavithra (not mentioned in Changelog)
of  in iLO 6 version 1.66. 
Not sure it is a good idea to mention its removal.

### PowerSubsystem

- `/redfish/v1/chassis/{@chassisid}/powersubsystem`
  - `/redfish/v1/chassis/{@chassisid}/powersubsystem/powersupplies`
  - `/redfish/v1/chassis/{@chassisid}/powersubsystem/powersupplie/{@powersupplyid}`

-->

### HPE Automatic Certificate Enrollment (SCEP)

The `HpeAutomaticCertEnrollment` schema
([SCEP](/docs/redfishservices/ilos/supplementdocuments/securityservice/#automatic-certificate-enrollment))
has been removed from iLO 7 version 1.11.00.
Only manual certification enrolment is supported in iLO 7 version 1.11.00
and later versions, unless formal re-introduction notification
in the [iLO 7 Changelog](../ilo7_changelog) file.

<!-- 

FDZ>>> The base network adapter is flagged as deprecated
in the ilo6_adaptation.md file. Why listing it here?

### BaseNetworkAdapters removals

- `/redfish/v1/systems/{@systemid}/basenetworkadapters`
- `/redfish/v1/systems/{@systemid}/basenetworkadapters/{@sysnicid}`

-->

### HpeiLOFederationGroup

The `HpeiLOFederationGroup`, `HpeiLOFederatedGroupCapping`, `HpeiLOFederationPeers`
schemas and associated collections have been removed from iLO 7.
These removals include the following URIs:

- `/redfish/v1/managers/{@Managerid}/federationgroups`
- `/redfish/v1/managers/{@Managerid}/federationgroups/{@federationgroupid}`
- `/redfish/v1/chassis/{@chassisid}/power/federatedgroupcapping`
- `/redfish/v1/managers/{@managerid}/federationpeers`
- `/redfish/v1/managers/{@managerid}/federationpeers/{@federationpeerid}`

### SerialInterface

The `SerialInterface` schema and associated collection has been
removed from iLO 7 1.11.00, including the following URI:

- `/redfish/v1/managers/{@managerid}/SerialInterfaces/{@sinterfaceid}`  

### HpeiLOEmbeddedMedia

The `HpeiLOEmbeddedMedia` schema has been removed from
iLO 7, including the following URI:

- `/redfish/v1/managers/{@managerid}/embeddedmedia`

## Miscellaneous URI removals

The following URIs have been removed from HPE iLO 7 1.11.00
and later unless formal re-introduction notification in
the iLO 7 [Changelog](../ilo7_changelog) file.

### AccHDDService

- `/redfish/v1/chassis/{@chassisid}/acchddservice`
- `/redfish/v1/Chassis/{@chassisid}/acchddService/zone`

### Accpowerservice

- `/redfish/v1/chassis/{@chassisid}/power/accpowerservice`
- `/redfish/v1/chassis/{@chassisid}/power/accpowerservice/calibration`
- `/redfish/v1/chassis/{@chassisid}/power/accpowerservice/nodesInfo`
- `/redfish/v1/chassis/{@chassisid}/power/accpowerservice/powerLimit`
- `/redfish/v1/chassis/{@chassisid}/power/accpowerservice/zone`

### SecurityService

- `/redfish/v1/managers/{@managerid}/securityservice/iLOidevid/certificates`
- `/redfish/v1/managers/{@managerid}/securityservice/iLOidevid/certificates/{@certid}`
- `/redfish/v1/Managers/{@ManagerId}/SecurityService/DisableWeakCiphers`
- `TLS1_0` and `TLS1_1` enumeration values have been removed from the
  `TLSVersion{}`[object](/docs/redfishservices/ilos/ilo7/ilo7_111/ilo7_hpe_resourcedefns111/#tlsversion)

### Controllers

- `/redfish/v1/systems/{@systemid}/storage/{@storageid}/controllers/{@controllerid}/certificates/`
- `/redfish/v1/systems/{@systemid}/storage/{@storageid}/controllers/{@controllerid}/certificates/{@certificateid}`

### NetworkAdapters

- `/redfish/v1/chassis/{@chassisid}/networkadapters/{@nicid}/assembly`

### ThermalSubsystem

- `/redfish/v1/chassis/{@chassisid}/thermalsubsystem/fans/{@fanid}/assembly`
- `/redfish/v1/chassis/{@chassisid}/thermalsubsystem/pumps/{@pumpid}/assembly`

## Deprecated properties

The following properties are deprecated in iLO 7 version 1.11.00
but are still present in the Redfish tree.
They should not be used anymore in the client scripts as they may be removed
in the future.

### Manager subsystem

- `Oem.Hpe.Firmware.Current.Date`
- `Oem.Hpe.Firmware.Current.DebugBuild`
- `Oem.Hpe.Firmware.Current.MajorVersion`
- `Oem.Hpe.Firmware.Current.MinorVersion`
- `Oem.Hpe.Firmware.Current.VersionString`
- `Oem.Hpe.Firmware.Current.BuildNumber`
- `Oem.Hpe.Firmware.Current.BuildNumberString`
- `Oem.Hpe.Firmware.Current.Time`

:::success TIP

In case your Redfish clients use the above deprecated properties,
they can fall back to the `FirmwareVersion`
[property](/docs/redfishservices/ilos/ilo7/ilo7_111/ilo7_manager_resourcedefns111/#firmwareversion)
or the Version property under
`/redfish/v1/Manager/1/UpdateService/FirmwareInventory/{item}`.

:::

## Property modifications

### iLO version format

The iLO version format changes from `Major.Minor` to `Major.Minor.Patch date`. Refer to the table below for impacted properties.

| URI | Properties | iLO 6 value | iLO 7 value  |
|-----|------------|-------------|--------------|
| <small>/redfish/v1</small> | <small>Oem.Hpe.Manager.Languages.Version</small><br><small>Oem.Hpe.Manager.ManagerFirmwareVersion</small> | <small>1.67</small><br><small>1.67</small>| <small>1.12</small><br><small>1.12.00</small> |
| <small>/redfish/v1/managers/1</small>  |<small>FirmwareVersion</small><br><small>Oem.Hpe.Firmware.Current.VersionString</small><br><small>Oem.Hpe.Firmware.Current.MajorVersion</small><br><small>Oem.Hpe.Firmware.Current.MinorVersion</small><br><small>Oem.Hpe.Firmware.Current.date</small> |<small>iLO 6 v1.67</small><br><small>iLO 6 v1.67</small><br><small>1</small><br><small>67</small><br><small>N/A</small>|<small>1.12.00 Mar 28 2025</small><br><small>1.12.00 Mar 28 2025</small><br><small>1</small><br><small>12</small><br><small>Mar 28 2025</small>|
| <small>/redfish/v1/UpdateService/FirmwareInventory/{Id}</small> | <small>Version</small> |<small>1.67 Feb 27 2025</small> | <small>1.12.00 Mar 28 2025</small> |

### Security related properties

Details related to the [Hpe Security Service](/docs/redfishservices/ilos/supplementdocuments/securityservice/#hpe-security-service)
are as follows:

- The default iLO 7 `SecurityState` [property](/docs/redfishservices/ilos/ilo7/ilo7_111/ilo7_hpe_resourcedefns111/#securitystate) is `SecureStandard`.
- The iLO 7 Secure Standard security state is equivalent to the iLO 6
  `HighSecurity` [default state](/docs/redfishservices/ilos/ilo6/ilo6_167/ilo6_hpe_resourcedefns167/#securitystate).
- Refer to this documentation [section](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7) for
   more information on the iLO 7 Secure Standard state.
- TLS 1.1 and TLS 1.0 support is deprecated in HPE iLO 7. Refer to the above [SecurityService](#securityservice) paragraph for more info.
- The `RequireHostAuthentication` OEM property has been removed from the
  `Manager` schema. Refer to the
  [in-band management](/docs/redfishservices/ilos/supplementdocuments/securityservice/#in-band-management-of-ilo-5-and-6)
  paragraph for more information on this property.
