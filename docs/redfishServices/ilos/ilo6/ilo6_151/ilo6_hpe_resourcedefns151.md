---
excludeFromSearch: true
seo:
  title: Hpe resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Hpe resource definitions of iLO 6 v1.51

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
|Added|iLO6 1.05|

**AutomaticCertificateEnrollmentSettings.CertificateEnrollmentStatus**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|Enrollment Status of SSL certificate|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**AutomaticCertificateEnrollmentSettings.ServerUrl**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|Link to Certificate Enrollment Server.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|
|Format|uri-reference|

**AutomaticCertificateEnrollmentSettings.ServiceEnabled**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|This indicates whether this Automatic Certificate Enrollment(ACE) service is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### HttpsCertCSRSubjectValue

**HttpsCertCSRSubjectValue.City**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The city or locality where the company or organization that owns this iLO subsystem is located.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**HttpsCertCSRSubjectValue.CommonName**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The FQDN of this iLO subsystem.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**HttpsCertCSRSubjectValue.Country**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The two-character country code where the company or organization that owns this Manager subsystem is located. Eg: US|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**HttpsCertCSRSubjectValue.IncludeIP**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|Include the IP Addresses in the CSR.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**HttpsCertCSRSubjectValue.OrgName**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The name of the company or organization that owns this iLO subsystem.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**HttpsCertCSRSubjectValue.OrgUnit**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The unit within the company or organization that owns this iLO subsystem.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**HttpsCertCSRSubjectValue.State**
Member of [HpeAutomaticCertEnrollment.v1\_0\_0.HpeAutomaticCertEnrollment](#hpeautomaticcertenrollment)

| | |
|---|---|
|Description|The state where the company or organization that owns this iLO subsystem is located.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|`/redfish/v1/systems/{item}/bios/tlsconfig/baseconfigs`|GET |

### BaseConfigs (array)

Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigs)

`BaseConfigs` is an array containing elements of:

**BaseConfigs[{item}]**

### Capabilities

**Capabilities.BaseConfig**
Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigs)

| | |
|---|---|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Capabilities.BaseConfigs**
Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigs)

| | |
|---|---|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### BiosPciSettingsMappings (array)

Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

`BiosPciSettingsMappings` is an array containing elements of:

