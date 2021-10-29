---
disableLastModified: false
toc:
  enable: true
  maxDepth: 2
---

# Resource Definitions


## Certificate

`@odata.type: "#Certificate.v1_1_0.Certificate"`

The Certificate resource describes an X509 certificate.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates/{item}/`|GET DELETE |

### CertificateString
Member of [Certificate](#certificate)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|
|Format|text|

### CertificateType
Member of [Certificate](#certificate)

| | |
|---|---|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`PEM`|A PEM encoded certificate.|n|`PKCS7`|A PEM encoded PKCS7 certificate.|n
### Issuer
Member of [Certificate](#certificate)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SerialNumber
Member of [Certificate](#certificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Subject
Member of [Certificate](#certificate)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### ValidNotAfter
Member of [Certificate](#certificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

### ValidNotBefore
Member of [Certificate](#certificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

## CertificateLocations

`@odata.type: "#CertificateLocations.v1_0_2.CertificateLocations"`

The CertificateLocations schema describes a Resource that an administrator can use in order to locate all certificates installed on a given service.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/certificateservice/certificatelocations/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/Certificates[]`|[Certificate](#certificate-v1_1_0-certificate)|

## EventService

`@odata.type: "#EventService.v1_0_8.EventService"`

The EventService resource describes the Event Service.  It represents the properties for the service itself and has links to the actual list of subscriptions.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/eventservice/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Oem/Hpe`|[EventService](#eventservice-v1_0_8-eventservice)|
|`Oem/Hpe/CACertificates`|HpeCertificateCollection|
|`Subscriptions`|EventDestinationCollection|

### DeliveryRetryAttempts
Member of [EventService](#eventservice)

| | |
|---|---|
|Description|This is the number of attempts an event posting is retried before the subscription is terminated.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### DeliveryRetryIntervalSeconds
Member of [EventService](#eventservice)

| | |
|---|---|
|Description|This represents the number of seconds between retry attempts for sending any given Event|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### EventTypesForSubscription (array)
Member of [EventService](#eventservice)
`EventTypesForSubscription` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`StatusChange`|The status of this resource has changed|n|`ResourceUpdated`|The value of this resource has been updated|n|`ResourceAdded`|A resource has been added|n|`ResourceRemoved`|A resource has been removed|n|`Alert`|A condition exists which requires attention|n
### Oem.Hpe.CACertificates
The value of this property shall be a reference to a Collection of HpeCertificate resources.
CACertificates is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.RequestedMaxEventsToQueueDefault
Member of [EventService](#eventservice)

| | |
|---|---|
|Description|This represents the default number of events the service should queue.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.RetireOldEventInMinutesDefault
Member of [EventService](#eventservice)

| | |
|---|---|
|Description|This represents the default number of minutes until an event is expired.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TTLCountDefault
Member of [EventService](#eventservice)

| | |
|---|---|
|Description|The default number of TTLUnits until this listener destination subscription expires.  It may be renewed prior to expire to reset the Time to Live counter.  The value 999999 is reserved to mean a perpetual subscription.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TTLUnitsDefault
Member of [EventService](#eventservice)

| | |
|---|---|
|Description|The default time unit used to measure the subscription time of this listener destination.  This is the units for TTLCount and is used to express the subscription lifetime of the listener destination.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`seconds`|Time to Live (TTL) in Seconds|n|`minutes`|Time to Live (TTL) in Minutes|n|`days`|Time to Live (TTL) in Days|n
### ServiceEnabled
Member of [EventService](#eventservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Status
Member of [EventService](#eventservice)
See the Redfish standard schema and specification for information on common Status object.

### Subscriptions
This is a reference to a collection of ListenerDestination resources.
Subscriptions is a link (`"@odata.id": URI`) to another resource.

### Actions

**EventService.SubmitTestEvent**
Member of [EventService](#eventservice)

**Parameters:**

**EventId (string)**

**EventTimestamp (string)**

**EventType (string)**

|Value|Description|
|---|---|
|StatusChange|
|ResourceUpdated|
|ResourceAdded|
|ResourceRemoved|
|Alert|

**Message (string)**

**MessageArgs (array)**

**MessageId (string)**

**OriginOfCondition (string)**

**Severity (string)**

|Value|Description|
|---|---|
|OK|
|Warning|
|Critical|

**HpeEventService.ImportCACertificate**
Member of [EventService](#eventservice)
Imports a Trusted CA Certificate


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).
## HpeBaseNetworkAdapter

`@odata.type: "#HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter"`

The HpeBaseNetworkAdapter resource describes an Ethernet Adapter and its ports.  Clients should use the Redfish NetworkAdapter and NetworkInterface resources when available instead of this.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/basenetworkadapters/{item}/`|GET |

### FcPorts (array)
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)
`FcPorts` is an array containing elements of: 

**FcPorts[{item}].PortNumber**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|Port Number.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**FcPorts[{item}].WWNN**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|World Wide Node Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**FcPorts[{item}].WWPN**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|World Wide Port Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Firmware
**Firmware.Current**
**Firmware.Current.VersionString**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|Location of the device.|
|Type|string|
|Read Only|True|

### PartNumber
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|The device part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalPorts (array)
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)
`PhysicalPorts` is an array containing elements of: 

**PhysicalPorts[{item}].FullDuplex**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|Full-duplex data transmission means that data can be transmitted in both directions on a signal carrier at the same time.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].IPv4Addresses (array)**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)
`IPv4Addresses` is an array containing elements of: 

**IPv4Addresses[{item}].Address**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|True|

**PhysicalPorts[{item}].IPv6Addresses (array)**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)
`IPv6Addresses` is an array containing elements of: 

**IPv6Addresses[{item}].Address**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|This is the IPv6 Address.|
|Type|string or null|
|Read Only|True|
|Format|ipv6|

**PhysicalPorts[{item}].LinkStatus**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

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
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|The port MAC address.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.BadReceives**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames that were received by the adapter but which had an error.  This counter is the sum of mib items cpqNicIfPhysAdapterAlignmentErrors, cpqNicIfPhysAdapterFCSErrors, cpqNicIfPhysAdapterFrameTooLongs, and cpqNicIfPhysAdapterInternalMacReceiveErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.BadTransmits**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames that were not transmitted by the adapter because of an error.  This counter is the sum of MIB items cpqNicIfPhysAdapterDeferredTransmissions, cpqNicIfPhysAdapterLateCollisions, cpqNicIfPhysAdapterExcessiveCollisions, cpqNicIfPhysAdapterCarrierSenseErrors, and cpqNicIfPhysAdapterInternalMacTransmitErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.GoodReceives**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames successfully received by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.GoodTransmits**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames successfully transmitted by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.StructuredName**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.Team**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|If a port is configured for NIC teaming, the name of the configured link between the physical ports that form a logical network adapter. This value is displayed for system NICs only (embedded and stand-up).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].SpeedMbps**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|An estimate of the interface's current bandwidth in Megabits per second.  For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Status**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)
See the Redfish standard schema and specification for information on common Status object.

**PhysicalPorts[{item}].UEFIDevicePath**
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|The device serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Status
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)
See the Redfish standard schema and specification for information on common Status object.

