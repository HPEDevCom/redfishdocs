---
excludeFromSearch: true
seo:
  title: Hpe resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Hpe resource definitions of iLO 5 v2.81

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## HpeAutomaticCertEnrollment

`@odata.type: "#HpeAutomaticCertEnrollment.v1_0_0.HpeAutomaticCertEnrollment"`

The HpeAutomaticCertEnrollment resource describes the properties of automatic Certificate Enrollment feature support.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice/automaticcertificateenrollment`|GET POST PATCH |

### AutomaticCertificateEnrollmentSettings

**AutomaticCertificateEnrollmentSettings.CACertificateName**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|This is the name of imported CA(Certificate Authority) Certificate which is used to sign the SSL certificate.|
|Type|string|
|Read Only|True|

**AutomaticCertificateEnrollmentSettings.CertificateEnrollmentStatus**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|Enrollment Status of SSL certificate|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`InProgress`|Enrollment request is in progress.|
|`Success`|Enrollment has completed successfully.|
|`Failed`|Enrollment request has failed.|
|`Disabled`||
|`Unknown`|Enrollment request status is Unknown.|

**AutomaticCertificateEnrollmentSettings.ChallengePassword**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|Challenge Password required to complete certificate Enrollment.|
|Type|string or null|
|Read Only|False|

**AutomaticCertificateEnrollmentSettings.ServerUrl**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|Link to Certificate Enrollment Server.|
|Type|string|
|Read Only|False|
|Format|uri-reference|

**AutomaticCertificateEnrollmentSettings.ServiceEnabled**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|This indicates whether this Automatic Certificate Enrollment(ACE) service is enabled.|
|Type|boolean or null|
|Read Only|False|

### HttpsCertCSRSubjectValue

**HttpsCertCSRSubjectValue.City**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The city or locality where the company or organization that owns this iLO subsystem is located.|
|Type|string|
|Read Only|False|

**HttpsCertCSRSubjectValue.CommonName**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The FQDN of this iLO subsystem.|
|Type|string|
|Read Only|False|

**HttpsCertCSRSubjectValue.Country**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The two-character country code where the company or organization that owns this Manager subsystem is located. Eg: US|
|Type|string|
|Read Only|False|

**HttpsCertCSRSubjectValue.IncludeIP**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|Include the IP Addresses in the CSR.|
|Type|boolean|
|Read Only|False|

**HttpsCertCSRSubjectValue.OrgName**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The name of the company or organization that owns this iLO subsystem.|
|Type|string|
|Read Only|False|

**HttpsCertCSRSubjectValue.OrgUnit**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The unit within the company or organization that owns this iLO subsystem.|
|Type|string|
|Read Only|False|

**HttpsCertCSRSubjectValue.State**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The state where the company or organization that owns this iLO subsystem is located.|
|Type|string|
|Read Only|False|

### Actions

**HpeAutomaticCertEnrollment.ImportCACertificate**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)
Imports a CA Certificate.

**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate (Base64 encoded).

## HpeBaseConfigs

`@odata.type: "#HpeBaseConfigs.v2_0_0.HpeBaseConfigs"`

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Baseconfigs`|GET |
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Baseconfigs`|GET |
|`/redfish/v1/systems/{item}/bios/baseconfigs`|GET |
|`/redfish/v1/systems/{item}/bios/boot/baseconfigs`|GET |
|`/redfish/v1/systems/{item}/bios/iscsi/baseconfigs`|GET |
|`/redfish/v1/Systems/{item}/bios/oem/hpe/tlsconfig/baseconfigs`|GET |

### BaseConfigs (array)

Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigs)

`BaseConfigs` is an array containing elements of:

### Capabilities

**Capabilities.BaseConfig**
Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigs)

| | |
|---|---|
|Type|boolean|
|Read Only|True|

**Capabilities.BaseConfigs**
Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigs)

| | |
|---|---|
|Type|boolean|
|Read Only|True|

## HpeBaseNetworkAdapter

`@odata.type: "#HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter"`

The HpeBaseNetworkAdapter resource describes an Ethernet Adapter and its ports.  Clients should use the Redfish NetworkAdapter and NetworkInterface resources when available instead of this.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/basenetworkadapters/{item}`|GET |

### FcPorts (array)

Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

`FcPorts` is an array containing elements of:

**FcPorts[{item}].PortNumber**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|Port Number.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**FcPorts[{item}].WWNN**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|World Wide Node Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**FcPorts[{item}].WWPN**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|World Wide Port Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Firmware

**Firmware.Current**
**Firmware.Current.VersionString**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Location

Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|Location of the device.|
|Type|string|
|Read Only|True|

### PartNumber

Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|The device part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalPorts (array)

Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

`PhysicalPorts` is an array containing elements of:

**PhysicalPorts[{item}].FullDuplex**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|Full-duplex data transmission means that data can be transmitted in both directions on a signal carrier at the same time.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].IPv4Addresses (array)**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

`IPv4Addresses` is an array containing elements of:

**IPv4Addresses[{item}].Address**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|True|

**PhysicalPorts[{item}].IPv6Addresses (array)**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

`IPv6Addresses` is an array containing elements of:

**IPv6Addresses[{item}].Address**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|This is the IPv6 Address.|
|Type|string or null|
|Read Only|True|
|Format|ipv6|

**PhysicalPorts[{item}].LinkStatus**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|The link status of this interface (port).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|`LinkUp`|
|`NoLink`|
|`LinkDown`|
|`Null`|

**PhysicalPorts[{item}].MacAddress**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|The port MAC address.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.BadReceives**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames that were received by the adapter but which had an error.  This counter is the sum of mib items cpqNicIfPhysAdapterAlignmentErrors, cpqNicIfPhysAdapterFCSErrors, cpqNicIfPhysAdapterFrameTooLongs, and cpqNicIfPhysAdapterInternalMacReceiveErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.BadTransmits**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames that were not transmitted by the adapter because of an error.  This counter is the sum of MIB items cpqNicIfPhysAdapterDeferredTransmissions, cpqNicIfPhysAdapterLateCollisions, cpqNicIfPhysAdapterExcessiveCollisions, cpqNicIfPhysAdapterCarrierSenseErrors, and cpqNicIfPhysAdapterInternalMacTransmitErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.GoodReceives**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames successfully received by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.GoodTransmits**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames successfully transmitted by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.StructuredName**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.Team**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|If a port is configured for NIC teaming, the name of the configured link between the physical ports that form a logical network adapter. This value is displayed for system NICs only (embedded and stand-up).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].SpeedMbps**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|An estimate of the interface's current bandwidth in Megabits per second.  For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Status**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)
See the Redfish standard schema and specification for information on common Status object.

**PhysicalPorts[{item}].UEFIDevicePath**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber

Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|The device serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Status

Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)
See the Redfish standard schema and specification for information on common Status object.

### StructuredName

Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePath

Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeBaseNetworkAdapterCollection

`@odata.type: "#HpeBaseNetworkAdapterCollection.HpeBaseNetworkAdapterCollection"`

A Collection of HpeBaseNetworkAdapter resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/basenetworkadapters`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeBaseNetworkAdapter](../ilo5_hpe_resourcedefns281/#hpebasenetworkadapter)|

### Members (array)

Member of HpeBaseNetworkAdapterCollection.HpeBaseNetworkAdapterCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeBaseNetworkAdapterCollection.HpeBaseNetworkAdapterCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeBaseNetworkAdapterCollection.HpeBaseNetworkAdapterCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeBiosMapping

`@odata.type: "#HpeBiosMapping.v2_0_0.HpeBiosMapping"`

This is the schema definition for the BIOS Attributes Mappings resource.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bios/mappings`|GET |

### AttributeRegistry

Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|The Resource ID of the Attribute Registry for the BIOS Attributes resource.|
|Type|string or null|
|Read Only|True|

### BiosPciSettingsMappings (array)

Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

`BiosPciSettingsMappings` is an array containing elements of:

**BiosPciSettingsMappings[{item}].Associations (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

`Associations` is an array containing elements of:

**BiosPciSettingsMappings[{item}].CorrelatableID**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|Contains any CorrelatableIDs that represent this PCI device. The CorrelatableID values can be JSON Pointers or UEFI identifiers.|
|Type|string|
|Read Only|True|

**BiosPciSettingsMappings[{item}].Instance**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|The instance number of the parent PCI device for this association set.|
|Type|integer|
|Read Only|True|

**BiosPciSettingsMappings[{item}].Subinstances (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

`Subinstances` is an array containing elements of:

**Subinstances[{item}].Associations (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

`Associations` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

**Subinstances[{item}].CorrelatableID**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|Contains any CorrelatableIDs that represent this PCI device. The CorrelatableID values can be JSON Pointers or UEFI identifiers.|
|Type|string|
|Read Only|True|

**Subinstances[{item}].Subinstance**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|The sub-instance number of the child PCI device for this association set.|
|Type|integer|
|Read Only|True|

## HpeCertAuth

`@odata.type: "#HpeCertAuth.v1_1_0.HpeCertAuth"`

The HpeCertAuth resource describes the BMC certificate based authentication feature.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`CACertificates`|Collection of [HpeCertificate](../ilo5_hpe_resourcedefns281/#hpecertificatecollection)|
|`Links/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../ilo5_hpe_resourcedefns281/#hpeiloaccountcertificatemapcollection)|

### CACertificates

The value of this property shall be a reference to a Collection of HpeCertificate resources.
CACertificates is a link (`"@odata.id": URI`) to another resource.

### CRLIssuer

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Issuer of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### CRLSerial

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Serial Number of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### CertificateLoginEnabled

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Specifies whether Certificate login is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### LDAPCertificateNameMapping

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|The method used to map a certificate to its associated LDAP user account.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SubjectCN`|The CN portion of the certificate subject will be used as the LDAP username.|
|`SubjectDN`|The fully qualified DN of the certificate subject will be used as the LDAP username.|
|`SANRFC822`|The RFC822 name from the certificate's subjectAlternativeName extension will be used as the LDAP username.|
|`SANUPN`|The UserPrincipalName from the certificate's subjectAlternativeName extension will be used as the LDAP username.|

### OCSPUri

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|URL to use for OCSP certificate checking.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.15|
|Format|uri-reference|

### StrictCACModeEnabled

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Whether or not Strict CAC Mode is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeCertAuth.DeleteCRL**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)
Remove an installed Certificate Revocation List (CRL).

There are no parameters for this action.

**HpeCertAuth.ImportCACertificate**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)
Imports a Trusted Certificate

**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).

**HpeCertAuth.ImportCRL**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)
Imports a Certificate Revocation List (CRL).

**Parameters:**

**ImportUri (string)**

Contains URI of PEM formatted certificate revocation list (CRL) (Base64 encoded).

## HpeCertificate

`@odata.type: "#HpeCertificate.v1_0_0.HpeCertificate"`

The HpeCertificate resource describes an X509 certificate.

This resource type was added in iLO 5 1.20

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/eventservice/cacertificates/{item}`|GET DELETE |
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates/{item}`|GET DELETE |

### Issuer

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Subject

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ValidNotAfter

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### ValidNotBefore

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

## HpeCertificateCollection

`@odata.type: "#HpeCertificateCollection.HpeCertificateCollection"`

A Collection of HpeCertificate resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/eventservice/cacertificates`|GET |
|`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeCertificate](../ilo5_hpe_resourcedefns281/#hpecertificate)|

### Members (array)

Member of HpeCertificateCollection.HpeCertificateCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeCertificateCollection.HpeCertificateCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeCertificateCollection.HpeCertificateCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeComponent

`@odata.type: "#HpeComponent.v1_0_1.HpeComponent"`

The HpeComponent resource describes a software or firmware update component.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/componentrepository/{item}`|GET PATCH DELETE |

### Activates

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Indicates when a component becomes active after being updated.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Immediately`|The update activates immediately.|
|`AfterReboot`|The update activates after a host server reboot.|
|`AfterDeviceReset`|The update activates after a device reset.|
|`AfterHardPowerCycle`|The update activates after a full power supply disconnect or E-Fuse reset.|

### ComponentType

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|HTTP-style content-type of binary|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ComponentUri

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|URI of the component binary.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Configuration

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|string defining customized parameters for some components provided by client at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Created

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|ISO 8601 time string indicating when this component was added to the NAND.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Criticality

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

### Criticality

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

### Criticality

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Optional`|
|`Recommended`|
|`Critical`|

### DeviceClass

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Device type GUID from iLO secure flash header|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ExecutionParameters

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Client supplied execution parameters.  These are supplied at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Filename

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|The unique filename of the component.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Filepath

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Path of file on the USB LUN if you mount the repo as USB.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Locked

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|If true, this component cannot be removed with DELETE because it is referenced by an Install Set|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### SizeBytes

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Size of the component file in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Targets (array)

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

`Targets` is an array containing elements of:

| | |
|---|---|
|Description|Target GUIDs from secure flash header or sidecar file.|
|Type|string|
|Read Only|True|

### UpdatableBy (array)

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

`UpdatableBy` is an array containing elements of:

| | |
|---|---|
|Description|Describes which types of update agents may apply this component.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Uefi`|This component may be scheduled for update by UEFI BIOS.|
|`RuntimeAgent`|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|
|`Bmc`|This component may be scheduled for update by iLO.|

### Version

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Version of the component from secure flash header or sidecar file.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeComponentCollection

`@odata.type: "#HpeComponentCollection.HpeComponentCollection"`

A Collection of HpeComponent resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/componentrepository`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeComponent](../ilo5_hpe_resourcedefns281/#hpecomponent)|

### Members (array)

Member of HpeComponentCollection.HpeComponentCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.ComponentCount

Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The number of files reported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.FreeSizeBytes

Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The available repository space in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TotalSizeBytes

Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The total repository size in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeComponentInstallSet

`@odata.type: "#HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet"`

The HpeComponentInstallSet resource describes an Install Set, an ordered list of installation instructions that may be invoked.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/installsets/{item}`|GET POST PATCH DELETE |

### Created

Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install set creation.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### IsRecovery

Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|If true, this install set is reserved to hold only critical firmware recovery updatable by iLO.  Additionally the 'Administrate Recovery Set' iLO privilege is required to modify or remove this install set.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Modified

Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install modification.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Sequence (array)

Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

`Sequence` is an array containing elements of:

**Sequence[{item}].Command**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|Command to execute.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`ApplyUpdate`|Apply an update using the specified component.|
|`ResetServer`|Reset the server.|
|`ResetBmc`|Reset the BMC.|
|`Wait`|Wait for the WaitTimeSeconds number of seconds.|

**Sequence[{item}].Component**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

**Sequence[{item}].ExecutionTimeoutMinutes**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The number of minutes that this update will likely take to apply.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|

**Sequence[{item}].Filename**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The unique filename of the component.  This correlates to 'Filename' in the HpeComponent.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

**Sequence[{item}].UpdatableBy (array)**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

`UpdatableBy` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Bmc`|This component may be scheduled for update by iLO.|
|`Uefi`|This component may be scheduled for update by UEFI BIOS.|
|`RuntimeAgent`|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|

**Sequence[{item}].WaitTimeSeconds**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The number of seconds to pause if the command is 'Wait'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeComponentInstallSet.Invoke**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallset)

**Parameters:**

**ClearTaskQueue (boolean)**

Previous items in the task queue can be cleared before the Install Set is invoked

## HpeComponentInstallSetCollection

`@odata.type: "#HpeComponentInstallSetCollection.HpeComponentInstallSetCollection"`

A Collection of HpeComponentInstallSet resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/installsets`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeComponentInstallSet](../ilo5_hpe_resourcedefns281/#hpecomponentinstallset)|

### Members (array)

Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeComponentUpdateTask

`@odata.type: "#HpeComponentUpdateTask.v1_2_0.HpeComponentUpdateTask"`

The HpeComponentUpdateTask resource describes an Update Task, an element in the update task queue.  This represents an install instruction.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/updatetaskqueue/{item}`|GET PATCH DELETE |

### Command

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|Command to execute.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`ApplyUpdate`|Apply an update using the specified component.|
|`ResetServer`|Reset the server.|
|`ResetBmc`|Reset the BMC.|
|`Wait`|Wait for the WaitTimeSeconds number of seconds.|

### Component

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Created

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|ISO-time of task creation (by whomever created this thing)|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### ExecutionTimeoutMinutes

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The number of minutes that this update will likely take to apply.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|

### Expire

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string after which we will automatically change state to Expired - null for no expire time|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|
|Format|date-time|

### Filename

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The unique filename of the component.  This correlates to 'Filename' in the HpeComponent.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### MaintenanceWindow

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The maintenance window for this update task.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.30|

### Modified

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|ISO-time of last task queue item update by updater (not client)|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### RecoveryPrivilege

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|This task was created by a user with Recovery Set privilege, and would allow a downgrade if 'DowngradePolicy' is set to 'RecoveryDowngrade'.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

### Result

**Result.MessageArgs (array)**
Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

`MessageArgs` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

**Result.MessageId**
Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The key for this message that can be used to look up the message in a message registry.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### ResultLog

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|base64 encoded entry to capture component log.  Estimated to be generally 1-2KB. written by updater|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### StartAfter

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string of earliest execution - null for no start time specified|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|
|Format|date-time|

### State

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The current state of the update task.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Pending`|The task is pending execution.|
|`InProgress`|The task is executing.|
|`Complete`|The task was completed and the results are available in the Results.|
|`Expired`|The task will not execute because the current time is after the 'Expire' time.|
|`Exception`|The task was unsuccessful because of an exception condition.|
|`Canceled`|The task is no longer scheduled to run.|

### TPMOverride

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|If true then the TPMOverrideFlag is passed in on the associated flash operations.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### UpdatableBy (array)

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

`UpdatableBy` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Bmc`|This component may be scheduled for update by iLO.|
|`Uefi`|This component may be scheduled for update by UEFI BIOS.|
|`RuntimeAgent`|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|

### UpdateRecoverySet

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|Update Recovery Set with this component if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.20|

### WaitTimeSeconds

Member of [HpeComponentUpdateTask.v1\_2\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The number of seconds to pause if the command is 'Wait'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeComponentUpdateTaskQueueCollection

`@odata.type: "#HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection"`

A Collection of HpeComponentUpdateTaskQueue resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/updatetaskqueue`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeComponentUpdateTask](../ilo5_hpe_resourcedefns281/#hpecomponentupdatetask)|

### Members (array)

Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeDirectoryTest

`@odata.type: "#HpeDirectoryTest.v1_0_0.HpeDirectoryTest"`

The HpeDirectoryTest resource describes the BMC directory test.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/directorytest`|GET POST |

### OverallStatus

Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytest)

| | |
|---|---|
|Description|Represents the overall status of directory tests.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`NotRun`|The Overall Directory Test was not run.|
|`InProgress`|The Overall Directory Test is in progress.|
|`Success`|The Overall Directory Test has completed successfully.|
|`Warning`|The Overall Directory Test has completed with warning.|
|`Failed`|The Overall Directory Test has failed.|
|`Error`|The Directory Test has encountered an error condition.|

### TestResults (array)

Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytest)

`TestResults` is an array containing elements of:

**TestResults[{item}].Notes**
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytest)

| | |
|---|---|
|Description|This provides additional details on the directory test.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**TestResults[{item}].Status**
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytest)
See the Redfish standard schema and specification for information on common Status object.

**TestResults[{item}].TestName**
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytest)

| | |
|---|---|
|Description|The name of directory test.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Actions

**HpeDirectoryTest.StartTest**
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytest)
Start the directory test.

**Parameters:**

## HpeESKM

`@odata.type: "#HpeESKM.v2_0_0.HpeESKM"`

The HpeESKM resource describes properties for managing the ESKM feature.  ESKM (Enterprise Security Key Manager) enables connections to an operational key manager,change redundancy settings,view the key manager connection settings,test the connection,and view key management events.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice/eskm`|GET POST PATCH |

### ESKMEvents (array)

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

`ESKMEvents` is an array containing elements of:

**ESKMEvents[{item}].Event**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|ESKM event description.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ESKMEvents[{item}].Timestamp**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Time of ESKM event.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### KeyManagerConfig

**KeyManagerConfig.AccountGroup**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Account group on ESKM.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.AccountName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Account name on ESKM.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.ESKMLocalCACertificateName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|This is the name of Local CA (Certificate Authority) in ESKM that is used to sign the ESKM server certificate. iLO will retrieve this certificate from the ESKM server.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.ImportedCertificateIssuer**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Imported certificate issuer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.ImportedCertificateSubject**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Imported certificate subject.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.LoginName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account login name. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.Password**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account password. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### KeyServerRedundancyReq

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|If true encryption keys will be maintained on both the configured key servers. When this option is disabled, iLO will not verify that encryption keys are copied to both of the configured key servers.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### PrimaryKeyServerAddress

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Primary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### PrimaryKeyServerPort

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Primary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecondaryKeyServerAddress

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Secondary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecondaryKeyServerPort

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Secondary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeESKM.ClearESKMLog**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)
Clears ESKM log.

There are no parameters for this action.

**HpeESKM.TestESKMConnections**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)
Test ESKM connections.