**BiosPciSettingsMappings[{item}].Associations (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

`Associations` is an array containing elements of:

**Associations[{item}]**
**BiosPciSettingsMappings[{item}].CorrelatableID**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|Contains any CorrelatableIDs that represent this PCI device. The CorrelatableID values can be JSON Pointers or UEFI identifiers.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**BiosPciSettingsMappings[{item}].Instance**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|The instance number of the parent PCI device for this association set.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BiosPciSettingsMappings[{item}].Subinstances (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

`Subinstances` is an array containing elements of:

**Subinstances[{item}].Associations (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

`Associations` is an array containing elements of:

**Associations[{item}]**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Subinstances[{item}].CorrelatableID**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|Contains any CorrelatableIDs that represent this PCI device. The CorrelatableID values can be JSON Pointers or UEFI identifiers.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Subinstances[{item}].Subinstance**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmapping)

| | |
|---|---|
|Description|The sub-instance number of the child PCI device for this association set.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|`CACertificates`|Collection of [HpeCertificate](../ilo6_hpe_resourcedefns151/#hpecertificatecollection)|
|`Links/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](../ilo6_hpe_resourcedefns151/#hpeiloaccountcertificatemapcollection)|

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
|Added|iLO6 1.05|

### CRLSerial

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Serial Number of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### CertificateLoginEnabled

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Specifies whether Certificate login is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### LDAPCertificateNameMapping

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|The method used to map a certificate to its associated LDAP user account.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|
|Format|uri-reference|

### StrictCACModeEnabled

Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Whether or not Strict CAC Mode is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Actions

**HpeCertAuth.DeleteCRL**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)
Remove an installed Certificate Revocation List (CRL).

There are no parameters for this action.

**HpeCertAuth.ImportCRL**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)
Imports a Certificate Revocation List (CRL).

**Parameters:**

**ImportUri (string)**

Contains URI of PEM formatted certificate revocation list (CRL) (Base64 encoded).

**HpeCertAuth.ImportCACertificate**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauth)
Imports a Trusted Certificate

**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).

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
|Added|iLO6 1.05|

### SerialNumber

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Subject

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### ValidNotAfter

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### ValidNotBefore

Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
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
|`Members[]`|[HpeCertificate](../ilo6_hpe_resourcedefns151/#hpecertificate)|

### Members (array)

Member of HpeCertificateCollection.HpeCertificateCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeCertificateCollection.HpeCertificateCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeCertificateCollection.HpeCertificateCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### ComponentUri

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|URI of the component binary.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Configuration

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|string defining customized parameters for some components provided by client at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Created

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|ISO 8601 time string indicating when this component was added to the NAND.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### ExecutionParameters

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Client supplied execution parameters.  These are supplied at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Filename

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|The unique filename of the component.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Filepath

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Path of file on the USB LUN if you mount the repo as USB.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Locked

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|If true, this component cannot be removed with DELETE because it is referenced by an Install Set|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### SizeBytes

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Size of the component file in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Targets (array)

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

`Targets` is an array containing elements of:

**Targets[{item}]**
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Target GUIDs from secure flash header or sidecar file.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### UpdatableBy (array)

Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

`UpdatableBy` is an array containing elements of:

**UpdatableBy[{item}]**
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Describes which types of update agents may apply this component.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|`Members[]`|[HpeComponent](../ilo6_hpe_resourcedefns151/#hpecomponent)|

### Members (array)

Member of HpeComponentCollection.HpeComponentCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.ComponentCount

Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The number of files reported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.FreeSizeBytes

Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The available repository space in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.TotalSizeBytes

Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The total repository size in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

## HpeComponentInstallSet

`@odata.type: "#HpeComponentInstallSet.v1_2_0.HpeComponentInstallSet"`

The HpeComponentInstallSet resource describes an Install Set, an ordered list of installation instructions that may be invoked.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/installsets/{item}`|GET POST PATCH DELETE |

### Created

Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install set creation.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### IsRecovery

Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|If true, this install set is reserved to hold only critical firmware recovery updatable by iLO.  Additionally the 'Administrate Recovery Set' iLO privilege is required to modify or remove this install set.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Modified

Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install modification.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Sequence (array)

Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

`Sequence` is an array containing elements of:

**Sequence[{item}].Command**
Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|Command to execute.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ApplyUpdate`|Apply an update using the specified component.|
|`ResetServer`|Reset the server.|
|`ResetBmc`|Reset the BMC.|
|`Wait`|Wait for the WaitTimeSeconds number of seconds.|
|`BootToUefi`|Boot the server to UEFI shell|
|`PendingReset`|Reset is pending after bundle update.|

**Sequence[{item}].Component**
Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**Sequence[{item}].ExecutionTimeoutMinutes**
Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The number of minutes that this update will likely take to apply.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

**Sequence[{item}].Filename**
Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The unique filename of the component.  This correlates to 'Filename' in the HpeComponent.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**Sequence[{item}].UpdatableBy (array)**
Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

`UpdatableBy` is an array containing elements of:

**UpdatableBy[{item}]**
Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Bmc`|This component may be scheduled for update by iLO.|
|`Uefi`|This component may be scheduled for update by UEFI BIOS.|
|`RuntimeAgent`|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|

**Sequence[{item}].WaitTimeSeconds**
Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The number of seconds to pause if the command is 'Wait'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Actions

**HpeComponentInstallSet.Invoke**
Member of [HpeComponentInstallSet.v1\_2\_0.HpeComponentInstallSet](#hpecomponentinstallset)

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
|`Members[]`|[HpeComponentInstallSet](../ilo6_hpe_resourcedefns151/#hpecomponentinstallset)|

### Members (array)

Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## HpeComponentUpdateTask

`@odata.type: "#HpeComponentUpdateTask.v1_3_0.HpeComponentUpdateTask"`

The HpeComponentUpdateTask resource describes an Update Task, an element in the update task queue.  This represents an install instruction.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/updatetaskqueue/{item}`|GET PATCH DELETE |

### Command

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|Command to execute.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ApplyUpdate`|Apply an update using the specified component.|
|`ResetServer`|Reset the server.|
|`ResetBmc`|Reset the BMC.|
|`Wait`|Wait for the WaitTimeSeconds number of seconds.|
|`PendingReset`|Reset is pending after bundle update.|

### Component

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Created

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|ISO-time of task creation (by whomever created this thing)|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### ExecutionTimeoutMinutes

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The number of minutes that this update will likely take to apply.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Expire

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string after which we will automatically change state to Expired - null for no expire time|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|
|Format|date-time|

### Filename

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The unique filename of the component.  This correlates to 'Filename' in the HpeComponent.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### MaintenanceWindow

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The maintenance window for this update task.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### Modified

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|ISO-time of last task queue item update by updater (not client)|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### RecoveryPrivilege

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|This task was created by a user with Recovery Set privilege, and would allow a downgrade if 'DowngradePolicy' is set to 'RecoveryDowngrade'.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Result

**Result.MessageArgs (array)**
Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

`MessageArgs` is an array containing elements of:

**MessageArgs[{item}]**
Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Result.MessageId**
Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The key for this message that can be used to look up the message in a message registry.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### ResultLog

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|base64 encoded entry to capture component log.  Estimated to be generally 1-2KB. written by updater|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### StartAfter

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string of earliest execution - null for no start time specified|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|
|Format|date-time|

### State

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The current state of the update task.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|If true then the TPMOverrideFlag is passed in on the associated flash operations.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### UpdatableBy (array)

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

`UpdatableBy` is an array containing elements of:

**UpdatableBy[{item}]**
Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Bmc`|This component may be scheduled for update by iLO.|
|`Uefi`|This component may be scheduled for update by UEFI BIOS.|
|`RuntimeAgent`|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|

### UpdateRecoverySet

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|Update Recovery Set with this component if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### WaitTimeSeconds

Member of [HpeComponentUpdateTask.v1\_3\_0.HpeComponentUpdateTask](#hpecomponentupdatetask)

| | |
|---|---|
|Description|The number of seconds to pause if the command is 'Wait'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeComponentUpdateTask](../ilo6_hpe_resourcedefns151/#hpecomponentupdatetask)|

### Members (array)

Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**ESKMEvents[{item}].Timestamp**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Time of ESKM event.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### KeyManagerConfig

**KeyManagerConfig.AccountGroup**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Account group on ESKM.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**KeyManagerConfig.AccountName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Account name on ESKM.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**KeyManagerConfig.ESKMLocalCACertificateName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|This is the name of Local CA (Certificate Authority) in ESKM that is used to sign the ESKM server certificate. iLO will retrieve this certificate from the ESKM server.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**KeyManagerConfig.ImportedCertificateIssuer**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Imported certificate issuer.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**KeyManagerConfig.ImportedCertificateSubject**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Imported certificate subject.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**KeyManagerConfig.LoginName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account login name. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**KeyManagerConfig.Password**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account password. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### KeyServerRedundancyReq

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|If true encryption keys will be maintained on both the configured key servers. When this option is disabled, iLO will not verify that encryption keys are copied to both of the configured key servers.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### PrimaryKeyServerAddress

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Primary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### PrimaryKeyServerPort

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Primary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

### SecondaryKeyServerAddress

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Secondary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### SecondaryKeyServerPort

Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Secondary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### X509CertificateInformation

**X509CertificateInformation.Issuer**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**X509CertificateInformation.SerialNumber**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**X509CertificateInformation.Subject**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**X509CertificateInformation.ValidNotAfter**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**X509CertificateInformation.ValidNotBefore**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Actions

**HpeHttpsCert.ImportCertificate**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)
Imports a Trusted Certificate and iLO is reset.

**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate (Base64 encoded).

**HpeHttpsCert.GenerateCSR**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscert)

**Parameters:**

**City (string)**

The city or locality where the company or organization that owns this iLO subsystem is located.

**OrgName (string)**

The name of the company or organization that owns this iLO subsystem.

**Country (string)**

The two-character country code where the company or organization that owns this Manager subsystem is located. Eg: US

**CommonName (string)**

The FQDN of this iLO subsystem.

**IncludeIP (boolean)**

Include the IP Addresses in the CSR.

**OrgUnit (string)**

The unit within the company or organization that owns this iLO subsystem.

**State (string)**

The state where the company or organization that owns this iLO subsystem is located.

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
|Added|iLO6 1.05|

### FingerprintDigestAlgorithm

Member of [HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The algorithm used to calculate the fingerprint.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### UserName

Member of [HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The name used to log in to the management processor.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeiLOAccountCertificateMap](../ilo6_hpe_resourcedefns151/#hpeiloaccountcertificatemap)|

### Members (array)

Member of HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### AHSFileEnd

Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|The end of the AHS log.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### AHSFileStart

Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|The start of the AHS log.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### AHSStatus

**AHSStatus.HardwareEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging in hardware is enabled or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**AHSStatus.SoftwareEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging in software is enabled or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**AHSStatus.TemporaryHoldEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging access is temporarily disabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### LocationParameters

**LocationParameters.case_no**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the case number into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&case_no=abc123.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**LocationParameters.co_name**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the company name into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&co_name=myCompany.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**LocationParameters.contact_name**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contact name into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&contact_name=JohnDoe.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**LocationParameters.days**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter should be used to download the most recent N days of the AHS log. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?days=7. Will retrive logs made within the last 7 days.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**LocationParameters.downloadAll**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter should be used to download entire AHS log. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**LocationParameters.email**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contacts email address into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&email=abc@xyz.com.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**LocationParameters.from**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter must be added with the 'to' query parameter to the AHS location URI to limit the range of data returned. 'downloadAll' parameter should not be used with this query parameter. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?from=2014-03-01&&to=2014-03-30.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**LocationParameters.phone**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contacts phone number into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&contact_name=JohnDoe&&phone=555-555-5555.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**LocationParameters.to**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter must be added with the 'from' query parameter to the AHS location URI to limit the range of data returned.'downloadAll' parameter should not be used with this query parameter. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?from=2014-03-01&&to=2014-03-30.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Actions

**HpeiLOActiveHealthSystem.LogAmplifierData**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

**Parameters:**

**iLOAmplifierName (string)**

Name of the iLO Amplifier instance that manages this iLO.

**iLOAmplifierManagesCount (integer)**

Number of iLOs that this Amplifier instance manages.

**HpeiLOActiveHealthSystem.CaptureSystemLog**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)
There are no parameters for this action.

**HpeiLOActiveHealthSystem.LogMilestone**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)

**Parameters:**

**MilestoneDescription (string)**

Description of milestone.

**MilestoneOrigin (string)**

Origin of milestone.

**HpeiLOActiveHealthSystem.ClearLog**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystem)
There are no parameters for this action.

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
|Added|iLO6 1.05|
|Format|date-time|

### FileSize

Member of [HpeiLOBackupFile.v1\_0\_0.HpeiLOBackupFile](#hpeilobackupfile)

| | |
|---|---|
|Description|Size of backup file.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### FirmwareVersion

Member of [HpeiLOBackupFile.v1\_0\_0.HpeiLOBackupFile](#hpeilobackupfile)

| | |
|---|---|
|Description|iLO firmware version running when this backup file was created.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeiLOBackupFile](../ilo6_hpe_resourcedefns151/#hpeilobackupfile)|

### Members (array)

Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.BackupFileCount

Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The number of backup files reported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.BackupFilesAllowed

Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The number of backup files supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|
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
|Added|iLO6 1.10|

### HttpPushUri

Member of [HpeiLOBackupRestoreService.v2\_2\_0.HpeiLOBackupRestoreService](#hpeilobackuprestoreservice)

| | |
|---|---|
|Description|The URI to which a client may POST a file for a subsequent restore operation.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
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
|`Links/EthernetNICs`|Collection of [EthernetInterface](../ilo6_network_resourcedefns151/#ethernetinterfacecollection)|

### ConfigurationSettings

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The state of the currently displayed configuration settings.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|
|Format|date-time|

### NTPServers (array)

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

`NTPServers` is an array containing elements of:

**NTPServers[{item}]**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The current NTP server's IPv4 address, IPv6 address, or FQDN. The value either comes from DHCP or is static depending on the DHCP settings.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### PropagateTimeToHost

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|Determines whether the server time is synchronized with the management processor time during the first POST after AC power is applied.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### StaticNTPServers (array)

Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

`StaticNTPServers` is an array containing elements of:

**StaticNTPServers[{item}]**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The static NTP server's IPv4 address, IPv6 address, or FQDN. To set this property, management processor must not be configured to use NTP servers provided by DHCPv4 or DHCPv6.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### TimeZone

**TimeZone.Index**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The index of the current time zone. To set a new time zone, specify a different time zone index. This property can be set only when DHCPv4 or DHCPv6 supplied time settings are disabled. Since the time zone list might vary from one firmware version to another (which often leads to differences in time zone indices), setting the time zone by name is recommended over setting by index, for better compatibility.|
|Type|number|
|Read Only|False|
|Added|iLO6 1.05|

**TimeZone.UtcOffset**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the current time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**TimeZone.Value**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**TimeZoneList[{item}].UtcOffset**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**TimeZoneList[{item}].Value**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### CapacityWatts

Member of [HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The total power supply capacity for all servers in a group.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Groups

### Throttle

Member of [HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|High, Med, or Low based on the percentage of power usage.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### Privileges

**Privileges.HostBIOSConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host BIOS configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.HostNICConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host NIC configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.HostStorageConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host Storage configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.LoginPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Login privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.RemoteConsolePriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Remote console privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.SystemRecoveryConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|System Recovery configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.UserConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|User configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.VirtualMediaPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual media privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.VirtualPowerAndResetPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual power and reset privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Privileges.iLOConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|The management processor configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeiLOFederationGroup](../ilo6_hpe_resourcedefns151/#hpeilofederationgroup)|

### Members (array)

Member of HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**Peers[{item}].ManagerIPAddress**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|Manager IP address of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Peers[{item}].Time**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|Time when the federation peer was added.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**Peers[{item}].URL**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|URL of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|url|

**Peers[{item}].UUID**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|UUID peers that are part of the federation group.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeiLOFederationPeers](../ilo6_hpe_resourcedefns151/#hpeilofederationpeers)|

### Members (array)

Member of HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### FRULink

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The aggregation of the Link signals for all ports on the FRU card.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### FRUType

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The type of FRU that is installed, i.e. Base or Mezzanine FRU.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### Location

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The location where the FRU resides.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### PGood

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The Power Good status.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### PhysicalSlot

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The physical slot in which this FRU resides. 0 is for Base FRU, 1-N is for Mezzanine FRUs|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Seated

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|Indicates if the Base FRU is properly seated in the slot.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### SerialNumber

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The system's serial number.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### UEFIDeviceName

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Description|The Device Name in UTF-8 format.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### UEFIDevicePaths (array)

Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

`UEFIDevicePaths` is an array containing elements of:

**UEFIDevicePaths[{item}]**
Member of [HpeiLOFrus.v2\_0\_0.HpeiLOFrus](#hpeilofrus)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeiLOFrus](../ilo6_hpe_resourcedefns151/#hpeilofrus)|

### Members (array)

Member of HpeiLOFrusCollection.HpeiLOFrusCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOFrusCollection.HpeiLOFrusCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOFrusCollection.HpeiLOFrusCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**Confirmation.Message**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly confirmation information for the current managment processor license.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Confirmation.Service**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Confirmation service URI.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**ConfirmationRequest.EON.LicenseKey**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The license key installed on this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**ConfirmationRequest.EON.Quantity**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The number of entitlements licensed.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**ConfirmationRequest.EON.State**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The current licensing state and behavior of the management processor.  This is affected by license installation, activation and confirmation.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**ConfirmationRequest.System**
**ConfirmationRequest.System.ChipId**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Management processor unique chip identifier.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**ConfirmationRequest.System.Product**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|System housing management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**ConfirmationRequest.System.SerialNumber**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|System serial number.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### License

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### LicenseClass

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The class of current license on this management processor.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### LicenseExpire

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly expiration information of the installed management processor license. For example, for demo license, Evaluation period 2 months 5 days 6 hours remain.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### LicenseFeatures

**LicenseFeatures.AutoCertEnroll**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Automatic Certificate Enrollment.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.DirectoryAuth**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Directory integrated authentication.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.DowngradePolicy**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Firmware downgrade policy setting.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.EmailAlert**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Email based alerting.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.FWScan**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Runtime FW Integrity check.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.Federation**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Distributed peer to peer management.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.Jitter**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Jitter Control.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.KD**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Kernel Debugging (VSP raw mode).|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.KeyMgr**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Store and retrieve keys from an external key manager.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.MURC**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Shared Multi-User Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.ODIM**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Open Distributed Infrastructure Management.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.PowerReg**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Power Regulator.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.RC**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Graphical Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.Recovery**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|OS Recovery Event.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.RemoteSyslog**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Remote Syslog.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.Scrncap**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Video Capture.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.SecureErase**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Secure Erase of embedded media.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.SmartCard**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|2-Factor Authentication (Smart Card).|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.SuiteB**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|SuiteB/CNSA mode support.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.TextCons**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Text Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.VM**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Remote Console based Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.VMScript**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Scripted Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**LicenseFeatures.VSPLogging**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Virtual Serial Port Logging and Playback.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### LicenseInstallDate

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly installation date information of the installed management processor license. For example, 19 May 2017|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### LicenseKey

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-visible license key installed on this management processor. License keys are 25 or 29 characters and contain letters, numbers and hypens. Use POST method to collection of membertype HpeiLOLicense to install / update the license.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### LicenseSeats

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The number of systems authorized to use this activation key.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### LicenseTier

Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The licensed feature-set of the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|`Members[]`|[HpeiLOLicense](../ilo6_hpe_resourcedefns151/#hpeilolicense)|

### Members (array)

Member of HpeiLOLicenseCollection.HpeiLOLicenseCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOLicenseCollection.HpeiLOLicenseCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOLicenseCollection.HpeiLOLicenseCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|
|Format|uri-reference|

**Instances[{item}].@odata.type**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Instances[{item}].ETag**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

| | |
|---|---|
|Description|This is the last known etag of the resource. The property is omitted if not known.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Instances[{item}].HttpMethods (array)**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

`HttpMethods` is an array containing elements of:

**HttpMethods[{item}]**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|`SecurityParameters`|[HpeiLOSecurityParam](../ilo6_hpe_resourcedefns151/#hpeilosecurityparam)|

### OverallSecurityStatus

Member of [HpeiLOSecurityDashboard.v1\_0\_0.HpeiLOSecurityDashboard](#hpeilosecuritydashboard)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### IgnoredBy

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the user who changed the value of Ignore.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### IgnoredTime

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the time when the risk configuration was suppressed.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### RecommendedAction

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the recommended action.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### SecurityStatus

Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents if the status of the security parameter.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|`Members[]`|[HpeiLOSecurityParam](../ilo6_hpe_resourcedefns151/#hpeilosecurityparam)|

### Members (array)

Member of HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## HpeiLOSnmpService

`@odata.type: "#HpeiLOSnmpService.v2_4_0.HpeiLOSnmpService"`

The HpeiLOSnmpService resource describes the properties for managing the SNMP configuration of the BMC.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/snmpservice`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`SNMPUsers`|Collection of [HpeSNMPUser](#hpesnmpuser)|
|`SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](../ilo6_hpe_resourcedefns151/#hpesnmpalertdestinationcollection)|

### AlertDestinationAssociations (array)

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`AlertDestinationAssociations` is an array containing elements of:

**AlertDestinationAssociations[{item}].SNMPAlertProtocol**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Indicate the SNMP protocol associated with the AlertDestination.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`SNMPv1Trap`|Indicate SNMPv1 trap is enabled for the destination.|
|`SNMPv3Trap`|Indicate SNMPv3 trap is enabled for the destination. Needs to fill the SecurityName as well.|
|`SNMPv3Inform`|Indicate SNMPv3 Inform is enabled for the destination. Needs to fill the SecurityName as well.|
|`Null`|A value is temporarily unavailable|

**AlertDestinationAssociations[{item}].SecurityName**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Provides the SNMPv3 security name associated with the destination when SNMP alert protocol is SNMPv3 trap or inform.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### AlertDestinations (array)

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`AlertDestinations` is an array containing elements of:

**AlertDestinations[{item}]**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### AlertsEnabled

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The alert conditions that the management processor detects independently of the host operating system can be sent to specified SNMP alert destinations. Indicates if the SNMPv1 Trap or SNMPv3 Trap is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Contact

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 49 characters that specifies the system administrator or server owner. The string can include a name, email address, or phone number.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### Location

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 49 characters that specifies the physical location of the server.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.SNMPColdStartTrapBroadcast

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|If set to true, the Cold Start Trap will be enabled. The Cold Start Trap is broadcast to a subnet broadcast address if there are no trap destinations configured in the SNMP Alert Destination(s) boxes.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### PeriodicHSATrapConfig

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|If there are any component in health status array(HSA) Trap are in degraded or failed condition then HSA trap will be sent periodically till the component status becomes ok or fine condition. This setting is disabled by default.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Disabled`|
|`Daily`|
|`Weekly`|
|`Monthly`|

### ReadCommunities (array)

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`ReadCommunities` is an array containing elements of:

**ReadCommunities[{item}]**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Role

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 64 characters that describes the server role or function.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### RoleDetail

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 512 characters that describes specific tasks that the server might perform.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### SNMPAlertDestinations

SNMP Alert Destination details.
SNMPAlertDestinations is a link (`"@odata.id": URI`) to another resource.

### SNMPUsers

SNMPv3 User details.
SNMPUsers is a link (`"@odata.id": URI`) to another resource.

### SNMPv1Enabled

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Indicates if the SNMPv1 Query or SNMPv1 Trap is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### SNMPv1RequestsEnabled

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Indicates if the SNMPv1 Query is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.40|

### SNMPv1TrapEnabled

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Indicates if the SNMPv1 Trap is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.40|

### SNMPv1Traps

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|When enabled, SNMPv1 traps are sent to the remote management systems configured in the SNMP Alert Destination(s) boxes.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### SNMPv3EngineID

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The SNMPv3 Engine ID is the unique identifier of an SNMP engine that belongs to an SNMP agent entity. This value must be a hexadecimal string with an even number of 6 to 32 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### SNMPv3InformRetryAttempt

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Specifies the number of retries to be used in SNMPv3 inform.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### SNMPv3InformRetryIntervalSeconds

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Specifies the interval in seconds between SNMPv3 inform retries.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### SNMPv3RequestsEnabled

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Indicates if the SNMPv3 Query is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.40|

### SNMPv3TrapEnabled

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Indicates if the SNMPv3 Trap is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.40|

### Status

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)
See the Redfish standard schema and specification for information on common Status object.

### TrapCommunities (array)

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`TrapCommunities` is an array containing elements of:

**TrapCommunities[{item}]**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### TrapSourceHostname

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Determines the host name that is used in the SNMP-defined sysName variable when the management processor generates SNMP traps.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Manager`|
|`System`|

### Users (array)

Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

`Users` is an array containing elements of:

**Users[{item}].AuthPassphrase**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the passphrase to use for sign operations. Enter a value of 8 to 49 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Users[{item}].AuthProtocol**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the message digest algorithm to use for encoding the authorization passphrase. The message digest is calculated over an appropriate portion of an SNMP message, and is included as part of the message sent to the recipient. Select MD5 (Message Digest) or SHA (Secure Hash Algorithm).|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`MD5`|Indicate Message Digest Algorithm.|
|`SHA`|Indicate Secure Hash Algorithm.|
|`SHA256`|Indicate SHA256 Algorithm.|
|`Null`|A value is temporarily unavailable|

**Users[{item}].PrivacyPassphrase**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the passphrase to use for encrypt operations. Enter a value of 8 to 49 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Users[{item}].PrivacyProtocol**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the encryption algorithm to use for encoding the privacy passphrase. A portion of an SNMP message is encrypted before transmission. Select AES (Advanced Encryption Standard) or DES (Data Encryption Standard).|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`AES`|Indicate Advanced Encryption Standard Algorithm.|
|`DES`|Indicate Data Encryption Standard Algorithm.|
|`Null`|A value is temporarily unavailable|

**Users[{item}].SecurityName**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The user profile name. Enter an alphanumeric string of 1 to 32 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Users[{item}].UserEngineID**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)

| | |
|---|---|
|Description|The UserEngineID is combined with the SecurityName to create a SNMPv3 user for each manager. It is only used for creating remote accounts used with INFORM messages. If this property is not set then INFORM message will be sent with default or iLO configured engine ID. This value must be a hexadecimal string with an even number of 10 to 64 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### Actions

**HpeiLOSnmpService.SendSNMPTestAlert**
Member of [HpeiLOSnmpService.v2\_4\_0.HpeiLOSnmpService](#hpeilosnmpservice)
There are no parameters for this action.

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
|Added|iLO6 1.05|
|Format|uri-reference|

**ManagerTrustedCertificates[{item}].@odata.type**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**ManagerTrustedCertificates[{item}].Certificate**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate (Base64 encoded).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ManagerTrustedCertificates[{item}].CertificateDetails**
**ManagerTrustedCertificates[{item}].CertificateDetails.Issuer**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**ManagerTrustedCertificates[{item}].CertificateDetails.Subject**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotAfter**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotBefore**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**ManagerTrustedCertificates[{item}].RecordType**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Specifies the type of SSO record imported.|
|Type|string|
|Read Only|true|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**ManagerTrustedCertificates[{item}].ServerName**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The Server name (or certificate subject).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.AdminPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege**
**SSOsettings.OperatorPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.OperatorPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.SSOTrustMode**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Represents the SSO Trust Mode.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**SSOsettings.UserPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Actions

**HpeiLOSSO.ImportDNSName**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)
Add DNS Name to the record list.

**Parameters:**

**DNSName (string)**

DNS Name of the HPE SSO Trusted Server.

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
|ImportCertUri|iLO imports the certificate from the HPE SSO compliant application over the network.|
|DirectImportCert|iLO directly imports the Certificate.|

**HpeiLOSSO.DeleteSSORecordbyNumber**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)
Delete SSO record by record number.

**Parameters:**

**RecordNumber (integer)**

Index of the SSO record to be deleted.

**HpeiLOSSO.DeleteAllSSORecords**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilosso)
Delete all the SSO records.

There are no parameters for this action.

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
|Added|iLO6 1.05|
|Format|date-time|

### DeviceClass

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|Device type GUID from iLO secure flash header|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Filename

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|The unique filename of the image.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Filepath

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|Path of file on the USB LUN if the repo is mounted as USB.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### ImageUri

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|URI of the image binary.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### SizeBytes

Member of [HpeInvalidImage.v1\_0\_0.HpeInvalidImage](#hpeinvalidimage)

| | |
|---|---|
|Description|Size of the image file in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeInvalidImage](../ilo6_hpe_resourcedefns151/#hpeinvalidimage)|

### Members (array)

Member of HpeInvalidImageCollection.HpeInvalidImageCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeInvalidImageCollection.HpeInvalidImageCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeInvalidImageCollection.HpeInvalidImageCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|`@Redfish.Settings/SettingsObject`|[HpeiSCSISoftwareInitiator](../ilo6_hpe_resourcedefns151/#hpeiscsisoftwareinitiator)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns151/#hpebaseconfigs)|

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
|Added|iLO6 1.05|

### iSCSINicSources (array)

Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

`iSCSINicSources` is an array containing elements of:

**iSCSINicSources[{item}]**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The BIOS Attribute that describes a NIC instance that can be used as a target for iSCSI configuration.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**iSCSISources[{item}].UEFIDevicePath**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path for this option, in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIAttemptInstance**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Uniquely identifies this iSCSI attempt within iSCSISources array. If set to zero, all other properties in the boot option object are ignored (which will delete an existing boot attempt).|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIAttemptName**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Human readable descriptive name for this iSCSI attempt configuration|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIAuthenticationMethod**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI connection authentication method.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIChapType**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The CHAP authentication type. This is applicable only when the Authentication Method is set to CHAP.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIConnectRetry**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The number of times to retry the iSCSI connection. Zero means no retries.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIConnectTimeoutMS**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI connection timeout value in milliseconds.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIConnection**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Enables or Disables iSCSI mode for a selected iSCSI attempt.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIInitiatorInfoViaDHCP**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|If enabled, the iSCSI Initiator information is configured from DHCP. Otherwise, the iSCSI initiator information must be statically configured. When providing static values for the Initiator, ensure Target settings are also configured with static values.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIInitiatorIpAddress**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The IP Address of the iSCSI Initiator, if not configured via DHCP. The Initiator IP Address is always auto-assigned if IP address type is IPv6. The address must be an IPv4 or IPv6 address, depending on the IP Address Type.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIInitiatorNetmask**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The subnet mask of the iSCSI Initiator, if not configured via DHCP. The address must be an IPv4.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIIpAddressType**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI IP Address type. If set to Auto, IPv4 will be attempted first, followed by IPv6.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSINicSource**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|A BIOS Attribute that describes this selected NIC instance. This must match one of the possible values listed in the iSCSINicSources array.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIReverseChapSecret**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The password needed for reverse CHAP authentication (from the target to the initiator). This is applicable only when the Authentication Method is set to CHAP, and the CHAP Type is set to Mutual.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSIReverseChapUsername**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|User Name for reverse CHAP authentication (from the target to the initiator). This is applicable only when the Authentication Method is set to CHAP, and the CHAP Type is set to Mutual.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSITargetInfoViaDHCP**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|If enabled, the iSCSI target information are configured from DHCP. Otherwise, the iSCSI target information must be statically configured.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSITargetIpAddress**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The IP Address of the iSCSI Target, if not obtained from DHCP. The address must be an IPv4 or IPv6 address, depending on the IP Address Type.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSITargetName**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The worldwide unique iSCSI Qualified Name (IQN) of this iSCSI target. Only the IQN format is accepted. EUI format is not supported (for example, 'iqn.1991-05.com.microsoft:iscsitarget-iscsidisk-target').|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**iSCSISources[{item}].iSCSITargetTcpPort**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The iSCSI Target TCP Port number, if not obtained from DHCP.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## HpeKmsConfig

`@odata.type: "#HpeKmsConfig.v1_0_0.HpeKmsConfig"`

The schema definition for Key Management Service configuration.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/Systems/{item}/Bios/Kmsconfig/Settings`|GET PATCH |
|`/redfish/v1/systems/{item}/bios/Kmsconfig`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeKmsConfig](../ilo6_hpe_resourcedefns151/#hpekmsconfig)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns151/#hpebaseconfigs)|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**EncryptableDevices[{item}].EncryptionAction**
Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Devices can take two types of action for encrypting namely, enable and disable. If user would like to modify the Passphrase, then User can opt to change encryption|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**EncryptableDevices[{item}].EncryptionStatus**
Member of [HpeKmsConfig.v1\_0\_0.HpeKmsConfig](#hpekmsconfig)

| | |
|---|---|
|Description|Encryption status of the device.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|
|Format|date-time|

### Expire

Member of [HpeMaintenanceWindow.v1\_0\_1.HpeMaintenanceWindow](#hpemaintenancewindow)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string after which we will automatically change state to Expired - null for no expire time|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|
|Format|date-time|

### Modified

Member of [HpeMaintenanceWindow.v1\_0\_1.HpeMaintenanceWindow](#hpemaintenancewindow)

| | |
|---|---|
|Description|ISO-time of last maintenance window item update by updater (not client)|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### StartAfter

Member of [HpeMaintenanceWindow.v1\_0\_1.HpeMaintenanceWindow](#hpemaintenancewindow)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string of earliest execution.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|
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
|`Members[]`|[HpeMaintenanceWindow](../ilo6_hpe_resourcedefns151/#hpemaintenancewindow)|

### Members (array)

Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### Maximum

Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Maximum power across all samples, taken from the 24 hour history.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Minimum

Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Minimum power across all samples, taken from the 24 hour history.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**PowerDetail[{item}].Average**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Average power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].Cap**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The applicable power cap in Watts at the time of this power sample.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].CpuAvgFreq**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|CPU average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].CpuCapLim**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Measures the effect of the power cap on performance in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].CpuMax**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The percentage of time the CPU spent in its maximum power mode.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].CpuPwrSavLim**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Measures the effect of CPU Power Regulator state switching on performance in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].CpuUtil**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|CPU utilization in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].CpuWatts**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the system CPUs in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].DimmWatts**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the system memory DIMMs in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].GpuWatts**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the GPU(s) in Watts.  This will be 0 if no GPUs are installed or if the drivers are not loaded.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].Minimum**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Minimum power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].Peak**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Peak power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerDetail[{item}].PrMode**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Power Regulator mode, which can be OS Control, Static High, Static Low or Dynamic.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**PowerDetail[{item}].Time**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Time at which the power sample detail was captured.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**PowerDetail[{item}].UnachCap**
Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|If true, the configured power cap could not be achieved due to system power requirements.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Samples

