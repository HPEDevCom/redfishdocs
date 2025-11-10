---
seo:
  title: iLO 7 changelog
sidebar:
  hide: false
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdatedBlock:
    hide: true
---

# Changelog

The HPE iLO 7 Redfish service implements the DMTF Redfish specification
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.20.1.pdf" target="_blank">version 1.20.0</a>
and the schemas implemented by iLO 7 adhere to the DMTF Redfish schema bundle
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP8010_2024.1.zip" target="_blank">8010_2024.1</a>.

For a better understanding of the conformance to the DMTF Redfish,
read the _Redfish versioning_ paragraph of this
<a href="https://developer.hpe.com/blog/getting-started-with-ilo-restful-api-redfish-api-conformance/" target="_blank">article</a>.

{% admonition type="success" name="Tip" %}
The Release Notes of the different iLO 7 firmware versions is available from the
<a href="https://support.hpe.com/hpesc/public/docDisplay?docId=sd00006669en_us" target="_blank">HPE Support Center</a>.
{% /admonition %}

## iLO 7 v1.14.00 new features and changes

### New URIs

- No new URIs added for this release.

### Deprecated URIs

- No URIs deprecated in this release.

### HTTP methods - additions and deprecations

- No HTTP methods changed across these releases.

### Redfish actions - additions and deprecations

- No changes have been made to the supported Redfish Actions for this release.

### Schema updates

- [ComputerSystem.v1\_18\_0.ComputerSystem](/docs/redfishservices/ilos/ilo7/ilo7_114/ilo7_computersystem_resourcedefns114/#computersystem):
  - Added **Oem.Hpe.CPUMEZZPartNumber**
    [property](/docs/redfishservices/ilos/ilo7/ilo7_114/ilo7_computersystem_resourcedefns114/#oem.hpe.cpumezzpartnumber)-
    The Mezzanine board part number on MHS configuration.
  - Added **Oem.Hpe.CPUMEZZSerialNumber**
    [property](/docs/redfishservices/ilos/ilo7/ilo7_114/ilo7_computersystem_resourcedefns114/#oem.hpe.cpumezzserialnumber)-
    The Mezzanine board serial number on MHS configuration.
- [HpeiLODateTime.v2\_1\_0.HpeiLODateTime](/docs/redfishservices/ilos/ilo7/ilo7_114/ilo7_hpe_resourcedefns114/#hpeilodatetime):
  - The `Read Only` for `SntpConfigured` property is modified to `False`.
- [Manager.v1\_19\_1.Manager](/docs/redfishservices/ilos/ilo7/ilo7_114/ilo7_manager_resourcedefns114/#manager):
  - Added **Oem.Hpe.VSPEnabled**
    [property](/docs/redfishservices/ilos/ilo7/ilo7_114/ilo7_manager_resourcedefns114/#oem.hpe.vspenabled)-
    This property enables or disables Virtual Serial Port (VSP).

## iLO 7 v1.13.00 new features and changes

### New URIs

- No new URIs added for this release.

### Deprecated URIs

- No URIs deprecated in this release.

### HTTP methods - additions and deprecations

- No HTTP methods changed across these releases.

### Redfish actions - additions and deprecations

- No changes have been made to the supported Redfish Actions for this release.

### Schema updates

- `HpeiLODateTime`: [SntpConfigured](/docs/redfishservices/ilos/ilo7/ilo7_113/ilo7_hpe_resourcedefns113/#sntpconfigured)
  -The `Read only` is modified to `True`.
- `EthernetInterface.v1_4_1.EthernetInterface`: Added **Oem.Hpe.Team**
  [property](/docs/redfishservices/ilos/ilo7/ilo7_113/ilo7_network_resourcedefns113/#oem.hpe.team)-
  For system NICs (embedded and stand-up). This represents the name of the configured link when a
  port is set up for NIC teaming.
- `HpeiLOLicense.v2_5_0.HpeiLOLicense`: Added the
  [SubscriptionLicense](/docs/redfishservices/ilos/ilo7/ilo7_113/ilo7_hpe_resourcedefns113/#subscriptionlicense)
  object.
- `Manager.v1_19_1.Manager`:
  Added **Oem.Hpe.iLOAsicId**
  [property](/docs/redfishservices/ilos/ilo7/ilo7_113/ilo7_manager_resourcedefns113/#oem.hpe.iloasicid)-
  Asic id of the iLO.

## iLO 7 v1.11.00

HPE iLO 7 version 1.11.00 is the first firmware version implemented in this generation of iLO.
Refer to the
[Adapting from iLO 6](ilo7_adaptation)
documentation section for a detailed list of differences with HPE iLO 6.