### StructuredName
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePath
Member of [HpeBaseNetworkAdapter](#hpebasenetworkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeBundleUpdateReport

`@odata.type: "#HpeBundleUpdateReport.v1_0_0.HpeBundleUpdateReport"`

This resource contains Bundle Update report
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/bundleupdatereport/current/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Entries`|HpeComponentUpdateEntryCollection|

### Entries
This lists Bundle Update report entries.
Entries is a link (`"@odata.id": URI`) to another resource.

## HpeBundleUpdateReportCollection

`@odata.type: "#HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection"`

A Collection of HpeComponentBundleUpdateReport resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/bundleupdatereport/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeBundleUpdateReport](#hpebundleupdatereport-v1_0_0-hpebundleupdatereport)|

### Members (array)
Member of HpeBundleUpdateReportCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HpeBundleUpdateReportCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeBundleUpdateReportCollection

| | |
|---|---|
|Description|The total number of reports supported - Completed and Current|
|Type|integer|
|Read Only|True|

## HpeCertAuth

`@odata.type: "#HpeCertAuth.v1_1_0.HpeCertAuth"`

The HpeCertAuth resource describes the BMC certificate based authentication feature.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/certificateauthentication/`|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`CACertificates`|HpeCertificateCollection|
|`Links/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap-v1_0_1-hpeiloaccountcertificatemap)|

### CACertificates
The value of this property shall be a reference to a Collection of HpeCertificate resources.
CACertificates is a link (`"@odata.id": URI`) to another resource.

### CRLIssuer
Member of [HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Issuer of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### CRLSerial
Member of [HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Serial Number of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### CertificateLoginEnabled
Member of [HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Specifies whether Certificate login is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### LDAPCertificateNameMapping
Member of [HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|The method used to map a certificate to its associated LDAP user account.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SubjectCN`|The CN portion of the certificate subject will be used as the LDAP username.|n|`SubjectDN`|The fully qualified DN of the certificate subject will be used as the LDAP username.|n|`SANRFC822`|The RFC822 name from the certificate's subjectAlternativeName extension will be used as the LDAP username.|n|`SANUPN`|The UserPrincipalName from the certificate's subjectAlternativeName extension will be used as the LDAP username.|n
### OCSPUri
Member of [HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|URL to use for OCSP certificate checking.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.15|
|Format|uri-reference|

### StrictCACModeEnabled
Member of [HpeCertAuth](#hpecertauth)

| | |
|---|---|
|Description|Whether or not Strict CAC Mode is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeCertAuth.DeleteCRL**
Member of [HpeCertAuth](#hpecertauth)
Remove an installed Certificate Revocation List (CRL).

There are no parameters for this action.

**HpeCertAuth.ImportCACertificate**
Member of [HpeCertAuth](#hpecertauth)
Imports a Trusted Certificate


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).

**HpeCertAuth.ImportCRL**
Member of [HpeCertAuth](#hpecertauth)
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
`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates/2/`|GET DELETE |

### Issuer
Member of [HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Subject
Member of [HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ValidNotAfter
Member of [HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### ValidNotBefore
Member of [HpeCertificate](#hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

## HpeComponent

`@odata.type: "#HpeComponent.v1_0_1.HpeComponent"`

The HpeComponent resource describes a software or firmware update component.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/componentrepository/{item}/`|GET PATCH DELETE |

### Activates
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Indicates when a component becomes active after being updated.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Immediately`|The update activates immediately.|n|`AfterReboot`|The update activates after a host server reboot.|n|`AfterDeviceReset`|The update activates after a device reset.|n|`AfterHardPowerCycle`|The update activates after a full power supply disconnect or E-Fuse reset.|n
### ComponentType
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|HTTP-style content-type of binary|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ComponentUri
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|URI of the component binary.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Configuration
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|string defining customized parameters for some components provided by client at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Created
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|ISO 8601 time string indicating when this component was added to the NAND.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Criticality
Member of [HpeComponent](#hpecomponent)
### Criticality
Member of [HpeComponent](#hpecomponent)
### Criticality
Member of [HpeComponent](#hpecomponent)

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
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Device type GUID from iLO secure flash header|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ExecutionParameters
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Client supplied execution parameters.  These are supplied at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Filename
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|The unique filename of the component.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Filepath
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Path of file on the USB LUN if you mount the repo as USB.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Locked
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|If true, this component cannot be removed with DELETE because it is referenced by an Install Set|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### SizeBytes
Member of [HpeComponent](#hpecomponent)

| | |
|---|---|
|Description|Size of the component file in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Targets (array)
Member of [HpeComponent](#hpecomponent)
`Targets` is an array containing elements of: 


| | |
|---|---|
|Description|Target GUIDs from secure flash header or sidecar file.|
|Type|string|
|Read Only|True|

### UpdatableBy (array)
Member of [HpeComponent](#hpecomponent)
`UpdatableBy` is an array containing elements of: 


| | |
|---|---|
|Description|Describes which types of update agents may apply this component.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Uefi`|This component may be scheduled for update by UEFI BIOS.|n|`RuntimeAgent`|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|n|`Bmc`|This component may be scheduled for update by iLO.|n
### Version
Member of [HpeComponent](#hpecomponent)

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
`/redfish/v1/updateservice/componentrepository/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeComponent](#hpecomponent-v1_0_1-hpecomponent)|

### Members (array)
Member of HpeComponentCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HpeComponentCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeComponentCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.ComponentCount
Member of HpeComponentCollection

| | |
|---|---|
|Description|The number of files reported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.FreeSizeBytes
Member of HpeComponentCollection

| | |
|---|---|
|Description|The available repository space in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TotalSizeBytes
Member of HpeComponentCollection

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
`/redfish/v1/updateservice/installsets/{item}/`|GET POST PATCH DELETE |

### Created
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install set creation.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### IsRecovery
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|If true, this install set is reserved to hold only critical firmware recovery updatable by iLO.  Additionally the 'Administrate Recovery Set' iLO privilege is required to modify or remove this install set.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Modified
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install modification.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Sequence (array)
Member of [HpeComponentInstallSet](#hpecomponentinstallset)
`Sequence` is an array containing elements of: 

**Sequence[{item}].Command**
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|Command to execute.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`ApplyUpdate`|Apply an update using the specified component.|n|`ResetServer`|Reset the server.|n|`ResetBmc`|Reset the BMC.|n|`Wait`|Wait for the WaitTimeSeconds number of seconds.|n
**Sequence[{item}].Component**
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

**Sequence[{item}].ExecutionTimeoutMinutes**
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The number of minutes that this update will likely take to apply.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|

**Sequence[{item}].Filename**
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The unique filename of the component.  This correlates to 'Filename' in the HpeComponent.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

**Sequence[{item}].UpdatableBy (array)**
Member of [HpeComponentInstallSet](#hpecomponentinstallset)
`UpdatableBy` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`Bmc`|This component may be scheduled for update by iLO.|n|`Uefi`|This component may be scheduled for update by UEFI BIOS.|n|`RuntimeAgent`|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|n
**Sequence[{item}].WaitTimeSeconds**
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

| | |
|---|---|
|Description|The number of seconds to pause if the command is 'Wait'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeComponentInstallSet.Invoke**
Member of [HpeComponentInstallSet](#hpecomponentinstallset)

**Parameters:**

**ClearTaskQueue (boolean)**

Previous items in the task queue can be cleared before the Install Set is invoked
## HpeComponentInstallSetCollection

`@odata.type: "#HpeComponentInstallSetCollection.HpeComponentInstallSetCollection"`

A Collection of HpeComponentInstallSet resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/installsets/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)|

### Members (array)
Member of HpeComponentInstallSetCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HpeComponentInstallSetCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeComponentInstallSetCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeComponentUpdateEntryCollection

`@odata.type: "#HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection"`

A Collection of HpeComponentUpdateEntry resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/bundleupdatereport/current/entries/`|GET |

### Members (array)
Member of HpeComponentUpdateEntryCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.context**
Member of HpeComponentUpdateEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Members[{item}].@odata.etag**
Member of HpeComponentUpdateEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|

**Members[{item}].@odata.id**
Member of HpeComponentUpdateEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Members[{item}].@odata.type**
Member of HpeComponentUpdateEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|

**Members[{item}].ComponentStatus**
Member of HpeComponentUpdateEntryCollection

| | |
|---|---|
|Description|Status|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`PENDING`|Update is pending and has not started.|n|`RUNNING`|Update Service in Progress.|n|`SUSPENDED`|Update has been suspended.|n|`COMPLETED`|Update completed successfully|n|`EXCEPTION`|Update has stopped due to an exception condition.|n|`KILLED`|Update was terminated.|n|`NEW`|A new update.|n|`INTERRUPTED`|Update has been interrupted.|n|`STOPPING`|Update is in the process of stopping.|n|`SERVICE`|Update has been suspended.|n
**Members[{item}].DependencyStatus**
Member of HpeComponentUpdateEntryCollection

| | |
|---|---|
|Description|DependencyStatus|
|Type|boolean|
|Read Only|True|

**Members[{item}].Version**
Member of HpeComponentUpdateEntryCollection

| | |
|---|---|
|Description|Version of the component.|
|Type|string|
|Read Only|True|

### Members@odata.count
Member of HpeComponentUpdateEntryCollection

| | |
|---|---|
|Description|The total number of components in the InstallSet|
|Type|integer|
|Read Only|True|

## HpeComponentUpdateTaskQueueCollection

`@odata.type: "#HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection"`

A Collection of HpeComponentUpdateTaskQueue resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/updatetaskqueue/`|GET POST |

### Members (array)
Member of HpeComponentUpdateTaskQueueCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HpeComponentUpdateTaskQueueCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeComponentUpdateTaskQueueCollection

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
`/redfish/v1/accountservice/directorytest/`|GET POST |

### OverallStatus
Member of [HpeDirectoryTest](#hpedirectorytest)

| | |
|---|---|
|Description|Represents the overall status of directory tests.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`NotRun`|The Overall Directory Test was not run.|n|`InProgress`|The Overall Directory Test is in progress.|n|`Success`|The Overall Directory Test has completed successfully.|n|`Warning`|The Overall Directory Test has completed with warning.|n|`Failed`|The Overall Directory Test has failed.|n|`Error`|The Directory Test has encountered an error condition.|n
### TestResults (array)
Member of [HpeDirectoryTest](#hpedirectorytest)
`TestResults` is an array containing elements of: 

**TestResults[{item}].Notes**
Member of [HpeDirectoryTest](#hpedirectorytest)

| | |
|---|---|
|Description|This provides additional details on the directory test.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**TestResults[{item}].Status**
Member of [HpeDirectoryTest](#hpedirectorytest)
See the Redfish standard schema and specification for information on common Status object.

**TestResults[{item}].TestName**
Member of [HpeDirectoryTest](#hpedirectorytest)

| | |
|---|---|
|Description|The name of directory test.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Actions

**HpeDirectoryTest.StartTest**
Member of [HpeDirectoryTest](#hpedirectorytest)
Start the directory test.


**Parameters:**
## HpeESKM

`@odata.type: "#HpeESKM.v2_0_0.HpeESKM"`

The HpeESKM resource describes properties for managing the ESKM feature.  ESKM (Enterprise Security Key Manager) enables connections to an operational key manager,change redundancy settings,view the key manager connection settings,test the connection,and view key management events.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/eskm/`|GET POST PATCH |

### ESKMEvents (array)
Member of [HpeESKM](#hpeeskm)
`ESKMEvents` is an array containing elements of: 

**ESKMEvents[{item}].Event**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|ESKM event description.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ESKMEvents[{item}].Timestamp**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Time of ESKM event.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### KeyManagerConfig
**KeyManagerConfig.AccountGroup**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Account group on ESKM.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.AccountName**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Account name on ESKM.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.ESKMLocalCACertificateName**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|This is the name of Local CA (Certificate Authority) in ESKM that is used to sign the ESKM server certificate. iLO will retrieve this certificate from the ESKM server.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.ImportedCertificateIssuer**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Imported certificate issuer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.ImportedCertificateSubject**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Imported certificate subject.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.LoginName**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account login name. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.Password**
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account password. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### KeyServerRedundancyReq
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|If true encryption keys will be maintained on both the configured key servers. When this option is disabled, iLO will not verify that encryption keys are copied to both of the configured key servers.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### PrimaryKeyServerAddress
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Primary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### PrimaryKeyServerPort
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Primary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecondaryKeyServerAddress
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Secondary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecondaryKeyServerPort
Member of [HpeESKM](#hpeeskm)

| | |
|---|---|
|Description|Secondary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeESKM.ClearESKMLog**
Member of [HpeESKM](#hpeeskm)
Clears ESKM log.

There are no parameters for this action.

**HpeESKM.TestESKMConnections**
Member of [HpeESKM](#hpeeskm)
Test ESKM connections.

There are no parameters for this action.
## HpeHttpsCert

`@odata.type: "#HpeHttpsCert.v2_0_0.HpeHttpsCert"`

The HpeHttpsCert resource describes an X509 certificate.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/httpscert/`|GET POST DELETE |

### CertificateSigningRequest
Member of [HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|GenerateCSR action, wait few minutes (upto 10), perform GET operation, fills CSR. Contains a public and private key pair.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### X509CertificateInformation
**X509CertificateInformation.Issuer**
Member of [HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.SerialNumber**
Member of [HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.Subject**
Member of [HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.ValidNotAfter**
Member of [HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**X509CertificateInformation.ValidNotBefore**
Member of [HpeHttpsCert](#hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Actions

**HpeHttpsCert.GenerateCSR**
Member of [HpeHttpsCert](#hpehttpscert)

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
Member of [HpeHttpsCert](#hpehttpscert)
Imports a Trusted Certificate and iLO is reset.


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate (Base64 encoded).
## HpeiLOAccountCertificateMap

`@odata.type: "#HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap"`

The HpeiLOAccountCertificateMap resource describes mapping X509 certificates to user accounts.

This resource type was added in iLO 5 1.20

### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/accountservice/usercertificatemapping/{item}/`|GET POST DELETE |

### Fingerprint
Member of [HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The fingerprint which uniquely identifies the mapped certificate.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### FingerprintDigestAlgorithm
Member of [HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The algorithm used to calculate the fingerprint.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### UserName
Member of [HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The name used to log in to the management processor.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeiLOBackupFileCollection

`@odata.type: "#HpeiLOBackupFileCollection.HpeiLOBackupFileCollection"`

A Collection of HpeiLOBackupFile resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles/`|GET POST |

### Members (array)
Member of HpeiLOBackupFileCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HpeiLOBackupFileCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.BackupFileCount
Member of HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The number of backup files reported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.BackupFilesAllowed
Member of HpeiLOBackupFileCollection

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
`/redfish/v1/managers/{item}/backuprestoreservice/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`BackupFiles`|HpeiLOBackupFileCollection|

### BackupFileLocation
Member of [HpeiLOBackupRestoreService](#hpeilobackuprestoreservice)

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

### HttpPushUri
Member of [HpeiLOBackupRestoreService](#hpeilobackuprestoreservice)

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
`/redfish/v1/managers/{item}/datetime/`|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/EthernetNICs`|Collection of [EthernetInterface](#ethernetinterface-v1_4_1-ethernetinterface)|

### ConfigurationSettings
Member of [HpeiLODateTime](#hpeilodatetime)

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
Member of [HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The date and time used by management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### NTPServers (array)
Member of [HpeiLODateTime](#hpeilodatetime)
`NTPServers` is an array containing elements of: 


| | |
|---|---|
|Description|The current NTP server's IPv4 address, IPv6 address, or FQDN. The value either comes from DHCP or is static depending on the DHCP settings.|
|Type|string or null|
|Read Only|True|

### PropagateTimeToHost
Member of [HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|Determines whether the server time is synchronized with the management processor time during the first POST after AC power is applied.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### StaticNTPServers (array)
Member of [HpeiLODateTime](#hpeilodatetime)
`StaticNTPServers` is an array containing elements of: 


| | |
|---|---|
|Description|The static NTP server's IPv4 address, IPv6 address, or FQDN. To set this property, management processor must not be configured to use NTP servers provided by DHCPv4 or DHCPv6.|
|Type|string|
|Read Only|True|

### TimeZone
**TimeZone.Index**
Member of [HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The index of the current time zone. To set a new time zone, specify a different time zone index. This property can be set only when DHCPv4 or DHCPv6 supplied time settings are disabled. Since the time zone list might vary from one firmware version to another (which often leads to differences in time zone indices), setting the time zone by name is recommended over setting by index, for better compatibility.|
|Type|number|
|Read Only|False|
|Added|iLO 5 1.10|

**TimeZone.UtcOffset**
Member of [HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the current time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZone.Value**
Member of [HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### TimeZoneList (array)
Member of [HpeiLODateTime](#hpeilodatetime)
`TimeZoneList` is an array containing elements of: 

**TimeZoneList[{item}].Index**
Member of [HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The time zone index.|
|Type|number|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZoneList[{item}].UtcOffset**
Member of [HpeiLODateTime](#hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZoneList[{item}].Value**
Member of [HpeiLODateTime](#hpeilodatetime)

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
`/redfish/v1/managers/{item}/embeddedmedia/`|GET |

### Controller
**Controller.Firmware**
**Controller.Firmware.Current**
**Controller.Firmware.Current.VersionString**
Member of [HpeiLOEmbeddedMedia](#hpeiloembeddedmedia)

| | |
|---|---|
|Description|The current version of the embedded media controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Controller.Status**
Member of [HpeiLOEmbeddedMedia](#hpeiloembeddedmedia)
See the Redfish standard schema and specification for information on common Status object.

### SDCard
**SDCard.SizeMB**
Member of [HpeiLOEmbeddedMedia](#hpeiloembeddedmedia)

| | |
|---|---|
|Description|The size of the SD card present in the server, in MB.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**SDCard.Status**
Member of [HpeiLOEmbeddedMedia](#hpeiloembeddedmedia)
See the Redfish standard schema and specification for information on common Status object.

## HpeiLOFederatedGroupCapping

`@odata.type: "#HpeiLOFederatedGroupCapping.v2_0_0.HpeiLOFederatedGroupCapping"`

The HpeiLOFederatedGroupCapping resource describes the properties for managing Federated Group Capping.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/chassis/{item}/power/federatedgroupcapping/`|GET PATCH |

### CapWatts
Member of [HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The configured power cap for all servers in a group. This value is 0 if the power cap is not configured.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityWatts
Member of [HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The total power supply capacity for all servers in a group.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Groups
### Throttle
Member of [HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping)

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
`/redfish/v1/managers/{item}/federationgroups/{item}/`|GET PATCH DELETE |

### Key
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|The password used by the Federation Group.|
|Type|string or null|
|Read Only|False|

### Privileges
**Privileges.HostBIOSConfigPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host BIOS configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.HostNICConfigPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host NIC configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.HostStorageConfigPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Host Storage configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.LoginPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Login privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.RemoteConsolePriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Remote console privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.SystemRecoveryConfigPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|System Recovery configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.UserConfigPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|User configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.VirtualMediaPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual media privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.VirtualPowerAndResetPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual power and reset privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.iLOConfigPriv**
Member of [HpeiLOFederationGroup](#hpeilofederationgroup)

| | |
|---|---|
|Description|The management processor configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeiLOFederationPeers

`@odata.type: "#HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers"`

The HpeiLOFederationPeers resource describes the properties for viewing Federation peers.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/federationpeers/{item}/`|GET |

### Peers (array)
Member of [HpeiLOFederationPeers](#hpeilofederationpeers)
`Peers` is an array containing elements of: 

**Peers[{item}].HttpErrorCode**
Member of [HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|Error code for success or failure.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Peers[{item}].ManagerIPAddress**
Member of [HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|Manager IP address of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Peers[{item}].Time**
Member of [HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|Time when the federation peer was added.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**Peers[{item}].URL**
Member of [HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|URL of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|url|

**Peers[{item}].UUID**
Member of [HpeiLOFederationPeers](#hpeilofederationpeers)

| | |
|---|---|
|Description|UUID peers that are part of the federation group.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOGUIService

`@odata.type: "#HpeiLOGUIService.v1_1_0.HpeiLOGUIService"`

The HpeiLOGUIService resource describes properties used by the BMC Graphical User Interface.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/guiservice/`|GET |

### Features
**Features.AhsViewer**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Active Health System Viewer feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.AnonymousData**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Anonymous Data feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.BiosPrivilege**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host BIOS privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.CacSmartcard**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Certificate Authentication feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ComputeCloudConsoleFlag**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Compute Cloud Console Feature is enabled.|
|Type|boolean|
|Read Only|True|

**Features.CoolingModuleSupport**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Liquid Cooling modules are available on this platform.|
|Type|boolean|
|Read Only|True|

**Features.DotNetConsole**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote console feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.EAPTLSSupport**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether 802.1X feature is supported on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Encryption**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Encryption feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.EventDetails**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Event Details feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ExternalMonitor**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Server Health on External Monitor feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Federation**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Federation feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.HighEfficiencyMode**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether High Efficiency Mode on redundant power supply is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.HostNicPrivilege**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host NIC Privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.IntelligentProvisioning**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Intelligent Provisioning is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.IpManager**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether the BMC is managed by Remote Manager software.|
|Type|boolean|
|Read Only|True|

**Features.IpxeBoot**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates Embedded iPXE boot option is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.JavaConsole**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Java based Remote console feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Kerberos**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Kerberos authentication feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Licensing**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Licensing feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Mobile**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Mobile view feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.PowerDiscovery**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether HPE Power Discovery Service feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RIBCL**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether RIBCL feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RecoverySet**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Recovery Set privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RemoteConsoleSecurity**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote Console Security feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RemoteSupport**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote Support feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Repository**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Repository feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SecurityDashboard**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Security Dashboard feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ServiceAccount**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Service Account feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SharedNicOcp**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether SNP device is an NC-SI compliant Open Computing Project 3.0 or later NIC.|
|Type|boolean|
|Read Only|True|

**Features.SingleSignOn**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Single Sign-On (SSO) feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.StoragePrivilege**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host Storage privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SwapROM**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Swap ROM feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SystemAutoHeal**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Intelligent Diagnostics feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SystemDefaults**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether System Defaults feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ThermalGraph**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Power Meter feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Thumbnail**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Thumbnail feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.UefiSerialDbgMsg**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates Uefi Serial debug Message option is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.UpdateService**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Firmware update feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.VirtualMedia**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Virtual Media feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

### TreeList (array)
Member of [HpeiLOGUIService](#hpeiloguiservice)
`TreeList` is an array containing elements of: 

**TreeList[{item}].Features**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|The name of the feature associated with the navigation link.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].LangKey**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|The localization key in reference to the navigation link.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

**TreeList[{item}].Link**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

**TreeList[{item}].RightHandMenu**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|Name of the component.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].TabSet**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|The name of the navigation item linked with the tabs.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].Tabs (array)**
Member of [HpeiLOGUIService](#hpeiloguiservice)
`Tabs` is an array containing elements of: 

**Tabs[{item}].Features**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|The name of the feature associated with the tab.|
|Type|string|
|Read Only|False|

**Tabs[{item}].LangKey**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|The localization key in reference to the name of the tab.|
|Type|string|
|Read Only|True|

**Tabs[{item}].Link**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|The name of the HTML file for this tab.|
|Type|string|
|Read Only|False|

**Tabs[{item}].Text**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|The default text used for this tab.|
|Type|string|
|Read Only|False|

**TreeList[{item}].Text**
Member of [HpeiLOGUIService](#hpeiloguiservice)

| | |
|---|---|
|Description|The default text used for this navigation link.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

## HpeiLOLicense

`@odata.type: "#HpeiLOLicense.v2_3_0.HpeiLOLicense"`

The HpeiLOLicense resource describes the properties for managing BMC licenses.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/licenseservice/{item}/`|GET DELETE |

### Confirmation
**Confirmation.Code**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Confirmation service response code.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Message**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly confirmation information for the current managment processor license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Service**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Confirmation service URI.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Status**
Member of [HpeiLOLicense](#hpeilolicense)
See the Redfish standard schema and specification for information on common Status object.

### ConfirmationRequest
**ConfirmationRequest.EON**
**ConfirmationRequest.EON.License**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.LicenseKey**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The license key installed on this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.Quantity**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The number of entitlements licensed.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.State**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The current licensing state and behavior of the management processor.  This is affected by license installation, activation and confirmation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`unlicensed`|standard baseline functionality|n|`evaluation`|evaluation / demonstration temporary licensed functionality|n|`nfr`|not for resale experimental functionality|n|`expired`|standard baseline functionality and evaluation licenses no longer accepted|n|`unconfirmed`|licensed functionality that has not been confirmed|n|`timeout`|licensed functionality is disabled until the license is confirmed|n|`confirmed`|licensed functionality has been confirmed for use|n|`static`|system has active built-in licensed functionality that does not require confirmation|n|`err`|error|n
**ConfirmationRequest.Signer**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Source of confirmation request.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System**
**ConfirmationRequest.System.ChipId**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Management processor unique chip identifier.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System.Product**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|System housing management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System.SerialNumber**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|System serial number.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### License
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseClass
Member of [HpeiLOLicense](#hpeilolicense)

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
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Error information from the most recent attempt to alter the installed management processor license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseExpire
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly expiration information of the installed management processor license. For example, for demo license, Evaluation period 2 months 5 days 6 hours remain.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseFeatures
**LicenseFeatures.DirectoryAuth**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Directory integrated authentication.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.DowngradePolicy**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Firmware downgrade policy setting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**LicenseFeatures.EmailAlert**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Email based alerting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.FWScan**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Runtime FW Integrity check.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Federation**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Distributed peer to peer management.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Jitter**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Jitter Control.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.KD**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Kernel Debugging (VSP raw mode).|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.KeyMgr**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Store and retrieve keys from an external key manager.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.MURC**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Shared Multi-User Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.ODIM**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Open Distributed Infrastructure Management.|
|Type|boolean|
|Read Only|True|

**LicenseFeatures.PowerReg**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Power Regulator.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.RC**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Graphical Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Recovery**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|OS Recovery Event.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.17|

**LicenseFeatures.RemoteSyslog**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Remote Syslog.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Scrncap**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Video Capture.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SecureErase**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Secure Erase of embedded media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SmartCard**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|2-Factor Authentication (Smart Card).|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SuiteB**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|SuiteB/CNSA mode support.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.TextCons**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Text Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VM**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Remote Console based Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VMScript**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Scripted Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VSPLogging**
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|Virtual Serial Port Logging and Playback.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseInstallDate
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-friendly installation date information of the installed management processor license. For example, 19 May 2017|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LicenseKey
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|User-visible license key installed on this management processor. License keys are 25 or 29 characters and contain letters, numbers and hypens. Use POST method to collection of membertype HpeiLOLicense to install / update the license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseSeats
Member of [HpeiLOLicense](#hpeilolicense)

| | |
|---|---|
|Description|The number of systems authorized to use this activation key.|
|Type|integer|
|Read Only|True|

### LicenseTier
Member of [HpeiLOLicense](#hpeilolicense)

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
Member of [HpeiLOLicense](#hpeilolicense)

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

## HpeiLOSecurityDashboard

`@odata.type: "#HpeiLOSecurityDashboard.v1_0_0.HpeiLOSecurityDashboard"`

The HpeiLOSecurityDashboard resource describes the BMC security dashboard.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/securitydashboard/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`SecurityParameters`|Collection of [HpeiLOSecurityParam](#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)|

### OverallSecurityStatus
Member of [HpeiLOSecurityDashboard](#hpeilosecuritydashboard)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Ok`|The Overall security state of the system is OK.|n|`Risk`|The Overall security state of the system is Risk.|n|`Ignored`|The user has ignored (or suppressed) the risk on all the security parameters (whose Status value is Risk).|n
### SecurityParameters
This property references a resource of type Collection with a MemberType of HpeiLOSecurityParam.
SecurityParameters is a link (`"@odata.id": URI`) to another resource.

### ServerConfigurationLockStatus
Member of [HpeiLOSecurityDashboard](#hpeilosecuritydashboard)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Server Configuration Lock is Enabled.|n|`Disabled`|Server Configuration Lock is Disabled.|n
## HpeiLOSecurityParam

`@odata.type: "#HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam"`

The HpeiLOSecurityParam resource describes the properties for BMC security dashboard parameters.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams/{item}/`|GET PATCH |

### Ignore
Member of [HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This indicates if the security status of the security parameter is set to ignored or not.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### IgnoredBy
Member of [HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the user who changed the value of Ignore.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### IgnoredTime
Member of [HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the time when the risk configuration was suppressed.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### RecommendedAction
Member of [HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the recommended action.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SecurityStatus
Member of [HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents if the status of the security parameter.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Risk`|This indicates a security issue associated with the security parameter.|n|`Ok`|This indicates no security issue associated with the security parameter.|n
### State
Member of [HpeiLOSecurityParam](#hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the state or value of the security parameter.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|The state of the Security Parameter is On.|n|`Off`|The state of the Security Parameter is Off.|n|`Enabled`|The state of the Security Parameter is Enabled.|n|`Disabled`|The state of the Security Parameter is Disabled.|n|`Failed`|The status of the Security Parameter or the result of an operation represented by the Security Parameter is Failed.|n|`Ok`|The status of the Security Parameter or the result of an operation represented by the Security Parameter is Ok.|n|`Insufficient`|The value of the Security Parameter is Insufficient or less than the default value.|n|`Repaired`|The state of the Security Parameter is Repaired.|n|`True`|The state of the Security Parameter is True.|n|`False`|The state of the Security Parameter is False.|n
## HpeiLOSSO

`@odata.type: "#HpeiLOSSO.v2_0_0.HpeiLOSSO"`

The HpeiLOSSO resource describes the configuration of the HPE BMC single-sign-on trusted server feature.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/sso/`|GET POST PATCH |

### ManagerTrustedCertificates (array)
Member of [HpeiLOSSO](#hpeilosso)
`ManagerTrustedCertificates` is an array containing elements of: 

**ManagerTrustedCertificates[{item}].@odata.id**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**ManagerTrustedCertificates[{item}].@odata.type**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|

**ManagerTrustedCertificates[{item}].Certificate**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate (Base64 encoded).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails**
**ManagerTrustedCertificates[{item}].CertificateDetails.Issuer**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails.Subject**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotAfter**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotBefore**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**ManagerTrustedCertificates[{item}].RecordType**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Specifies the type of SSO record imported.|
|Type|string|
|Read Only|true|
|Added|iLO 5 1.15|

The following are the supported values:

|Value|Description|
|---|---|
|`Certificate`|It is a PEM formatted X509 certificate (Base64 encoded).|n|`DNSName`|It is a DNS name or an IP address of the HPE SSO-compliant application.|n
**ManagerTrustedCertificates[{item}].SerialNumber**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Contains the Serial number for the SSO records.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].ServerName**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|The Server name (or certificate subject).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].Status**
Member of [HpeiLOSSO](#hpeilosso)
See the Redfish standard schema and specification for information on common Status object.

### SSOsettings
**SSOsettings.AdminPrivilege**
**SSOsettings.AdminPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.LoginPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.UserConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege**
**SSOsettings.OperatorPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.LoginPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.UserConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.SSOTrustMode**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Represents the SSO Trust Mode.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`TrustNone`|Rejects all SSO connection request.|n|`TrustAll`|Accepts any SSO connection initiated from any HPE SSO compliant application.|n|`TrustbyName`|Enables SSO connections from an HPE SSO compliant application by matching a directly imported IP address or DNS name.|n|`TrustbyCert`|Enables SSO connections from an HPE SSO compliant application by matching a certificate previously imported to iLO.|n
**SSOsettings.UserPrivilege**
**SSOsettings.UserPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.LoginPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.UserConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO](#hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeiLOSSO.DeleteAllSSORecords**
Member of [HpeiLOSSO](#hpeilosso)
Delete all the SSO records.

There are no parameters for this action.

**HpeiLOSSO.DeleteSSORecordbyNumber**
Member of [HpeiLOSSO](#hpeilosso)
Delete SSO record by record number.


**Parameters:**

**RecordNumber (integer)**

Index of the SSO record to be deleted.

**HpeiLOSSO.ImportCertificate**
Member of [HpeiLOSSO](#hpeilosso)
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
Member of [HpeiLOSSO](#hpeilosso)
Add DNS Name to the record list.


**Parameters:**

**DNSName (string)**

DNS Name of the HPE SSO Trusted Server.
## HpeInvalidImageCollection

`@odata.type: "#HpeInvalidImageCollection.HpeInvalidImageCollection"`

A Collection of HpeInvalidImage resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/invalidimagerepository/`|GET |

### Members (array)
Member of HpeInvalidImageCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HpeInvalidImageCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeInvalidImageCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeMaintenanceWindowCollection

`@odata.type: "#HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection"`

A Collection of HpeMaintenanceWindow resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/maintenancewindows/`|GET POST |

### Members (array)
Member of HpeMaintenanceWindowCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HpeMaintenanceWindowCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeMaintenanceWindowCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpePowerMeter

`@odata.type: "#HpePowerMeter.v2_0_1.HpePowerMeter"`

The HpePowerMeter resource contains the computer system power history logged by the BMC.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/chassis/{item}/power/fastpowermeter/`|GET |
`/redfish/v1/chassis/{item}/power/powermeter/`|GET |
`/redfish/v1/chassis/{item}/power/slowpowermeter/`|GET |

### Average
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Average power across all samples, over the last 24 hours.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Maximum
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Maximum power across all samples, taken from the 24 hour history.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Minimum
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Minimum power across all samples, taken from the 24 hour history.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerDetail (array)
Member of [HpePowerMeter](#hpepowermeter)
`PowerDetail` is an array containing elements of: 

**PowerDetail[{item}].AmbTemp**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Ambient temperature, in degrees Celsius.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Average**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Average power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Cap**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The applicable power cap in Watts at the time of this power sample.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuAvgFreq**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|CPU average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuCapLim**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Measures the effect of the power cap on performance in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuMax**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The percentage of time the CPU spent in its maximum power mode.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuPwrSavLim**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Measures the effect of CPU Power Regulator state switching on performance in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuUtil**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|CPU utilization in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuWatts**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the system CPUs in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].DimmWatts**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the system memory DIMMs in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].GpuWatts**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the GPU(s) in Watts.  This will be 0 if no GPUs are installed or if the drivers are not loaded.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].Minimum**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Minimum power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Peak**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Peak power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].PrMode**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Power Regulator mode, which can be OS Control, Static High, Static Low or Dynamic.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`dyn`|Dynamic Mode - CPU power regulation is managed dynamically by the firmware.|n|`min`|Minimum Mode - CPU power regulation is configured to save as much power as possible at the possible expense of performance.|n|`max`|Maximum Mode - CPU power regulation is configured for maximum performance at the possible expense of power efficiency.|n|`osc`|OS Control Mode - CPU power regulation is managed by the Operating System.|n
**PowerDetail[{item}].PunCap**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|If true, CPU performance is being penalized by the current power cap.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Time**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|Time at which the power sample detail was captured.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**PowerDetail[{item}].UnachCap**
Member of [HpePowerMeter](#hpepowermeter)

| | |
|---|---|
|Description|If true, the configured power cap could not be achieved due to system power requirements.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Samples
Member of [HpePowerMeter](#hpepowermeter)

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
`/redfish/v1/managers/{item}/remotesupportservice/`|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`ServiceEventLogs`|LogEntryCollection|

### ConnectModel
Member of [HpeRemoteSupport](#hperemotesupport)

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
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The frequency of data collection in days. This is applicable only when the server is registered using Direct Connect.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### DestinationPort
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The port number of the Insight Remote Support server. This is applicable for Central Connect only. |
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### DestinationURL
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The host name or IP address of the Remote Support server. This is applicable for Central Connect only.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### DirectConnectRegistrationIsCompleted
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Step 2 of Direct Connect Registration completion status.|
|Type|boolean|
|Read Only|True|

### ExternalAgentName
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates the name of external Remote Support agent.|
|Type|string|
|Read Only|True|

### HpePassportPassword
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|HPE Passport Account Password.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### HpePassportUserId
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|HPE Passport Account Id.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LastTransmissionDate
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The last transmission date.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|
|Format|date-time|

### LastTransmissionError
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|The last transmission error.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LastTransmissionType
Member of [HpeRemoteSupport](#hperemotesupport)

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
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates if the server is in Maintenance Mode or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.30|

### MaintenanceTimeLeftInMinutes
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|This indicates the time remaining in minutes for the server to be in the maintenance mode.|
|Type|integer|
|Read Only|True|

### ProxySettings
**ProxySettings.Password**
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Password for web proxy server authentication. |
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**ProxySettings.Port**
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Port number on which to communicate with the web proxy server. |
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**ProxySettings.Url**
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Web proxy server host name or IP address.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|
|Format|url|

**ProxySettings.Username**
Member of [HpeRemoteSupport](#hperemotesupport)

| | |
|---|---|
|Description|Username for web proxy server authentication. |
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### RemoteSupportEnabled
Member of [HpeRemoteSupport](#hperemotesupport)

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
Member of [HpeRemoteSupport](#hperemotesupport)
There are no parameters for this action.

**HpeRemoteSupport.CompleteDirectConnectRegistration**
Member of [HpeRemoteSupport](#hperemotesupport)
There are no parameters for this action.

**HpeRemoteSupport.DisableRemoteSupport**
Member of [HpeRemoteSupport](#hperemotesupport)

**Parameters:**

**MessageId (string)**

A unique message identifier in UUID format used to match the test Service Event with this request. It is returned in the submission package SOAP envelope header.

**HpeRemoteSupport.RegisterDeviceToRemoteSupport**
Member of [HpeRemoteSupport](#hperemotesupport)

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
## HpeSecureEraseReportCollection

`@odata.type: "#HpeSecureEraseReportCollection.HpeSecureEraseReportCollection"`

A Collection of HpeSecureEraseReport resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries/`|GET |

### Members (array)
Member of HpeSecureEraseReportCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HpeSecureEraseReportCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeSecureEraseReportCollection

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
`/redfish/v1/systems/{item}/secureerasereportservice/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/SecureEraseReportEntries`|HpeSecureEraseReportCollection|

### EraseInitiatedBy
Member of [HpeSecureEraseReportService](#hpesecureerasereportservice)

| | |
|---|---|
|Description|This indicates the user name who initiated the secure system erase process.|
|Type|string or null|
|Read Only|True|

### ServerSerialNumber
Member of [HpeSecureEraseReportService](#hpesecureerasereportservice)

| | |
|---|---|
|Description|This represents the server serial number.|
|Type|string or null|
|Read Only|True|

### Actions

**HpeSecureEraseReportService.DeleteSecureEraseReport**
Member of [HpeSecureEraseReportService](#hpesecureerasereportservice)
There are no parameters for this action.
## HpeSecurityService

`@odata.type: "#HpeSecurityService.v2_3_1.HpeSecurityService"`

The HpeSecurityService resource describes the properties for management of the security configuration of the BMC.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/`|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/CertAuth`|[HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)|
|`Links/ESKM`|[HpeESKM](#hpeeskm-v2_0_0-hpeeskm)|
|`Links/HttpsCert`|[HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)|
|`Links/SSO`|[HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)|
|`Links/SecurityDashboard`|[HpeiLOSecurityDashboard](#hpeilosecuritydashboard-v1_0_0-hpeilosecuritydashboard)|
|`PlatformCert/Certificates`|CertificateCollection|
|`PlatformCertUpdate/Certificates`|[ERROR_UNKNOWN](#error_unknown-v0_0_0-error_unknown)|
|`SystemIAK/Certificates`|CertificateCollection|
|`SystemIDevID/Certificates`|CertificateCollection|
|`iLOIDevID/Certificates`|CertificateCollection|
|`iLOLDevID/Certificates`|CertificateCollection|

### CurrentCipher
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Current cipher in use.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

### LoginSecurityBanner
**LoginSecurityBanner.IsEnabled**
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Login security banner is enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.15|

**LoginSecurityBanner.SecurityMessage**
Member of [HpeSecurityService](#hpesecurityservice)

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
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|SSH Host Key identifying the service.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SecurityState
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|The operational security level of this Manager.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Wipe`|Manager is currently wiping security related content and returning to a lower security mode.  This state will transition automatically when finished.|n|`Production`|Manager is operating in a normal security mode.  Default state for new systems.|n|`HighSecurity`|Manager is operating in high security mode, requiring extra authentication on host interface(s), and stronger encryption on network interfaces.|n|`FIPS`|Similar to High Security. This mode is intended to meet the FIPS 140-2 level 1 and Common Criteria security requirements. A reset to defaults is required to exit this mode.|n|`CNSA`|Same as FIPS. Additionally meets the criteria for NSA Commercial National Security Algorithm suite.  Must be in FIPS mode to transition to CNSA.|n|`SuiteB`|Same as FIPS. Additionally meets the criteria for NSA SuiteB Top Secret installations.  Must be in FIPS mode to transition to SuiteB.|n|`SynergySecurityMode`|Synergy Security Mode is the mode supported by the Synergy Composer.|n
### SecurityState@Redfish.AllowableValues (array)
Member of [HpeSecurityService](#hpesecurityservice)
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

### TrustedOSSecurity
**TrustedOSSecurity.EnableBackgroundScan**
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Enables or disables background scan of host OS software.|
|Type|boolean|
|Read Only|False|

**TrustedOSSecurity.LastScanResult**
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Health of the host after the last scan done by Trusted OS Security scan engine.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|The last Trusted OS Security scan completed without finding any issues.|n|`Critical`|The last Trusted OS Security scan completed finding issue(s). Refer to the SL log for details.|n|`Unknown`|The health is Unknown because either the scan data is unavailable or scan is not enabled or last scan failed to complete.|n
**TrustedOSSecurity.LastScanTime**
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|The time stamp of the last Trusted OS Security scan.|
|Type|string or null|
|Read Only|True|
|Format|date-time|

**TrustedOSSecurity.OnIntegrityFailure**
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Sets the policy for how the Trusted OS Security check handles integrity failures.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`NoAction`|No action will be taken when a failure is detected.|n|`Alert`|Generate an alert when a failure is detected.|n|`PowerOff`|Gracefully power system off when a failure is detected.|n|`PowerOffForce`|Force system power off when a failure is detected.|n|`Reset`|Reset system power off when a failure is detected.|n|`ColdBoot`|ColdBoot system power off when a failure is detected.|n|`ForceNMI`|ForceNMI system power off when a failure is detected.|n
**TrustedOSSecurity.ScanEverySeconds**
Member of [HpeSecurityService](#hpesecurityservice)

| | |
|---|---|
|Description|Sets the interval between Trusted OS Security scans in second increments.|
|Type|integer or null|
|Read Only|False|

### iLOIDevID
**iLOIDevID.Certificates**
This is a reference to a collection of certificates used for iLO IDevId by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

### iLOLDevID
**iLOLDevID.Certificates**
This is a reference to a collection of certificates used for iLO LDevId by this manager.
Certificates is a link (`"@odata.id": URI`) to another resource.

## HpeServerPCISlot

`@odata.type: "#HpeServerPCISlot.v2_1_0.HpeServerPCISlot"`

The HpeServerPCISlot resource describes the properties of PCI slots.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/pcislots/{item}/`|GET |

### BusNumber
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot bus number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### Characteristics
**Characteristics.Provides3_3Volts**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Provides 3.3 volts.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.Provides5Volts**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Provides 5.0 volts.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SlotIsShared**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|The slot shares its opening with another slot.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsCardBus**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Card Bus.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsHotPlugDevices**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Slot supports hot-plug devices.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsModemRingResume**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Modem Ring Resume.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsPCCard16**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports PC Card-16.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsPowerManagementEventSignal**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot supports Power Management Event signal.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsSMBusSignal**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot supports SMBUS signal.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsZoomVideo**
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Zoom Video.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### DeviceNumber
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot device number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### FunctionNumber
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot function number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### Length
Member of [HpeServerPCISlot](#hpeserverpcislot)

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
Member of [HpeServerPCISlot](#hpeserverpcislot)

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
Member of [HpeServerPCISlot](#hpeserverpcislot)
See the Redfish standard schema and specification for information on common Status object.

### SupportsHotPlug
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Specifies whether the slot supports hot-plug devices.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Technology
Member of [HpeServerPCISlot](#hpeserverpcislot)

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
|`PCIExpressGen4`|
|`PCIExpressGen3`|
|`PCIExpressGen2`|
|`PCIExpress`|

### UEFIDevicePath
Member of [HpeServerPCISlot](#hpeserverpcislot)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeSmartStorage

`@odata.type: "#HpeSmartStorage.v2_0_0.HpeSmartStorage"`

The HpeSmartStorage resource describes the properties of the HPE Smart Storage controller,drives,and volumes.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/smartstorage/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/ArrayControllers`|Collection of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)|
|`Links/HostBusAdapters`|HpeSmartStorageHostBusAdapterCollection|

### Status
Member of [HpeSmartStorage](#hpesmartstorage)
See the Redfish standard schema and specification for information on common Status object.

## HpeSmartStorageArrayController

`@odata.type: "#HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController"`

The HpeSmartStorageArrayController resource describes the properties of the HPE Smart Storage controller,drives,and volumes.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/LogicalDrives`|Collection of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)|
|`Links/PhysicalDrives`|Collection of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|
|`Links/StorageEnclosures`|Collection of [HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure-v2_0_0-hpesmartstoragestorageenclosure)|
|`Links/UnconfiguredDrives`|Collection of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|

### AdapterType
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Type of Smart controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SmartArray`|A controller that supports all SmartArray features and configuration|n|`SmartHBA`|A controller that functions natively as an HBA, but has a ValueRAID mode for basic RAID configuration|n|`DynamicSmartArray`|A controller that allows software RAID configuration|n
### ArrayCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of arrays configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### BackupPowerSourceStatus
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current status of the backup power source (battery, capacitor, megacell etc.)|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Present`|The backup power source is present but charging information is unknown|n|`NotPresent`|The backup power source is not present|n|`PresentAndCharged`|The backup power source is present and fully charged|n|`PresentAndCharging`|The backup power source is present and is currently charging|n
### BootVolumePrimary
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The primary boot volume of this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### BootVolumeSecondary
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The secondary boot volume of this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheArrayCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of cache arrays configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheLogicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of cache logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheMemorySizeMiB
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The total cache memory size for the controller in MiB|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheModuleSerialNumber
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The serial number of the Cache Module.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### CacheModuleStatus
**CacheModuleStatus.Health**
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This represents the health state of this resource in the absence of its dependent resources.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`OK`|Normal|n|`Warning`|A condition exists that requires attention|n|`Critical`|A critical condition exists that requires immediate attention|n
**CacheModuleStatus.HealthRollup**
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This represents the overall health state from the view of this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`OK`|Normal|n|`Warning`|A condition exists that requires attention|n|`Critical`|A critical condition exists that requires immediate attention|n
**CacheModuleStatus.State**
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This indicates the known state of the resource, such as if it is enabled.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Enabled`|This function or resource has been enabled.|n|`Disabled`|This function or resource has been disabled.|n|`StandbyOffline`|This function or resource is enabled, but awaiting an external action to activate it.|n|`StandbySpare`|This function or resource is part of a redundancy set and is awaiting a failover or other external action to activate it.|n|`InTest`|This function or resource is undergoing testing.|n|`Starting`|This function or resource is starting.|n|`Absent`|This function or resource is not present or not detected.|n|`UnavailableOffline`|This function or resource is present but cannot be used.|n|`Deferring`|The element will not process any commands but will queue new requests.|n|`Quiesced`|The element is enabled but only processes a restricted set of commands.|n|`Updating`|The element is updating and may be unavailable or degraded.|n
### CachePhysicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives assigned as cache drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ControllerBoard
**ControllerBoard.Status**
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)
See the Redfish standard schema and specification for information on common Status object.

### ControllerPartNumber
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Smart Array Controller Part Number|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CurrentOperatingMode
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current operating mode of the controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`RAID`|The controller is currently functioning in RAID mode|n|`HBA`|The controller is currently functioning in HBA mode|n|`Mixed`|The controller is currently functioning in Mixed mode|n
### CurrentParallelSurfaceScanCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Number of disks the controller is scanning in parallel|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DataLogicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of data logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DataPhysicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives assigned as data drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DegradedPerformanceOptimization
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to attempt to improve performance on RAID 5/50/6(ADG)/60 logical drives when one or more physical drives in the logical drive are failed|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|The controller will attempt to improve performance by buffering physical drive requests|n|`Disabled`|The controller will not buffer, which may result in reading from the same drive multiple times|n
### DriveWriteCache
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables or disables the write cache of the physical drives attached to the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|The write cache of the physical drives attached to the controller are enabled|n|`Disabled`|The write cache of the physical drives attached to the controller are enabled|n
### DualModeControllerSupported
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will support BMIC and RDE.|
|Type|boolean|
|Read Only|True|

### ElevatorSort
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to sort requests to a physical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|The controller will sort the requests to minimize the amount of seeking the drive must perform in order to reduce seek times|n|`Disabled`|The controller will perform the requests as they are recieved in order to improve request throughput|n
### EncryptionBootPasswordSet
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if there is a boot password set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionCryptoOfficerPasswordSet
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a password has been set for the Encryption Crypto Officer, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionCspTestPassed
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption CSP test passed, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionEnabled
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if encryption is currently enabled for this controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionFwLocked
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller firmware has been locked, preventing firmware updates, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasLockedVolumes
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has one or more volumes that are locked, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasLockedVolumesMissingBootPassword
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if there are locked drives due to a missing boot password, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasSuspendedVolumes
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller password has been temporarily suspended, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionKeySet
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the Master Key has been set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionLocalKeyCacheEnabled
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller caches encryption keys locally when a remote key manager is being used, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionMixedVolumesEnabled
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will allow plaintext and encrypted volumes to exist simultaneously, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionPhysicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of encrypted physical drives attached to the controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionRecoveryParamsSet
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption password recovery question and answer have been set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionSelfTestPassed
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption self test passed, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionStandaloneModeEnabled
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller manages encryption keys locally, false if a remote key manager is being used|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionUserPasswordSet
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a password has been set for the Encryption User, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### ExpandPriority
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The level of priority that transformations have over handling current operating system requests|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`High`|Transformations will complete as fast as possible at the expense of normal I/O|n|`Medium`|Transformations will perform with some impact on normal I/O|n|`Low`|Transformations will perform only when normal I/O is not occurring and may take longer to complete|n
### ExternalPortCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of external ports|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### FirmwareVersion
**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### FlexibleLatencySchedulerSetting
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This allows the controller to process certain high-latency requests after a delay that may time out when elevator sorting|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Default`|The controller will rely only on elevator sorting|n|`Low250`|The controller will apply a cutoff value of 250ms when suspending elevator sorting|n|`Middle100`|The controller will apply a cutoff value of 100ms when suspending elevator sorting|n|`Middle50`|The controller will apply a cutoff value of 50ms when suspending elevator sorting|n|`Aggressive30`|The controller will apply a cutoff value of 30ms when suspending elevator sorting|n|`Aggressive10`|The controller will apply a cutoff value of 10ms when suspending elevator sorting|n
### HardwareRevision
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The hardware revision of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### InconsistencyRepairPolicy
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to update data on RAID 6(ADG) and 60 volumes based on parity information when an inconsistency is discovered during surface scan|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|The controller will update the data on the drives based on the parity information|n|`Disabled`|The controller will only update the parity information and leave the data untouched|n
### InternalPortCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of internal ports|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### IsBootController
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if this controller is the OS boot controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Location identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationFormat
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Format for Location Identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`PCISlot`|The PCI slot the controller is located at. For embedded controllers, the slot is 0|n
### LogicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Manufacturer
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The manufacturer of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### MaxParallelSurfaceScanCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Maximum number of disks that the controller supports scanning in parallel|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Model
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The model number for the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### OperatingModeAfterReboot
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The operating mode the controller will be functioning in (RAID versus HBA) after a reboot|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`RAID`|The controller will be functioning in RAID mode after rebooting|n|`HBA`|The controller will be functioning in HBA mode after rebooting|n|`Mixed`|The controller will be functioning in Mixed mode after rebooting|n
### ParallelSurfaceScanSupported
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller supports scanning multiple disk surfaces|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeAfterReboot
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The power mode of the controller after a reboot|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Invalid`|The controller will be operating in an unknown power mode after a reboot|n|`Low`|The controller will be operating in minimum power mode after a reboot|n|`LowAutomated`|The controller will be operating in a balanced mode after a reboot|n|`Performant`|The controller will be operating in maximum performance power mode after a reboot|n
### PowerModeConfigured
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current power mode of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Invalid`|The power mode can not be determined|n|`Low`|The controller is currently operating in minimum power mode|n|`LowAutomated`|The controller is currently operating in a balanced power mode|n|`Performant`|The controller is currently operating in maximum performance power mode|n
### PowerModeWarningChangedDrive
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller's drive configuration has changed while using configuration based power settings, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeWarningChangedMode
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has a new power mode configured, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeWarningReboot
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a reboot is required to change the active power mode on the controller, false otherwise|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`NotRequired`|No reboot is required|n|`RequiredNoReason`|A reboot is required for the configured power mode on the controller|n|`RequiredPowerSavings`|Rebooting will enable additional power savings on the controller|n|`RequiredPerformance`|Rebooting will enhance the performance of the controller|n
### PowerModeWarningTemperature
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has crossed a critical temperature threshold and performance has been reduced to prevent damage to the controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PredictiveSpareRebuild
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables or disables predictive spare rebuild mode|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Spare drives will replace physical drives that are predicted to fail preemptively|n|`Disabled`|Spare drives will replace physical drives only when they fail|n
### QueueDepth
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This sets the maximum number of requests the controller will submit to a drive at any given time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`2`|2 requests|n|`4`|4 requests|n|`8`|8 requests|n|`16`|16 requests|n|`32`|32 requests|n|`Automatic`|Automatically determine the best queue depth for the controller|n
### ReadCachePercent
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This indicates the percentage of cache used for read cache on the controller, with the rest of the cache being used for write cache|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

### RebuildPriority
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The level of priority that rebuilds have over handling current operating system requests|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`High`|Rebuilds will complete as fast as possible at the expense of normal I/O|n|`Medium`|Rebuilds will perform with some impact on normal I/O|n|`Low`|Rebuilds will perform only when normal I/O is not occurring and may take longer to complete|n|`RapidHigh`|Rebuilds will complete as fast as possible at the expense of normal I/O|n|`RapidMediumHigh`|Rebuilds will perform with an impact on normal I/O|n|`RapidMedium`|Rebuilds will perform with some impact on normal I/O|n|`RapidLow`|Rebuilds will perform only when normal I/O is not occurring and may take longer to complete|n
### SerialNumber
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The serial number for this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SoftwareRaidHbaFirmwareRev
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The firmware version of the underlying HBA that is being used by the software RAID stack|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SoftwareRaidHbaModeOptionRomRev
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The option ROM firmware version used to bootstrap the software RAID stack|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SparePhysicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|he number of physical drives assigned as spare drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Status
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)
See the Redfish standard schema and specification for information on common Status object.

### SupportedOperatingModes (array)
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)
`SupportedOperatingModes` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`RAID`|The controller supports functioning in RAID mode|n|`HBA`|The controller supports functioning in HBA mode|n|`Mixed`|The controller supports functioning in Mixed mode|n
### SupportedPowerModes (array)
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)
`SupportedPowerModes` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Low`|The controller is currently operating in minimum power mode|n|`LowAutomated`|The controller is currently operating in a balanced power mode|n|`Performant`|The controller is currently operating in maximum performance power mode|n
### SupportedRaidLevels (array)
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)
`SupportedRaidLevels` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`0`|There is no fault tolerance used on the logical drive|n|`1`|Two sets of duplicate data is being stored on a pair of drives|n|`1ADM`|Three sets of duplicate data is being stored on a trio of drives|n|`10`|Data is duplicated and striped across pairs of disk drives|n|`10ADM`|Data is duplicated and striped across trios of disk drives|n|`5`|Fault tolerance is achieved by storing parity data across 3 or more disk drives|n|`50`|Fault tolerance is achieved by storing parity data and striping the data across 6 or more disk drives|n|`6`|Fault tolerance is achieved by storing multiple sets parity data across 4 or more disk drives|n|`60`|Fault tolerance is achieved by storing multiple sets parity data and striping the data across 8 or more disk drives|n
### SurfaceScanAnalysisPriority
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Priority that the controller takes to find and correct disk surface errors|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Surface scan is disabled and may lead to data loss|n|`High`|Surface scan commands will be sent with the host I/O, resulting in faster scanning, but may inpact host I/O performance|n|`Medium`|Surface scan commands have a medium priority, and will have some impact on host I/O performance|n|`Low`|Surface scan commands have a low priority, and will have little impact on host I/O performance|n|`Idle`|Surface scan commands will ony be issued when no host I/O is present after a delay|n
### UnassignedPhysicalDriveCount
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of unassigned physical drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### WriteCacheBypassThresholdKB
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This value sets the write cache bypass threshold, ranging from 16 KB to 1040 KB in multiples of 16 KB, where all writes larger than the specified value in KB units will bypass the write cache and be written directly to the disk for non-parity RAID volumes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

### WriteCacheWithoutBackupPowerEnabled
Member of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will continue to use write cache even if the backup power source is not available. False, otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

## HpeSmartStorageDiskDrive

`@odata.type: "#HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive"`

The HpeSmartStorageDiskDrive resource describes the properties of the HPE Smart Storage controller,drives,and volumes.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/diskdrives/2/`|GET |
`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/diskdrives/{item}/`|GET |

### BlockSizeBytes
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Block size of the drive in bytes. This is the block size presented by the drive to clients such as the array controller or operating system.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityGB
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total capacity of the drive in GB. This denotes the marketing capacity (base 10)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityLogicalBlocks
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total number of logical blocks in the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityMiB
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total capacity of the drive in MiB|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CarrierApplicationVersion
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Carrier PIC firmware version currently running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CarrierAuthenticationStatus
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Authentication status of the drive carrier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|Carrier authenticated as genuine HPE product|n|`Fail`|Carrier authentication failed|n|`NoCommunication`|Communication could not be established with the carrier|n|`NotApplicable`|Carrier does not support authentication|n
### CurrentTemperatureCelsius
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The current temperature of the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DiskDriveStatusReasons (array)
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)
`DiskDriveStatusReasons` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|No status reason available|n|`Unknown`|Reason is unknown|n|`CommunicationFailure`|Cannot communicate with drive|n|`Zoned`|Drive is currently zoned, only basic information can be displayed|n|`EraseInProgress`|Drive is currently in process of an erase operation|n|`QueuedForErase`|Drive is currently queued for an erase operation|n|`EraseCompleted`|Drive has completed the erase operation|n|`EraseFailed`|The erase operation has failed for the drive|n|`EraseAborted`|The erase operation was aborted|n|`Failed`|The drive has failed|n|`NonAuthenticDrive`|The drive is not an authentic drive|n|`CarrierCommunicationFailure`|The drive carrier has a communication fault|n|`PredictiveFail`|Drive failure is imminent|n|`NotSupported`|The drive is not supported by the controller|n|`SizeNotValid`|The drive size is invalid. Typically occurs if a drive part of a raid volume is replaced with a smaller sized drive|n|`FailedDueToPredictiveSpareActivation`|The drive was failed due to a predictive spare activation|n|`Rebuilding`|The drive is currently rebuilding|n|`TransientDataDrive`|The drive is part of a volume that is currently undergoing a transformation. After the transformation is complete the drive's state will change|n|`Unrecoverable`|The drive is in an unrecoverable condition|n
### DiskDriveUse
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The current use of the physical drive.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Data`|It is a Data drive which is a part of an array.|n|`Spare`|It is a spare drive which is a part of an array.|n|`Raw`|Indicates the drive is available to the OS via HBA mode on the controller.|n|`Unconfigured`|Indicates the drive is not available to the OS as controller is in RAID mode.|n|`Unknown`|The current use of the disk drive is not known.|n
### EncryptedDrive
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|True if encryption is currently enabled on this disk drive, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EraseCompletionPercentage
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The percent complete for an erase operation currently occurring on the disk drive or null if not currently erasing a drive.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### ErasePattern
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The pattern used for erasing the disk drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### FirmwareVersion
**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### IndicatorLED
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The state of the indicator LED.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Unknown`|The state of the Indicator LED cannot be determined.|n|`Lit`|The Indicator LED is lit.|n|`Blinking`|The Indicator LED is blinking.|n|`Off`|The Indicator LED is off.|n
### InterfaceSpeedMbps
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Native interface speed for the device|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### InterfaceType
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The connection interface of the drive. The value NVME has been deprecated.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SAS`|SAS|n|`SATA`|SATA|n|`NVME`|Non-volatile memory (deprecated)|n|`PCIe`|PCIe interface|n|`Unknown`|Information is unavailable|n
### LegacyBootPriority
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This indicates that the array controller should provide legacy boot support.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Primary`|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this physical drive. The physical drive will be listed as first in the LUN list returned via SCSI commands|n|`Secondary`|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this physical drive. The physical drive will be listed as second in the LUN list returned via SCSI commands|n|`None`|Legacy boot not supported on this physical drive|n
### Location
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The location of the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationFormat
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Format for the location property|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`ControllerPort:Box:Bay`|This format typically used in controller context where the drive would be identified using the controller port, JBOD box number and drive bay|n|`SwitchPort:Box:Bay`|This format typically used in a SAS switch context where the drive would be identified using the switch port, JBOD box number and drive bay|n|`SwitchPort:SwitchBay:Bay`|This format typically used in a SAS switch context where the drive would be identified using the switch port, ICM bay number for the switch and drive bay|n
### Manufacturer
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Manufacturer of the disk drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### MaximumTemperatureCelsius
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The maximum recommended temperature for the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### MediaType
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Type of disk|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`HDD`|The drive media type is traditional magnetic platters|n|`SSD`|The drive media type is solid state or flash memory|n|`SMR`|The drive media type is shingled magnetic recording|n
### MinimumGoodFirmwareVersion
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The minimum recommended firmware revision for the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Model
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Drive model number|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### NativeBlockSizeBytes
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Native block size of the drive in bytes. This is the underlying sector size used by the physical drive to store data. For example, an advanced format drive that uses 4K sector sizes to store data will return 4K as the NativeBlockSizeBytes but may return 512 for the BlockSizeBytes when running in 512e (emulation) mode for backward compatibility|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PhyCount
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of phys the drive has|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PortCount
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of ports on the drive. Typically 1 (single-domain) or 2 (dual-domain)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerOnHours
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of lifetime hours that the drive has been powered on. The value is null if the disk power on hours cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### RotationalSpeedRpm
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The rotational speed of the drive, only applicable on HDDs|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SSDEnduranceUtilizationPercentage
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This is the percentage of the drive that has been worn out and can no longer be used. When this values reaches 100%, the drive has 0% usage remaining and is completely worn out. The value is null if percent endurance used cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The serial number of the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SpareRebuildMode
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Method to used activate this drive when another drive fails, this is only applicable if the drive is configured as a spare drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Dedicated`|This drive will take over a failed drive temporarily. When the failed drive is replaced, this will return to being a spare. This drive be shared between arrays.|n|`Roaming`|This drive will permanently replace a failed drive. The failed drive will become a spare. This spare drive cannot be shared between arrays.|n
### Status
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)
See the Redfish standard schema and specification for information on common Status object.

### TransferSpeedMbps
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Effective transfer speed to the device taking into account hardware acceleration such as edge-buffering|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### UncorrectedReadErrors
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of read errors that have occurred on a drive that could not be recovered by a drive's Error Correction Code (ECC) algorithm or through retries. Over time, a drive may produce these errors, and a problem may exist. The value increases every time the physical drive detects another error. The severity of these errors depends on if the drive is in a fault tolerant mode and the controller can remap data to eliminate problems.  If an increase in this counter is seen, run diagnostics on the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### UncorrectedWriteErrors
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of write errors that have occurred on a drive that could not be recovered through retries. Over time, a drive may produce these errors, and a problem may exist. The value increases every time the physical drive detects another error. If an increase in this counter is seen, run diagnostics on the drive.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### WWID
Member of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Unique identifier for the device|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeSmartStorageLogicalDrive

`@odata.type: "#HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive"`

The HpeSmartStorageLogicalDrive resource describes the properties of the HPE Smart Storage controller,drives,and volumes.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/logicaldrives/{item}/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/DataDrives`|Collection of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|

### AccelerationMethod
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The acceleration method of the logical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|Logical drive acceleration is disabled|n|`ControllerCache`|Reads and writes to the logical drive are being cached by the controller.|n|`IOBypass`|For logical drives on SSDs, read and write information directly from the drive.|n|`SmartCache`|Reads and writes to the logical drive are being cached by a caching logical drive.|n
### BlockSizeBytes
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The block size of the disk drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityMiB
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Total usable capacity available on this logical drive in MiB units|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveAccessName
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The access ID of the logical drive given by the OS|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometryCylinders
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of cylinders on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometryHeads
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of heads on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometrySectors
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of sectors on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### InterfaceType
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The connection interface of the logical drive.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SAS`|SAS|n|`SATA`|SATA|n|`Mixed`|Contains both SAS and SATA.|n|`NVMe`|NVMe|n|`Unknown`|Information is unavailable|n
### LegacyBootPriority
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Primary`|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this logical drive. The logical drive will be listed as first in the LUN list returned via SCSI commands|n|`Secondary`|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this logical drive. The logical drive will be listed as second in the LUN list returned via SCSI commands|n|`None`|Legacy boot not supported on this logical drive|n
### LogicalDriveEncryption
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if encryption is currently enabled on this logical drive, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatile
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if volatile keys are enabled for encryption, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatileBackup
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if volatile keys are backed up to a remote key manager, false if volatile keys are not backed up|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatileStatus
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The status of the encryption volatile keys|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`NoOp`|No operations are pending for the volatile keys|n|`BackupInProgress`|The volatile keys are being backed up to a remote key manager|n|`BackupAndSetInProgress`|The volatile keys are being set and being backed up to a remote key manager|n|`RestoreInProgress`|The volatile keys are being restored from a remote key manager|n|`DeleteInProgress`|The volatile keys are being removed|n
### LogicalDriveName
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Label given to the logical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveNumber
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|logical drive number|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveStatusReasons (array)
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)
`LogicalDriveStatusReasons` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|The state of the logical drive is unknown|n|`Ok`|The logical drive is in normal operation mode|n|`Failed`|Indicates that more physical drives have failed than the fault tolerance mode of the logical drive can handle without data loss|n|`Unconfigured`|The logical drive is not configured|n|`Recovering`|The logical drive is using Interim Recovery Mode. In Interim Recovery Mode, at least one physical drive has failed, but the logical drive's fault tolerance mode lets the drive continue to operate with no data loss|n|`ReadyForRebuild`|The logical drive is ready for Automatic Data Recovery. A failed physical drive has been replaced, but the logical drive is still operating in Interim Recovery Mode|n|`Rebuilding`|The logical drive is currently doing Automatic Data Recovery, where fault tolerance algorithms restore data to the replacement drive|n|`WrongDrive`|The wrong physical drive was replaced after a failure|n|`BadConnect`|A physical drive is not responding|n|`Overheating`|The drive array enclosure that contains the logical drive is overheating. The drive array is still functional, but should be shutdown|n|`Shutdown`|The drive array enclosure that contains the logical drive has overheated. The logical drive is no longer functional|n|`Expanding`|The logical drive is currently undergoing a transformation (expansion, shrinkage or movement). During transformation, fault tolerance algorithms redistribute logical drive data according to the transformation operation selected|n|`NotAvailable`|The logical drive is currently unavailable. If a logical drive is expanding and the new configuration frees additional disk space, this free space can be configured into another logical volume. If this is done, the new volume will be set to not available|n|`QueuedForExpansion`|The logical drive is ready for transformation (expansion, shrinkage or movement). The logical drive is in the queue for transformation|n|`MultipathAccessDegraded`|Previously all disk drives of this logical drive had more than one I/O path to the controller, but now one or few of them have only one I/O path|n|`Erasing`|The logical drive is currently being erased|n|`PredictiveSpareRebuildReady`|The logical drive is ready to perform a predictive spare rebuild. The logical drive is in the queue for rebuild|n|`RapidParityInitInProgress`|The logical drive is currently undergoing rapid parity initialization (RPI). The logical drive is unavailable to the operating system during RPI and will be made available once RPI has completed|n|`RapidParityInitPending`|The logical drive is currently pending RPI and will be unavailable|n|`NoAccessEncryptedNoControllerKey`|The logical drive is currently encrypted and cannot be accessed because the array controller has not yet received the encryption key nor was it found in the controller's CSP NVRAM|n|`UnencryptedToEncryptedInProgress`| The logical drive is currently being transformed from unencrypted to encrypted and the volume is online. Data will be written unencrypted if the write is directed to an LBA range on th e logical drive that has not yet been migrated|n|`NewKeyRekeyInProgress`|The logical drive is currently encrypted and all data is currently being rekeyed with a new logical drive key using the background capacity expansion transformation task. The logical drive is online|n|`NoAccessEncryptedControllerEncryptionNotEnabled`|The logical drive is currently encrypted and cannot be accessed because the array controller does not have encryption enabled|n|`UnencryptedToEncryptedNotStarted`|The logical drive has received a request to transform from unencrypted to encrypted but this process has not yet started. The unencrypted logical drive is currently online|n|`NewLogDrvKeyRekeyRequestReceived`|The logical drive is encrypted and has received a request to rekey all data with a new logical drive encryption key. The logical drive is online|n|`Unsupproted`|The state of the logical drive is unsupported|n|`Offline`|Logical volume is comprised of  one or more Locked SEDs. Volume is offline|n|`SEDQualinprogress`|Logical volume SED Qualification is in progress|n|`SEDQualFailed`|Logical volume SED Qualification failed|n
### LogicalDriveType
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|How the logical drive is being used|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Data`|The drive is being used as a storage drive|n|`Cache`|The drive is being used as a cache drive for a different storage drive|n|`SplitMirrorSetPrimary`|This drive is being used as the primary storage drive of a split mirror set after a Split Mirror Array has been performed|n|`SplitMirrorSetBackup`|This drive is being used as the backup storage drive of a split mirror set after a Split Mirror Array has been performed|n|`SplitMirrorSetBackupOrphan`|This drive was being used as the backup storage drive of a split mirror set that no longer exists|n
### MediaType
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Type of the disk this logical drive is associated with.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`HDD`|Spinning disk hard drive.|n|`SSD`|Solid state disk.|n|`SMR`|Shingled Magnetic Recording.|n|`Mixed`|Contains both HDD and SSD.|n|`Unknown`|Information is unavailable|n
### ParityInitializationCompletionPercentage
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Parity initialization complete percentage for a parity based logical drive (e.g. RAID 5)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ParityInitializationType
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|When creating a logical drive with a RAID level that requires parity, parity blocks can be initialized with two different methods|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Default`|Parity blocks are initialized in the background and the logical drive is available during this time|n|`Rapid`|Both data and parity blocks are initialized in the foreground and the logical drive will not be available to the operating system until initialization completes|n
### PartitionInformation
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|OS partition information for the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Raid
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The current RAID level configured on the logical drive|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`0`|There is no fault tolerance used on this logical drive|n|`1`|Two sets of duplicate data is being stored on a pair of drives|n|`1ADM`|Three sets of duplicate data is being stored on a trio of drives|n|`10`|Data is duplicated and striped across pairs of disk drives|n|`10ADM`|Data is duplicated and striped across trios of disk drives|n|`5`|Fault tolerance is achieved by storing parity data across 3 or more disk drives|n|`50`|Fault tolerance is achieved by storing parity data and striping the data across 6 or more disk drives|n|`6`|Fault tolerance is achieved by storing multiple sets parity data across 4 or more disk drives|n|`60`|Fault tolerance is achieved by storing multiple sets parity data and striping the data across 8 or more disk drives|n
### RebuildCompletionPercentage
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The percent complete for a rebuild operation currently occurring on the logical drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SmartCacheState
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The state of the SmartCache cache. This is valid if this drive either is a cache drive, or has a cache drive attached to it|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Good`|The cache is functioning properly|n|`Limited`|The cache is functioning in a degraded mode, and may not be functioning at maximum performance|n|`DDRUnsafe`|The DDR is unsafe for the cache drive|n|`CacheLUNOffline`|The cache drive is offline|n|`PrimaryLUNOffline`|The primary logical drive that is being cached is offline|n|`Destroyed`|The cache is destroyed and not functional|n|`Flushing`|The cache drive is flushing|n|`Configuring`|The caching pair is being configured|n|`PairFailAtPowerup`|The primary and cache drive were unable to be paired at powerup|n|`Unknown`|The state of the cache is unknown|n
### Status
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)
See the Redfish standard schema and specification for information on common Status object.

### StripSizeBytes
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The strip size of the logical drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### StripeSizeBytes
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The stripe size of the logical drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### TransformationCompletionPercentage
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The percent complete for any transformations the logical drive may be undergoing such as RAID migration, stripesize migration, capacity expansion etc.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### VolumeUniqueIdentifier
Member of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|An identifier (typically SCSI Inquiry based such as Inquiry VPD Page 0x83 NAA 64 identifier) used to uniquely identify this volume.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeUSBDevice

`@odata.type: "#HpeUSBDevice.v2_0_0.HpeUSBDevice"`

The HpeUSBDevice resource describes the properties of USB devices.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/usbdevices/{item}/`|GET |

### DeviceCapacityMB
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device usable capacity (if applicable) in Mbytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceClass
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device Class code as defined by the USB HID device specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceName
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device name in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceProtocol
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Protocol code as defined by the USB HID specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceSubClass
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device SubClass code as defined by the USB HID device specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Location of the USB device on the server|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### ProductID
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB product ID as defined by manufacturer.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### StructuredName
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|USB device structured name in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePath
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|UEFI device path of USB device. Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### VendorID
Member of [HpeUSBDevice](#hpeusbdevice)

| | |
|---|---|
|Description|Vendor ID of detected USB device.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeUSBPort

`@odata.type: "#HpeUSBPort.v2_0_0.HpeUSBPort"`

The HpeUSBPort resource describes the properties of USB ports.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/usbports/{item}/`|GET |

### InstanceNumber
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Instance number of the USB Port|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Location of the USB Device on the server|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Back`|Located on the rear panel of the server.|n|`Front`|Located on the front bezel of the server.|n|`Internal`|Located internally within the server chassis.|n|`InternalManagement`|Internal management media.|n|`InternalSDCard`|The internal SD-Card slot.|n|`iLOManagement`|iLO virtual USB devices.|n
### PCIBusNumber
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|PCI Bus number of the USB controller that controls this USB port |
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PCIDeviceNumber
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|PCI Device Number of the USB Controller that controls this USB Port.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PCIFunctionNumber
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|PCI Function Number of the USB Controller that controls this USB Port.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ParentHubInstance
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Parent Hub Instance that provides an instance number of the internal hub this USB Port is connected to.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SharedCapability
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|Shared Capability of the USB Port|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`UnsharedManagement`|Not shared as a Management Port.|n|`SharedManagementPhysicalSwitch`|Shared management port w/ physical switch to control whether muxed to iLO or host.|n|`SharedManagementPortAutomaticControl`||n
### SpeedCapability
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|USB speed capability of the USB port as configured by the BIOS during POST.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`USB1FullSpeed`|USB 1.0 Full Speed|n|`USB2HighSpeed`|USB 2.0 High Speed|n|`USB3SuperSpeed`|USB 3.x SuperSpeed|n
### UEFIDevicePath
Member of [HpeUSBPort](#hpeusbport)

| | |
|---|---|
|Description|UEFI Device Path of USB Endpoint. Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeWorkloadPerformanceAdvisor

`@odata.type: "#HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor"`

The HpeWorkloadPerformanceAdvisor resource describes the properties for managing the HPE Workload Performance Advisor.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/workloadperformanceadvisor/{item}/`|GET |

### Duration
Member of [HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|Specifies the duration over which the workload performance advisor is computed.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

### PerformanceTuningOption (array)
Member of [HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)
`PerformanceTuningOption` is an array containing elements of: 

**PerformanceTuningOption[{item}].BIOSAttributeName**
Member of [HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The attribute name of the BIOS settings.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**PerformanceTuningOption[{item}].RecommendedValue**
Member of [HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|Recommended value for the corresponding BIOS attribute. Please refer to BIOS attribute registry schema for more information.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

### WorkloadCharacteristics (array)
Member of [HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)
`WorkloadCharacteristics` is an array containing elements of: 

**WorkloadCharacteristics[{item}].MetricId**
Member of [HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The id of the metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**WorkloadCharacteristics[{item}].MetricValue**
Member of [HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The workload utilization of the metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Low`|Utilization is low.|n|`Medium`|Utilization is medium.|n|`High`|Utilization is high.|n
## JsonSchemaFile

`@odata.type: "#JsonSchemaFile.v1_0_4.JsonSchemaFile"`

The JSON Schema File resource describes the location (URI) of a particular Redfish schema definition being implemented or referenced by a Redfish service.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/jsonschemas/{item}/`|GET |

### Languages (array)
Member of [JsonSchemaFile](#jsonschemafile)
`Languages` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

### Location (array)
Member of [JsonSchemaFile](#jsonschemafile)
`Location` is an array containing elements of: 

**Location[{item}].Language**
Member of [JsonSchemaFile](#jsonschemafile)

| | |
|---|---|
|Description|The RFC 5646 language code for this schema or registry item.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Location[{item}].Uri**
Member of [JsonSchemaFile](#jsonschemafile)

| | |
|---|---|
|Description|Link to locally available URI for schema.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Schema
Member of [JsonSchemaFile](#jsonschemafile)

| | |
|---|---|
|Description|The typename this schema describes.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## LogService

`@odata.type: "#LogService.v1_0_0.LogService"`

This resource contains properties for monitoring and configuring an event log service for the resource or service to which it is associated.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/logservices/iel/`|GET POST |
`/redfish/v1/systems/{item}/logservices/iml/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Entries`|LogEntryCollection|

### Entries
The URI to this log entries collection resource.
Entries is a link (`"@odata.id": URI`) to another resource.

### MaxNumberOfRecords
Member of [LogService](#logservice)

| | |
|---|---|
|Description|The maximum number of log entries.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### OverWritePolicy
Member of [LogService](#logservice)

| | |
|---|---|
|Description|When the log is full, the overwrite policy is enforced.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|The overwrite policy is not known or is undefined.|n|`WrapsWhenFull`|When the log is full, new entries will overwrite previous entries.|n|`NeverOverwrites`|When the log is full, new entries are discarded.|n
### Actions

**LogService.ClearLog**
Member of [LogService](#logservice)
There are no parameters for this action.
## MemoryCollection

`@odata.type: "#MemoryCollection.MemoryCollection"`

A Collection of Memory resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/memory/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[Memory](#memory-v1_7_1-memory)|

### Members (array)
Member of MemoryCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of MemoryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of MemoryCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.AmpModeActive
Member of MemoryCollection

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|The management software cannot determine the AMP, host OS may not have provided it yet.|n|`Other`||n|`None`|The management software cannot determine the AMP, or the system is not configured for AMP.|n|`Mirroring`|The system is configured for mirrored memory protection. All memory banks are duplicated in mirrored memory, as opposed to only one for online spare memory. If enough ECC errors occur, the spare memory is activated and the memory that is experiencing the errors is disabled.|n|`OnlineSpare`|A single spare bank of memory is set aside at boot time. If enough ECC errors occur, the spare memory is activated and the memory that is experiencing the errors is disabled.|n|`RAIDXOR`|The system is configured for AMP with the XOR engine.|n|`AdvancedECC`|The system is configured for AMP with the Advanced ECC engine.|n|`Lockstep`||n|`A3DC`|The system is configured for AMP with A3DC.|n|`DIMMECC`|The system is configured for AMP with DIMM ECC (Error Correcting Code) only.|n
### Oem.Hpe.AmpModeStatus
Member of MemoryCollection

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|The management software cannot determine the status, host OS may not have provided it yet.|n|`Other`|The system does not support AMP, or the management software cannot determine the status.|n|`NotProtected`|The system supports AMP, but the feature is disabled.|n|`Protected`|The system supports AMP. The feature is enabled but not engaged.|n|`Degraded`|The system was protected, but AMP is engaged. Therefore, AMP is no longer available.|n|`DIMMECC`|The system is protected by DIMM ECC (Error Correcting Code) only.|n|`Mirroring`|The system is protected by AMP in the mirrored mode. No DIMM faults have been detected.|n|`DegradedMirroring`|The system is protected by AMP in the mirrored mode. One or more DIMM faults have been detected.|n|`OnlineSpare`|The system is protected by AMP in the hot spare mode. No DIMM faults have been detected.|n|`DegradedOnlineSpare`||n|`RAIDXOR`|The system is protected by AMP in the XOR memory mode. No DIMM faults have been detected.|n|`DegradedRAIDXOR`|The system is protected by AMP in the XOR memory mode. One or more DIMM faults have been detected.|n|`AdvancedECC`|The system is protected by AMP in the Advanced ECC mode.|n|`DegradedAdvancedECC`|The system is protected by AMP in the Advanced ECC mode. One or more DIMM faults have been detected.|n|`Lockstep`||n|`DegradedLockstep`||n|`A3DC`|The system is protected by AMP in the A3DC mode.|n|`DegradedA3DC`|The system is protected by AMP in the A3DC mode. One or more DIMM faults have been deteced.|n
### Oem.Hpe.AmpModeSupported (array)
Member of MemoryCollection
`AmpModeSupported` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`RAIDXOR`|The system can be configured for AMP using the XOR engine.|n|`DualBoardMirroring`|The system can be configured for mirrored advanced memory protection in a dual memory board configuration. The mirrored memory can be swapped with memory on the same memory board or with memory on the second memory board.|n|`SingleBoardMirroring`|The system can be configured for mirrored advanced memory protection in a single memory board.|n|`AdvancedECC`|The system can be configured for Advanced ECC.|n|`Mirroring`|The system can be configured for mirrored AMP.|n|`OnlineSpare`|The system can be configured for online spare AMP.|n|`OnlineSpareRank`|The system can be configured for Online Spare Rank AMP.|n|`OnlineSpareChannel`|The system can be configured for Online Spare Channel AMP.|n|`IntersocketMirroring`|The system can be configured for mirrored intersocket AMP between the memory of two processors or boards.|n|`IntrasocketMirroring`|The system can be configured for mirrored intrasocket AMP between the memory of a single processor or board.|n|`Lockstep`||n|`A3DC`|The system can be configured for A3DC.|n|`None`|The system cannot be configured for AMP.|n|`DIMMECC`|The system can be configured for DIMM ECC (Error Correcting Code) only.|n
### Oem.Hpe.MemoryList (array)
Member of MemoryCollection
`MemoryList` is an array containing elements of: 

**MemoryList[{item}].BoardCpuNumber**
Member of MemoryCollection

| | |
|---|---|
|Type|integer or null|
|Read Only|True|

**MemoryList[{item}].BoardNumberOfSockets**
Member of MemoryCollection

| | |
|---|---|
|Description|The number of present memory module sockets.|
|Type|integer or null|
|Read Only|True|

**MemoryList[{item}].BoardOperationalFrequency**
Member of MemoryCollection

| | |
|---|---|
|Description|The frequency at which memory on the board is operating in MHz.|
|Type|integer or null|
|Read Only|True|

**MemoryList[{item}].BoardOperationalVoltage**
Member of MemoryCollection

| | |
|---|---|
|Description|The voltage at which memory on the board is operating in mV.|
|Type|integer or null|
|Read Only|True|

**MemoryList[{item}].BoardTotalMemorySize**
Member of MemoryCollection

| | |
|---|---|
|Description|The total size of the memory populated on the board in MB.|
|Type|integer or null|
|Read Only|True|

## MessageRegistryFile

`@odata.type: "#MessageRegistryFile.v1_0_4.MessageRegistryFile"`

The MessageRegistryFile resource describes the Schema File locator resource.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/registries/{item}/`|GET |

### Languages (array)
Member of [MessageRegistryFile](#messageregistryfile)
`Languages` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

### Location (array)
Member of [MessageRegistryFile](#messageregistryfile)
`Location` is an array containing elements of: 

**Location[{item}].Language**
Member of [MessageRegistryFile](#messageregistryfile)

| | |
|---|---|
|Description|The RFC 5646 language code for this schema or registry item.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

**Location[{item}].Uri**
Member of [MessageRegistryFile](#messageregistryfile)

| | |
|---|---|
|Description|Link to locally available URI for schema.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|
|Format|uri-reference|

### Registry
Member of [MessageRegistryFile](#messageregistryfile)

| | |
|---|---|
|Description|The Registry Name, Major and Minor version used in MessageID construction.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

## MetricDefinition

`@odata.type: "#MetricDefinition.v1_0_0.MetricDefinition"`

The metadata information about a metric.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/telemetryservice/metricdefinitions/cpuutil/`|GET |

### Calculable
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The types of calculations which can be applied to the metric reading.  This property provides information to the client on the suitability of calculatiion using the metric reading.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`NonCalculatable`|No calculations should be performed on the metric reading.|n|`Summable`|The sum of the metric reading across multiple instances is meaningful.|n|`NonSummable`|The sum of the metric reading across multiple instances is not meaningful.|n
### CalculationAlgorithm
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The calculation which is performed on a source metric to obtain the metric being defined.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Average`|The metric is calculated as the average of a metric reading over a sliding time interval.|n|`Maximum`|The metric is calculated as the maximum value of a metric reading over during a time interval.|n|`Minimum`|The metric is calculated as the minimum value of a metric reading over a sliding time interval.|n
### Implementation
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The implementation of the metric.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`PhysicalSensor`|The metric is implemented as a physical sensor.|n|`Calculated`|The metric is implemented by applying a calculation on another metric property.  The calculation is specified in the CalculationAlgorithm property.|n|`Synthesized`|The metric is implemented by applying a calculation on one or more metric properties.  (The calculation is not specified.  For expressing generalized formula, see MathSON).|n|`DigitalMeter`|The metric is implemented as digital meter.|n
### IsLinear
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|Indicates whether the metric values are linear (vs non-linear).|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### MaxReadingRange
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|Maximum value for metric reading.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.40|

### MetricDataType
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The data type of the related metric values.  The property provides information to the client on the nature of the metric reading.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Boolean`|The data type follows the JSON Boolean definition.|n|`DateTime`|The data type follows the JSON String definition with the Date-Time format applied.|n|`Decimal`|The data type follows the JSON Decimal definition.|n|`Integer`|The data type follows the JSON Integer definition.|n|`String`|The data type follows the JSON String definition.|n|`Enumeration`|The data type follows the JSON String definition with a set of enumerations defined.|n
### MetricProperties (array)
Member of [MetricDefinition](#metricdefinition)
`MetricProperties` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### MetricType
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|Specifies the type of metric provided.  The property provides information to the client on how the metric can be handled.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Numeric`|The metric is a numeric metric.  The metric value is any real number.|n|`Discrete`|The metric is a discrete metric.  The metric value is discrete.  The possible values are listed in the DiscreteValues property.|n|`Gauge`|The metric is a gauge metric.  The metric value is a real number.  When the metric value reaches the gauges extrema, it stays at that value, until the reading falls within the extrema.|n|`Counter`|The metric is a counter metric.  The metric reading is a non-negative integer which increases monotonically.  When a counter reaches its maximum, the value resets to 0 and resumes counting.|n|`Countdown`|The metric is a countdown metric.  The metric reading is a non-negative integer which decreases monotonically.  When a counter reaches its minimum, the value resets to preset value and resumes counting down.|n
### MinReadingRange
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|Minimum value for metric reading.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Units
Member of [MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The units of measure for this metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

## MetricReport

`@odata.type: "#MetricReport.v1_0_0.MetricReport"`

The metric definitions used to create a metric report.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/telemetryservice/metricreports/cpuutilcustom1/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`MetricReportDefinition`|[MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)|
|`MetricValues[]/MetricDefinition`|[MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)|

### MetricReportDefinition
The metric definitions used to create a metric report.
MetricReportDefinition is a link (`"@odata.id": URI`) to another resource.

### MetricValues (array)
Member of [MetricReport](#metricreport)
`MetricValues` is an array containing elements of: 

**MetricValues[{item}].MetricDefinition**
A link to the Metric Definition.
MetricDefinition is a link (`"@odata.id": URI`) to another resource.

**MetricValues[{item}].MetricId**
Member of [MetricReport](#metricreport)

| | |
|---|---|
|Description|The metric definitions identifier for this metric.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**MetricValues[{item}].MetricValue**
Member of [MetricReport](#metricreport)

| | |
|---|---|
|Description|The value identifies this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**MetricValues[{item}].Timestamp**
Member of [MetricReport](#metricreport)

| | |
|---|---|
|Description|The time when the value of the metric is obtained.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

## MetricReportDefinition

`@odata.type: "#MetricReportDefinition.v1_0_0.MetricReportDefinition"`

A set of metrics that are collected into a metric report.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/telemetryservice/metricreportdefinitions/cpuutilcustom1/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`MetricReport`|[MetricReport](#metricreport-v1_0_0-metricreport)|

### MetricProperties (array)
Member of [MetricReportDefinition](#metricreportdefinition)
`MetricProperties` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### MetricReport
Specifies the location where the resultant metric report is placed.
MetricReport is a link (`"@odata.id": URI`) to another resource.

### MetricReportDefinitionType
Member of [MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|Indicates when the metric report is generated.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Periodic`|The metric report is generated at a periodic time interval, specified in the Schedule property.|n|`OnChange`|The metric report is generated when any of the metric values change.|n|`OnRequest`|The metric report is generated when a HTTP GET is performed on the specified metric report.|n
### Metrics (array)
Member of [MetricReportDefinition](#metricreportdefinition)
`Metrics` is an array containing elements of: 

**Metrics[{item}].CollectionDuration**
Member of [MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|Specifies the duration over which the function is computed.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**Metrics[{item}].CollectionFunction**
Member of [MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|Specifies the function to apply to the list of metric properties.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Average`|The metric is calculated as the average of a metric reading over a sliding time interval.|n|`Maximum`|The metric is calculated as the maximum value of a metric reading over during a time interval.|n|`Minimum`|The metric is calculated as the minimum value of a metric reading over a sliding time interval.|n|`Summation`|The metric is calculated as the sum of the values over a sliding time interval.|n
**Metrics[{item}].CollectionTimeScope**
Member of [MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|The time scope of the related metric values.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Point`|The corresponding metric values apply to a point in time.  On the corresponding metric value instances, the value of Timestamp shall specify the point in time.|n|`Interval`|The corresponding metric values apply to a time interval.  On the corresponding metric value instances, the value of Timestamp shall specify the end of the time interval and Duration shall specify its duration.|n|`StartupInterval`|The corresponding metric values apply to a time interval that began at the startup of the measured resource (i.e. the Resources associated by Links.MetricDefinitionForResources).  On the corresponding metric value instances, the value of Timestamp shall specify the end of the time interval.  The value of Duration shall specifies the duration between startup of the resource and TimeStamp.|n
**Metrics[{item}].MetricId**
Member of [MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|Specifies the label for the metric definition which is derived by applying the CollectionFunction to the metric property.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**Metrics[{item}].MetricProperties (array)**
Member of [MetricReportDefinition](#metricreportdefinition)
`MetricProperties` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### Status
Member of [MetricReportDefinition](#metricreportdefinition)
See the Redfish standard schema and specification for information on common Status object.

## NetworkAdapterCollection

`@odata.type: "#NetworkAdapterCollection.NetworkAdapterCollection"`

A Collection of NetworkAdapter resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/chassis/{item}/networkadapters/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[NetworkAdapter](#networkadapter-v1_4_0-networkadapter)|

### Members (array)
Member of NetworkAdapterCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of NetworkAdapterCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of NetworkAdapterCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.MemberContents
Member of NetworkAdapterCollection

| | |
|---|---|
|Description|Provides the discovery status of this collection.  For some server platforms, only partial device discovery is possible under auxiliary power.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`AllDevices`|The server state allows complete device discovery.  All installed devices are listed as members.|n|`AuxPowerDevices`|The server architecture may not support power to all installed devices in the current auxiliary power state. Only devices capable of operating in this power state are listed as members.  Additional devices may be listed when the server is fully powered.|n
## NetworkInterface

`@odata.type: "#NetworkInterface.v1_1_1.NetworkInterface"`

A NetworkInterface contains references linking NetworkAdapter, NetworkPort, and NetworkDeviceFunction resources and represents the functionality available to the containing system.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/networkinterfaces/dc07b000/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/NetworkAdapter`|[NetworkAdapter](#networkadapter-v1_4_0-networkadapter)|
|`NetworkDeviceFunctions`|Collection of [NetworkDeviceFunction](#networkdevicefunction-v1_3_0-networkdevicefunction)|
|`NetworkPorts`|Collection of [NetworkPort](#networkport-v1_2_5-networkport)|

### NetworkDeviceFunctions
link to collection of membertype NetworkDeviceFunction. The collection of device functions avaliable on this network interface.
NetworkDeviceFunctions is a link (`"@odata.id": URI`) to another resource.

### NetworkPorts
Link to a collection of membertype NetworkPort. The collection of ports avaliable on this network interface.
NetworkPorts is a link (`"@odata.id": URI`) to another resource.

### Status
Member of [NetworkInterface](#networkinterface)
See the Redfish standard schema and specification for information on common Status object.

## NetworkInterfaceCollection

`@odata.type: "#NetworkInterfaceCollection.NetworkInterfaceCollection"`

A Collection of NetworkInterface resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/networkinterfaces/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[NetworkInterface](#networkinterface-v1_1_1-networkinterface)|

### Members (array)
Member of NetworkInterfaceCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of NetworkInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of NetworkInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.MemberContents
Member of NetworkInterfaceCollection

| | |
|---|---|
|Description|Provides the discovery status of this collection.  For some server platforms, only partial device discovery is possible under auxiliary power.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`AllDevices`|The server state allows complete device discovery.  All installed devices are listed as members.|n|`AuxPowerDevices`|The server is in the auxiliary power state and only devices capable of operating in this power state are listed as members.  Additional devices may be listed when the server is fully powered.|n
## SecureBoot

`@odata.type: "#SecureBoot.v1_0_0.SecureBoot"`

This resource contains UEFI Secure Boot information. It represents properties for managing the UEFI Secure Boot functionality of a system.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/secureboot/`|GET POST PATCH |

### SecureBootCurrentBoot
Member of [SecureBoot](#secureboot)

| | |
|---|---|
|Description|Secure Boot state during the current boot cycle.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Secure Boot is currently enabled.|n|`Disabled`|Secure Boot is currently disabled.|n
### SecureBootEnable
Member of [SecureBoot](#secureboot)

| | |
|---|---|
|Description|Enable or disable UEFI Secure Boot (takes effect on next boot).|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecureBootMode
Member of [SecureBoot](#secureboot)

| | |
|---|---|
|Description|Current Secure Boot Mode.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SetupMode`|Secure Boot is currently in Setup Mode.|n|`UserMode`|Secure Boot is currently in User Mode.|n|`AuditMode`|Secure Boot is currently in Audit Mode.|n|`DeployedMode`|Secure Boot is currently in Deployed Mode.|n
### Actions

**SecureBoot.ResetKeys**
Member of [SecureBoot](#secureboot)
Action to perform reset of the Secure Boot Keys.


**Parameters:**

**ResetKeysType (string)**

This parameter specifies what type of reset action to perform.

|Value|Description|
|---|---|
|DeleteAllKeys|Delete all Secure Boot keys on next boot.|
|DeletePK|Delete Secure Boot platform keys on next boot.|
|ResetAllKeysToDefault|Reset to default Secure Boot keys on next boot.|
## ServiceRoot

`@odata.type: "#ServiceRoot.v1_5_1.ServiceRoot"`

The ServiceRoot resource describes the Redfish API service root.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`AccountService`|[AccountService](#accountservice-v1_5_0-accountservice)|
|`CertificateService`|[CertificateService](#certificateservice-v1_0_3-certificateservice)|
|`Chassis`|Collection of [Chassis](#chassis-v1_10_2-chassis)|
|`EventService`|[EventService](#eventservice-v1_0_8-eventservice)|
|`JsonSchemas`|Collection of [JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)|
|`Links/Sessions`|Collection of [Session](#session-v1_0_0-session)|
|`Managers`|Collection of [Manager](#manager-v1_5_1-manager)|
|`Oem/Hpe/Links/ResourceDirectory`|[HpeiLOResourceDirectory](#hpeiloresourcedirectory-v2_0_0-hpeiloresourcedirectory)|
|`Registries`|Collection of [MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)|
|`SessionService`|[SessionService](#sessionservice-v1_0_0-sessionservice)|
|`Systems`|Collection of [ComputerSystem](#computersystem-v1_10_0-computersystem)|
|`Tasks`|[TaskService](#taskservice-v1_1_1-taskservice)|
|`TelemetryService`|[TelemetryService](#telemetryservice-v1_0_0-telemetryservice)|
|`UpdateService`|[UpdateService](#updateservice-v1_1_1-updateservice)|

### AccountService
The URI to this account service resource.
AccountService is a link (`"@odata.id": URI`) to another resource.

### CertificateService
The URI to the certificate service resource.
CertificateService is a link (`"@odata.id": URI`) to another resource.

### Chassis
The URI to this chassis resource.
Chassis is a link (`"@odata.id": URI`) to another resource.

### EventService
The URI to the event service resource.
EventService is a link (`"@odata.id": URI`) to another resource.

### JsonSchemas
The URI to this registries resource.
JsonSchemas is a link (`"@odata.id": URI`) to another resource.

### Managers
The URI to this managers resource.
Managers is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.DebugCode
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether the iLO has debug firmware flashed.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.DevSystem
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether the test key is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.Manager (array)
Member of [ServiceRoot](#serviceroot)
`Manager` is an array containing elements of: 

**Manager[{item}].Blade**
**Manager[{item}].Blade.BayNumber**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies the location of the blade in the enclosure.|
|Type|string|
|Read Only|True|

**Manager[{item}].Blade.EnclosureName**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies the name of the enclosure in which the blade is present.|
|Type|string|
|Read Only|True|

**Manager[{item}].Blade.RackName**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies the name of the rack in which the enclosure is present.|
|Type|string|
|Read Only|True|

**Manager[{item}].DefaultLanguage**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Default language used for the Web interface.|
|Type|string|
|Read Only|True|

**Manager[{item}].FQDN**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Fully qualified domain name of the management processor.|
|Type|string or null|
|Read Only|True|

**Manager[{item}].HostName**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The name of management processor.|
|Type|string or null|
|Read Only|True|

**Manager[{item}].IPManager**
**Manager[{item}].Languages (array)**
Member of [ServiceRoot](#serviceroot)
`Languages` is an array containing elements of: 

**Languages[{item}].Language**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies one of the languages supported by the management processor.|
|Type|string|
|Read Only|True|

**Languages[{item}].TranslationName**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies one of the languages supported by the management processor.|
|Type|string|
|Read Only|True|

**Languages[{item}].Version**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies the version of the management processor in the respective language.|
|Type|string|
|Read Only|True|

**Manager[{item}].ManagerFirmwareVersion**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The major and minor management processor version numbers.|
|Type|string|
|Read Only|True|

**Manager[{item}].ManagerFirmwareVersionPass**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The build or pass number of the management processor version.|
|Type|string|
|Read Only|True|

**Manager[{item}].ManagerType**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The type of the service manager.|
|Type|string|
|Read Only|True|

**Manager[{item}].SelfTestErrors (array)**
Member of [ServiceRoot](#serviceroot)
`SelfTestErrors` is an array containing elements of: 

**SelfTestErrors[{item}].SelfTestName**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|iLO Self Test Name.|
|Type|string|
|Read Only|True|

**Manager[{item}].Status**
Member of [ServiceRoot](#serviceroot)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.Moniker
**Oem.Hpe.Moniker.ADVLIC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Optional Licensed functionality tier name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.BMC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Generic abbreviation for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.BSYS**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Product category name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.CLASS**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Management processor product category.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.FEDGRP**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Default federation group name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.IPROV**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Product name for provisioning and deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODABR**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Abbreviated product name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODFAM**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Full product family.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODGEN**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Abbreviated product name and generation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODNAM**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Full product name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODTAG**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Branded, abbreviated product name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.STDLIC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Base licensed functionality tier name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.SUMABR**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Acronym for update deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.SUMGR**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Product name for update deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.SYSFAM**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Host system product family.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.SYSMGMT**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|System Management Experience.|
|Type|string|
|Read Only|True|

**Oem.Hpe.Moniker.VENDABR**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Abbreviated vendor name (like stock ticker).|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.VENDNAM**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Full vendor name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.VNIC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Virtual USB network interface to BMC name.|
|Type|string|
|Read Only|True|

**Oem.Hpe.Moniker.WWW**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Top level public internet vendor URI.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWAHSV**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Active Health viewer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWBMC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWDOC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor documentation / manuals.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWERS**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Embedded Remote Support.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWGLIS**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for management processor licensing infrastructure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWINFOSIGHT**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet resource for active health.|
|Type|string|
|Read Only|True|

**Oem.Hpe.Moniker.WWWIOL**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Online Insight service.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWLIC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWLML**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Learn More Links.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWPASS**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for accessing support account.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWPRV**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for privacy policy statement.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWQSPEC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Quick Specs.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWRESTDOC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for REST API documentation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWSUP**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for management processor and product support.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWSWLIC**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for vendor software licensing.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PreProd
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether the system identifies as pre-production.|
|Type|boolean|
|Read Only|True|

### Oem.Hpe.Sessions
**Oem.Hpe.Sessions.CertCommonName**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The name of the management processor as it appears in the digital certificate when a secure web GUI session is established to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.CertificateLoginEnabled**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether Certificate login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.KerberosEnabled**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether Kerberos login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LDAPAuthLicenced**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether a valid license is installed for LDAP use.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LDAPEnabled**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether LDAP login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LocalLoginEnabled**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether local users can log in.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LoginFailureDelay**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The delay (seconds) when a management processor login attempt has failed.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LoginHint**
**Oem.Hpe.Sessions.LoginHint.Hint**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The information on how to log in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LoginHint.HintPOSTData**
**Oem.Hpe.Sessions.LoginHint.HintPOSTData.Password**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The password for logging in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LoginHint.HintPOSTData.UserName**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The user name for logging in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.SecurityMessage**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The login security banner message that is displayed on the management processor Login page.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.SecurityOverride**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether the security override switch is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.ServerName**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The name of the server that this management processor is managing.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.System (array)
Member of [ServiceRoot](#serviceroot)
`System` is an array containing elements of: 

**System[{item}].Status**
Member of [ServiceRoot](#serviceroot)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.Time
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The current Redfish service time.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Product
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The product associated with this Redfish service.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

### ProtocolFeaturesSupported
**ProtocolFeaturesSupported.ExpandQuery**
**ProtocolFeaturesSupported.ExpandQuery.ExpandAll**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of asterisk (expand all entries) is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.ExpandQuery.Levels**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of the $levels qualifier is supported by the service.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.ExpandQuery.MaxLevels**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates the maximum number value of the $levels qualifier in expand operations.|
|Type|number|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.ExpandQuery.NoLinks**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of period (expand only entries not in the Links section) is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.FilterQuery**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the filter query parameter is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.OnlyMemberQuery**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether Management Processor supports the only query option.|
|Type|boolean|
|Read Only|True|

**ProtocolFeaturesSupported.SelectQuery**
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the select query parameter is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

### RedfishVersion
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The version of the Redfish service|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Registries
The URI to this registries resource.
Registries is a link (`"@odata.id": URI`) to another resource.

### SessionService
The URI to this sessions service resource.
SessionService is a link (`"@odata.id": URI`) to another resource.

### Systems
The URI to this systems resource.
Systems is a link (`"@odata.id": URI`) to another resource.

### Tasks
The URI to this tasks service resource.
Tasks is a link (`"@odata.id": URI`) to another resource.

### TelemetryService
The URI to the TelemetryService resource.
TelemetryService is a link (`"@odata.id": URI`) to another resource.

### UUID
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Unique identifier for a service instance.  This value should be an exact match of the UUID value returned in a 200OK from an SSDP M-SEARCH request during discovery.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UpdateService
The URI to this UpdateService resource.
UpdateService is a link (`"@odata.id": URI`) to another resource.

### Vendor
Member of [ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The vendor of the product associated with this Redfish service.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

## Session

`@odata.type: "#Session.v1_0_0.Session"`

The Session resource describes a single connection (session) between a client and a Redfish service instance.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/sessionservice/sessions/{item}/`|GET DELETE |

### Oem.Hpe.AccessTime
Member of [Session](#session)

| | |
|---|---|
|Description|User session last-access time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Oem.Hpe.LoginTime
Member of [Session](#session)

| | |
|---|---|
|Description|User session login time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Oem.Hpe.MySession
Member of [Session](#session)

| | |
|---|---|
|Description|Indicates whether this is a session I own.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.Privileges
**Oem.Hpe.Privileges.HostBIOSConfigPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host Bios Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.HostNICConfigPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host NIC Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.HostStorageConfigPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host Storage Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.LoginPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to log in to the management processor. All local accounts have the login privilege. This privilege is added automatically if it is not specified.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.RemoteConsolePriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to remotely access the host system Remote Console, including video, keyboard, and mouse control.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.SystemRecoveryConfigPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to manage the critical recovery firmware images on the iLO Repository.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.UserConfigPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to add, edit, and delete local management processor user accounts. A user with this privilege can change privileges for all users.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.VirtualMediaPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to use the Virtual Media feature on the host system.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.VirtualPowerAndResetPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to power-cycle or reset the host system. These activities interrupt system availability. A user with this privilege can diagnose the system by using the Generate NMI to System button.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.iLOConfigPriv**
Member of [Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to configure most management processor settings, including security settings, and to remotely update the management processor firmware. This privilege does not enable local user account administration.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.UserAccount
Member of [Session](#session)

| | |
|---|---|
|Description|Login details of the user|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.UserDistinguishedName
Member of [Session](#session)

| | |
|---|---|
|Description|LDAP user is identified by its distinguished name (DN).|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.UserExpires
Member of [Session](#session)

| | |
|---|---|
|Description|User session expire time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Oem.Hpe.UserIP
Member of [Session](#session)

| | |
|---|---|
|Description|IP address of the user|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.UserTag
Member of [Session](#session)

| | |
|---|---|
|Description|Session source|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Web UI`|
|`RBSU`|
|`Remote Console`|
|`SSH`|
|`IPMI/RMCP`|
|`SM-CLP`|
|`RIBCL`|
|`RESTHost`|
|`RIBCLHost`|
|`WSMgmt`|
|`Telnet`|
|`Federation`|
|`USBFrontPort`|
|`REST`|
|`Unknown`|

### Oem.Hpe.UserType
Member of [Session](#session)

| | |
|---|---|
|Description|User type|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Local`|
|`Directory`|
|`Single Sign On`|
|`Kerberos`|
|`Trusted Key`|
|`Security Override`|
|`System`|
|`Federation`|

### UserName
Member of [Session](#session)

| | |
|---|---|
|Description|Name to use to log in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## SessionCollection

`@odata.type: "#SessionCollection.SessionCollection"`

A Collection of Session resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/sessionservice/sessions/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[Session](#session-v1_0_0-session)|
|`Oem/Hpe/Links/MySession`|[Session](#session-v1_0_0-session)|

### Members (array)
Member of SessionCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of SessionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of SessionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## SessionService

`@odata.type: "#SessionService.v1_0_0.SessionService"`

The SessionService resource describes the BMC Redfish Session Service.  It represents the properties for the service itself and has links to the actual list of sessions.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/sessionservice/`|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Sessions`|Collection of [Session](#session-v1_0_0-session)|

### ServiceEnabled
Member of [SessionService](#sessionservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SessionTimeout
Member of [SessionService](#sessionservice)

| | |
|---|---|
|Description|This is the number of seconds of inactivity that a session may have before the session service closes the session due to inactivity.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Sessions
This property references a Collection resource of Sessions.
Sessions is a link (`"@odata.id": URI`) to another resource.

### Status
Member of [SessionService](#sessionservice)
See the Redfish standard schema and specification for information on common Status object.

## SoftwareInventoryCollection

`@odata.type: "#SoftwareInventoryCollection.SoftwareInventoryCollection"`

A Collection of SoftwareInventory resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/firmwareinventory/`|GET |
`/redfish/v1/updateservice/softwareinventory/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[SoftwareInventory](#softwareinventory-v1_2_0-softwareinventory)|

### Members (array)
Member of SoftwareInventoryCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of SoftwareInventoryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of SoftwareInventoryCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## TaskService

`@odata.type: "#TaskService.v1_1_1.TaskService"`

The TaskService resource describes the Task service. It represents the properties for the service itself and has links to the actual list of tasks.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/taskservice/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Tasks`|TaskCollection|

### CompletedTaskOverWritePolicy
Member of [TaskService](#taskservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Manual`|Completed tasks are not automatically overwritten.|n|`Oldest`|Oldest completed tasks are overwritten.|n
### DateTime
Member of [TaskService](#taskservice)

| | |
|---|---|
|Description|The current DateTime (with offset) setting that the task service is using.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

### LifeCycleEventOnTaskStateChange
Member of [TaskService](#taskservice)

| | |
|---|---|
|Description|Send an Event upon Task State Change.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

### ServiceEnabled
Member of [TaskService](#taskservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Status
Member of [TaskService](#taskservice)
See the Redfish standard schema and specification for information on common Status object.

### Tasks
This property references a resource of type Collection with a MemberType of TaskCollection.
Tasks is a link (`"@odata.id": URI`) to another resource.

## TelemetryService

`@odata.type: "#TelemetryService.v1_0_0.TelemetryService"`

The TelemetryService resource describes the Metrics Service.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/telemetryservice/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`MetricDefinitions`|Collection of [MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)|
|`MetricReportDefinitions`|Collection of [MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)|
|`MetricReports`|Collection of [MetricReport](#metricreport-v1_0_0-metricreport)|
|`Triggers`|Collection of [Triggers](#triggers-v1_0_0-triggers)|

### MaxReports
Member of [TelemetryService](#telemetryservice)

| | |
|---|---|
|Description|The maximum number of metric reports supported by this service.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.40|

### MetricDefinitions
A link to the collection of Metric Definitions.
MetricDefinitions is a link (`"@odata.id": URI`) to another resource.

### MetricReportDefinitions
A link to the collection of Metric Reports.
MetricReportDefinitions is a link (`"@odata.id": URI`) to another resource.

### MetricReports
A link to the collection of Metric Reports.
MetricReports is a link (`"@odata.id": URI`) to another resource.

### MinCollectionInterval
Member of [TelemetryService](#telemetryservice)

| | |
|---|---|
|Description|The minimum time interval between collections supported by this service.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Status
Member of [TelemetryService](#telemetryservice)
See the Redfish standard schema and specification for information on common Status object.

### SupportedCollectionFunctions (array)
Member of [TelemetryService](#telemetryservice)
`SupportedCollectionFunctions` is an array containing elements of: 


| | |
|---|---|
|Description|An operation to perform over the sample.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Average`|An averaging function.|n|`Maximum`|A maximum function.|n|`Minimum`|A minimum function.|n|`Summation`|A summation function.|n
### Triggers
A link to the collection of Triggers, which apply to metrics.
Triggers is a link (`"@odata.id": URI`) to another resource.

## Triggers

`@odata.type: "#Triggers.v1_0_0.Triggers"`

The Triggers resource describes the a metric trigger, which apply to metrics.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/telemetryservice/triggers/cpuutiltriggers/`|GET PATCH |

### MetricProperties (array)
Member of [Triggers](#triggers)
`MetricProperties` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### MetricType
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|Specifies the type of metric for which the trigger is configured.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Numeric`|The trigger is for numeric sensor.|n|`Discrete`|The trigger is for a discrete sensor.|n
### NumericThresholds
**NumericThresholds.LowerCritical**
**NumericThresholds.LowerCritical.Activation**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Increasing`|Value increases above the threshold.|n|`Decreasing`|Value decreases below the threshold.|n|`Either`|Value crosses the threshold in either direction.|n
**NumericThresholds.LowerCritical.DwellTime**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.LowerCritical.Reading**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.LowerWarning**
**NumericThresholds.LowerWarning.Activation**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Increasing`|Value increases above the threshold.|n|`Decreasing`|Value decreases below the threshold.|n|`Either`|Value crosses the threshold in either direction.|n
**NumericThresholds.LowerWarning.DwellTime**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.LowerWarning.Reading**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.UpperCritical**
**NumericThresholds.UpperCritical.Activation**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Increasing`|Value increases above the threshold.|n|`Decreasing`|Value decreases below the threshold.|n|`Either`|Value crosses the threshold in either direction.|n
**NumericThresholds.UpperCritical.DwellTime**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.UpperCritical.Reading**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.UpperWarning**
**NumericThresholds.UpperWarning.Activation**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Increasing`|Value increases above the threshold.|n|`Decreasing`|Value decreases below the threshold.|n|`Either`|Value crosses the threshold in either direction.|n
**NumericThresholds.UpperWarning.DwellTime**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.UpperWarning.Reading**
Member of [Triggers](#triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

### Status
Member of [Triggers](#triggers)
See the Redfish standard schema and specification for information on common Status object.

### TriggerActions (array)
Member of [Triggers](#triggers)
`TriggerActions` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`LogToLogService`|Upon a trigger, record in a log.|n|`RedfishEvent`|Upon a trigger, send a Redfish Event message of type MetricReport.|n