Member of [HpePowerMeter.v2\_0\_1.HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Number of samples in the array.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|`ServiceEventLogs`|Collection of [LogEntry](../ilo6_other_resourcedefns151/#logentrycollection)|

### ConnectModel

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The Remote Support connect model type.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`CentralConnect`|

### DestinationPort

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The port number of the Insight Remote Support server. This is applicable for Central Connect only. |
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### DestinationURL

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The host name or IP address of the Remote Support server. This is applicable for Central Connect only.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### ExternalAgentName

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates the name of external Remote Support agent.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### HpePassportPassword

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|HPE Passport Account Password.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### HpePassportUserId

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|HPE Passport Account Id.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### LastTransmissionDate

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The last transmission date.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### LastTransmissionError

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The last transmission error.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### LastTransmissionType

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The last transmission type. |
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### MaintenanceTimeLeftInMinutes

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates the time remaining in minutes for the server to be in the maintenance mode.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### ProxySettings

**ProxySettings.Password**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Password for web proxy server authentication. |
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**ProxySettings.Port**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Port number on which to communicate with the web proxy server. |
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**ProxySettings.Url**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Web proxy server host name or IP address.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|
|Format|url|

**ProxySettings.Username**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Username for web proxy server authentication. |
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### RemoteSupportEnabled

Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates if the Remote Support Service is available or not. |
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### ServiceEventLogs

A reference to the collection of service event logs.
ServiceEventLogs is a link (`"@odata.id": URI`) to another resource.

### Actions

**HpeRemoteSupport.RegisterDeviceToRemoteSupport**
Member of [HpeRemoteSupport.v2\_6\_0.HpeRemoteSupport](#hperemotesupport)

**Parameters:**

**DestinationUrl (string)**

The host name or IP address of the Remote Support server. This is applicable for Central Connect only.

## HpeSecureEraseReport

`@odata.type: "#HpeSecureEraseReport.v1_1_0.HpeSecureEraseReport"`

The HpeSecureEraseReport resource describes the secure erase status and the other details of the devices during the secure system erase operation.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries/{item}`|GET |

### DeviceIdentifier

Member of [HpeSecureEraseReport.v1\_1\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|This represents the unique identifier for the device in the system like it's physical location or the exact device path etc.,|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceType

Member of [HpeSecureEraseReport.v1\_1\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|This indicates the device type being securely erased.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`SATADrives`|This indicates the device type is SATA drive|
|`NVMeDrives`|This indicates the device type is NVMe drive|
|`NVDIMM`|This indicates the device type is NVDIMM/Persistent Memory|
|`TPM`|This indicates the device type is TPM (Trusted Platform Module)|
|`UEFIStore`|This indicates the device type is UEFI Store|
|`NAND`|This indicates the device type is Embedded NAND Flash|
|`NVRAM`|This indicates the device type is NVRAM (Battery backed SRAM)|
|`PCIControllers`|This indicates the device type is PCI Controllers|

### EraseEndTime

Member of [HpeSecureEraseReport.v1\_1\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|The date and time of the end of secure erase operation, ISO8601 Redfish-style time|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### EraseStartTime

Member of [HpeSecureEraseReport.v1\_1\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|The date and time of the start of secure erase operation, ISO8601 Redfish-style time|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### EraseStatus

Member of [HpeSecureEraseReport.v1\_1\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|Indicates the secure erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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

Member of [HpeSecureEraseReport.v1\_1\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|This indicates the NIST SP800-88 Rev.1 (National Institute of Standards and Technology) approved techniques to sanitize a particular media or device.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Purge`|This indicates that Purge technique is used to sanitize the device.|
|`Clear`|This indicates that Clear technique is used to sanitize the device.|

### SerialNumber

Member of [HpeSecureEraseReport.v1\_1\_0.HpeSecureEraseReport](#hpesecureerasereport)

| | |
|---|---|
|Description|This represents the serial number of the device being erased.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeSecureEraseReport](../ilo6_hpe_resourcedefns151/#hpesecureerasereport)|

### Members (array)

Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Links/SecureEraseReportEntries`|Collection of [HpeSecureEraseReport](../ilo6_hpe_resourcedefns151/#hpesecureerasereportcollection)|

### EraseInitiatedBy

Member of [HpeSecureEraseReportService.v1\_0\_0.HpeSecureEraseReportService](#hpesecureerasereportservice)

| | |
|---|---|
|Description|This indicates the user name who initiated the secure system erase process.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ServerSerialNumber

Member of [HpeSecureEraseReportService.v1\_0\_0.HpeSecureEraseReportService](#hpesecureerasereportservice)

| | |
|---|---|
|Description|This represents the server serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Actions

**HpeSecureEraseReportService.DeleteSecureEraseReport**
Member of [HpeSecureEraseReportService.v1\_0\_0.HpeSecureEraseReportService](#hpesecureerasereportservice)
There are no parameters for this action.

## HpeSecurityService

`@odata.type: "#HpeSecurityService.v2_4_0.HpeSecurityService"`

The HpeSecurityService resource describes the properties for management of the security configuration of the BMC.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/securityservice`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/SSO`|[HpeiLOSSO](../ilo6_hpe_resourcedefns151/#hpeilosso)|
|`Links/SecurityParams`|Collection of [HpeiLOSecurityParam](../ilo6_hpe_resourcedefns151/#hpeilosecurityparamcollection)|
|`Links/AutomaticCertificateEnrollment`|[HpeAutomaticCertEnrollment](../ilo6_hpe_resourcedefns151/#hpeautomaticcertenrollment)|
|`Links/HttpsCert`|[HpeHttpsCert](../ilo6_hpe_resourcedefns151/#hpehttpscert)|
|`Links/CertAuth`|[HpeCertAuth](../ilo6_hpe_resourcedefns151/#hpecertauth)|
|`Links/ESKM`|[HpeESKM](../ilo6_hpe_resourcedefns151/#hpeeskm)|
|`Links/SecurityDashboard`|[HpeiLOSecurityDashboard](../ilo6_hpe_resourcedefns151/#hpeilosecuritydashboard)|

### ComponentIntegrityPolicy

Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`NoPolicy`|
|`HaltBootOnSPDMFailure`|

### CurrentCipher

Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Current cipher in use.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### GlobalComponentIntegrity

Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Enabled`|
|`Disabled`|

### LoginSecurityBanner

**LoginSecurityBanner.IsEnabled**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Login security banner is enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**LoginSecurityBanner.SecurityMessage**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Text message to appear on the iLO login page and iLO SSH pre-authentication banner when login security banner is enabled.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### OpenBMCTransferOfOwnership

Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|State of iLO-OpenBMC Transfer of Ownership feature.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.35|

The following are the supported values:

|Value|Description|
|---|---|
|`Supported`|OpenBMC Transfer feature is supported but it is not enabled for transfer.|
|`Inhibited`|OpenBMC Transfer feature is inhibited for this server.|
|`Configured`|iLO is configured successfully for OpenBMC transfer.|
|`UnSupportedSecurityState`|OpenBMC Transfer feature is not supported in FIPS/CNSA security states.|
|`UnSupportedSecureElement`|OpenBMC Transfer feature is not supported without correct Secure Element.|
|`Error`|Error state.|

### OpenBMCTransferStatus

Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|OpenBMC transfer status.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.35|

The following are the supported values:

|Value|Description|
|---|---|
|`NotPerformed`|OpenBMC Transfer is not performed|
|`Performed`|OpenBMC Transfer is performed at least once|
|`Unknown`|Status unknown|

### PlatformCert

**PlatformCert.Certificates**
This is a reference to a collection of certificates used for PlatformCert by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

### PlatformCertUpdate

**PlatformCertUpdate.Certificates**
This is a reference to a collection of certificates used for PlatformCert Updates by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

### SSHHostKey

Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|SSH Host Key identifying the service.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### SecurityState

Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|The operational security level of this Manager.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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

Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

`SecurityState@Redfish.AllowableValues` is an array containing elements of:

**SecurityState@Redfish.AllowableValues[{item}]**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|This Indicate whether the TLS 1.0 is Enabled or disabled.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Enabled TLS 1.0.|
|`Disabled`|Disabled TLS 1.0.|

**TLSVersion.TLS1_1**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|This Indicate whether the TLS 1.1 is Enabled or disabled.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Enabled TLS 1.1.|
|`Disabled`|Disabled TLS 1.1.|

**TLSVersion.TLS1_2**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|This Indicate whether the TLS 1.2 is Enabled or disabled.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Enabled TLS 1.2.|
|`Disabled`|Disabled TLS 1.2.|

**TLSVersion.TLS1_3**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|This Indicate whether the TLS 1.3 is Enabled or disabled.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Enabled TLS 1.3.|
|`Disabled`|Disabled TLS 1.3.|

### TrustedOSSecurity

**TrustedOSSecurity.EnableBackgroundScan**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Enables or disables background scan of host OS software.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**TrustedOSSecurity.LastScanResult**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Health of the host after the last scan done by Trusted OS Security scan engine.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|The last Trusted OS Security scan completed without finding any issues.|
|`Critical`|The last Trusted OS Security scan completed finding issue(s). Refer to the SL log for details.|
|`Unknown`|The health is Unknown because either the scan data is unavailable or scan is not enabled or last scan failed to complete.|

**TrustedOSSecurity.LastScanTime**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|The time stamp of the last Trusted OS Security scan.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**TrustedOSSecurity.OnIntegrityFailure**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Sets the policy for how the Trusted OS Security check handles integrity failures.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NoAction`|No action will be taken when a failure is detected.|
|`Alert`|Generate an alert when a failure is detected.|
|`PowerOff`|Gracefully power system off when a failure is detected.|
|`PowerOffForce`|Force system power off when a failure is detected.|
|`Reset`|Reset system power off when a failure is detected.|
|`ColdBoot`|ColdBoot system power off when a failure is detected.|
|`ForceNMI`|ForceNMI system power off when a failure is detected.|

**TrustedOSSecurity.ScanEverySeconds**
Member of [HpeSecurityService.v2\_4\_0.HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Sets the interval between Trusted OS Security scans in second increments.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**BackplaneInfo.FirmwareRevision**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Indicates the firmware revision in ASCII value.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**HostPortsInfo[{item}].PortNumber**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents the number of physical host ports in SEP.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**HostPortsInfo[{item}].SlotNumber**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents the slot number of SAS attached to host port x in SEP.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BackplaneInfo.SEPID**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Indicates the storage enclosure processor ID.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BackplaneInfo.SEPNodeId**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|The node ID represent the node ID where the storage enclosure processor is residing.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BackplaneInfo.StartBay**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents a starting number of the bay.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BackplaneInfo.TotalBays**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Total bay count represents the number of bays attached to the SEP.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BackplaneInfo.TypeID**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Indicates the Backplane type ID for the identifier for backplane type.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BackplaneInfo.WWID**
Member of [HpeServerAccHddService.v1\_0\_0.HpeServerAccHddService](#hpeserveracchddservice)

| | |
|---|---|
|Description|Represents a unique world wide ID defining a SEP.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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

**BayNumber[{item}]**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**HostPort[{item}].PortNumber**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|Represents the number of physical host ports in SEP, null represents unassigned bay group.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### CurrentZoneConfiguration

**CurrentZoneConfiguration.HostPort (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`HostPort` is an array containing elements of:

**HostPort[{item}].BayNumber (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`BayNumber` is an array containing elements of:

**BayNumber[{item}]**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**HostPort[{item}].PortNumber**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|Represents the number of physical host ports in SEP, null represents unassigned bay group.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### PendingZoneConfiguration

**PendingZoneConfiguration.HostPort (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`HostPort` is an array containing elements of:

**HostPort[{item}].BayNumber (array)**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

`BayNumber` is an array containing elements of:

**BayNumber[{item}]**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**HostPort[{item}].PortNumber**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|Represents the number of physical host ports in SEP, null represents unassigned bay group.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### SEPNodeId

Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|The node ID represent the node ID where the storage enclosure processor is residing.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### TypeID

Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)

| | |
|---|---|
|Description|Indicates the Backplane type ID for the identifier for backplane type.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Actions

**HpeServerAccHddZone.BackupConfigurationToBmc**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)
Backup Apollo Chassis Controller Hdd zone configuration to BMC.

There are no parameters for this action.

**HpeServerAccHddZone.LoadDefault**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)
Load Apollo Chassis Controller default Hdd zone configuration.

There are no parameters for this action.

**HpeServerAccHddZone.ConfigureZone**
Member of [HpeServerAccHddZone.v1\_0\_0.HpeServerAccHddZone](#hpeserveracchddzone)
Execute Apollo Chassis Controller Hdd zone configuration.

**Parameters:**

**HostPort (array)**

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
|Added|iLO6 1.05|

**CalibrationData.StartTime**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The calibration start time stamp.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.State**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|Specifies whether the calibration is valid or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower**
**CalibrationData.ThrottlePeakPower.Percent_000**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 0 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_005**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 5 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_010**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 10 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_015**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 15 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_020**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 20 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_025**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 25 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_030**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 30 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_035**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 35 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_040**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 40 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_045**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 45 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_050**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 50 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_055**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 55 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_060**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 60 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_065**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 65 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_070**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 70 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_075**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 75 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_080**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 80 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_085**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 85 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_090**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 90 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_095**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 95 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ThrottlePeakPower.Percent_100**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The peak power of 100 Percent throttling.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**CalibrationData.ZoneNumber**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The zone number either on the entire chassis or specific zone. 0 for entire chassis, other number is for specific zone.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### CalibrationInProgress

Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)

| | |
|---|---|
|Description|The current state of the chassis power zone calibration task.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Actions

**HpeServerAccPowerCalibration.Calibrate**
Member of [HpeServerAccPowerCalibration.v1\_0\_0.HpeServerAccPowerCalibration](#hpeserveraccpowercalibration)
Execute the Apollo Chassis Controller power calibration configuration.

**Parameters:**

**EEPROMSaveEnabled (boolean)**

**AllZone (boolean)**

**Seconds (integer)**

**ZoneNumber (integer)**

**ActionType (string)**

|Value|Description|
|---|---|
|Start|
|Stop|

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
|Added|iLO6 1.05|

**ActualPowerLimits[{item}].ZoneNumber**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The zone number either on the entire chassis or specific zone. 0 for entire chassis, other number is for specific zone.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**PowerLimitRanges[{item}].MinimumPowerLimit**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The Minimum power limit (in watts) for the zone.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerLimitRanges[{item}].ZoneNumber**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The zone number either on the entire chassis or specific zone. 0 for entire chassis, other number is for specific zone.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**PowerLimits[{item}].ZoneNumber**
Member of [HpeServerAccPowerLimit.v1\_0\_0.HpeServerAccPowerLimit](#hpeserveraccpowerlimit)

| | |
|---|---|
|Description|The zone number either on the entire chassis or specific zone. 0 for entire chassis, other number is for specific zone.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**NodeInfoList[{item}].Throttle**
Member of [HpeServerAccPowerNodesInfo.v1\_0\_0.HpeServerAccPowerNodesInfo](#hpeserveraccpowernodesinfo)

| | |
|---|---|
|Description|It indicates the current throttle on the node. (PWM %)|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**NodeInfoList[{item}].WarningStatus**
Member of [HpeServerAccPowerNodesInfo.v1\_0\_0.HpeServerAccPowerNodesInfo](#hpeserveraccpowernodesinfo)

| | |
|---|---|
|Description|Specifies whether the node is in warning status or not. WarningStatus indicates a node is over loading and chassis manager force it throttle at 50% for 5 mins|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### PowerRegulationEnabled

Member of [HpeServerAccPowerService.v1\_0\_0.HpeServerAccPowerService](#hpeserveraccpowerservice)

| | |
|---|---|
|Description|Determines whether power regulation is enabled or disabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### PowerRegulatorMode

Member of [HpeServerAccPowerService.v1\_0\_0.HpeServerAccPowerService](#hpeserveraccpowerservice)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**Node[{item}].NodePriority**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

| | |
|---|---|
|Description|The power regulation node priority, the range must between 1 - 5. 5 is default and lowest priority.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Zone[{item}].ZoneNumber**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

| | |
|---|---|
|Description|The zone number of zone configuration.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Zone[{item}].ZonePriority**
Member of [HpeServerAccPowerZone.v1\_0\_0.HpeServerAccPowerZone](#hpeserveraccpowerzone)

| | |
|---|---|
|Description|The power regulation zone priority, the range must between 1 - 5. 5 is default and lowest priority.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|`@Redfish.Settings/SettingsObject`|[HpeServerBootSettings](../ilo6_hpe_resourcedefns151/#hpeserverbootsettings)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns151/#hpebaseconfigs)|

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
|Added|iLO6 1.05|

**BootSources[{item}].CorrelatableID**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|Contains any CorrelatableIDs that represent this boot option. The correlatableID values can be JSON Pointers or UEFI identifiers.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**BootSources[{item}].StructuredBootString**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|Uniquely identifies this boot option within the server.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**BootSources[{item}].UEFIDevicePath**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path for this boot option, in UTF-8 format.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### DefaultBootOrder (array)

Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

`DefaultBootOrder` is an array containing elements of:

**DefaultBootOrder[{item}]**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|Default UEFI boot order device type. This is used to define the order in which UEFI boot order is reset to when a default configuration is requested.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**DesiredBootDevices[{item}].Lun**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|The Logical Unit Number (LUN) of the desired boot device. This value must be a hexadecimal string with an even number of 2 to 16 characters, excluding the first two characters, 0x (for example, '0x01').|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**DesiredBootDevices[{item}].Wwn**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|The Fibre Channel World Wide Name (WWN) of the desired boot device. This value must be a hexadecimal string with an even number of 2 to 16 characters, excluding the first two characters, 0x (for example, '0x0001020304050607').|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

**DesiredBootDevices[{item}].iScsiTargetName**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|The iSCSI node target name of the desired boot device. The value must be a string based on IETF RFC 3270, and can be up to 223 characters in length (for example, 'iqn.1991-05.com.microsoft:iscsitarget-iscsidisk-target').|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### PersistentBootConfigOrder (array)

Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

`PersistentBootConfigOrder` is an array containing elements of:

**PersistentBootConfigOrder[{item}]**
Member of [HpeServerBootSettings.v2\_0\_0.HpeServerBootSettings](#hpeserverbootsettings)

| | |
|---|---|
|Description|The structured boot string that references a corresponding entry in the BootSources array.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

## HpeServerConfigLock

`@odata.type: "#HpeServerConfigLock.v1_0_0.HpeServerConfigLock"`

The schema definition for Server Configuration Lock configuration.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/Systems/{item}/Bios/Serverconfiglock/Settings`|GET PATCH |
|`/redfish/v1/systems/{item}/bios/Serverconfiglock`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeServerConfigLock](../ilo6_hpe_resourcedefns151/#hpeserverconfiglock)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns151/#hpebaseconfigs)|

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
|Added|iLO6 1.05|

### ServerConfigLockChallenge

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Select this option to enable or disable a Server Configuration Lock password challenge on every boot.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### ServerConfigLockState

Member of [HpeServerConfigLock.v1\_0\_0.HpeServerConfigLock](#hpeserverconfiglock)

| | |
|---|---|
|Description|Enabled/Disabled state of the Server Configuration Lock Feature.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|`DeviceInstances[]`|[HpeServerPciDevice](../ilo6_hpe_resourcedefns151/#hpeserverpcidevice)|

### ComponentIntegrityStatus

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Unsupported`|Unsuccessful verification.|
|`Success`|Successful verification.|
|`Failure`||

### DeviceInstances (array)

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

`DeviceInstances` is an array containing elements of:

**DeviceInstances[{item}].@odata.id**
Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### DeviceType

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Device type.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`GPU`|GPU|
|`PLX Controller`|PLX Controller (Bridge)|
|`Expansion Riser`|Expansion Riser|
|`Smart Storage`|Smart Storage|
|`SAS/SATA Storage Controller`|SAS/SATA Storage Controller|
|`IDE Storage Controller`|IDE Storage Controller|
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
|`Embedded SATA Controller`|Embedded SATA Controller|

### FirmwareVersion

**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.10|

**FirmwareVersions[{item}].VersionString**
Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Version String of GPU cores|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

### Location

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Location of the device.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### MCTPProtocolDisabled

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Set to true to disable MCTP on this slot. Once disabled, can be enabled only through MCTP factory reset.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Manufacturer

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Device manufacturer.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### PartNumber

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Board part Number which is HPE PCA Assembly Number.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ProductPartNumber

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Product Part Number.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ProductVersion

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Product Version.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### SerialNumber

Member of [HpeServerDevice.v2\_1\_0.HpeServerDevice](#hpeserverdevice)

| | |
|---|---|
|Description|Product Serial Number.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeServerDevice](../ilo6_hpe_resourcedefns151/#hpeserverdevice)|

### Members (array)

Member of HpeServerDeviceCollection.HpeServerDeviceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeServerDeviceCollection.HpeServerDeviceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeServerDeviceCollection.HpeServerDeviceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## HpeServerPciDevice

`@odata.type: "#HpeServerPciDevice.v2_1_0.HpeServerPciDevice"`

The HpeServerPciDevice resource describes the properties of PCI devices.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/pcidevices/{item}`|GET |

### BayNumber

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Bay number value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Bifurcated

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Indicates if the PCIe device support bifurcation.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device bus number value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### ClassCode

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI class code of the endpoint.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceID

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device ID of the device.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceInstance

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device instance value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceLocation

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device location.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceNumber

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device number value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceResourceId

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device resource id or hash id.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.20|

### DeviceSubInstance

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device sub-instance value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceType

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Device type value.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Enclosure number value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### FunctionNumber

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device function number value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### LocationString

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Text representation of the UEFI device location, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### SegmentNumber

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI segment group number value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### StructuredName

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### SubclassCode

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI sub class code of the endpoint.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### SubsystemDeviceID

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI subsystem device ID of the device.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### SubsystemVendorID

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI subsystem vendor ID of the device.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### UEFIDevicePath

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path, in UTF-8 format.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### VendorID

Member of [HpeServerPciDevice.v2\_1\_0.HpeServerPciDevice](#hpeserverpcidevice)

| | |
|---|---|
|Description|PCI vendor ID of the device.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeServerPciDevice](../ilo6_hpe_resourcedefns151/#hpeserverpcidevice)|

### Members (array)

Member of HpeServerPciDeviceCollection.HpeServerPciDeviceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeServerPciDeviceCollection.HpeServerPciDeviceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeServerPciDeviceCollection.HpeServerPciDeviceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## HpeServerPCISlot

`@odata.type: "#HpeServerPCISlot.v2_2_0.HpeServerPCISlot"`

The HpeServerPCISlot resource describes the properties of PCI slots.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/pcislots/{item}`|GET |

### BusNumber

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot bus number.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Characteristics

**Characteristics.Provides3_3Volts**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Provides 3.3 volts.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.Provides5Volts**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Provides 5.0 volts.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.SlotIsShared**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|The slot shares its opening with another slot.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.SupportsCardBus**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Card Bus.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.SupportsHotPlugDevices**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Slot supports hot-plug devices.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.SupportsModemRingResume**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Modem Ring Resume.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.SupportsPCCard16**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports PC Card-16.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.SupportsPowerManagementEventSignal**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot supports Power Management Event signal.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.SupportsSMBusSignal**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot supports SMBUS signal.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Characteristics.SupportsZoomVideo**
Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Zoom Video.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceNumber

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot device number.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### FunctionNumber

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot function number.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Length

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot length|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Short`|
|`Long`|
|`Other`|

### LinkLanes

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Bandwidth capacity of the slot, measured by the number of PCI Express Lanes present. Also known as the slot width.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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

### SegmentNumber

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot segment group number value.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.30|

### Status

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)
See the Redfish standard schema and specification for information on common Status object.

### SupportsHotPlug

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Specifies whether the slot supports hot-plug devices.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Technology

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI technology|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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

Member of [HpeServerPCISlot.v2\_2\_0.HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeServerPCISlot](../ilo6_hpe_resourcedefns151/#hpeserverpcislot)|

### Members (array)

Member of HpeServerPCISlotCollection.HpeServerPCISlotCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeServerPCISlotCollection.HpeServerPCISlotCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeServerPCISlotCollection.HpeServerPCISlotCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### SNMPAlertProtocol

Member of [HpeSNMPAlertDestination.v2\_0\_0.HpeSNMPAlertDestination](#hpesnmpalertdestination)

| | |
|---|---|
|Description|Indicate the SNMP protocol associated with the AlertDestination.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### TrapCommunity

Member of [HpeSNMPAlertDestination.v2\_0\_0.HpeSNMPAlertDestination](#hpesnmpalertdestination)

| | |
|---|---|
|Description|The configured SNMPv1 trap community string.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeSNMPAlertDestination](../ilo6_hpe_resourcedefns151/#hpesnmpalertdestination)|

### Members (array)

Member of HpeSNMPAlertDestinationCollection.HpeSNMPAlertDestinationCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSNMPAlertDestinationCollection.HpeSNMPAlertDestinationCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeSNMPAlertDestinationCollection.HpeSNMPAlertDestinationCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### AuthProtocol

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|Sets the message digest algorithm to use for encoding the authorization passphrase. The message digest is calculated over an appropriate portion of an SNMP message, and is included as part of the message sent to the recipient.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### PrivacyProtocol

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|Sets the encryption algorithm to use for encoding the privacy passphrase. A portion of an SNMP message is encrypted before transmission.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### UserEngineID

Member of [HpeSNMPUser.v2\_1\_0.HpeSNMPUser](#hpesnmpuser)

| | |
|---|---|
|Description|The UserEngineID is combined with the SecurityName to create a SNMPv3 user for each manager. It is only used for creating remote accounts used with INFORM messages. If this property is not set then INFORM message will be sent with default or iLO configured engine ID. This value must be a hexadecimal string with an even number of 10 to 64 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeSNMPUser](../ilo6_hpe_resourcedefns151/#hpesnmpuser)|

### Members (array)

Member of HpeSNMPUsersCollection.HpeSNMPUsersCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSNMPUsersCollection.HpeSNMPUsersCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeSNMPUsersCollection.HpeSNMPUsersCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## HpeTlsConfig

`@odata.type: "#HpeTlsConfig.v1_0_0.HpeTlsConfig"`

The schema definition for TLS configuration.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bios/tlsconfig`|GET |
|`/redfish/v1/systems/{item}/bios/tlsconfig/settings`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeTlsConfig](../ilo6_hpe_resourcedefns151/#hpetlsconfig)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns151/#hpebaseconfigs)|

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
|Added|iLO6 1.05|

**Certificates[{item}].Issuer**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The Issuer of the certificate|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Certificates[{item}].SerialNumber**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The Serial Number of the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Certificates[{item}].Subject**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The Subject of the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Certificates[{item}].ValidNotAfter**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The expiration date of the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Certificates[{item}].ValidNotBefore**
Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The date when the certificate becomes valid.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Ciphers

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|The encryption used. It can have more than one type of encryption, example: "AES128-SHA:AES256-SHA:AES128-SHA256:AES256-SHA256"|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### HostnameCheck

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|Use this option to enable or disable verification of the connected server's hostname with the hostname in the certificate supplied by the server|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### ProtocolVersion

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### VerifyMode

Member of [HpeTlsConfig.v1\_0\_0.HpeTlsConfig](#hpetlsconfig)

| | |
|---|---|
|Description|It determines if/how the certificates are validated.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### DeviceClass

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device Class code as defined by the USB HID device specification.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceName

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device name in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceProtocol

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Protocol code as defined by the USB HID specification.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceSubClass

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device SubClass code as defined by the USB HID device specification.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Location

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Location of the USB device on the server|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ProductID

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB product ID as defined by manufacturer.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### StructuredName

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device structured name in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### UEFIDevicePath

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|UEFI device path of USB device. Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### VendorID

Member of [HpeUSBDevice.v2\_0\_0.HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Vendor ID of detected USB device.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeUSBDevice](../ilo6_hpe_resourcedefns151/#hpeusbdevice)|

### Members (array)

Member of HpeUSBDevicesCollection.HpeUSBDevicesCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeUSBDevicesCollection.HpeUSBDevicesCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeUSBDevicesCollection.HpeUSBDevicesCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### Location

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Location of the USB Device on the server|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

### PCIDeviceNumber

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|PCI Device Number of the USB Controller that controls this USB Port.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### PCIFunctionNumber

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|PCI Function Number of the USB Controller that controls this USB Port.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### ParentHubInstance

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Parent Hub Instance that provides an instance number of the internal hub this USB Port is connected to.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### SharedCapability

Member of [HpeUSBPort.v2\_0\_0.HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Shared Capability of the USB Port|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

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
|`Members[]`|[HpeUSBPort](../ilo6_hpe_resourcedefns151/#hpeusbport)|

### Members (array)

Member of HpeUSBPortsCollection.HpeUSBPortsCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeUSBPortsCollection.HpeUSBPortsCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeUSBPortsCollection.HpeUSBPortsCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## HpeWorkloadPerformanceAdvisor

`@odata.type: "#HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor"`

The HpeWorkloadPerformanceAdvisor resource describes the properties for managing the HPE Workload Performance Advisor.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/workloadperformanceadvisor/{item}`|GET PATCH |

### Duration

Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|Specifies the duration over which the workload performance advisor is computed.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**PerformanceTuningOption[{item}].RecommendedValue**
Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|Recommended value for the corresponding BIOS attribute. Please refer to BIOS attribute registry schema for more information.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

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
|Added|iLO6 1.05|

**WorkloadCharacteristics[{item}].MetricValue**
Member of [HpeWorkloadPerformanceAdvisor.v1\_0\_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The workload utilization of the metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

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
|`Members[]`|[HpeWorkloadPerformanceAdvisor](../ilo6_hpe_resourcedefns151/#hpeworkloadperformanceadvisor)|

### Members (array)

Member of HpeWorkloadPerformanceAdvisorCollection.HpeWorkloadPerformanceAdvisorCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeWorkloadPerformanceAdvisorCollection.HpeWorkloadPerformanceAdvisorCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HpeWorkloadPerformanceAdvisorCollection.HpeWorkloadPerformanceAdvisorCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