There are no parameters for this action.

## HpeHttpsCert

`@odata.type: "#HpeHttpsCert.v2_0_0.HpeHttpsCert"`

The HpeHttpsCert resource describes an X509 certificate.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice/httpscert`|GET POST DELETE |

### CertificateSigningRequest

Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|GenerateCSR action, wait few minutes (upto 10), perform GET operation, fills CSR. Contains a public and private key pair.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### X509CertificateInformation

**X509CertificateInformation.Issuer**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.SerialNumber**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.Subject**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.ValidNotAfter**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**X509CertificateInformation.ValidNotBefore**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Actions

**HpeHttpsCert.GenerateCSR**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

**Parameters:**

**City (string)**

The city or locality where the company or organization that owns this iLO subsystem is located.

**CommonName (string)**

The FQDN of this iLO subsystem.

**Country (string)**

The two-character country code where the company or organization that owns this Manager subsystem is located. Eg: US

**IncludeIP (boolean)**

Include the IP Addresses in the CSR.

**OrgName (string)**

The name of the company or organization that owns this iLO subsystem.

**OrgUnit (string)**

The unit within the company or organization that owns this iLO subsystem.

**State (string)**

The state where the company or organization that owns this iLO subsystem is located.

**HpeHttpsCert.ImportCertificate**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)
Imports a Trusted Certificate and iLO is reset.

**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate (Base64 encoded).

## HpeInvalidImage

`@odata.type: "#HpeInvalidImage.v1_0_0.HpeInvalidImage"`

The HpeInvalidImage resource describes the properties of an invalid firmware image detected and preserved from a computer system.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/invalidimagerepository/{item}`|GET POST PATCH DELETE |

### Created

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|ISO 8601 time string indicating when this image was added to the NAND.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.30|
|Format|date-time|

### DeviceClass

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|Device type GUID from iLO secure flash header|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.30|

### Filename

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|The unique filename of the image.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.30|

### Filepath

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|Path of file on the USB LUN if the repo is mounted as USB.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.30|

### ImageUri

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|URI of the image binary.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.30|
|Format|uri-reference|

### SizeBytes

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|Size of the image file in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.30|

## HpeInvalidImageCollection

`@odata.type: "#HpeInvalidImageCollection.HpeInvalidImageCollection"`

A Collection of HpeInvalidImage resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/invalidimagerepository`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeInvalidImage](../ilo5_hpe_resourcedefns281/#hpeinvalidimage)|

### Members (array)

Member of HpeInvalidImageCollection.HpeInvalidImageCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeInvalidImageCollection.HpeInvalidImageCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeInvalidImageCollection.HpeInvalidImageCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeKmsConfig

`@odata.type: "#HpeKmsConfig.v1_0_0.HpeKmsConfig"`

The schema definition for Key Management Service configuration.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig`|GET |
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeKmsConfig](../ilo5_hpe_resourcedefns281/#hpekmsconfig)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns281/#hpebaseconfigs)|

### @Redfish.Settings

Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)
See the Redfish standard schema and specification for information on common @Redfish properties.

### DeleteUnusedEncryptionKeys

Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Removes unused encryption keys.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Do not removed unused encryption keys.|
|`Enabled`|Remove unused encryption keys.|

### EncryptableDevices (array)

Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

`EncryptableDevices` is an array containing elements of:

**EncryptableDevices[{item}].DeviceName**
Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Name of the encryptable device.|
|Type|string|
|Read Only|True|

**EncryptableDevices[{item}].EncryptionAction**
Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Devices can take two types of action for encrypting namely, enable and disable. If user would like to modify the Passphrase, then User can opt to change encryption|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Enable`|Enable Encryption for the device.|
|`Disable`|Disable Encryption for the device.|
|`Change`|Modify the Encryption Passphrase.|
|`Unlock`|Unlock the Encrypted device.|
|`Undefined`|Encryption action is Undefined.|

**EncryptableDevices[{item}].EncryptionPhrase**
Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Encryption Passphrase would show up if the device is encrypted and be modified as well.|
|Type|string or null|
|Read Only|False|

**EncryptableDevices[{item}].EncryptionStatus**
Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Encryption status of the device.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`EncryptionStatusUnknown`|Device is encrypted, but Passphrase is unknown.|
|`Encrypted`|Device is Encrypted.|
|`Decrypted`|Device is Unencrypted.|

**EncryptableDevices[{item}].PassphraseType**
Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Passphrase can be either entered manually or auto generated|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Auto`|Passphrase is generated from the system.|
|`Manual`|Passphrase is entered manually.|

### KeyManagementType

Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Key Management Type.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Key Management is Disabled|
|`Local`|Key Management Type is Local|
|`Remote`|Key Management Type is Remote|

### OpalBlockSid

Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|TCG Block SID.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Disable TCG Block SID feature.|
|`Enabled`|Enable TCG Block SID feature.|

## HpeMaintenanceWindow

`@odata.type: "#HpeMaintenanceWindow.v1_0_1.HpeMaintenanceWindow"`

The HpeMaintenanceWindow resource describes the properties for managing the time window for a software or firmware update task or install set.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/maintenancewindows/{item}`|GET POST PATCH DELETE |

### Created

Member of [HpeMaintenanceWindow.v1\_0\_1.HpeMaintenanceWindow](#hpemaintenancewindow)

| | |
|---|---|
|Description|ISO-time of maintenance window creation (by whomever created this thing)|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.30|
|Format|date-time|

### Expire

Member of [HpeMaintenanceWindow.v1\_0\_1.HpeMaintenanceWindow](#hpemaintenancewindow)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string after which we will automatically change state to Expired - null for no expire time|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.30|
|Format|date-time|

### Modified

Member of [HpeMaintenanceWindow.v1\_0\_1.HpeMaintenanceWindow](#hpemaintenancewindow)

| | |
|---|---|
|Description|ISO-time of last maintenance window item update by updater (not client)|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.30|
|Format|date-time|

### StartAfter

Member of [HpeMaintenanceWindow.v1\_0\_1.HpeMaintenanceWindow](#hpemaintenancewindow)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string of earliest execution.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.30|
|Format|date-time|

## HpeMaintenanceWindowCollection

`@odata.type: "#HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection"`

A Collection of HpeMaintenanceWindow resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/maintenancewindows`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeMaintenanceWindow](../ilo5_hpe_resourcedefns281/#hpemaintenancewindow)|

### Members (array)

Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeNetworkPortEVB

`@odata.type: "#HpeNetworkPortEVB.v1_2_0.HpeNetworkPortEVB"`

Note: Deprecated, willl be removed in a future release. The HpeNetworkPortEVB resource describes the Hewlett Packard Enterprise property extensions for Network Ports Edge Virtual Bridging

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkports/{item}/hpeevb`|GET |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkports/{item}/hpeevb`|GET |

### Receiving

**Receiving.CdcpActive**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|True if a currently active IEEE 802.1Qbg CDCP TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChannelActive**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|A currently unexpired HPE Channel Link Control or HPE Channel Description TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChannelDescriptionLocalSequenceNumber**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The link partner's HPE Channel Description sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChannelDescriptionRemoteSequenceNumber**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The last HPE Channel Decsription sequence number sent on this link that was successfully received and processed by the link partner.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChannelDescriptionSubtype**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The header subtype field of the last received HPE Channel Description TLV.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChannelLinkControlLocalSequenceNumber**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The link partner's HPE Channel Link Control sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChannelLinkControlMCEnable**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The Feature Indicators field, Management Controller (MC) Channel (SCID 4094) enabled state in the HPE CLC TLV being received from the link partner on this port.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChannelLinkControlRemoteSequenceNumber**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The last HPE Channel Link control sequence number sent on this link that was successfully received and processed by the link partner.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChannelLinkControlSubtype**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The header subtype field of the last received HPE Channel Link Control TLV.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Role**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The link partner's IEEE 802.1Qbg operating role.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`bridge`|Indicates the link partner is operating as a Bridge.|
|`station`|Indicates the link partner is operating as a Station.|

**Receiving.SChannelAssignments (array)**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

`SChannelAssignments` is an array containing elements of:

**SChannelAssignments[{item}].Scid**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|SCID value for this <SCID,SVID> S-Channel identifier pairreceived from the link partner on this port.|
|Type|integer or null|
|Read Only|True|

**SChannelAssignments[{item}].Svid**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|SVID assignment value for this <SCID,SVID> S-Channel identifier pair received from the link partner on this port. When 0 it indicates an assignment request is in progress.|
|Type|integer or null|
|Read Only|True|

**Receiving.SChannelMaxCount**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|Indicates the number of S-Channels the link partner can support on this physical link.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.SChannelsSupported**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|When true this link supports S-Channels.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.VirtualLinkStatusVector**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|A bit vector indicating S-Channel status received from the link partner, 1=up, 0=down. S-Channel status bits are ordered by SCID from lowest numbered (first) to highest (last).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Transmitting

**Transmitting.ChannelDescriptionData (array)**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

`ChannelDescriptionData` is an array containing elements of:

**ChannelDescriptionData[{item}].Descriptor0BandwidthCirMbps**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The bandwidth Commited Information Rate (CIR) for this S-Channel, in Mbps.|
|Type|integer or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0BandwidthPirMbps**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The bandwidth Peak Information Rate (PIR) for this S-Channel, in Mbps.|
|Type|integer or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0ChannelTerminationType**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|Indicates the termination provided for this S-Channel.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`primary-physical`|This S-Channel is presented to the host OS as a primary PCI physical function.|
|`SR-IOV-virtual`|This S-Channel is presented to the host OS as a PCI SR-IOV virtual function.|
|`secondary-physical`|This S-Channel is presented to the host OS as a secondary PCI physical function, i.e. a PCI physical function behind a bridge on the device.|
|`vSwitch-port`|This S-Channel is mapped to a Virtual Switch port.|
|`NCSI-port`|This S-Channel is mapped to the NCSI internal port for management.|

**ChannelDescriptionData[{item}].Descriptor0EthernetSupport**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|When true, this S-Channel supports Ethernet.|
|Type|boolean or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0FCoESupport**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|When true, this S-Channel supports Fibre Channel over Ethernet (FCoE).|
|Type|boolean or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0PcpSupport**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|Indicates which IEEE 802.1Q Ethernet Priority Code Point (PCP) classes are supported on this S-Channel. When no PCPs are supported, the S-Channel makes no attempt to filter or control traffic class. A string of 1/0 characters indicating 1=enabled, 0=disabled. PCP classes are ordered from highest numbered 7 (first) to lowest 0 (last).|
|Type|string or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0RoCEESupport**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|When true, this S-Channel supports RDMA over Converged Enhanced Ethernet (RoCEE).|
|Type|boolean or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0Scid**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The S-Channel identifier for this Descriptor0 instance.|
|Type|integer or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor0iSCSISupport**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|When true, this S-Channel supports Internet SCSI (iSCSI).|
|Type|boolean or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor1ConnectionID**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|A unique S-Channel identifer in UUID format.|
|Type|string or null|
|Read Only|True|

**ChannelDescriptionData[{item}].Descriptor1Scid**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The S-Channel identifier for this Descriptor1 instance.|
|Type|integer or null|
|Read Only|True|

**Transmitting.ChannelDescriptionLocalSequenceNumber**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|This station's channel discovery local sequence number which will be transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.ChannelDescriptionRemoteSequenceNumber**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The link partner's channel discovery local sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.ChannelDescriptorCount**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The number of channel descriptor pairs being transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.ChannelLinkControlLocalSequenceNumber**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|This station's channel link control local sequence number which will be transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.ChannelLinkControlMCEnable**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The Feature Indicators field, Management Controller (MC) Channel (SCID 4094) enabled state in the HPE CLC TLV being transmitted to the link partner on this port.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.ChannelLinkControlRemoteSequenceNumber**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The link partner's channel link control local sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.Role**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|This port's IEEE 802.1Qbg role being advertised on the link.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`bridge`|Indicates this link is operating locally as a Bridge.|
|`station`|Indicates this link is operating locally as a Station.|

**Transmitting.SChannelAssignments (array)**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

`SChannelAssignments` is an array containing elements of:

**SChannelAssignments[{item}].Scid**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|SCID value for this <SCID,SVID> S-Channel identifier pair being transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|

**SChannelAssignments[{item}].Svid**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|SVID assignment value for this <SCID,SVID> S-Channel identifier pair being transmitted to the link partner on this port. When 0 it indicates an SVID assignment request to the link partner is in progress.|
|Type|integer or null|
|Read Only|True|

**Transmitting.SChannelMaxCount**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|The Channel Capacity value being advertised to the link partner. It indicates the number of S-Channels this station can support on this physical link.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.SChannelsSupported**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|When true, indicates that this physical link has S-Channel capability.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.VirtualLinkStatusVector**
Member of [HpeNetworkPortEVB.v1\_2\_0.HpeNetworkPortEVB](#hpenetworkportevb)

| | |
|---|---|
|Description|A bit vector indicating S-Channel status being transmitted on this link, 1=up, 0=down. S-Channel status bits are ordered by SCID from lowest numbered (first) to highest (last).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

## HpeNetworkPortLLDP

`@odata.type: "#HpeNetworkPortLLDP.v1_2_0.HpeNetworkPortLLDP"`

NOTE: Deprecated, will be removed in a future release, replaced by NetworkPort.Oem.Hpe.LldpData. The HpeNetworkPortLLDP resource describes the Hewlett Packard Enterprise property extensions for Network Ports Link Layer Discovery Protocol

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/networkports/{item}/hpelldp`|GET |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/networkports/{item}/hpelldp`|GET |

### Receiving

**Receiving.ChassisID**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The LLDP chassis ID received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ChassisIDSubtype**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The IEEE 802.1AB-2009 chassis ID subtype received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`IfAlias`|Interface alias, based on the IfAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the IfName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC 3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|

**Receiving.Dcb**
**Receiving.Dcb.ApplicationPriorityReceived**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True when an unexpired Data Center Bridging (DCB) Application Priority Table TLV has been received.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.ApplicationPriorityTable (array)**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

`ApplicationPriorityTable` is an array containing elements of:

**ApplicationPriorityTable[{item}].ApplicationPriority**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|Indicates which priority level is assigned for this application protocol.|
|Type|integer or null|
|Read Only|True|

**ApplicationPriorityTable[{item}].ApplicationProtocol**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|An integer value indicating application protocol identity, of the type described by DCBApplicationSelect.|
|Type|integer or null|
|Read Only|True|

**ApplicationPriorityTable[{item}].ApplicationSelect**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|Indentifies the type of the DCBApplicationProtocol property.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`reserved`|Reserved select value.|
|`default-Ethertype`|Default priority. Use when priority not otherwise specified.|
|`TCP-SCTP`|DCBApplicationProtocol value is a well known port over TCP or SCTP.|
|`UDP-DCCP`|DCBApplicationProtocol value is a well known port over UDP or DCCP.|
|`TCP-SCTP-UDP-DCCP`|DCBApplicationProtocol is a well known port over TCP, SCTP, SCTP, or DCCP.|

**Receiving.Dcb.Ets**
**Receiving.Dcb.Ets.BandwidthAssignmentTable (array)**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

`BandwidthAssignmentTable` is an array containing elements of:

| | |
|---|---|
|Description|One entry in the DCB ETS Traffic Class (TC) Bandwidth Assignment Table.|
|Type|integer or null|
|Read Only|True|

**Receiving.Dcb.Ets.CreditBasedShaper**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True if the link partner supports the Credit-based Shaper (CBS) transmmission selection algortithm.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Ets.MaximumTrafficClassCount**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The maximum number of traffic classes supported by the link partner.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Ets.PriorityAssignmentTable (array)**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

`PriorityAssignmentTable` is an array containing elements of:

| | |
|---|---|
|Description|One entry in the DCB ETS Priority Assignment Table indicating this priority's Traffic Class assignment.|
|Type|integer or null|
|Read Only|True|

**Receiving.Dcb.Ets.TlvReceived**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True when an unexpired DCB Enhanced Transmission Selection (ETS) TLV has been received.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Ets.TrafficSelectionAlgorithmTable (array)**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

`TrafficSelectionAlgorithmTable` is an array containing elements of:

| | |
|---|---|
|Description|An assignment of a Traffic Selection Algorithm (TSA) to a traffic class.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`strict`|Strict priority algorithm.|
|`CBS`|Credit-Based Shaper algorithm.|
|`ETS`|Enhanced Traffic Selection algorithm.|
|`vendor`|Vendor specific algorithm for use with DCB.|

**Receiving.Dcb.Ets.Willing**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True if the link partner is willing to accept ETS configurations.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.LocalEqualRemote**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True when the transmitted and received contents match for both DCB ETS and PFC TLVs.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Pfc**
**Receiving.Dcb.Pfc.EnabledTrafficClasses**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|A bit string indicating which priority levels have PFC enabled, 1=enabled. PFC levels are bit ordered from 7 (first) to 0 (last).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Pfc.MacSecurityBypassCapability**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True when the link partner has the ability to bypass MAC security in order to improve PFC responsiveness.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Pfc.MaximumTrafficClassCount**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|Indicates the maximum number of traffic classes that the link partner can simultaneously support.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Pfc.TlvReceived**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True when an unexpired DCB Priority Flow Control (PFC) TLV has been received.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Pfc.Willing**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True if the LLDP link partner is willing to accept PFC configurations.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.Dcb.Version**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The DCB version supported by the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`unknown`|Unknown|
|`CEE`|Converged Enhanced Ethernet|
|`IEEE`|IEEE 802.1Q|

**Receiving.ManagementAddress**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The management address received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ManagementAddressOID**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|An object identifier for the hardware or protocol entity associated with the management address.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ManagementAddressReceived**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True when a currently unexpired management address TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ManagementAddressType**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The type of management address received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`IPv4`|Type 1 (IP version 4).|
|`IPv6`|Type 2 (IP version 6).|
|`all802`|Type 6 (All 802 media plus Ethernet 'canonical format').|

**Receiving.ManagementCvlanID**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The management CVLAN ID received from the link partner.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ManagementIFNumSubtype**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|Management interface number subtype.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`unknown`|Interface number is not known.|
|`ifIndex`|Interface number is based on the ifIndex MIB object.|
|`sysPortNum`|Interface number is based on the system port numbering convention.|

**Receiving.ManagementIFNumber**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|Management interface number received from the link partner represented as a colon delimited string of hexadecimal octets.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.ManagementVlanReceived**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True when a currently unexpired management address VID TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.NearestBridgeTtlExpired**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|True when the LLDP PDU most recently received from the link partner has expired.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.PortDescription**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The remote link partner's port description.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.PortID**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|A colon delimited string of hexadecimal octets received from the link partner identifying its port.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Receiving.PortIDSubtype**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The port ID subtype enumeration from IEEE 802.1AB-2009 Table 8-3, which indicates the format for the PortID property.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`IfAlias`|Interface alias, based on the IfAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the IfName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC 3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|

**Receiving.SystemDescription**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The system description received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Transmitting

**Transmitting.ChassisID**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The Link Layer Data Protocol (LLDP) chassis ID being transmitted on this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.ChassisIDSubtype**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The IEEE 802.1AB-2009 chassis ID subtype being transmitted on this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`IfAlias`|Interface alias, based on the IfAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the IfName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC 3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|

**Transmitting.ManagementAddresses (array)**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

`ManagementAddresses` is an array containing elements of:

**ManagementAddresses[{item}].ManagementIPAddress**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|A management address.|
|Type|string or null|
|Read Only|True|

**ManagementAddresses[{item}].ManagementIPAddressType**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The IANA type of this management address.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`IPv4`|Type 1 (IP version 4).|
|`IPv6`|Type 2 (IP version 6).|
|`all802`|Type 6 (All 802 media plus Ethernet 'canonical format').|

**Transmitting.ManagementCvlanID**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The management CVLAN ID being transmitted on this link.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.ManagementCvlanIDTransmitted**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|When true, indicates that a management CVLAN ID is being transmitted on this link.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.PortDescription**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|An alphanumeric string describing this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.PortID**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|A colon delimited string of hexadecimal octets identifying this port.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Transmitting.PortIDSubtype**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|The port ID subtype from IEEE 802.1AB-2009 Table 8-3.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`IfAlias`|Interface alias, based on the IfAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in IETF RFC 4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the IfName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC 3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|

**Transmitting.SystemDescription**
Member of [HpeNetworkPortLLDP.v1\_2\_0.HpeNetworkPortLLDP](#hpenetworkportlldp)

| | |
|---|---|
|Description|A textual description of this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

## HpePowerMeter

`@odata.type: "#HpePowerMeter.v2_0_1.HpePowerMeter"`

The HpePowerMeter resource contains the computer system power history logged by the BMC.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/power/fastpowermeter`|GET |
|`/redfish/v1/chassis/{item}/power/powermeter`|GET |

### Average

Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Average power across all samples, over the last 24 hours.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Maximum

Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Maximum power across all samples, taken from the 24 hour history.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Minimum

Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Minimum power across all samples, taken from the 24 hour history.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerDetail (array)

Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

`PowerDetail` is an array containing elements of:

**PowerDetail[{item}].AmbTemp**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Ambient temperature, in degrees Celsius.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Average**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Average power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Cap**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The applicable power cap in Watts at the time of this power sample.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuAvgFreq**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|CPU average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuCapLim**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Measures the effect of the power cap on performance in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuMax**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The percentage of time the CPU spent in its maximum power mode.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuPwrSavLim**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Measures the effect of CPU Power Regulator state switching on performance in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuUtil**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|CPU utilization in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuWatts**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the system CPUs in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].DimmWatts**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the system memory DIMMs in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].GpuWatts**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the GPU(s) in Watts.  This will be 0 if no GPUs are installed or if the drivers are not loaded.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].Minimum**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Minimum power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Peak**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Peak power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].PrMode**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Power Regulator mode, which can be OS Control, Static High, Static Low or Dynamic.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`dyn`|Dynamic Mode - CPU power regulation is managed dynamically by the firmware.|
|`min`|Minimum Mode - CPU power regulation is configured to save as much power as possible at the possible expense of performance.|
|`max`|Maximum Mode - CPU power regulation is configured for maximum performance at the possible expense of power efficiency.|
|`osc`|OS Control Mode - CPU power regulation is managed by the Operating System.|

**PowerDetail[{item}].PunCap**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|If true, CPU performance is being penalized by the current power cap.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Time**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Time at which the power sample detail was captured.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**PowerDetail[{item}].UnachCap**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|If true, the configured power cap could not be achieved due to system power requirements.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Samples

Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Number of samples in the array.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeRemoteSupport

`@odata.type: "#HpeRemoteSupport.v2_6_0.HpeRemoteSupport"`

The HpeRemoteSupport resource describes the properties for management of HPE Embedded Report Support.

This resource type was added in iLO 5 1.20

HpeRemoteSupport enables management of HPE Remote Support configuration on iLO 5.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/remotesupportservice`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`ServiceEventLogs`|Collection of [LogEntry](../ilo5_other_resourcedefns281/#logentrycollection)|

### ConnectModel

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The Remote Support connect model type.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|`DirectConnect`|
|`CentralConnect`|

### DataCollectionFrequencyInDays

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The frequency of data collection in days. This is applicable only when the server is registered using Direct Connect.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### DestinationPort

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The port number of the Insight Remote Support server. This is applicable for Central Connect only. |
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### DestinationURL

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The host name or IP address of the Remote Support server. This is applicable for Central Connect only.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### DirectConnectRegistrationIsCompleted

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Step 2 of Direct Connect Registration completion status.|
|Type|boolean|
|Read Only|True|

### ExternalAgentName

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates the name of external Remote Support agent.|
|Type|string|
|Read Only|True|

### HpePassportPassword

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|HPE Passport Account Password.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### HpePassportUserId

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|HPE Passport Account Id.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LastTransmissionDate

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The last transmission date.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|
|Format|date-time|

### LastTransmissionError

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The last transmission error.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LastTransmissionType

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The last transmission type. |
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|`ActiveHealthSystemData`|
|`L2DataCollection`|
|`Registration`|
|`Deregistration`|
|`ServiceEvent`|
|`NoTransmission`|
|`Null`|

### MaintenanceModeEnabled

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates if the server is in Maintenance Mode or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.30|

### MaintenanceTimeLeftInMinutes

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates the time remaining in minutes for the server to be in the maintenance mode.|
|Type|integer|
|Read Only|True|

### ProxySettings

**ProxySettings.Password**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Password for web proxy server authentication. |
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**ProxySettings.Port**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Port number on which to communicate with the web proxy server. |
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**ProxySettings.Url**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Web proxy server host name or IP address.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|
|Format|url|

**ProxySettings.Username**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Username for web proxy server authentication. |
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### RemoteSupportEnabled

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates if the Remote Support Service is available or not. |
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### ServiceEventLogs

A reference to the collection of service event logs.
ServiceEventLogs is a link (`"@odata.id": URI`) to another resource.

### Actions

**HpeRemoteSupport.ClearServiceEventLog**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)
There are no parameters for this action.

**HpeRemoteSupport.DisableRemoteSupport**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

**Parameters:**

**MessageId (string)**

A unique message identifier in UUID format used to match the test Service Event with this request. It is returned in the submission package SOAP envelope header.

**HpeRemoteSupport.RegisterDeviceToRemoteSupport**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

**Parameters:**

**ConnectionType (string)**

This indicates whether the device will be registered using Direct Connect or Central Connect.

|Value|Description|
|---|---|
|DirectConnect|
|CentralConnect|

**DestinationPort (integer)**

The port number of the Remote Support server. This is applicable for Central Connect only.

**DestinationUrl (string)**

The host name or IP address of the Remote Support server. This is applicable for Central Connect only.

## HpeSNMPAlertDestination

`@odata.type: "#HpeSNMPAlertDestination.v2_0_0.HpeSNMPAlertDestination"`

The HpeSNMPAlertDestination resource describes the properties for SNMP Alert Destinations.  The alert destination configuration up to 8 remote management systems that receive SNMP alerts from the BMC.

This resource type was added in iLO 5 1.20

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/snmpservice/snmpalertdestinations/{item}`|GET PATCH DELETE |

### AlertDestination

Member of [HpeSNMPAlertDestination.v2\_0\_0.HpeSNMPAlertDestination](#hpesnmpalertdestination)

| | |
|---|---|
|Description|The IP address or FQDN of remote management system that receive SNMP alerts.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|

### SNMPAlertProtocol

Member of [HpeSNMPAlertDestination.v2\_0\_0.HpeSNMPAlertDestination](#hpesnmpalertdestination)

| | |
|---|---|
|Description|Indicate the SNMP protocol associated with the AlertDestination.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`SNMPv1Trap`|Indicate SNMPv1 trap is enabled for the destination.|
|`SNMPv3Trap`|Indicate SNMPv3 trap is enabled for the destination. Needs to fill the SecurityName as well.|
|`SNMPv3Inform`|Indicate SNMPv3 Inform is enabled for the destination. Needs to fill the SecurityName as well.|
|`Null`|A value is temporarily unavailable|

### SNMPv3User

SNMPv3 User associated with the destination when SNMP alert protocol is SNMPv3trap.
SNMPv3User is a link (`"@odata.id": URI`) to another resource.

### SecurityName

Member of [HpeSNMPAlertDestination.v2\_0\_0.HpeSNMPAlertDestination](#hpesnmpalertdestination)

| | |
|---|---|
|Description|Provides the SNMPv3 security name associated with SNMPv3trap or SNMPv3Inform set on SNMPAlertProtocol.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### TrapCommunity

Member of [HpeSNMPAlertDestination.v2\_0\_0.HpeSNMPAlertDestination](#hpesnmpalertdestination)

| | |
|---|---|
|Description|The configured SNMPv1 trap community string.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|

## HpeSNMPAlertDestinationCollection

`@odata.type: "#HpeSNMPAlertDestinationCollection.HpeSNMPAlertDestinationCollection"`

A Collection of HpeSNMPAlertDestination resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/snmpservice/snmpalertdestinations`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeSNMPAlertDestination](../ilo5_hpe_resourcedefns281/#hpesnmpalertdestination)|

### Members (array)

Member of HpeSNMPAlertDestinationCollection.HpeSNMPAlertDestinationCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSNMPAlertDestinationCollection.HpeSNMPAlertDestinationCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeSNMPAlertDestinationCollection.HpeSNMPAlertDestinationCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSNMPUser

`@odata.type: "#HpeSNMPUser.v2_1_0.HpeSNMPUser"`

The HpeSNMPUser resource describes the properties for SNMP support.  SNMPv3 supports the User-based Security Model (USM). With this model,security parameters are configured at both the agent level and the manager level. Messages exchanged between the agent and the manager are subject to a data integrity check and data origin authentication. Up to 8 user profiles are supported for setting SNMPv3 USM parameters.

This resource type was added in iLO 5 1.20

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/snmpservice/snmpusers/{item}`|GET PATCH DELETE |

### AuthPassphrase

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|Sets the passphrase to use for sign operations. Enter a value of 8 to 49 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### AuthProtocol

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|Sets the message digest algorithm to use for encoding the authorization passphrase. The message digest is calculated over an appropriate portion of an SNMP message, and is included as part of the message sent to the recipient.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`MD5`|Indicate Message Digest Algorithm.|
|`SHA`|Indicate Secure Hash Algorithm.|
|`SHA256`|Indicate SHA256 Algorithm.|

### PrivacyPassphrase

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|Sets the passphrase to use for encrypt operations. Enter a value of 8 to 49 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### PrivacyProtocol

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|Sets the encryption algorithm to use for encoding the privacy passphrase. A portion of an SNMP message is encrypted before transmission.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`DES`|Indicate Data Encryption Standard Algorithm.|
|`AES`|Indicate Advanced Encryption Standard Algorithm.|

### SecurityName

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|The user profile name. Enter an alphanumeric string of 1 to 32 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### UserEngineID

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|The UserEngineID is combined with the SecurityName to create a SNMPv3 user for each manager. It is only used for creating remote accounts used with INFORM messages. If this property is not set then INFORM message will be sent with default or iLO configured engine ID. This value must be a hexadecimal string with an even number of 10 to 64 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

## HpeSNMPUsersCollection

`@odata.type: "#HpeSNMPUsersCollection.HpeSNMPUsersCollection"`

A Collection of HpeSNMPUsers resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/snmpservice/snmpusers`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeSNMPUser](../ilo5_hpe_resourcedefns281/#hpesnmpuser)|

### Members (array)

Member of HpeSNMPUsersCollection.HpeSNMPUsersCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSNMPUsersCollection.HpeSNMPUsersCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeSNMPUsersCollection.HpeSNMPUsersCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSecureEraseReport

`@odata.type: "#HpeSecureEraseReport.v1_0_0.HpeSecureEraseReport"`

The HpeSecureEraseReport resource describes the secure erase status and the other details of the devices during the secure system erase operation.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries/{item}`|GET |

### DeviceIdentifier

Member of [HpeSecureEraseReport.v1\_0\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|This represents the unique identifier for the device in the system like it's physical location or the exact device path etc.,|
|Type|string or null|
|Read Only|True|

### DeviceType

Member of [HpeSecureEraseReport.v1\_0\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|This indicates the device type being securely erased.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`SmartStorage`|This indicates the device type is Smart Storage|
|`SATADrives`|This indicates the device type is SATA drive|
|`NVMeDrives`|This indicates the device type is NVMe drive|
|`NVDIMM`|This indicates the device type is NVDIMM/Persistent Memory|
|`TPM`|This indicates the device type is TPM (Trusted Platform Module)|
|`UEFIStore`|This indicates the device type is UEFI Store|
|`NAND`|This indicates the device type is Embedded NAND Flash|
|`NVRAM`|This indicates the device type is NVRAM (Battery backed SRAM)|

### EraseEndTime

Member of [HpeSecureEraseReport.v1\_0\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|The date and time of the end of secure erase operation, ISO8601 Redfish-style time|
|Type|string|
|Read Only|True|
|Format|date-time|

### EraseStartTime

Member of [HpeSecureEraseReport.v1\_0\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|The date and time of the start of secure erase operation, ISO8601 Redfish-style time|
|Type|string|
|Read Only|True|
|Format|date-time|

### EraseStatus

Member of [HpeSecureEraseReport.v1\_0\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|Indicates the secure erase status of the individual components|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates Secure System Erase is not started|
|`Initiated`|Indicates Secure System Erase process is started|
|`InProgress`|Indicates Secure System Erase process is under progress|
|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|
|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|
|`Failed`|Indicates Secure System Erase process has failed|

### EraseType

Member of [HpeSecureEraseReport.v1\_0\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|This indicates the NIST SP800-88 Rev.1 (National Institute of Standards and Technology) approved techniques to sanitize a particular media or device.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Purge`|This indicates that Purge technique is used to sanitize the device.|
|`Clear`|This indicates that Clear technique is used to sanitize the device.|

### SerialNumber

Member of [HpeSecureEraseReport.v1\_0\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|This represents the serial number of the device being erased.|
|Type|string or null|
|Read Only|True|

## HpeSecureEraseReportCollection

`@odata.type: "#HpeSecureEraseReportCollection.HpeSecureEraseReportCollection"`

A Collection of HpeSecureEraseReport resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeSecureEraseReport](../ilo5_hpe_resourcedefns281/#hpesecureerasereport)|

### Members (array)

Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSecureEraseReportService

`@odata.type: "#HpeSecureEraseReportService.v1_0_0.HpeSecureEraseReportService"`

The HpeSecureEraseReportService resource describes the properties of the Secure Erase Report feature.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/secureerasereportservice`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](../ilo5_hpe_resourcedefns281/#hpesecureerasereportcollection)|

### EraseInitiatedBy

Member of [HpeSecureEraseReportService.v1\_0\_0.HpeSecureEraseReportService](#hpesecureerasereportservice)

| | |
|---|---|
|Description|This indicates the user name who initiated the secure system erase process.|
|Type|string or null|
|Read Only|True|

### ServerSerialNumber

Member of [HpeSecureEraseReportService.v1\_0\_0.HpeSecureEraseReportService](#hpesecureerasereportservice)

| | |
|---|---|
|Description|This represents the server serial number.|
|Type|string or null|
|Read Only|True|

### Actions

**HpeSecureEraseReportService.DeleteSecureEraseReport**
Member of [HpeSecureEraseReportService.v1\_0\_0.HpeSecureEraseReportService](#hpesecureerasereportservice)
There are no parameters for this action.

## HpeSecurityService

`@odata.type: "#HpeSecurityService.v2_3_1.HpeSecurityService"`

The HpeSecurityService resource describes the properties for management of the security configuration of the BMC.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](../ilo5_hpe_resourcedefns281/#hpeautomaticcertenrollment)|
|`Links/CertAuth`|[HpeCertAuth](../ilo5_hpe_resourcedefns281/#hpecertauth)|
|`Links/ESKM`|[HpeESKM](../ilo5_hpe_resourcedefns281/#hpeeskm)|
|`Links/HttpsCert`|[HpeHttpsCert](../ilo5_hpe_resourcedefns281/#hpehttpscert)|
|`Links/SSO`|[HpeiLOSSO](../ilo5_hpe_resourcedefns281/#hpeilosso)|
|`Links/SecurityDashboard`|[HpeiLOSecurityDashboard](../ilo5_hpe_resourcedefns281/#hpeilosecuritydashboard)|
|`Links/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo5_hpe_resourcedefns281/#hpeilosecurityparamcollection)|

### CurrentCipher

Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Current cipher in use.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

### LoginSecurityBanner

**LoginSecurityBanner.IsEnabled**
Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Login security banner is enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.15|

**LoginSecurityBanner.SecurityMessage**
Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Text message to appear on the iLO login page and iLO SSH pre-authentication banner when login security banner is enabled.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.15|

### PlatformCert

**PlatformCert.Certificates**
This is a reference to a collection of certificates used for PlatformCert by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

### PlatformCertUpdate

**PlatformCertUpdate.Certificates**
This is a reference to a collection of certificates used for PlatformCert Updates by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

### SSHHostKey

Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|SSH Host Key identifying the service.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SecurityState

Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|The operational security level of this Manager.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Wipe`|Manager is currently wiping security related content and returning to a lower security mode.  This state will transition automatically when finished.|
|`Production`|Manager is operating in a normal security mode.  Default state for new systems.|
|`HighSecurity`|Manager is operating in high security mode, requiring extra authentication on host interface(s), and stronger encryption on network interfaces.|
|`FIPS`|Similar to High Security. This mode is intended to meet the FIPS 140-2 level 1 and Common Criteria security requirements. A reset to defaults is required to exit this mode.|
|`CNSA`|Same as FIPS. Additionally meets the criteria for NSA Commercial National Security Algorithm suite.  Must be in FIPS mode to transition to CNSA.|
|`SuiteB`|Same as FIPS. Additionally meets the criteria for NSA SuiteB Top Secret installations.  Must be in FIPS mode to transition to SuiteB.|
|`SynergySecurityMode`|Synergy Security Mode is the mode supported by the Synergy Composer.|

### SecurityState@Redfish.AllowableValues (array)

Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

`SecurityState@Redfish.AllowableValues` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|`Wipe`|
|`Production`|
|`HighSecurity`|
|`FIPS`|
|`CNSA`|
|`SuiteB`|

### SystemIAK

**SystemIAK.Certificates**
This is a reference to a collection of certificates used for System IAK by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

### SystemIDevID

**SystemIDevID.Certificates**
This is a reference to a collection of certificates used for System IDevId by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

### TLSVersion

**TLSVersion.TLS1_0**
Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|This Indicate whether the TLS 1.0 is Enabled or disabled.|
|Type|string or null|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Enabled TLS 1.0.|
|`Disabled`|Disabled TLS 1.0.|

**TLSVersion.TLS1_1**
Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|This Indicate whether the TLS 1.1 is Enabled or disabled.|
|Type|string or null|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Enabled TLS 1.1.|
|`Disabled`|Disabled TLS 1.1.|

**TLSVersion.TLS1_2**
Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|This Indicate whether the TLS 1.2 is Enabled or disabled.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Enabled TLS 1.2.|
|`Disabled`|Disabled TLS 1.2.|

**TLSVersion.TLS1_3**
Member of [HpeSecurityService.v2\_3\_1.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|This Indicate whether the TLS 1.3 is Enabled or disabled.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Enabled TLS 1.3.|
|`Disabled`|Disabled TLS 1.3.|

### iLOIDevID

**iLOIDevID.Certificates**
This is a reference to a collection of certificates used for iLO IDevId by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

### iLOLDevID

**iLOLDevID.Certificates**
This is a reference to a collection of certificates used for iLO LDevId by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

## HpeServerAccHddService

`@odata.type: "#HpeServerAccHddService.v1_0_0.HpeServerAccHddService"`

The HpeServerAccHddService resource describes the properties for management of shared power in an enclosure.

This resource type was added in iLO 5 1.20 and is available on **HPE ProLiant Apollo XL** systems.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/acchddservice`|GET |

### BackplaneInfo

**BackplaneInfo.EndBay**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents a ending number of the bay.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**BackplaneInfo.FirmwareRevision**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Indicates the firmware revision in ASCII value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

**BackplaneInfo.HostPortsInfo (array)**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

`HostPortsInfo` is an array containing elements of:

**HostPortsInfo[{item}].NodeNumber**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents the node number of compute node attached to host port x in SEP.|
|Type|integer|
|Read Only|True|

**HostPortsInfo[{item}].PortNumber**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents the number of physical host ports in SEP.|
|Type|integer|
|Read Only|True|

**HostPortsInfo[{item}].SlotNumber**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents the slot number of SAS attached to host port x in SEP.|
|Type|integer|
|Read Only|True|

**BackplaneInfo.SEPID**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Indicates the storage enclosure processor ID.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**BackplaneInfo.SEPNodeId**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|The node ID represent the node ID where the storage enclosure processor is residing.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**BackplaneInfo.StartBay**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents a starting number of the bay.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**BackplaneInfo.TotalBays**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Total bay count represents the number of bays attached to the SEP.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**BackplaneInfo.TypeID**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Indicates the Backplane type ID for the identifier for backplane type.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**BackplaneInfo.WWID**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents a unique world wide ID defining a SEP.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

## HpeServerAccHddZone

`@odata.type: "#HpeServerAccHddZone.v1_0_0.HpeServerAccHddZone"`

The HpeServerAccHddZone resource describes the properties for management of shared hard drives in an enclosure.

This resource type was added in iLO 5 1.20 and is available on **HPE ProLiant Apollo XL** systems.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/acchddservice/zone`|GET POST |

### BackupZoneConfigurationInBmc

**BackupZoneConfigurationInBmc.HostPort (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`HostPort` is an array containing elements of:

**HostPort[{item}].BayNumber (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`BayNumber` is an array containing elements of:

| | |
|---|---|
|Type|integer|
|Read Only|True|

**HostPort[{item}].PortNumber**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|Represents the number of physical host ports in SEP, null represents unassigned bay group.|
|Type|integer or null|
|Read Only|True|

### CurrentZoneConfiguration

**CurrentZoneConfiguration.HostPort (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`HostPort` is an array containing elements of:

**HostPort[{item}].BayNumber (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`BayNumber` is an array containing elements of:

| | |
|---|---|
|Type|integer|
|Read Only|True|

**HostPort[{item}].PortNumber**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|Represents the number of physical host ports in SEP, null represents unassigned bay group.|
|Type|integer or null|
|Read Only|True|

### PendingZoneConfiguration

**PendingZoneConfiguration.HostPort (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`HostPort` is an array containing elements of:

**HostPort[{item}].BayNumber (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`BayNumber` is an array containing elements of:

| | |
|---|---|
|Type|integer|
|Read Only|True|

**HostPort[{item}].PortNumber**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|Represents the number of physical host ports in SEP, null represents unassigned bay group.|
|Type|integer or null|
|Read Only|True|

### SEPNodeId

Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|The node ID represent the node ID where the storage enclosure processor is residing.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### TypeID

Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|Indicates the Backplane type ID for the identifier for backplane type.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### Actions

**HpeServerAccHddZone.BackupConfigurationToBmc**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)
Backup Apollo Chassis Controller Hdd zone configuration to BMC.

There are no parameters for this action.

**HpeServerAccHddZone.ConfigureZone**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)
Execute Apollo Chassis Controller Hdd zone configuration.

**Parameters:**

**HostPort (array)**

**HpeServerAccHddZone.LoadDefault**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)
Load Apollo Chassis Controller default Hdd zone configuration.

There are no parameters for this action.

## HpeServerAccPowerCalibration

`@odata.type: "#HpeServerAccPowerCalibration.v1_0_0.HpeServerAccPowerCalibration"`

The HpeServerAccPowerCalibration resource describes the properties for management of shared power in an enclosure.

This resource type was added in iLO 5 1.20 and is available on **HPE ProLiant Apollo XL** systems.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/power/accpowerservice/calibration`|GET POST |

### CalibrationData

**CalibrationData.EndTime**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The calibration end time stamp.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.StartTime**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The calibration start time stamp.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.State**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|Specifies whether the calibration is valid or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower**
**CalibrationData.ThrottlePeakPower.Percent_000**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 0 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_005**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 5 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_010**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 10 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_015**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 15 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_020**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 20 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_025**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 25 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_030**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 30 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_035**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 35 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_040**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 40 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_045**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 45 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_050**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 50 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_055**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 55 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_060**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 60 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_065**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 65 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_070**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 70 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_075**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 75 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_080**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 80 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_085**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 85 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_090**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 90 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_095**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 95 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ThrottlePeakPower.Percent_100**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 100 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**CalibrationData.ZoneNumber**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The zone number either on the entire chassis or specific zone. 0 for entire chassis, other number is for specific zone.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### CalibrationInProgress

Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The current state of the chassis power zone calibration task.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### Actions

**HpeServerAccPowerCalibration.Calibrate**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)
Execute the Apollo Chassis Controller power calibration configuration.

**Parameters:**

**ActionType (string)**

|Value|Description|
|---|---|
|Start|
|Stop|

**AllZone (boolean)**

**EEPROMSaveEnabled (boolean)**

**Seconds (integer)**

**ZoneNumber (integer)**

## HpeServerAccPowerLimit

`@odata.type: "#HpeServerAccPowerLimit.v1_0_0.HpeServerAccPowerLimit"`

The HpeServerAccPowerLimit resource describes the properties for management of shared power in an enclosure.

This resource type was added in iLO 5 1.20 and is available on **HPE ProLiant Apollo XL** systems.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/power/accpowerservice/powerlimit`|GET POST |

### ActualPowerLimits (array)

Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

`ActualPowerLimits` is an array containing elements of:

**ActualPowerLimits[{item}].PowerLimitInWatts**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The actual power limit (in watts) for the zone, it will be set to null when power limit disabled.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**ActualPowerLimits[{item}].ZoneNumber**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The zone number either on the entire chassis or specific zone. 0 for entire chassis, other number is for specific zone.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### PowerLimitRanges (array)

Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

`PowerLimitRanges` is an array containing elements of:

**PowerLimitRanges[{item}].MaximumPowerLimit**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The Maximum power limit (in watts) for the zone.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**PowerLimitRanges[{item}].MinimumPowerLimit**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The Minimum power limit (in watts) for the zone.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**PowerLimitRanges[{item}].ZoneNumber**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The zone number either on the entire chassis or specific zone. 0 for entire chassis, other number is for specific zone.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### PowerLimits (array)

Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

`PowerLimits` is an array containing elements of:

**PowerLimits[{item}].PowerLimitInWatts**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The target power limit (in watts) for the zone, it will be set to null when power limit disabled.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**PowerLimits[{item}].ZoneNumber**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The zone number either on the entire chassis or specific zone. 0 for entire chassis, other number is for specific zone.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### Actions

**HpeServerAccPowerLimit.ConfigurePowerLimit**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)
Deploy the Apollo Chassis Controller power limit configuration.

**Parameters:**

**PowerLimits (array)**

## HpeServerAccPowerNodesInfo

`@odata.type: "#HpeServerAccPowerNodesInfo.v1_0_0.HpeServerAccPowerNodesInfo"`

The HpeServerAccPowerNodesInfo resource describes the properties for management of shared power in an enclosure.

This resource type was added in iLO 5 1.20 and is available on **HPE ProLiant Apollo XL** systems.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/power/accpowerservice/nodesinfo`|GET |

### MaxSupportedNodes

Member of [HpeServerAccPowerNodesInfo.v1\_0\_0.HpeServerAccPowerNodesInfo](#hpeserveraccpowernodesinfo)

| | |
|---|---|
|Description|Total Nodes supported in Chassis.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### NodeInfoList (array)

Member of [HpeServerAccPowerNodesInfo.v1\_0\_0.HpeServerAccPowerNodesInfo](#hpeserveraccpowernodesinfo)

`NodeInfoList` is an array containing elements of:

**NodeInfoList[{item}].NodeNumber**
Member of [HpeServerAccPowerNodesInfo.v1\_0\_0.HpeServerAccPowerNodesInfo](#hpeserveraccpowernodesinfo)

| | |
|---|---|
|Description|The physical node number in chassis.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**NodeInfoList[{item}].Throttle**
Member of [HpeServerAccPowerNodesInfo.v1\_0\_0.HpeServerAccPowerNodesInfo](#hpeserveraccpowernodesinfo)

| | |
|---|---|
|Description|It indicates the current throttle on the node. (PWM %)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

**NodeInfoList[{item}].WarningStatus**
Member of [HpeServerAccPowerNodesInfo.v1\_0\_0.HpeServerAccPowerNodesInfo](#hpeserveraccpowernodesinfo)

| | |
|---|---|
|Description|Specifies whether the node is in warning status or not. WarningStatus indicates a node is over loading and chassis manager force it throttle at 50% for 5 mins|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

## HpeServerAccPowerService

`@odata.type: "#HpeServerAccPowerService.v1_0_0.HpeServerAccPowerService"`

The HpeServerAccPowerService resource describes the properties for management of shared power in an enclosure.

This resource type was added in iLO 5 1.20 and is available on **HPE ProLiant Apollo XL** systems.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/power/accpowerservice`|GET PATCH |

### EEPROMSaveEnabled

Member of [HpeServerAccPowerService.v1\_0\_0.HpeServerAccPowerService](#hpeserveraccpowerservice)

| | |
|---|---|
|Description|Determines whether the EEPROM save is enabled or disabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.20|

### PowerRegulationEnabled

Member of [HpeServerAccPowerService.v1\_0\_0.HpeServerAccPowerService](#hpeserveraccpowerservice)

| | |
|---|---|
|Description|Determines whether power regulation is enabled or disabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.20|

### PowerRegulatorMode

Member of [HpeServerAccPowerService.v1\_0\_0.HpeServerAccPowerService](#hpeserveraccpowerservice)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`ACRedundancy`|AC Redundancy with Throttling Mode (Max Performance w/ Redundancy).|
|`UserConfig`|User Configurable Mode.|
|`APM`|APM Power Regulator Mode. Cannot configure by iLO.|
|`PowerFeedProtect`|Power Feed Protection Mode.|

## HpeServerAccPowerZone

`@odata.type: "#HpeServerAccPowerZone.v1_0_0.HpeServerAccPowerZone"`

The HpeServerAccPowerZone resource describes the properties for management of shared power in an enclosure.

This resource type was added in iLO 5 1.20 and is available on **HPE ProLiant Apollo XL** systems.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/power/accpowerservice/zone`|GET POST |

### ZoneConfiguration

**ZoneConfiguration.Zone (array)**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

`Zone` is an array containing elements of:

**Zone[{item}].Node (array)**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

`Node` is an array containing elements of:

**Node[{item}].NodeNumber**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

| | |
|---|---|
|Description|The node number of zone configuration.|
|Type|integer|
|Read Only|True|

**Node[{item}].NodePriority**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

| | |
|---|---|
|Description|The power regulation node priority, the range must between 1 - 5. 5 is default and lowest priority.|
|Type|integer|
|Read Only|True|

**Zone[{item}].ZoneNumber**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

| | |
|---|---|
|Description|The zone number of zone configuration.|
|Type|integer|
|Read Only|True|

**Zone[{item}].ZonePriority**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

| | |
|---|---|
|Description|The power regulation zone priority, the range must between 1 - 5. 5 is default and lowest priority.|
|Type|integer|
|Read Only|True|

### Actions

**HpeServerAccPowerZone.ConfigureZone**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)
Execute the Apollo Chassis Controller power regulation zone configuration.

**Parameters:**

**Zone (array)**

## HpeServerBootSettings

`@odata.type: "#HpeServerBootSettings.v2_0_0.HpeServerBootSettings"`

The schema definition of the server UEFI Boot Order resource.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bios/boot`|GET |
|`/redfish/v1/systems/{item}/bios/boot/settings`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeServerBootSettings](../ilo5_hpe_resourcedefns281/#hpeserverbootsettings)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns281/#hpebaseconfigs)|

### @Redfish.Settings

Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)
See the Redfish standard schema and specification for information on common @Redfish properties.

### BootSources (array)

Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

`BootSources` is an array containing elements of:

**BootSources[{item}].BootString**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|User-readable string that describes the UEFI boot option.|
|Type|string|
|Read Only|True|

**BootSources[{item}].CorrelatableID**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|Contains any CorrelatableIDs that represent this boot option. The correlatableID values can be JSON Pointers or UEFI identifiers.|
|Type|string|
|Read Only|True|

**BootSources[{item}].StructuredBootString**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|Uniquely identifies this boot option within the server.|
|Type|string|
|Read Only|True|

**BootSources[{item}].UEFIDevicePath**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path for this boot option, in UTF-8 format.|
|Type|string|
|Read Only|True|

### DefaultBootOrder (array)

Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

`DefaultBootOrder` is an array containing elements of:

| | |
|---|---|
|Description|Default UEFI boot order device type. This is used to define the order in which UEFI boot order is reset to when a default configuration is requested.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|`UefiShell`|
|`Floppy`|
|`Cd`|
|`Usb`|
|`EmbeddedStorage`|
|`PcieSlotStorage`|
|`EmbeddedFlexLOM`|
|`PcieSlotNic`|

### DesiredBootDevices (array)

Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

`DesiredBootDevices` is an array containing elements of:

**DesiredBootDevices[{item}].CorrelatableID**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path of the desired boot device, in UTF-8 format. For example 'PciRoot(0x0)/Pci(0x2,0x2)/Pci(0x0,0x0)'|
|Type|string|
|Read Only|False|

**DesiredBootDevices[{item}].Lun**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|The Logical Unit Number (LUN) of the desired boot device. This value must be a hexadecimal string with an even number of 2 to 16 characters, excluding the first two characters, 0x (for example, '0x01').|
|Type|string|
|Read Only|False|

**DesiredBootDevices[{item}].Wwn**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|The Fibre Channel World Wide Name (WWN) of the desired boot device. This value must be a hexadecimal string with an even number of 2 to 16 characters, excluding the first two characters, 0x (for example, '0x0001020304050607').|
|Type|string|
|Read Only|False|

**DesiredBootDevices[{item}].iScsiTargetName**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|The iSCSI node target name of the desired boot device. The value must be a string based on IETF RFC 3270, and can be up to 223 characters in length (for example, 'iqn.1991-05.com.microsoft:iscsitarget-iscsidisk-target').|
|Type|string|
|Read Only|False|

### PersistentBootConfigOrder (array)

Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

`PersistentBootConfigOrder` is an array containing elements of:

| | |
|---|---|
|Description|The structured boot string that references a corresponding entry in the BootSources array.|
|Type|string|
|Read Only|True|

## HpeServerConfigLock

`@odata.type: "#HpeServerConfigLock.v1_0_0.HpeServerConfigLock"`

The schema definition for Server Configuration Lock configuration.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock`|GET |
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeServerConfigLock](../ilo5_hpe_resourcedefns281/#hpeserverconfiglock)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns281/#hpebaseconfigs)|

### @Redfish.Settings

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)
See the Redfish standard schema and specification for information on common @Redfish properties.

### NewServerConfigLockPassword

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|The new Server Configuration Lock password.  This field is used to update the current Server Configuration Lock password and force the system configuration digital fingerprint to be recalculated.|
|Type|string or null|
|Read Only|True|

### ServerConfigLockChallenge

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to enable or disable a Server Configuration Lock password challenge on every boot.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Disable Server Configuration Lock password challenge on every boot.|
|`Enabled`|Enable Server Configuration Lock password challenge on every boot.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockDisable

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to disable Server Configuration Lock.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`False`|Don't disable Server Configuration Lock.|
|`True`|Disable Server Configuration Lock.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockExcludeCpus

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to exclude CPU information from the Digital Fingerprint. Note that this setting only takes effect when Server Configuration Lock is enabled/reenabled.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`False`|Do not exclude CPU information from the Digital Fingerprint.|
|`True`|Exclude CPU information from the Digital Fingerprint.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockExcludeDimms

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to exclude DIMM information from the Digital Fingerprint. Note that this setting only takes effect when Server Configuration Lock is enabled/reenabled.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`False`|Do not exclude DIMM information from the Digital Fingerprint.|
|`True`|Exclude DIMM information from the Digital Fingerprint.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockExcludeFwRevs

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to exclude system firmware revisions from the Digital Fingerprint. Note that this setting only takes effect when Server Configuration Lock is enabled/reenabled.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`False`|Do not exclude system firmware revision information from the Digital Fingerprint.|
|`True`|Exclude system firmware revision information from the Digital Fingerprint.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockExcludePciSlots

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to exclude PCIe slot information from the Digital Fingerprint. Note that this setting only takes effect when Server Configuration Lock is enabled/reenabled.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`False`|Do not exclude PCIe slot information from the Digital Fingerprint.|
|`True`|Exclude PCIe slot information from the Digital Fingerprint.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockExcludeSecurity

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to exclude security configuration information from the Digital Fingerprint. Note that this setting only takes effect when Server Configuration Lock is enabled/reenabled.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`False`|Do not exclude security configuration information from the Digital Fingerprint.|
|`True`|Exclude security configuration information from the Digital Fingerprint.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockLogStored

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Has a Server Configuration Lock failure log been stored?|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`True`|A Server Configuration Lock failure has been logged.|
|`False`| A Server Configuration Lock failure has not been logged.|

### ServerConfigLockPassword

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|The Server Configuration Lock password.  If Server Configuration Lock is currently enabled, this field is used to convey the current Server Configuration Lock password and is required to make any Server Configuration Lock configuration changes.  If Server Configuration Lock is currently disabled, this field is used to set the Server Configuration Lock password, and to digitally fingerprint the system to enable Server Configuration Lock.|
|Type|string or null|
|Read Only|True|

### ServerConfigLockState

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Enabled/Disabled state of the Server Configuration Lock Feature.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|The Server Configuration Lock feature is disabled.|
|`Enabled`|The Server Configuration Lock feature is enabled.|

### ServerConfigLockTamperHalt

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to enable or disable the Server Configuration Lock behavior to halt on a configuration change detection.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Disable Server Configuration Lock behavior to halt on configuration changes.|
|`Enabled`|Enable Server Configuration Lock behavior to halt on configuration changes.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockTransport

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to enable or disable Server Configuration Lock "first-boot" behaviors.  This option is expected to be enabled just prior to shipping the server.  When the server arrives at its destination and is first powered on, Server Configuration Lock will require the Server Configuration Lock password in order to boot.  Server Configuration Lock will also indicate if someone attempted to change the system configuration during the shipment process.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Disable Server Configuration Lock "first-boot" behaviors.|
|`Enabled`|Enable Server Configuration Lock "first-boot" behaviors.|
|`Null`|A value is temporarily unavailable|

### ServerConfigLockTransportAudit

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to enable or disable out-of-band acknowledge of Server Configuration Lock "first-boot" behaviors (see ServerConfigLockTransport).|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Disable Server Configuration Lock out-of-band acknowledge of "first-boot" audit.|
|`Enabled`|Enable Server Configuration Lock out-of-band acknowledge of "first-boot" audit.|
|`Null`|A value is temporarily unavailable|

## HpeServerDevice

`@odata.type: "#HpeServerDevice.v2_1_0.HpeServerDevice"`

The HpeServerDevice resource describes the properties of FRU devices.

This resource type was added in iLO 5 1.20

HpeServerDevice represents physical server devices including part information.  This is especially useful for system inventory.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/devices/{item}`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`DeviceInstances[]`|[HpeServerPciDevice](../ilo5_hpe_resourcedefns281/#hpeserverpcidevice)|

### DeviceInstances (array)

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

`DeviceInstances` is an array containing elements of:

**DeviceInstances[{item}].@odata.id**
Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### DeviceType

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Device type.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`GPU`|GPU|
|`PLX Controller`|PLX Controller (Bridge)|
|`Expansion Riser`|Expansion Riser|
|`Smart Storage`|Smart Storage|
|`SAS/SATA Storage Controller`|SAS/SATA Storage Controller|
|`IDE Storage controller`||
|`USB Storage Controller`|USB Storage Controller|
|`Storage Controller`|Storage Controller|
|`LOM/NIC`|LOM/NIC|
|`Converged Network Adapter`|Converged Network Adapter|
|`Fibre Channel`|Fibre Channel|
|`Direct Attached NVMe Device`|Direct Attached NVMe Device|
|`Backplane PIC`|Backplane PIC|
|`Smart Storage Battery`|Smart Storage Battery|
|`USB`|Universal Serial Bus|
|`TPM`|Trusted Platform Module|
|`Communication Controller`|Communication Controller|
|`Unknown`|Unknown Device Type|

### FirmwareVersion

**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|

**FirmwareVersion.FirmwareVersions (array)**
Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

`FirmwareVersions` is an array containing elements of:

**FirmwareVersions[{item}].ComponentName**
Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Name of GPU cores|
|Type|string or null|
|Read Only|True|

**FirmwareVersions[{item}].VersionString**
Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Version String of GPU cores|
|Type|string or null|
|Read Only|True|

### Location

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Location of the device.|
|Type|string or null|
|Read Only|True|

### MCTPProtocolDisabled

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Set to true to disable MCTP on this slot. Once disabled, can be enabled only through MCTP factory reset.|
|Type|boolean|
|Read Only|False|

### Manufacturer

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Device manufacturer.|
|Type|string or null|
|Read Only|True|

### PartNumber

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Board part Number which is HPE PCA Assembly Number.|
|Type|string or null|
|Read Only|True|

### ProductPartNumber

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Product Part Number.|
|Type|string or null|
|Read Only|True|

### ProductVersion

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Product Version.|
|Type|string or null|
|Read Only|True|

### SerialNumber

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Product Serial Number.|
|Type|string or null|
|Read Only|True|

### Status

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)
See the Redfish standard schema and specification for information on common Status object.

## HpeServerDeviceCollection

`@odata.type: "#HpeServerDeviceCollection.HpeServerDeviceCollection"`

A Collection of HpeServerDevice resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/devices`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeServerDevice](../ilo5_hpe_resourcedefns281/#hpeserverdevice)|

### Members (array)

Member of HpeServerDeviceCollection.HpeServerDeviceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeServerDeviceCollection.HpeServerDeviceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeServerDeviceCollection.HpeServerDeviceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeServerPCISlot

`@odata.type: "#HpeServerPCISlot.v2_1_1.HpeServerPCISlot"`

The HpeServerPCISlot resource describes the properties of PCI slots.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/pcislots/{item}`|GET |

### BusNumber

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot bus number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### Characteristics

**Characteristics.Provides3_3Volts**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Provides 3.3 volts.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.Provides5Volts**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Provides 5.0 volts.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SlotIsShared**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|The slot shares its opening with another slot.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsCardBus**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Card Bus.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsHotPlugDevices**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Slot supports hot-plug devices.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsModemRingResume**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Modem Ring Resume.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsPCCard16**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports PC Card-16.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsPowerManagementEventSignal**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot supports Power Management Event signal.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsSMBusSignal**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot supports SMBUS signal.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsZoomVideo**
Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Zoom Video.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### DeviceNumber

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot device number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### FunctionNumber

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot function number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### Length

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot length|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Short`|
|`Long`|
|`Other`|

### LinkLanes

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Bandwidth capacity of the slot, measured by the number of PCI Express Lanes present. Also known as the slot width.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`8 bit`|
|`16 bit`|
|`32 bit`|
|`64 bit`|
|`128 bit`|
|`x1`|
|`x2`|
|`x4`|
|`x8`|
|`x16`|
|`x32`|
|`Other`|

### Status

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)
See the Redfish standard schema and specification for information on common Status object.

### SupportsHotPlug

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Specifies whether the slot supports hot-plug devices.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Technology

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI technology|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Proprietary`|
|`OCP NIC 3.0`|
|`PCIExpressGen5`|
|`PCIExpressGen4`|
|`PCIExpressGen3`|
|`PCIExpressGen2`|
|`PCIExpress`|

### UEFIDevicePath

Member of [HpeServerPCISlot.v2\_1\_1.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeServerPCISlotCollection

`@odata.type: "#HpeServerPCISlotCollection.HpeServerPCISlotCollection"`

A Collection of HpeServerPCISlot resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/pcislots`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeServerPCISlot](../ilo5_hpe_resourcedefns281/#hpeserverpcislot)|

### Members (array)

Member of HpeServerPCISlotCollection.HpeServerPCISlotCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeServerPCISlotCollection.HpeServerPCISlotCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeServerPCISlotCollection.HpeServerPCISlotCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeServerPciDevice

`@odata.type: "#HpeServerPciDevice.v2_0_0.HpeServerPciDevice"`

The HpeServerPciDevice resource describes the properties of PCI devices.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/pcidevices/{item}`|GET |

### BayNumber

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Bay number value.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Bifurcated

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Indicates if the PCIe device support bifurcation.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`BifurcationNotSupported`|This device does not support Bifurcation.|
|`BifurcationSupportedPrimaryDevice`|This device does support Bifurcation.|
|`BifurcationSupportedSecondaryDevice`|This is second bifurcated device.|

### BifurcatedSecondaryDeviceLink

The link to the next bifurcated devices.
BifurcatedSecondaryDeviceLink is a link (`"@odata.id": URI`) to another resource.

### BusNumber

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device bus number value.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ClassCode

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI class code of the endpoint.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceID

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device ID of the device.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceInstance

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device instance value.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceLocation

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device location.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceNumber

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device number value.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceSubInstance

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device sub-instance value.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceType

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Device type value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Flexible LOM`|Flexible LAN-On-Motherboard|
|`Embedded LOM`|Embedded LAN-On-Motherboard|
|`NIC`|Network Interface Controller|
|`HDD Not attached to a SA Controller`|Hard Disk Drive|
|`HDD Attached to a SA Controller`|Hard Disk Drive attached to an array controller|
|`Other PCI Device`|Other PCI Device|
|`Unknown`|Unknown PCI Device|
|`Other`|Other PCI Device|
|`Video`|Video Controller|
|`SCSI Controller`|SCSI Controller|
|`Ethernet`|Ethernet Controller|
|`Token Ring`|Token Ring Controller|
|`Sound`|Sound Controller|
|`PATA Controller`|Parallel ATA Controller|
|`SATA Controller`|Serial ATA Controller|
|`SAS Controller`|Serial Attached SCSI Controller|
|`Storage Controller`|Storage Controller (not Smart Array)|
|`Storage Array Controller`|Smart Array Storage Controller|
|`USB Hard Disk Drive`|USB Hard Disk Drive|
|`Firmware Volume`|Firmware Volume|
|`UEFI Shell`|UEFI Shell|
|`Generic UEFI USB Boot Entry`|Generic UEFI USB Boot Entry|
|`Dynamic Storage Array Controller`|Dynamic Smart Array Controller|
|`File`|File|
|`NVMe Hard Drive`|NVMe Hard Drive|
|`NVDIMM`|NVDIMM|

### EnclosureNumber

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Enclosure number value.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### FunctionNumber

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device function number value.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationString

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Text representation of the UEFI device location, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SegmentNumber

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI segment group number value.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### StructuredName

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SubclassCode

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI sub class code of the endpoint.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SubsystemDeviceID

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI subsystem device ID of the device.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SubsystemVendorID

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI subsystem vendor ID of the device.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePath

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path, in UTF-8 format.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### VendorID

Member of [HpeServerPciDevice.v2\_0\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI vendor ID of the device.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeServerPciDeviceCollection

`@odata.type: "#HpeServerPciDeviceCollection.HpeServerPciDeviceCollection"`

A Collection of HpeServerPciDevice resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/pcidevices`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeServerPciDevice](../ilo5_hpe_resourcedefns281/#hpeserverpcidevice)|

### Members (array)

Member of HpeServerPciDeviceCollection.HpeServerPciDeviceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeServerPciDeviceCollection.HpeServerPciDeviceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeServerPciDeviceCollection.HpeServerPciDeviceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSmartStorage

`@odata.type: "#HpeSmartStorage.v2_0_0.HpeSmartStorage"`

The HpeSmartStorage resource describes the properties of the HPE Smart Storage controller,drives,and volumes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/ArrayControllers`|Collection of [HpeSmartStorageArrayController](../ilo5_hpe_resourcedefns281/#hpesmartstoragearraycontrollercollection)|
|`Links/HostBusAdapters`|Collection of [HpeSmartStorageHostBusAdapter](../ilo5_hpe_resourcedefns281/#hpesmartstoragehostbusadaptercollection)|

### Status

Member of [HpeSmartStorage.v2\_0\_0.HpeSmartStorage](#hpesmartstorage)
See the Redfish standard schema and specification for information on common Status object.

## HpeSmartStorageArrayController

`@odata.type: "#HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController"`

The HpeSmartStorageArrayController resource describes the properties of the HPE Smart Storage controller,drives,and volumes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/LogicalDrives`|Collection of [HpeSmartStorageLogicalDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragelogicaldrivecollection)|
|`Links/PhysicalDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragediskdrivecollection)|
|`Links/StorageEnclosures`|Collection of [HpeSmartStorageStorageEnclosure](../ilo5_hpe_resourcedefns281/#hpesmartstoragestorageenclosurecollection)|
|`Links/UnconfiguredDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragediskdrivecollection)|

### AdapterType

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Type of Smart controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SmartArray`|A controller that supports all SmartArray features and configuration|
|`SmartHBA`|A controller that functions natively as an HBA, but has a ValueRAID mode for basic RAID configuration|
|`DynamicSmartArray`|A controller that allows software RAID configuration|

### ArrayCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of arrays configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### BackupPowerSourceStatus

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current status of the backup power source (battery, capacitor, megacell etc.)|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Present`|The backup power source is present but charging information is unknown|
|`NotPresent`|The backup power source is not present|
|`PresentAndCharged`|The backup power source is present and fully charged|
|`PresentAndCharging`|The backup power source is present and is currently charging|

### BootVolumePrimary

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The primary boot volume of this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### BootVolumeSecondary

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The secondary boot volume of this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheArrayCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of cache arrays configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheLogicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of cache logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheMemorySizeMiB

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The total cache memory size for the controller in MiB|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheModuleSerialNumber

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The serial number of the Cache Module.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### CacheModuleStatus

**CacheModuleStatus.Health**
Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This represents the health state of this resource in the absence of its dependent resources.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**CacheModuleStatus.HealthRollup**
Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This represents the overall health state from the view of this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**CacheModuleStatus.State**
Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This indicates the known state of the resource, such as if it is enabled.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Enabled`|This function or resource has been enabled.|
|`Disabled`|This function or resource has been disabled.|
|`StandbyOffline`|This function or resource is enabled, but awaiting an external action to activate it.|
|`StandbySpare`|This function or resource is part of a redundancy set and is awaiting a failover or other external action to activate it.|
|`InTest`|This function or resource is undergoing testing.|
|`Starting`|This function or resource is starting.|
|`Absent`|This function or resource is not present or not detected.|
|`UnavailableOffline`|This function or resource is present but cannot be used.|
|`Deferring`|The element will not process any commands but will queue new requests.|
|`Quiesced`|The element is enabled but only processes a restricted set of commands.|
|`Updating`|The element is updating and may be unavailable or degraded.|

### CachePhysicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives assigned as cache drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ControllerBoard

**ControllerBoard.Status**
Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)
See the Redfish standard schema and specification for information on common Status object.

### ControllerPartNumber

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Smart Array Controller Part Number|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CurrentOperatingMode

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current operating mode of the controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`RAID`|The controller is currently functioning in RAID mode|
|`HBA`|The controller is currently functioning in HBA mode|
|`Mixed`|The controller is currently functioning in Mixed mode|

### CurrentParallelSurfaceScanCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Number of disks the controller is scanning in parallel|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DataLogicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of data logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DataPhysicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives assigned as data drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DegradedPerformanceOptimization

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to attempt to improve performance on RAID 5/50/6(ADG)/60 logical drives when one or more physical drives in the logical drive are failed|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|The controller will attempt to improve performance by buffering physical drive requests|
|`Disabled`|The controller will not buffer, which may result in reading from the same drive multiple times|

### DriveWriteCache

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables or disables the write cache of the physical drives attached to the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|The write cache of the physical drives attached to the controller are enabled|
|`Disabled`|The write cache of the physical drives attached to the controller are enabled|

### DualModeControllerSupported

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will support BMIC and RDE.|
|Type|boolean|
|Read Only|True|

### ElevatorSort

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to sort requests to a physical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|The controller will sort the requests to minimize the amount of seeking the drive must perform in order to reduce seek times|
|`Disabled`|The controller will perform the requests as they are recieved in order to improve request throughput|

### EncryptionBootPasswordSet

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if there is a boot password set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionCryptoOfficerPasswordSet

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a password has been set for the Encryption Crypto Officer, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionCspTestPassed

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption CSP test passed, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionEnabled

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if encryption is currently enabled for this controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionFwLocked

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller firmware has been locked, preventing firmware updates, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasLockedVolumes

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has one or more volumes that are locked, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasLockedVolumesMissingBootPassword

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if there are locked drives due to a missing boot password, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasSuspendedVolumes

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller password has been temporarily suspended, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionKeySet

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the Master Key has been set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionLocalKeyCacheEnabled

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller caches encryption keys locally when a remote key manager is being used, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionMixedVolumesEnabled

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will allow plaintext and encrypted volumes to exist simultaneously, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionPhysicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of encrypted physical drives attached to the controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionRecoveryParamsSet

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption password recovery question and answer have been set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionSelfTestPassed

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption self test passed, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionStandaloneModeEnabled

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller manages encryption keys locally, false if a remote key manager is being used|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionUserPasswordSet

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a password has been set for the Encryption User, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### ExpandPriority

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The level of priority that transformations have over handling current operating system requests|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`High`|Transformations will complete as fast as possible at the expense of normal I/O|
|`Medium`|Transformations will perform with some impact on normal I/O|
|`Low`|Transformations will perform only when normal I/O is not occurring and may take longer to complete|

### ExternalPortCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of external ports|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### FirmwareVersion

**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### FlexibleLatencySchedulerSetting

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This allows the controller to process certain high-latency requests after a delay that may time out when elevator sorting|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Default`|The controller will rely only on elevator sorting|
|`Low250`|The controller will apply a cutoff value of 250ms when suspending elevator sorting|
|`Middle100`|The controller will apply a cutoff value of 100ms when suspending elevator sorting|
|`Middle50`|The controller will apply a cutoff value of 50ms when suspending elevator sorting|
|`Aggressive30`|The controller will apply a cutoff value of 30ms when suspending elevator sorting|
|`Aggressive10`|The controller will apply a cutoff value of 10ms when suspending elevator sorting|

### HardwareRevision

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The hardware revision of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### InconsistencyRepairPolicy

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to update data on RAID 6(ADG) and 60 volumes based on parity information when an inconsistency is discovered during surface scan|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|The controller will update the data on the drives based on the parity information|
|`Disabled`|The controller will only update the parity information and leave the data untouched|

### InternalPortCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of internal ports|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### IsBootController

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if this controller is the OS boot controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Location

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Location identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationFormat

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Format for Location Identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`PCISlot`|The PCI slot the controller is located at. For embedded controllers, the slot is 0|

### LogicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Manufacturer

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The manufacturer of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### MaxParallelSurfaceScanCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Maximum number of disks that the controller supports scanning in parallel|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Model

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The model number for the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### OperatingModeAfterReboot

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The operating mode the controller will be functioning in (RAID versus HBA) after a reboot|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`RAID`|The controller will be functioning in RAID mode after rebooting|
|`HBA`|The controller will be functioning in HBA mode after rebooting|
|`Mixed`|The controller will be functioning in Mixed mode after rebooting|

### ParallelSurfaceScanSupported

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller supports scanning multiple disk surfaces|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeAfterReboot

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The power mode of the controller after a reboot|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Invalid`|The controller will be operating in an unknown power mode after a reboot|
|`Low`|The controller will be operating in minimum power mode after a reboot|
|`LowAutomated`|The controller will be operating in a balanced mode after a reboot|
|`Performant`|The controller will be operating in maximum performance power mode after a reboot|

### PowerModeConfigured

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current power mode of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Invalid`|The power mode can not be determined|
|`Low`|The controller is currently operating in minimum power mode|
|`LowAutomated`|The controller is currently operating in a balanced power mode|
|`Performant`|The controller is currently operating in maximum performance power mode|

### PowerModeWarningChangedDrive

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller's drive configuration has changed while using configuration based power settings, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeWarningChangedMode

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has a new power mode configured, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeWarningReboot

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a reboot is required to change the active power mode on the controller, false otherwise|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`NotRequired`|No reboot is required|
|`RequiredNoReason`|A reboot is required for the configured power mode on the controller|
|`RequiredPowerSavings`|Rebooting will enable additional power savings on the controller|
|`RequiredPerformance`|Rebooting will enhance the performance of the controller|

### PowerModeWarningTemperature

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has crossed a critical temperature threshold and performance has been reduced to prevent damage to the controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PredictiveSpareRebuild

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables or disables predictive spare rebuild mode|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Spare drives will replace physical drives that are predicted to fail preemptively|
|`Disabled`|Spare drives will replace physical drives only when they fail|

### QueueDepth

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This sets the maximum number of requests the controller will submit to a drive at any given time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`2`|2 requests|
|`4`|4 requests|
|`8`|8 requests|
|`16`|16 requests|
|`32`|32 requests|
|`Automatic`|Automatically determine the best queue depth for the controller|

### ReadCachePercent

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This indicates the percentage of cache used for read cache on the controller, with the rest of the cache being used for write cache|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

### RebuildPriority

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The level of priority that rebuilds have over handling current operating system requests|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`High`|Rebuilds will complete as fast as possible at the expense of normal I/O|
|`Medium`|Rebuilds will perform with some impact on normal I/O|
|`Low`|Rebuilds will perform only when normal I/O is not occurring and may take longer to complete|
|`RapidHigh`|Rebuilds will complete as fast as possible at the expense of normal I/O|
|`RapidMediumHigh`|Rebuilds will perform with an impact on normal I/O|
|`RapidMedium`|Rebuilds will perform with some impact on normal I/O|
|`RapidLow`|Rebuilds will perform only when normal I/O is not occurring and may take longer to complete|

### SerialNumber

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The serial number for this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SoftwareRaidHbaFirmwareRev

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The firmware version of the underlying HBA that is being used by the software RAID stack|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SoftwareRaidHbaModeOptionRomRev

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The option ROM firmware version used to bootstrap the software RAID stack|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SparePhysicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|he number of physical drives assigned as spare drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Status

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)
See the Redfish standard schema and specification for information on common Status object.

### SupportedOperatingModes (array)

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

`SupportedOperatingModes` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`RAID`|The controller supports functioning in RAID mode|
|`HBA`|The controller supports functioning in HBA mode|
|`Mixed`|The controller supports functioning in Mixed mode|

### SupportedPowerModes (array)

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

`SupportedPowerModes` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Low`|The controller is currently operating in minimum power mode|
|`LowAutomated`|The controller is currently operating in a balanced power mode|
|`Performant`|The controller is currently operating in maximum performance power mode|

### SupportedRaidLevels (array)

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

`SupportedRaidLevels` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`0`|There is no fault tolerance used on the logical drive|
|`1`|Two sets of duplicate data is being stored on a pair of drives|
|`1ADM`|Three sets of duplicate data is being stored on a trio of drives|
|`10`|Data is duplicated and striped across pairs of disk drives|
|`10ADM`|Data is duplicated and striped across trios of disk drives|
|`5`|Fault tolerance is achieved by storing parity data across 3 or more disk drives|
|`50`|Fault tolerance is achieved by storing parity data and striping the data across 6 or more disk drives|
|`6`|Fault tolerance is achieved by storing multiple sets parity data across 4 or more disk drives|
|`60`|Fault tolerance is achieved by storing multiple sets parity data and striping the data across 8 or more disk drives|

### SurfaceScanAnalysisPriority

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Priority that the controller takes to find and correct disk surface errors|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Surface scan is disabled and may lead to data loss|
|`High`|Surface scan commands will be sent with the host I/O, resulting in faster scanning, but may inpact host I/O performance|
|`Medium`|Surface scan commands have a medium priority, and will have some impact on host I/O performance|
|`Low`|Surface scan commands have a low priority, and will have little impact on host I/O performance|
|`Idle`|Surface scan commands will ony be issued when no host I/O is present after a delay|

### UnassignedPhysicalDriveCount

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of unassigned physical drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### WriteCacheBypassThresholdKB

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This value sets the write cache bypass threshold, ranging from 16 KB to 1040 KB in multiples of 16 KB, where all writes larger than the specified value in KB units will bypass the write cache and be written directly to the disk for non-parity RAID volumes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

### WriteCacheWithoutBackupPowerEnabled

Member of [HpeSmartStorageArrayController.v2\_2\_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will continue to use write cache even if the backup power source is not available. False, otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

## HpeSmartStorageArrayControllerCollection

`@odata.type: "#HpeSmartStorageArrayControllerCollection.HpeSmartStorageArrayControllerCollection"`

A Collection of HpeSmartStorageArrayController resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeSmartStorageArrayController](../ilo5_hpe_resourcedefns281/#hpesmartstoragearraycontroller)|

### Members (array)

Member of HpeSmartStorageArrayControllerCollection.HpeSmartStorageArrayControllerCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSmartStorageArrayControllerCollection.HpeSmartStorageArrayControllerCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeSmartStorageArrayControllerCollection.HpeSmartStorageArrayControllerCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSmartStorageDiskDrive

`@odata.type: "#HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive"`

The HpeSmartStorageDiskDrive resource describes the properties of the HPE Smart Storage controller,drives,and volumes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/diskdrives/{item}`|GET |
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/unconfigureddrives/{item}`||
|`/redfish/v1/systems/{item}/smartstorage/hostbusadapters/{item}/diskdrives/{item}`||

### BlockSizeBytes

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Block size of the drive in bytes. This is the block size presented by the drive to clients such as the array controller or operating system.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityGB

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total capacity of the drive in GB. This denotes the marketing capacity (base 10)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityLogicalBlocks

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total number of logical blocks in the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityMiB

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total capacity of the drive in MiB|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CarrierApplicationVersion

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Carrier PIC firmware version currently running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CarrierAuthenticationStatus

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Authentication status of the drive carrier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|Carrier authenticated as genuine HPE product|
|`Fail`|Carrier authentication failed|
|`NoCommunication`|Communication could not be established with the carrier|
|`NotApplicable`|Carrier does not support authentication|

### CurrentTemperatureCelsius

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The current temperature of the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DiskDriveStatusReasons (array)

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

`DiskDriveStatusReasons` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|No status reason available|
|`Unknown`|Reason is unknown|
|`CommunicationFailure`|Cannot communicate with drive|
|`Zoned`|Drive is currently zoned, only basic information can be displayed|
|`EraseInProgress`|Drive is currently in process of an erase operation|
|`QueuedForErase`|Drive is currently queued for an erase operation|
|`EraseCompleted`|Drive has completed the erase operation|
|`EraseFailed`|The erase operation has failed for the drive|
|`EraseAborted`|The erase operation was aborted|
|`Failed`|The drive has failed|
|`NonAuthenticDrive`|The drive is not an authentic drive|
|`CarrierCommunicationFailure`|The drive carrier has a communication fault|
|`PredictiveFail`|Drive failure is imminent|
|`NotSupported`|The drive is not supported by the controller|
|`SizeNotValid`|The drive size is invalid. Typically occurs if a drive part of a raid volume is replaced with a smaller sized drive|
|`FailedDueToPredictiveSpareActivation`|The drive was failed due to a predictive spare activation|
|`Rebuilding`|The drive is currently rebuilding|
|`TransientDataDrive`|The drive is part of a volume that is currently undergoing a transformation. After the transformation is complete the drive's state will change|
|`Unrecoverable`|The drive is in an unrecoverable condition|

### DiskDriveUse

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The current use of the physical drive.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Data`|It is a Data drive which is a part of an array.|
|`Spare`|It is a spare drive which is a part of an array.|
|`Raw`|Indicates the drive is available to the OS via HBA mode on the controller.|
|`Unconfigured`|Indicates the drive is not available to the OS as controller is in RAID mode.|
|`Unknown`|The current use of the disk drive is not known.|

### EncryptedDrive

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|True if encryption is currently enabled on this disk drive, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EraseCompletionPercentage

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The percent complete for an erase operation currently occurring on the disk drive or null if not currently erasing a drive.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### ErasePattern

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The pattern used for erasing the disk drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### FirmwareVersion

**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### IndicatorLED

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The state of the indicator LED.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Indicator LED cannot be determined.|
|`Lit`|The Indicator LED is lit.|
|`Blinking`|The Indicator LED is blinking.|
|`Off`|The Indicator LED is off.|

### InterfaceSpeedMbps

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Native interface speed for the device|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### InterfaceType

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The connection interface of the drive. The value NVME has been deprecated.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SAS`|SAS|
|`SATA`|SATA|
|`NVME`|Non-volatile memory (deprecated)|
|`PCIe`|PCIe interface|
|`Unknown`|Information is unavailable|

### LegacyBootPriority

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This indicates that the array controller should provide legacy boot support.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Primary`|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this physical drive. The physical drive will be listed as first in the LUN list returned via SCSI commands|
|`Secondary`|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this physical drive. The physical drive will be listed as second in the LUN list returned via SCSI commands|
|`None`|Legacy boot not supported on this physical drive|

### Location

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The location of the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationFormat

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Format for the location property|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`ControllerPort:Box:Bay`|This format typically used in controller context where the drive would be identified using the controller port, JBOD box number and drive bay|
|`SwitchPort:Box:Bay`|This format typically used in a SAS switch context where the drive would be identified using the switch port, JBOD box number and drive bay|
|`SwitchPort:SwitchBay:Bay`|This format typically used in a SAS switch context where the drive would be identified using the switch port, ICM bay number for the switch and drive bay|

### Manufacturer

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Manufacturer of the disk drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### MaximumTemperatureCelsius

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The maximum recommended temperature for the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### MediaType

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Type of disk|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`HDD`|The drive media type is traditional magnetic platters|
|`SSD`|The drive media type is solid state or flash memory|
|`SMR`|The drive media type is shingled magnetic recording|

### MinimumGoodFirmwareVersion

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The minimum recommended firmware revision for the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Model

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Drive model number|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### NativeBlockSizeBytes

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Native block size of the drive in bytes. This is the underlying sector size used by the physical drive to store data. For example, an advanced format drive that uses 4K sector sizes to store data will return 4K as the NativeBlockSizeBytes but may return 512 for the BlockSizeBytes when running in 512e (emulation) mode for backward compatibility|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PhyCount

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of phys the drive has|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PortCount

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of ports on the drive. Typically 1 (single-domain) or 2 (dual-domain)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerOnHours

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of lifetime hours that the drive has been powered on. The value is null if the disk power on hours cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### RotationalSpeedRpm

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The rotational speed of the drive, only applicable on HDDs|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SSDEnduranceUtilizationPercentage

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This is the percentage of the drive that has been worn out and can no longer be used. When this values reaches 100%, the drive has 0% usage remaining and is completely worn out. The value is null if percent endurance used cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The serial number of the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SpareRebuildMode

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Method to used activate this drive when another drive fails, this is only applicable if the drive is configured as a spare drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Dedicated`|This drive will take over a failed drive temporarily. When the failed drive is replaced, this will return to being a spare. This drive be shared between arrays.|
|`Roaming`|This drive will permanently replace a failed drive. The failed drive will become a spare. This spare drive cannot be shared between arrays.|

### Status

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)
See the Redfish standard schema and specification for information on common Status object.

### TransferSpeedMbps

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Effective transfer speed to the device taking into account hardware acceleration such as edge-buffering|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### UncorrectedReadErrors

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of read errors that have occurred on a drive that could not be recovered by a drive's Error Correction Code (ECC) algorithm or through retries. Over time, a drive may produce these errors, and a problem may exist. The value increases every time the physical drive detects another error. The severity of these errors depends on if the drive is in a fault tolerant mode and the controller can remap data to eliminate problems.  If an increase in this counter is seen, run diagnostics on the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### UncorrectedWriteErrors

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of write errors that have occurred on a drive that could not be recovered through retries. Over time, a drive may produce these errors, and a problem may exist. The value increases every time the physical drive detects another error. If an increase in this counter is seen, run diagnostics on the drive.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### WWID

Member of [HpeSmartStorageDiskDrive.v2\_1\_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Unique identifier for the device|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeSmartStorageDiskDriveCollection

`@odata.type: "#HpeSmartStorageDiskDriveCollection.HpeSmartStorageDiskDriveCollection"`

A Collection of HpeSmartStorageDiskDrive resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/diskdrives`|GET |
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/logicaldrives/{item}/activesparedrives`|GET |
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/logicaldrives/{item}/datadrives`|GET |
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/logicaldrives/{item}/standbysparedrives`|GET |
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/unconfigureddrives`|GET |
|`/redfish/v1/systems/{item}/smartstorage/hostbusadapters/{item}/diskdrives`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragediskdrive)|

### Members (array)

Member of HpeSmartStorageDiskDriveCollection.HpeSmartStorageDiskDriveCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSmartStorageDiskDriveCollection.HpeSmartStorageDiskDriveCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeSmartStorageDiskDriveCollection.HpeSmartStorageDiskDriveCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSmartStorageHostBusAdapter

`@odata.type: "#HpeSmartStorageHostBusAdapter.v2_0_0.HpeSmartStorageHostBusAdapter"`

The HpeSmartStorageHostBusAdapter resource describes the properties of the HPE Smart Storage controller,drives,and volumes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/hostbusadapters/{item}`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/Drives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragediskdrivecollection)|

### FirmwareVersion

**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeSmartStorageHostBusAdapter.v2\_0\_0.HpeSmartStorageHostBusAdapter](#hpesmartstoragehostbusadapter)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### HardwareRevision

Member of [HpeSmartStorageHostBusAdapter.v2\_0\_0.HpeSmartStorageHostBusAdapter](#hpesmartstoragehostbusadapter)

| | |
|---|---|
|Description|The hardware revision of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Location

Member of [HpeSmartStorageHostBusAdapter.v2\_0\_0.HpeSmartStorageHostBusAdapter](#hpesmartstoragehostbusadapter)

| | |
|---|---|
|Description|Location identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationFormat

Member of [HpeSmartStorageHostBusAdapter.v2\_0\_0.HpeSmartStorageHostBusAdapter](#hpesmartstoragehostbusadapter)

| | |
|---|---|
|Description|Format for Location Identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`PCISlot`|The PCI slot the controller is located at. For embedded controllers, the slot is 0|

### Manufacturer

Member of [HpeSmartStorageHostBusAdapter.v2\_0\_0.HpeSmartStorageHostBusAdapter](#hpesmartstoragehostbusadapter)

| | |
|---|---|
|Description|The manufacturer of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Model

Member of [HpeSmartStorageHostBusAdapter.v2\_0\_0.HpeSmartStorageHostBusAdapter](#hpesmartstoragehostbusadapter)

| | |
|---|---|
|Description|The model number for the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber

Member of [HpeSmartStorageHostBusAdapter.v2\_0\_0.HpeSmartStorageHostBusAdapter](#hpesmartstoragehostbusadapter)

| | |
|---|---|
|Description|The serial number for this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Status

Member of [HpeSmartStorageHostBusAdapter.v2\_0\_0.HpeSmartStorageHostBusAdapter](#hpesmartstoragehostbusadapter)
See the Redfish standard schema and specification for information on common Status object.

## HpeSmartStorageHostBusAdapterCollection

`@odata.type: "#HpeSmartStorageHostBusAdapterCollection.HpeSmartStorageHostBusAdapterCollection"`

A Collection of HpeSmartStorageHostBusAdapter resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/hostbusadapters`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeSmartStorageHostBusAdapter](../ilo5_hpe_resourcedefns281/#hpesmartstoragehostbusadapter)|

### Members (array)

Member of HpeSmartStorageHostBusAdapterCollection.HpeSmartStorageHostBusAdapterCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSmartStorageHostBusAdapterCollection.HpeSmartStorageHostBusAdapterCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeSmartStorageHostBusAdapterCollection.HpeSmartStorageHostBusAdapterCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSmartStorageLogicalDrive

`@odata.type: "#HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive"`

The HpeSmartStorageLogicalDrive resource describes the properties of the HPE Smart Storage controller,drives,and volumes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/logicaldrives/{item}`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/DataDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragediskdrivecollection)|
|`Links/ActiveSpareDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragediskdrivecollection)|
|`Links/StandbySpareDrives`|Collection of [HpeSmartStorageDiskDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragediskdrivecollection)|

### AccelerationMethod

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The acceleration method of the logical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|Logical drive acceleration is disabled|
|`ControllerCache`|Reads and writes to the logical drive are being cached by the controller.|
|`IOBypass`|For logical drives on SSDs, read and write information directly from the drive.|
|`SmartCache`|Reads and writes to the logical drive are being cached by a caching logical drive.|

### BlockSizeBytes

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The block size of the disk drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityMiB

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Total usable capacity available on this logical drive in MiB units|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveAccessName

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The access ID of the logical drive given by the OS|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometryCylinders

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of cylinders on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometryHeads

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of heads on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometrySectors

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of sectors on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### InterfaceType

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The connection interface of the logical drive.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SAS`|SAS|
|`SATA`|SATA|
|`Mixed`|Contains both SAS and SATA.|
|`NVMe`|NVMe|
|`Unknown`|Information is unavailable|

### LegacyBootPriority

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Primary`|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this logical drive. The logical drive will be listed as first in the LUN list returned via SCSI commands|
|`Secondary`|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this logical drive. The logical drive will be listed as second in the LUN list returned via SCSI commands|
|`None`|Legacy boot not supported on this logical drive|

### LogicalDriveEncryption

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if encryption is currently enabled on this logical drive, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatile

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if volatile keys are enabled for encryption, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatileBackup

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if volatile keys are backed up to a remote key manager, false if volatile keys are not backed up|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatileStatus

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The status of the encryption volatile keys|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`NoOp`|No operations are pending for the volatile keys|
|`BackupInProgress`|The volatile keys are being backed up to a remote key manager|
|`BackupAndSetInProgress`|The volatile keys are being set and being backed up to a remote key manager|
|`RestoreInProgress`|The volatile keys are being restored from a remote key manager|
|`DeleteInProgress`|The volatile keys are being removed|

### LogicalDriveName

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Label given to the logical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveNumber

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|logical drive number|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveStatusReasons (array)

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

`LogicalDriveStatusReasons` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|The state of the logical drive is unknown|
|`Ok`|The logical drive is in normal operation mode|
|`Failed`|Indicates that more physical drives have failed than the fault tolerance mode of the logical drive can handle without data loss|
|`Unconfigured`|The logical drive is not configured|
|`Recovering`|The logical drive is using Interim Recovery Mode. In Interim Recovery Mode, at least one physical drive has failed, but the logical drive's fault tolerance mode lets the drive continue to operate with no data loss|
|`ReadyForRebuild`|The logical drive is ready for Automatic Data Recovery. A failed physical drive has been replaced, but the logical drive is still operating in Interim Recovery Mode|
|`Rebuilding`|The logical drive is currently doing Automatic Data Recovery, where fault tolerance algorithms restore data to the replacement drive|
|`WrongDrive`|The wrong physical drive was replaced after a failure|
|`BadConnect`|A physical drive is not responding|
|`Overheating`|The drive array enclosure that contains the logical drive is overheating. The drive array is still functional, but should be shutdown|
|`Shutdown`|The drive array enclosure that contains the logical drive has overheated. The logical drive is no longer functional|
|`Expanding`|The logical drive is currently undergoing a transformation (expansion, shrinkage or movement). During transformation, fault tolerance algorithms redistribute logical drive data according to the transformation operation selected|
|`NotAvailable`|The logical drive is currently unavailable. If a logical drive is expanding and the new configuration frees additional disk space, this free space can be configured into another logical volume. If this is done, the new volume will be set to not available|
|`QueuedForExpansion`|The logical drive is ready for transformation (expansion, shrinkage or movement). The logical drive is in the queue for transformation|
|`MultipathAccessDegraded`|Previously all disk drives of this logical drive had more than one I/O path to the controller, but now one or few of them have only one I/O path|
|`Erasing`|The logical drive is currently being erased|
|`PredictiveSpareRebuildReady`|The logical drive is ready to perform a predictive spare rebuild. The logical drive is in the queue for rebuild|
|`RapidParityInitInProgress`|The logical drive is currently undergoing rapid parity initialization (RPI). The logical drive is unavailable to the operating system during RPI and will be made available once RPI has completed|
|`RapidParityInitPending`|The logical drive is currently pending RPI and will be unavailable|
|`NoAccessEncryptedNoControllerKey`|The logical drive is currently encrypted and cannot be accessed because the array controller has not yet received the encryption key nor was it found in the controller's CSP NVRAM|
|`UnencryptedToEncryptedInProgress`| The logical drive is currently being transformed from unencrypted to encrypted and the volume is online. Data will be written unencrypted if the write is directed to an LBA range on th e logical drive that has not yet been migrated|
|`NewKeyRekeyInProgress`|The logical drive is currently encrypted and all data is currently being rekeyed with a new logical drive key using the background capacity expansion transformation task. The logical drive is online|
|`NoAccessEncryptedControllerEncryptionNotEnabled`|The logical drive is currently encrypted and cannot be accessed because the array controller does not have encryption enabled|
|`UnencryptedToEncryptedNotStarted`|The logical drive has received a request to transform from unencrypted to encrypted but this process has not yet started. The unencrypted logical drive is currently online|
|`NewLogDrvKeyRekeyRequestReceived`|The logical drive is encrypted and has received a request to rekey all data with a new logical drive encryption key. The logical drive is online|
|`Unsupproted`|The state of the logical drive is unsupported|
|`Offline`|Logical volume is comprised of  one or more Locked SEDs. Volume is offline|
|`SEDQualinprogress`|Logical volume SED Qualification is in progress|
|`SEDQualFailed`|Logical volume SED Qualification failed|

### LogicalDriveType

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|How the logical drive is being used|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Data`|The drive is being used as a storage drive|
|`Cache`|The drive is being used as a cache drive for a different storage drive|
|`SplitMirrorSetPrimary`|This drive is being used as the primary storage drive of a split mirror set after a Split Mirror Array has been performed|
|`SplitMirrorSetBackup`|This drive is being used as the backup storage drive of a split mirror set after a Split Mirror Array has been performed|
|`SplitMirrorSetBackupOrphan`|This drive was being used as the backup storage drive of a split mirror set that no longer exists|

### MediaType

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Type of the disk this logical drive is associated with.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`HDD`|Spinning disk hard drive.|
|`SSD`|Solid state disk.|
|`SMR`|Shingled Magnetic Recording.|
|`Mixed`|Contains both HDD and SSD.|
|`Unknown`|Information is unavailable|

### ParityInitializationCompletionPercentage

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Parity initialization complete percentage for a parity based logical drive (e.g. RAID 5)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ParityInitializationType

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|When creating a logical drive with a RAID level that requires parity, parity blocks can be initialized with two different methods|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Default`|Parity blocks are initialized in the background and the logical drive is available during this time|
|`Rapid`|Both data and parity blocks are initialized in the foreground and the logical drive will not be available to the operating system until initialization completes|

### PartitionInformation

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|OS partition information for the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Raid

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The current RAID level configured on the logical drive|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`0`|There is no fault tolerance used on this logical drive|
|`1`|Two sets of duplicate data is being stored on a pair of drives|
|`1ADM`|Three sets of duplicate data is being stored on a trio of drives|
|`10`|Data is duplicated and striped across pairs of disk drives|
|`10ADM`|Data is duplicated and striped across trios of disk drives|
|`5`|Fault tolerance is achieved by storing parity data across 3 or more disk drives|
|`50`|Fault tolerance is achieved by storing parity data and striping the data across 6 or more disk drives|
|`6`|Fault tolerance is achieved by storing multiple sets parity data across 4 or more disk drives|
|`60`|Fault tolerance is achieved by storing multiple sets parity data and striping the data across 8 or more disk drives|

### RebuildCompletionPercentage

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The percent complete for a rebuild operation currently occurring on the logical drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SmartCacheState

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The state of the SmartCache cache. This is valid if this drive either is a cache drive, or has a cache drive attached to it|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Good`|The cache is functioning properly|
|`Limited`|The cache is functioning in a degraded mode, and may not be functioning at maximum performance|
|`DDRUnsafe`|The DDR is unsafe for the cache drive|
|`CacheLUNOffline`|The cache drive is offline|
|`PrimaryLUNOffline`|The primary logical drive that is being cached is offline|
|`Destroyed`|The cache is destroyed and not functional|
|`Flushing`|The cache drive is flushing|
|`Configuring`|The caching pair is being configured|
|`PairFailAtPowerup`|The primary and cache drive were unable to be paired at powerup|
|`Unknown`|The state of the cache is unknown|

### Status

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)
See the Redfish standard schema and specification for information on common Status object.

### StripSizeBytes

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The strip size of the logical drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### StripeSizeBytes

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The stripe size of the logical drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### TransformationCompletionPercentage

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The percent complete for any transformations the logical drive may be undergoing such as RAID migration, stripesize migration, capacity expansion etc.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### VolumeUniqueIdentifier

Member of [HpeSmartStorageLogicalDrive.v2\_3\_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|An identifier (typically SCSI Inquiry based such as Inquiry VPD Page 0x83 NAA 64 identifier) used to uniquely identify this volume.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeSmartStorageLogicalDriveCollection

`@odata.type: "#HpeSmartStorageLogicalDriveCollection.HpeSmartStorageLogicalDriveCollection"`

A Collection of HpeSmartStorageLogicalDrive resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/logicaldrives`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeSmartStorageLogicalDrive](../ilo5_hpe_resourcedefns281/#hpesmartstoragelogicaldrive)|

### Members (array)

Member of HpeSmartStorageLogicalDriveCollection.HpeSmartStorageLogicalDriveCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSmartStorageLogicalDriveCollection.HpeSmartStorageLogicalDriveCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeSmartStorageLogicalDriveCollection.HpeSmartStorageLogicalDriveCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSmartStorageStorageEnclosure

`@odata.type: "#HpeSmartStorageStorageEnclosure.v2_0_0.HpeSmartStorageStorageEnclosure"`

The HpeSmartStorageStorageEnclosure resource describes the properties of the HPE Smart Storage controller,drives,and volumes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/storageenclosures/{item}`|GET |

### DoorLockLED

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|The state of the Door Lock LED. When Lit, this indicates that the Enclosure should not be removed since the drives are currently in use.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Door Lock LED cannot be determined.|
|`Lit`|The Door Lock LED is lit.|
|`Off`|The Door Lock LED is off.|

### DriveBayCount

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|Number of drive bays supported within the storage enclosure|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### EnclosureLogicalID

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|Unique ID for the storage enclosure|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### FaultLED

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|The state of the Fault LED.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Fault LED cannot be determined.|
|`Lit`|The Fault LED is lit.|
|`Off`|The Fault LED is off.|

### FirmwareVersion

**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### IndicatorLED

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|The state of the indicator LED.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The state of the Indicator LED cannot be determined.|
|`Lit`|The Indicator LED is lit.|
|`Blinking`|The Indicator LED is blinking.|
|`Off`|The Indicator LED is off.|

### Location

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|Location identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationFormat

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|Format for Location Identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Port:Box`|This format typically used in controller context where the drive would be identified using the controller port and JBOD box number|
|`SwitchPort:Box`|This format typically used in a SAS switch context where the drive would be identified using the switch port and JBOD box number|
|`SwitchPort:SwitchBay`|This format typically used in a SAS switch context where the drive would be identified using the switch port and ICM bay number for the switch|

### Manufacturer

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|The manufacturer of the storage enclosure|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Model

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|The model string for the storage enclosure|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### PartNumber

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|Part number of this storage enclosure|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SKU

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|SKU for the storage enclosure|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|The serial number for this storage enclosure|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Status

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)
See the Redfish standard schema and specification for information on common Status object.

### SubEnclosureLocation

Member of [HpeSmartStorageStorageEnclosure.v2\_0\_0.HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure)

| | |
|---|---|
|Description|Location within the chassis if this storage enclosure is part of a larger chassis hosting multiple storage enclosures|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeSmartStorageStorageEnclosureCollection

`@odata.type: "#HpeSmartStorageStorageEnclosureCollection.HpeSmartStorageStorageEnclosureCollection"`

A Collection of HpeSmartStorageStorageEnclosure resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/storageenclosures`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeSmartStorageStorageEnclosure](../ilo5_hpe_resourcedefns281/#hpesmartstoragestorageenclosure)|

### Members (array)

Member of HpeSmartStorageStorageEnclosureCollection.HpeSmartStorageStorageEnclosureCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSmartStorageStorageEnclosureCollection.HpeSmartStorageStorageEnclosureCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeSmartStorageStorageEnclosureCollection.HpeSmartStorageStorageEnclosureCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeTlsConfig

`@odata.type: "#HpeTlsConfig.v1_0_0.HpeTlsConfig"`

The schema definition for TLS configuration.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig`|GET |
|`/redfish/v1/systems/{item}/bios/oem/hpe/tlsconfig/settings`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeTlsConfig](../ilo5_hpe_resourcedefns281/#hpetlsconfig)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns281/#hpebaseconfigs)|

### @Redfish.Settings

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)
See the Redfish standard schema and specification for information on common @Redfish properties.

### Certificates (array)

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

`Certificates` is an array containing elements of:

**Certificates[{item}].FingerPrint**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The fingerprint of the certificate. It is the sha256 (SHA2) of the Der format of the certificate|
|Type|string|
|Read Only|True|

**Certificates[{item}].Issuer**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The Issuer of the certificate|
|Type|string|
|Read Only|True|

**Certificates[{item}].SerialNumber**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The Serial Number of the certificate.|
|Type|string|
|Read Only|True|

**Certificates[{item}].Subject**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The Subject of the certificate.|
|Type|string|
|Read Only|True|

**Certificates[{item}].ValidNotAfter**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The expiration date of the certificate.|
|Type|string|
|Read Only|True|

**Certificates[{item}].ValidNotBefore**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The date when the certificate becomes valid.|
|Type|string|
|Read Only|True|

### Ciphers

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The encryption used. It can have more than one type of encryption, example: "AES128-SHA:AES256-SHA:AES128-SHA256:AES256-SHA256"|
|Type|string|
|Read Only|False|

### DeleteCertificates (array)

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

`DeleteCertificates` is an array containing elements of:

**DeleteCertificates[{item}].FingerPrint**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|To delete a certificate, the user should place its fingerprint here. The fingerprint would be found as a property under the single certificate object in the "Certificates" array |
|Type|string|
|Read Only|False|

### HostnameCheck

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|Use this option to enable or disable verification of the connected server's hostname with the hostname in the certificate supplied by the server|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Disable verification of the connected server's hostname.|
|`Enabled`|enable verification of the connected server's hostname.|

### NewCertificates (array)

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

`NewCertificates` is an array containing elements of:

**NewCertificates[{item}].X509Certificate**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|the body (PEM format) of the Certificate to be added|
|Type|string|
|Read Only|False|

### ProtocolVersion

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|`AUTO`|
|`1.0`|
|`1.1`|
|`1.2`|
|`1.3`|

### TlsCaCertificateCount

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The certificates count.|
|Type|integer|
|Read Only|False|

### VerifyMode

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|It determines if/how the certificates are validated.|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|
|---|
|`NONE`|
|`PEER`|

## HpeUSBDevice

`@odata.type: "#HpeUSBDevice.v2_0_0.HpeUSBDevice"`

The HpeUSBDevice resource describes the properties of USB devices.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/usbdevices/{item}`|GET |

### DeviceCapacityMB

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device usable capacity (if applicable) in Mbytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceClass

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device Class code as defined by the USB HID device specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceName

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device name in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceProtocol

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Protocol code as defined by the USB HID specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceSubClass

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device SubClass code as defined by the USB HID device specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Location

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Location of the USB device on the server|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### ProductID

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB product ID as defined by manufacturer.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### StructuredName

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device structured name in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePath

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|UEFI device path of USB device. Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### VendorID

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Vendor ID of detected USB device.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeUSBDevicesCollection

`@odata.type: "#HpeUSBDevicesCollection.HpeUSBDevicesCollection"`

A Collection of HpeUSBDevices resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/usbdevices`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeUSBDevice](../ilo5_hpe_resourcedefns281/#hpeusbdevice)|

### Members (array)

Member of HpeUSBDevicesCollection.HpeUSBDevicesCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeUSBDevicesCollection.HpeUSBDevicesCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeUSBDevicesCollection.HpeUSBDevicesCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeUSBPort

`@odata.type: "#HpeUSBPort.v2_0_0.HpeUSBPort"`

The HpeUSBPort resource describes the properties of USB ports.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/usbports/{item}`|GET |

### InstanceNumber

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Instance number of the USB Port|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Location

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Location of the USB Device on the server|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Back`|Located on the rear panel of the server.|
|`Front`|Located on the front bezel of the server.|
|`Internal`|Located internally within the server chassis.|
|`InternalManagement`|Internal management media.|
|`InternalSDCard`|The internal SD-Card slot.|
|`iLOManagement`|iLO virtual USB devices.|

### PCIBusNumber

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|PCI Bus number of the USB controller that controls this USB port |
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PCIDeviceNumber

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|PCI Device Number of the USB Controller that controls this USB Port.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PCIFunctionNumber

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|PCI Function Number of the USB Controller that controls this USB Port.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ParentHubInstance

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Parent Hub Instance that provides an instance number of the internal hub this USB Port is connected to.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SharedCapability

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Shared Capability of the USB Port|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`UnsharedManagement`|Not shared as a Management Port.|
|`SharedManagementPhysicalSwitch`|Shared management port w/ physical switch to control whether muxed to iLO or host.|
|`SharedManagementPortAutomaticControl`||

### SpeedCapability

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|USB speed capability of the USB port as configured by the BIOS during POST.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`USB1FullSpeed`|USB 1.0 Full Speed|
|`USB2HighSpeed`|USB 2.0 High Speed|
|`USB3SuperSpeed`|USB 3.x SuperSpeed|

### UEFIDevicePath

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|UEFI Device Path of USB Endpoint. Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeUSBPortsCollection

`@odata.type: "#HpeUSBPortsCollection.HpeUSBPortsCollection"`

A Collection of HpeUSBPorts resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/usbports`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeUSBPort](../ilo5_hpe_resourcedefns281/#hpeusbport)|

### Members (array)

Member of HpeUSBPortsCollection.HpeUSBPortsCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeUSBPortsCollection.HpeUSBPortsCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeUSBPortsCollection.HpeUSBPortsCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeWorkloadPerformanceAdvisor

`@odata.type: "#HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor"`

The HpeWorkloadPerformanceAdvisor resource describes the properties for managing the HPE Workload Performance Advisor.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor/{item}`|GET |

### Duration

Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|Specifies the duration over which the workload performance advisor is computed.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

### PerformanceTuningOption (array)

Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

`PerformanceTuningOption` is an array containing elements of:

**PerformanceTuningOption[{item}].BIOSAttributeName**
Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The attribute name of the BIOS settings.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**PerformanceTuningOption[{item}].RecommendedValue**
Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|Recommended value for the corresponding BIOS attribute. Please refer to BIOS attribute registry schema for more information.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

### WorkloadCharacteristics (array)

Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

`WorkloadCharacteristics` is an array containing elements of:

**WorkloadCharacteristics[{item}].MetricId**
Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The id of the metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**WorkloadCharacteristics[{item}].MetricValue**
Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The workload utilization of the metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Low`|Utilization is low.|
|`Medium`|Utilization is medium.|
|`High`|Utilization is high.|

## HpeWorkloadPerformanceAdvisorCollection

`@odata.type: "#HpeWorkloadPerformanceAdvisorCollection.HpeWorkloadPerformanceAdvisorCollection"`

A Collection of HpeWorkloadPerformanceAdvisor resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeWorkloadPerformanceAdvisor](../ilo5_hpe_resourcedefns281/#hpeworkloadperformanceadvisor)|

### Members (array)

Member of HpeWorkloadPerformanceAdvisorCollection.HpeWorkloadPerformanceAdvisorCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeWorkloadPerformanceAdvisorCollection.HpeWorkloadPerformanceAdvisorCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeWorkloadPerformanceAdvisorCollection.HpeWorkloadPerformanceAdvisorCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeiLOAccountCertificateMap

`@odata.type: "#HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap"`

The HpeiLOAccountCertificateMap resource describes mapping X509 certificates to user accounts.

This resource type was added in iLO 5 1.20

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/usercertificatemapping/{item}`|GET POST DELETE |

### Fingerprint

Member of [HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The fingerprint which uniquely identifies the mapped certificate.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### FingerprintDigestAlgorithm

Member of [HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The algorithm used to calculate the fingerprint.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### UserName

Member of [HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The name used to log in to the management processor.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeiLOAccountCertificateMapCollection

`@odata.type: "#HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection"`

A Collection of HpeiLOAccountCertificateMap resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/usercertificatemapping`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeiLOAccountCertificateMap](../ilo5_hpe_resourcedefns281/#hpeiloaccountcertificatemap)|

### Members (array)

Member of HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeiLOActiveHealthSystem

`@odata.type: "#HpeiLOActiveHealthSystem.v2_5_0.HpeiLOActiveHealthSystem"`

The HpeiLOActiveHealthSystem resource describes the properties for managing the Active Health System.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/activehealthsystem`|GET POST PATCH |

### AHSEnabled

Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging is enabled or disabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### AHSFileEnd

Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|The end of the AHS log.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### AHSFileStart

Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|The start of the AHS log.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### AHSStatus

**AHSStatus.HardwareEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging in hardware is enabled or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**AHSStatus.SoftwareEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging in software is enabled or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**AHSStatus.TemporaryHoldEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging access is temporarily disabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### LocationParameters

**LocationParameters.case_no**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the case number into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&case_no=abc123.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.co_name**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the company name into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&co_name=myCompany.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.contact_name**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contact name into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&contact_name=JohnDoe.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.days**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter should be used to download the most recent N days of the AHS log. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?days=7. Will retrive logs made within the last 7 days.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

**LocationParameters.downloadAll**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter should be used to download entire AHS log. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.email**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contacts email address into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&email=abc@xyz.com.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.from**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter must be added with the 'to' query parameter to the AHS location URI to limit the range of data returned. 'downloadAll' parameter should not be used with this query parameter. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?from=2014-03-01&&to=2014-03-30.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.phone**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contacts phone number into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&contact_name=JohnDoe&&phone=555-555-5555.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.to**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter must be added with the 'from' query parameter to the AHS location URI to limit the range of data returned.'downloadAll' parameter should not be used with this query parameter. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?from=2014-03-01&&to=2014-03-30.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Actions

**HpeiLOActiveHealthSystem.CaptureSystemLog**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)
There are no parameters for this action.

**HpeiLOActiveHealthSystem.ClearLog**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)
There are no parameters for this action.

**HpeiLOActiveHealthSystem.LogAmplifierData**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

**Parameters:**

**iLOAmplifierManagesCount (integer)**

Number of iLOs that this Amplifier instance manages.

**iLOAmplifierName (string)**

Name of the iLO Amplifier instance that manages this iLO.

**HpeiLOActiveHealthSystem.LogMilestone**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

**Parameters:**

**MilestoneDescription (string)**

Description of milestone.

**MilestoneOrigin (string)**

Origin of milestone.

## HpeiLOBackupFile

`@odata.type: "#HpeiLOBackupFile.v1_0_0.HpeiLOBackupFile"`

The HpeiLOBackupFile resource describes the properties for managing BMC backup files.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles/{item}`|GET POST DELETE |

### Created

Member of [HpeiLOBackupFile.v1\_0\_0.HpeiLOBackupFile](#hpeilobackupfile)

| | |
|---|---|
|Description|ISO-time of backup file creation (by whomever created this thing)|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

### FileSize

Member of [HpeiLOBackupFile.v1\_0\_0.HpeiLOBackupFile](#hpeilobackupfile)

| | |
|---|---|
|Description|Size of backup file.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.40|

### FirmwareVersion

Member of [HpeiLOBackupFile.v1\_0\_0.HpeiLOBackupFile](#hpeilobackupfile)

| | |
|---|---|
|Description|iLO firmware version running when this backup file was created.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Actions

**HpeiLOBackupFile.Restore**
Member of [HpeiLOBackupFile.v1\_0\_0.HpeiLOBackupFile](#hpeilobackupfile)
There are no parameters for this action.

## HpeiLOBackupFileCollection

`@odata.type: "#HpeiLOBackupFileCollection.HpeiLOBackupFileCollection"`

A Collection of HpeiLOBackupFile resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeiLOBackupFile](../ilo5_hpe_resourcedefns281/#hpeilobackupfile)|

### Members (array)

Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.BackupFileCount

Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The number of backup files reported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.BackupFilesAllowed

Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The number of backup files supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.40|

## HpeiLOBackupRestoreService

`@odata.type: "#HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService"`

The HpeiLOBackupRestoreService resource describes the properties for using the BMC backup and restore features.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/backuprestoreservice`|GET PATCH |

### BackupFileLocation

Member of [HpeiLOBackupRestoreService.v2\_2\_0.HpeiLOBackupRestoreService](#hpeilobackuprestoreservice)

| | |
|---|---|
|Description|The URI to which a client may POST to create and download a file for a subsequent restore operation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|
|Format|uri-reference|

### BackupFiles

Link to backup files.
BackupFiles is a link (`"@odata.id": URI`) to another resource.

### CustomBackupandRestore

Member of [HpeiLOBackupRestoreService.v2\_2\_0.HpeiLOBackupRestoreService](#hpeilobackuprestoreservice)

| | |
|---|---|
|Description|This property indicates whether a custom backup and restore is enabled.|
|Type|boolean|
|Read Only|False|

### HttpPushUri

Member of [HpeiLOBackupRestoreService.v2\_2\_0.HpeiLOBackupRestoreService](#hpeilobackuprestoreservice)

| | |
|---|---|
|Description|The URI to which a client may POST a file for a subsequent restore operation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|
|Format|uri-reference|

## HpeiLODateTime

`@odata.type: "#HpeiLODateTime.v2_0_0.HpeiLODateTime"`

The HpeiLODateTime resource describes the properties for managing the BMC data and time.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/datetime`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/EthernetNICs`|Collection of [EthernetInterface](../ilo5_network_resourcedefns281/#ethernetinterfacecollection)|

### ConfigurationSettings

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The state of the currently displayed configuration settings.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Current`|
|`SomePendingReset`|

### DateTime

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The date and time used by management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### NTPServers (array)

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

`NTPServers` is an array containing elements of:

| | |
|---|---|
|Description|The current NTP server's IPv4 address, IPv6 address, or FQDN. The value either comes from DHCP or is static depending on the DHCP settings.|
|Type|string or null|
|Read Only|True|

### PropagateTimeToHost

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|Determines whether the server time is synchronized with the management processor time during the first POST after AC power is applied.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### StaticNTPServers (array)

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

`StaticNTPServers` is an array containing elements of:

| | |
|---|---|
|Description|The static NTP server's IPv4 address, IPv6 address, or FQDN. To set this property, management processor must not be configured to use NTP servers provided by DHCPv4 or DHCPv6.|
|Type|string|
|Read Only|True|

### TimeZone

**TimeZone.Index**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The index of the current time zone. To set a new time zone, specify a different time zone index. This property can be set only when DHCPv4 or DHCPv6 supplied time settings are disabled. Since the time zone list might vary from one firmware version to another (which often leads to differences in time zone indices), setting the time zone by name is recommended over setting by index, for better compatibility.|
|Type|number|
|Read Only|False|
|Added|iLO 5 1.10|

**TimeZone.UtcOffset**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the current time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZone.Value**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### TimeZoneList (array)

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

`TimeZoneList` is an array containing elements of:

**TimeZoneList[{item}].Index**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The time zone index.|
|Type|number|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZoneList[{item}].UtcOffset**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZoneList[{item}].Value**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOEmbeddedMedia

`@odata.type: "#HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia"`

The HpeiLOEmbeddedMedia resource describes the properties for the embedded media.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/embeddedmedia`|GET |

### Controller

**Controller.Firmware**
**Controller.Firmware.Current**
**Controller.Firmware.Current.VersionString**
Member of [HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmedia)

| | |
|---|---|
|Description|The current version of the embedded media controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Controller.Status**
Member of [HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmedia)
See the Redfish standard schema and specification for information on common Status object.

### SDCard

**SDCard.SizeMB**
Member of [HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmedia)

| | |
|---|---|
|Description|The size of the SD card present in the server, in MB.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**SDCard.Status**
Member of [HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmedia)
See the Redfish standard schema and specification for information on common Status object.

## HpeiLOFederatedGroupCapping

`@odata.type: "#HpeiLOFederatedGroupCapping.v2_0_0.HpeiLOFederatedGroupCapping"`

The HpeiLOFederatedGroupCapping resource describes the properties for managing Federated Group Capping.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/power/federatedgroupcapping`|GET PATCH |

### CapWatts

Member of [HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The configured power cap for all servers in a group. This value is 0 if the power cap is not configured.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityWatts

Member of [HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The total power supply capacity for all servers in a group.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Groups

### Throttle

Member of [HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|High, Med, or Low based on the percentage of power usage.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOFederationGroup

`@odata.type: "#HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup"`

The HpeiLOFederationGroup resource describes the properties for managing Federation groups.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/federationgroups/{item}`|GET PATCH DELETE |

### Key

Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|The password used by the Federation Group.|
|Type|string or null|
|Read Only|False|

### Privileges

**Privileges.HostBIOSConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host BIOS configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.HostNICConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host NIC configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.HostStorageConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host Storage configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.LoginPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Login privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.RemoteConsolePriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Remote console privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.SystemRecoveryConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|System Recovery configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.UserConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|User configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.VirtualMediaPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual media privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.VirtualPowerAndResetPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual power and reset privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.iLOConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|The management processor configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeiLOFederationGroupCollection

`@odata.type: "#HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection"`

A Collection of HpeiLOFederationGroup resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/federationgroups`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeiLOFederationGroup](../ilo5_hpe_resourcedefns281/#hpeilofederationgroup)|

### Members (array)

Member of HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeiLOFederationPeers

`@odata.type: "#HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers"`

The HpeiLOFederationPeers resource describes the properties for viewing Federation peers.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/federationpeers/{item}`|GET |

### Peers (array)

Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

`Peers` is an array containing elements of:

**Peers[{item}].HttpErrorCode**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|Error code for success or failure.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Peers[{item}].ManagerIPAddress**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|Manager IP address of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Peers[{item}].Time**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|Time when the federation peer was added.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**Peers[{item}].URL**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|URL of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|url|

**Peers[{item}].UUID**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|UUID peers that are part of the federation group.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOFederationPeersCollection

`@odata.type: "#HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection"`

A Collection of HpeiLOFederationPeers resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/federationpeers`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeiLOFederationPeers](../ilo5_hpe_resourcedefns281/#hpeilofederationpeers)|

### Members (array)

Member of HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeiLOFrus

`@odata.type: "#HpeiLOFrus.v2_0_0.HpeiLOFrus"`

The HpeiLOFrus resource describes features of add-in adapters.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/basefrus/{item}`|GET |
|`/redfish/v1/chassis/{item}/basefrus/{item}/details`|GET |
|`/redfish/v1/chassis/{item}/mezzfrus/{item}`|GET |
|`/redfish/v1/chassis/{item}/mezzfrus/{item}/details`|GET |

### FRU

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The typename this FRU describes.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### FRULink

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The aggregation of the Link signals for all ports on the FRU card.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### FRUType

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The type of FRU that is installed, i.e. Base or Mezzanine FRU.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Base`|
|`Mezzanine`|

### Interlocked

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|Indicates if a PCIe card is installed in slot.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Location

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The location where the FRU resides.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### PGood

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The Power Good status.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalSlot

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The physical slot in which this FRU resides. 0 is for Base FRU, 1-N is for Mezzanine FRUs|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Seated

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|Indicates if the Base FRU is properly seated in the slot.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The system's serial number.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDeviceName

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The Device Name in UTF-8 format.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePaths (array)

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

`UEFIDevicePaths` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

## HpeiLOFrusCollection

`@odata.type: "#HpeiLOFrusCollection.HpeiLOFrusCollection"`

A Collection of HpeiLOFrus resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/basefrus`|GET |
|`/redfish/v1/chassis/{item}/mezzfrus`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeiLOFrus](../ilo5_hpe_resourcedefns281/#hpeilofrus)|

### Members (array)

Member of HpeiLOFrusCollection.HpeiLOFrusCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOFrusCollection.HpeiLOFrusCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOFrusCollection.HpeiLOFrusCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeiLOLicense

`@odata.type: "#HpeiLOLicense.v2_3_0.HpeiLOLicense"`

The HpeiLOLicense resource describes the properties for managing BMC licenses.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/licenseservice/{item}`|GET DELETE |

### Confirmation

**Confirmation.Code**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Confirmation service response code.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Message**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly confirmation information for the current managment processor license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Service**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Confirmation service URI.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Status**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)
See the Redfish standard schema and specification for information on common Status object.

### ConfirmationRequest

**ConfirmationRequest.EON**
**ConfirmationRequest.EON.License**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.LicenseKey**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The license key installed on this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.Quantity**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The number of entitlements licensed.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.State**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The current licensing state and behavior of the management processor.  This is affected by license installation, activation and confirmation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`unlicensed`|standard baseline functionality|
|`evaluation`|evaluation / demonstration temporary licensed functionality|
|`nfr`|not for resale experimental functionality|
|`expired`|standard baseline functionality and evaluation licenses no longer accepted|
|`unconfirmed`|licensed functionality that has not been confirmed|
|`timeout`|licensed functionality is disabled until the license is confirmed|
|`confirmed`|licensed functionality has been confirmed for use|
|`static`|system has active built-in licensed functionality that does not require confirmation|
|`err`|error|

**ConfirmationRequest.Signer**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Source of confirmation request.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System**
**ConfirmationRequest.System.ChipId**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Management processor unique chip identifier.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System.Product**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|System housing management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System.SerialNumber**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|System serial number.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### License

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseClass

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The class of current license on this management processor.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|`FQL`|
|`BETA`|
|`EVALUATION`|
|`AKA`|
|`DL`|
|`FFQL`|
|`SL`|
|`SITE`|
|`EVAL`|
|`MLA`|

### LicenseErr

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Error information from the most recent attempt to alter the installed management processor license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseExpire

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly expiration information of the installed management processor license. For example, for demo license, Evaluation period 2 months 5 days 6 hours remain.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseFeatures

**LicenseFeatures.AutoCertEnroll**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Automatic Certificate Enrollment.|
|Type|boolean|
|Read Only|True|

**LicenseFeatures.DirectoryAuth**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Directory integrated authentication.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.DowngradePolicy**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Firmware downgrade policy setting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**LicenseFeatures.EmailAlert**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Email based alerting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.FWScan**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Runtime FW Integrity check.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Federation**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Distributed peer to peer management.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Jitter**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Jitter Control.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.KD**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Kernel Debugging (VSP raw mode).|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.KeyMgr**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Store and retrieve keys from an external key manager.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.MURC**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Shared Multi-User Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.ODIM**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Open Distributed Infrastructure Management.|
|Type|boolean|
|Read Only|True|

**LicenseFeatures.PowerReg**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Power Regulator.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.RC**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Graphical Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Recovery**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|OS Recovery Event.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.17|

**LicenseFeatures.RemoteSyslog**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Remote Syslog.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Scrncap**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Video Capture.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SecureErase**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Secure Erase of embedded media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SmartCard**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|2-Factor Authentication (Smart Card).|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SuiteB**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|SuiteB/CNSA mode support.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.TextCons**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Text Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VM**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Remote Console based Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VMScript**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Scripted Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VSPLogging**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Virtual Serial Port Logging and Playback.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseInstallDate

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly installation date information of the installed management processor license. For example, 19 May 2017|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LicenseKey

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-visible license key installed on this management processor. License keys are 25 or 29 characters and contain letters, numbers and hypens. Use POST method to collection of membertype HpeiLOLicense to install / update the license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseSeats

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The number of systems authorized to use this activation key.|
|Type|integer|
|Read Only|True|

### LicenseTier

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The licensed feature-set of the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`STD`|
|`BLSTD`|
|`ADV`|
|`BLADV`|
|`ESS`|
|`SCALEOUT`|
|`APSE`|

### LicenseType

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The type of current license activation on this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Unlicensed`|
|`Evaluation`|
|`Perpetual`|
|`Subscription`|
|`Internal`|
|`Duration`|
|`Expired`|

## HpeiLOLicenseCollection

`@odata.type: "#HpeiLOLicenseCollection.HpeiLOLicenseCollection"`

A Collection of HpeiLOLicense resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/licenseservice`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeiLOLicense](../ilo5_hpe_resourcedefns281/#hpeilolicense)|

### Members (array)

Member of HpeiLOLicenseCollection.HpeiLOLicenseCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOLicenseCollection.HpeiLOLicenseCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOLicenseCollection.HpeiLOLicenseCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeiLOResourceDirectory

`@odata.type: "#HpeiLOResourceDirectory.v2_0_0.HpeiLOResourceDirectory"`

The HpeiLOResourceDirectory resource describes the resource directory.  The resource directory is a selected set of resources and resource types for faster access to resources.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/resourcedirectory`|GET |

### Instances (array)

Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

`Instances` is an array containing elements of:

**Instances[{item}].@odata.id**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Instances[{item}].@odata.type**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

| | |
|---|---|
|Type|string|
|Read Only|True|

**Instances[{item}].ETag**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

| | |
|---|---|
|Description|This is the last known etag of the resource. The property is omitted if not known.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Instances[{item}].HttpMethods (array)**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

`HttpMethods` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|`GET`|
|`HEAD`|
|`POST`|
|`PUT`|
|`PATCH`|
|`DELETE`|

**Instances[{item}].MemberType**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

| | |
|---|---|
|Description|This property has the type of members for collection resources.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOSSO

`@odata.type: "#HpeiLOSSO.v2_0_0.HpeiLOSSO"`

The HpeiLOSSO resource describes the configuration of the HPE BMC single-sign-on trusted server feature.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice/sso`|GET POST PATCH |

### ManagerTrustedCertificates (array)

Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

`ManagerTrustedCertificates` is an array containing elements of:

**ManagerTrustedCertificates[{item}].@odata.id**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**ManagerTrustedCertificates[{item}].@odata.type**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|

**ManagerTrustedCertificates[{item}].Certificate**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate (Base64 encoded).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails**
**ManagerTrustedCertificates[{item}].CertificateDetails.Issuer**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails.Subject**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotAfter**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotBefore**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**ManagerTrustedCertificates[{item}].RecordType**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Specifies the type of SSO record imported.|
|Type|string|
|Read Only|true|
|Added|iLO 5 1.15|

The following are the supported values:

|Value|Description|
|---|---|
|`Certificate`|It is a PEM formatted X509 certificate (Base64 encoded).|
|`DNSName`|It is a DNS name or an IP address of the HPE SSO-compliant application.|

**ManagerTrustedCertificates[{item}].SerialNumber**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Contains the Serial number for the SSO records.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].ServerName**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The Server name (or certificate subject).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].Status**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)
See the Redfish standard schema and specification for information on common Status object.

### SSOsettings

**SSOsettings.AdminPrivilege**
**SSOsettings.AdminPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege**
**SSOsettings.OperatorPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.SSOTrustMode**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Represents the SSO Trust Mode.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`TrustNone`|Rejects all SSO connection request.|
|`TrustAll`|Accepts any SSO connection initiated from any HPE SSO compliant application.|
|`TrustbyName`|Enables SSO connections from an HPE SSO compliant application by matching a directly imported IP address or DNS name.|
|`TrustbyCert`|Enables SSO connections from an HPE SSO compliant application by matching a certificate previously imported to iLO.|

**SSOsettings.UserPrivilege**
**SSOsettings.UserPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeiLOSSO.DeleteAllSSORecords**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)
Delete all the SSO records.

There are no parameters for this action.

**HpeiLOSSO.DeleteSSORecordbyNumber**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)
Delete SSO record by record number.

**Parameters:**

**RecordNumber (integer)**

Index of the SSO record to be deleted.

**HpeiLOSSO.ImportCertificate**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)
Import the HPE SSO Certificate.

**Parameters:**

**CertInput (string)**

PEM formatted X509 certificate (Base64 encoded)/DNS name or IP address to import the certificate.

**CertType (string)**

Specifies the type of certificate imported.

|Value|Description|
|---|---|
|DirectImportCert|iLO directly imports the Certificate.|
|ImportCertUri|iLO imports the certificate from the HPE SSO compliant application over the network.|

**HpeiLOSSO.ImportDNSName**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)
Add DNS Name to the record list.

**Parameters:**

**DNSName (string)**

DNS Name of the HPE SSO Trusted Server.

## HpeiLOSecurityDashboard

`@odata.type: "#HpeiLOSecurityDashboard.v1_0_0.HpeiLOSecurityDashboard"`

The HpeiLOSecurityDashboard resource describes the BMC security dashboard.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`SecurityParameters`|[HpeiLOSecurityParam](../ilo5_hpe_resourcedefns281/#hpeilosecurityparam)|

### OverallSecurityStatus

Member of [HpeiLOSecurityDashboard.v1\_0\_0.HpeiLOSecurityDashboard](#hpeilosecuritydashboard)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Ok`|The Overall security state of the system is OK.|
|`Risk`|The Overall security state of the system is Risk.|
|`Ignored`|The user has ignored (or suppressed) the risk on all the security parameters (whose Status value is Risk).|

### SecurityParameters

This property references a resource of type Collection with a MemberType of HpeiLOSecurityParam.
SecurityParameters is a link (`"@odata.id": URI`) to another resource.

### ServerConfigurationLockStatus

Member of [HpeiLOSecurityDashboard.v1\_0\_0.HpeiLOSecurityDashboard](#hpeilosecuritydashboard)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Server Configuration Lock is Enabled.|
|`Disabled`|Server Configuration Lock is Disabled.|

## HpeiLOSecurityParam

`@odata.type: "#HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam"`

The HpeiLOSecurityParam resource describes the properties for BMC security dashboard parameters.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams/{item}`|GET PATCH |

### Ignore

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This indicates if the security status of the security parameter is set to ignored or not.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### IgnoredBy

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the user who changed the value of Ignore.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### IgnoredTime

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the time when the risk configuration was suppressed.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### RecommendedAction

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the recommended action.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SecurityStatus

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents if the status of the security parameter.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Risk`|This indicates a security issue associated with the security parameter.|
|`Ok`|This indicates no security issue associated with the security parameter.|

### State

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the state or value of the security parameter.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|The state of the Security Parameter is On.|
|`Off`|The state of the Security Parameter is Off.|
|`Enabled`|The state of the Security Parameter is Enabled.|
|`Disabled`|The state of the Security Parameter is Disabled.|
|`Failed`|The status of the Security Parameter or the result of an operation represented by the Security Parameter is Failed.|
|`Ok`|The status of the Security Parameter or the result of an operation represented by the Security Parameter is Ok.|
|`Insufficient`|The value of the Security Parameter is Insufficient or less than the default value.|
|`Repaired`|The state of the Security Parameter is Repaired.|
|`True`|The state of the Security Parameter is True.|
|`False`|The state of the Security Parameter is False.|

## HpeiLOSecurityParamCollection

`@odata.type: "#HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection"`

A Collection of HpeiLOSecurityParam resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HpeiLOSecurityParam](../ilo5_hpe_resourcedefns281/#hpeilosecurityparam)|

### Members (array)

Member of HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeiLOSnmpService

`@odata.type: "#HpeiLOSnmpService.v2_3_0.HpeiLOSnmpService"`

The HpeiLOSnmpService resource describes the properties for managing the SNMP configuration of the BMC.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/snmpservice`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../ilo5_hpe_resourcedefns281/#hpesnmpalertdestinationcollection)|
|`SNMPUsers`|Collection of [HpeSNMPUser](#hpesnmpuser)|

### AlertDestinationAssociations (array)

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`AlertDestinationAssociations` is an array containing elements of:

**AlertDestinationAssociations[{item}].SNMPAlertProtocol**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Indicate the SNMP protocol associated with the AlertDestination.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`SNMPv1Trap`|Indicate SNMPv1 trap is enabled for the destination.|
|`SNMPv3Trap`|Indicate SNMPv3 trap is enabled for the destination. Needs to fill the SecurityName as well.|
|`SNMPv3Inform`|Indicate SNMPv3 Inform is enabled for the destination. Needs to fill the SecurityName as well.|
|`Null`|A value is temporarily unavailable|

**AlertDestinationAssociations[{item}].SecurityName**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Provides the SNMPv3 security name associated with the destination when SNMP alert protocol is SNMPv3 trap or inform.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### AlertDestinations (array)

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`AlertDestinations` is an array containing elements of:

| | |
|---|---|
|Type|string or null|
|Read Only|True|

### AlertsEnabled

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The alert conditions that the management processor detects independently of the host operating system can be sent to specified SNMP alert destinations.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Contact

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 49 characters that specifies the system administrator or server owner. The string can include a name, email address, or phone number.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Location

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 49 characters that specifies the physical location of the server.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.SNMPColdStartTrapBroadcast

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|If set to true, the Cold Start Trap will be enabled. The Cold Start Trap is broadcast to a subnet broadcast address if there are no trap destinations configured in the SNMP Alert Destination(s) boxes.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### PeriodicHSATrapConfig

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|If there are any component in health status array(HSA) Trap are in degraded or failed condition then HSA trap will be sent periodically till the component status becomes ok or fine condition. This setting is disabled by default.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|`Disabled`|
|`Daily`|
|`Weekly`|
|`Monthly`|

### ReadCommunities (array)

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`ReadCommunities` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

### Role

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 64 characters that describes the server role or function.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### RoleDetail

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 512 characters that describes specific tasks that the server might perform.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SNMPAlertDestinations

SNMP Alert Destination details.
SNMPAlertDestinations is a link (`"@odata.id": URI`) to another resource.

### SNMPUsers

SNMPv3 User details.
SNMPUsers is a link (`"@odata.id": URI`) to another resource.

### SNMPv1Enabled

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Indicates if the SNMPv1 protocol is enabled.|
|Type|boolean|
|Read Only|False|

### SNMPv1Traps

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|When enabled, SNMPv1 traps are sent to the remote management systems configured in the SNMP Alert Destination(s) boxes.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### SNMPv3EngineID

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The SNMPv3 Engine ID is the unique identifier of an SNMP engine that belongs to an SNMP agent entity. This value must be a hexadecimal string with an even number of 6 to 32 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SNMPv3InformRetryAttempt

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Specifies the number of retries to be used in SNMPv3 inform.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.20|

### SNMPv3InformRetryIntervalSeconds

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Specifies the interval in seconds between SNMPv3 inform retries.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.20|

### Status

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)
See the Redfish standard schema and specification for information on common Status object.

### TrapCommunities (array)

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`TrapCommunities` is an array containing elements of:

| | |
|---|---|
|Type|string|
|Read Only|True|

### TrapSourceHostname

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Determines the host name that is used in the SNMP-defined sysName variable when the management processor generates SNMP traps.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Manager`|
|`System`|

### Users (array)

Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`Users` is an array containing elements of:

**Users[{item}].AuthPassphrase**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the passphrase to use for sign operations. Enter a value of 8 to 49 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Users[{item}].AuthProtocol**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the message digest algorithm to use for encoding the authorization passphrase. The message digest is calculated over an appropriate portion of an SNMP message, and is included as part of the message sent to the recipient. Select MD5 (Message Digest) or SHA (Secure Hash Algorithm).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`MD5`|Indicate Message Digest Algorithm.|
|`SHA`|Indicate Secure Hash Algorithm.|
|`SHA256`|Indicate SHA256 Algorithm.|
|`Null`|A value is temporarily unavailable|

**Users[{item}].PrivacyPassphrase**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the passphrase to use for encrypt operations. Enter a value of 8 to 49 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Users[{item}].PrivacyProtocol**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the encryption algorithm to use for encoding the privacy passphrase. A portion of an SNMP message is encrypted before transmission. Select AES (Advanced Encryption Standard) or DES (Data Encryption Standard).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`AES`|Indicate Advanced Encryption Standard Algorithm.|
|`DES`|Indicate Data Encryption Standard Algorithm.|
|`Null`|A value is temporarily unavailable|

**Users[{item}].SecurityName**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The user profile name. Enter an alphanumeric string of 1 to 32 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Users[{item}].UserEngineID**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The UserEngineID is combined with the SecurityName to create a SNMPv3 user for each manager. It is only used for creating remote accounts used with INFORM messages. If this property is not set then INFORM message will be sent with default or iLO configured engine ID. This value must be a hexadecimal string with an even number of 10 to 64 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### Actions

**HpeiLOSnmpService.SendSNMPTestAlert**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservice)
There are no parameters for this action.

## HpeiSCSISoftwareInitiator

`@odata.type: "#HpeiSCSISoftwareInitiator.v2_0_0.HpeiSCSISoftwareInitiator"`

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bios/iscsi`|GET |
|`/redfish/v1/systems/{item}/bios/iscsi/settings`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeiSCSISoftwareInitiator](../ilo5_hpe_resourcedefns281/#hpeiscsisoftwareinitiator)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns281/#hpebaseconfigs)|

### @Redfish.Settings

Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)
See the Redfish standard schema and specification for information on common @Redfish properties.

### iSCSIInitiatorName

Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The worldwide unique iSCSI Qualified Name (IQN) of this iSCSI Initiator. Only IQN format is accepted. EUI format is not supported (for example, 'iqn.1986-03.com.hp:init.sn-123456').|
|Type|string|
|Read Only|True|

### iSCSINicSources (array)

Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

`iSCSINicSources` is an array containing elements of:

| | |
|---|---|
|Description|The BIOS Attribute that describes a NIC instance that can be used as a target for iSCSI configuration.|
|Type|string|
|Read Only|True|

### iSCSISources (array)

Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

`iSCSISources` is an array containing elements of:

**iSCSISources[{item}].StructuredBootString**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Identifies this iSCSI option within the server.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].UEFIDevicePath**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path for this option, in UTF-8 format.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSIAttemptInstance**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Uniquely identifies this iSCSI attempt within iSCSISources array. If set to zero, all other properties in the boot option object are ignored (which will delete an existing boot attempt).|
|Type|integer|
|Read Only|True|

**iSCSISources[{item}].iSCSIAttemptName**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Human readable descriptive name for this iSCSI attempt configuration|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSIAuthenticationMethod**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI connection authentication method.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|No iSCSI connection security.|
|`CHAP`|iSCSI connection is secured using Challenge Handshake Authentication Protocol (CHAP).|

**iSCSISources[{item}].iSCSIChapSecret**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The password needed for CHAP authentication. This is applicable only when the Authentication Method is set to CHAP, and the CHAP Type is set to Mutual.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSIChapType**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The CHAP authentication type. This is applicable only when the Authentication Method is set to CHAP.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`OneWay`|The target will authenticate the initiator. .|
|`Mutual`|both the initiator and target will authenticate each other.|

**iSCSISources[{item}].iSCSIChapUsername**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The user name needed for CHAP authentication. This is applicable only when the Authentication Method is set to CHAP.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSIConnectRetry**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The number of times to retry the iSCSI connection. Zero means no retries.|
|Type|integer|
|Read Only|True|

**iSCSISources[{item}].iSCSIConnectTimeoutMS**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI connection timeout value in milliseconds.|
|Type|integer|
|Read Only|True|

**iSCSISources[{item}].iSCSIConnection**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Enables or Disables iSCSI mode for a selected iSCSI attempt.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Connecting to this iSCSI attempt is disabled.|
|`Enabled`|Connecting to this iSCSI attempt is enabled.|
|`EnabledMpio`|Connecting to this iSCSI attempt is enabled with MPIO (Multi Path I/O).|

**iSCSISources[{item}].iSCSIInitiatorGateway**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The gateway address of the iSCSI Initiator, if not configured via DHCP. The address must be an IPv4 or IPv6 address, depending on the IP Address Type.|
|Type|string|
|Read Only|True|

**iSCSISources[{item}].iSCSIInitiatorInfoViaDHCP**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|If enabled, the iSCSI Initiator information is configured from DHCP. Otherwise, the iSCSI initiator information must be statically configured. When providing static values for the Initiator, ensure Target settings are also configured with static values.|
|Type|boolean|
|Read Only|True|

**iSCSISources[{item}].iSCSIInitiatorIpAddress**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The IP Address of the iSCSI Initiator, if not configured via DHCP. The Initiator IP Address is always auto-assigned if IP address type is IPv6. The address must be an IPv4 or IPv6 address, depending on the IP Address Type.|
|Type|string|
|Read Only|True|

**iSCSISources[{item}].iSCSIInitiatorNetmask**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The subnet mask of the iSCSI Initiator, if not configured via DHCP. The address must be an IPv4.|
|Type|string|
|Read Only|True|

**iSCSISources[{item}].iSCSIIpAddressType**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI IP Address type. If set to Auto, IPv4 will be attempted first, followed by IPv6.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`IPv4`|The iSCSI IP address is configured in IPv4 format.|
|`IPv6`|The iSCSI IP address is configured in IPv6 format.|
|`Auto`|The iSCSI IP address is configured in IPv4. If an issue occurs with IPv4, then the IPv6 configuration is used.|

**iSCSISources[{item}].iSCSILUN**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI target Logical Unit Number (LUN), if not obtained from DHCP. This value must follow the SAM-2 spec. E.g. 0001-1234-5678-9ABC. If the digit number is less then 5 characters, a dash character is not required. E.g. 0001. If the lun number is 12345, input 1234-5|
|Type|string|
|Read Only|True|

**iSCSISources[{item}].iSCSINicSource**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|A BIOS Attribute that describes this selected NIC instance. This must match one of the possible values listed in the iSCSINicSources array.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSIReverseChapSecret**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The password needed for reverse CHAP authentication (from the target to the initiator). This is applicable only when the Authentication Method is set to CHAP, and the CHAP Type is set to Mutual.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSIReverseChapUsername**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|User Name for reverse CHAP authentication (from the target to the initiator). This is applicable only when the Authentication Method is set to CHAP, and the CHAP Type is set to Mutual.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSITargetInfoViaDHCP**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|If enabled, the iSCSI target information are configured from DHCP. Otherwise, the iSCSI target information must be statically configured.|
|Type|boolean|
|Read Only|True|

**iSCSISources[{item}].iSCSITargetIpAddress**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The IP Address of the iSCSI Target, if not obtained from DHCP. The address must be an IPv4 or IPv6 address, depending on the IP Address Type.|
|Type|string|
|Read Only|True|

**iSCSISources[{item}].iSCSITargetName**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The worldwide unique iSCSI Qualified Name (IQN) of this iSCSI target. Only the IQN format is accepted. EUI format is not supported (for example, 'iqn.1991-05.com.microsoft:iscsitarget-iscsidisk-target').|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSITargetTcpPort**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI Target TCP Port number, if not obtained from DHCP.|
|Type|integer|
|Read Only|True|

