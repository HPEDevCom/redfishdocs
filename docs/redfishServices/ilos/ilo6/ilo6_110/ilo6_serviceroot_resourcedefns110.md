---
excludeFromSearch: true
seo:
  title: Serviceroot resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Serviceroot resource definitions of iLO 6 v1.10

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## ServiceRoot

`@odata.type: "#ServiceRoot.v1_13_0.ServiceRoot"`

The ServiceRoot resource describes the Redfish API service root.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Registries`|Collection of [MessageRegistryFile](../ilo6_other_resourcedefns110/#messageregistryfilecollection)|
|`Managers`|Collection of [Manager](../ilo6_manager_resourcedefns110/#managercollection)|
|`AccountService`|[AccountService](../ilo6_other_resourcedefns110/#accountservice)|
|`JsonSchemas`|Collection of [JsonSchemaFile](../ilo6_other_resourcedefns110/#jsonschemafilecollection)|
|`UpdateService`|[UpdateService](../ilo6_other_resourcedefns110/#updateservice)|
|`ComponentIntegrity`|Collection of [ComponentIntegrity](../ilo6_other_resourcedefns110/#componentintegritycollection)|
|`SessionService`|[SessionService](../ilo6_other_resourcedefns110/#sessionservice)|
|`EventService`|[EventService](../ilo6_other_resourcedefns110/#eventservice)|
|`Chassis`|Collection of [Chassis](../ilo6_chassis_resourcedefns110/#chassiscollection)|
|`Oem/Hpe/Links/ResourceDirectory`|[HpeiLOResourceDirectory](../ilo6_hpe_resourcedefns110/#hpeiloresourcedirectory)|
|`Systems`|Collection of [ComputerSystem](../ilo6_computersystem_resourcedefns110/#computersystemcollection)|
|`Links/Sessions`|Collection of [Session](../ilo6_other_resourcedefns110/#sessioncollection)|

### AccountService

The URI to this account service resource.
AccountService is a link (`"@odata.id": URI`) to another resource.

### CertificateService

The URI to the certificate service resource.
CertificateService is a link (`"@odata.id": URI`) to another resource.

### Chassis

The URI to this chassis resource.
Chassis is a link (`"@odata.id": URI`) to another resource.

### ComponentIntegrity

The URI to this collection resource.
ComponentIntegrity is a link (`"@odata.id": URI`) to another resource.

### EventService

The URI to the event service resource.
EventService is a link (`"@odata.id": URI`) to another resource.

### JsonSchemas

The URI to this registries resource.
JsonSchemas is a link (`"@odata.id": URI`) to another resource.

### Managers

The URI to this managers resource.
Managers is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.CACLoginUri

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|URI for the CAC based authentication.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|
|Format|uri-reference|

### Oem.Hpe.DebugCode

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether the iLO has debug firmware flashed.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.DevSystem

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether the test key is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Manager (array)

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

`Manager` is an array containing elements of:

**Manager[{item}].Blade**
**Manager[{item}].Blade.BayNumber**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies the location of the blade in the enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].Blade.EnclosureName**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies the name of the enclosure in which the blade is present.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].Blade.RackName**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies the name of the rack in which the enclosure is present.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].DefaultLanguage**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Default language used for the Web interface.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].ExternalManager**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Reports the current external manager of the system.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].FQDN**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Fully qualified domain name of the management processor.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].HostName**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The name of management processor.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].IPManager**
**Manager[{item}].Languages (array)**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

`Languages` is an array containing elements of:

**Languages[{item}].Language**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies one of the languages supported by the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Languages[{item}].TranslationName**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies one of the languages supported by the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Languages[{item}].Version**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies the version of the management processor in the respective language.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].ManagerFirmwareVersion**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The major and minor management processor version numbers.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].ManagerFirmwareVersionPass**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The build or pass number of the management processor version.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].ManagerType**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The type of the service manager.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].SelfTestErrors (array)**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

`SelfTestErrors` is an array containing elements of:

**SelfTestErrors[{item}].SelfTestName**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|iLO Self Test Name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Manager[{item}].Status**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.Moniker

**Oem.Hpe.Moniker.ADVLIC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Optional Licensed functionality tier name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.BMC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Generic abbreviation for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.BSYS**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Product category name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.CLASS**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Management processor product category.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.FEDGRP**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Default federation group name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.IPROV**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Product name for provisioning and deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.PRODABR**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Abbreviated product name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.PRODFAM**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Full product family.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.PRODGEN**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Abbreviated product name and generation.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.PRODNAM**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Full product name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.PRODTAG**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Branded, abbreviated product name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.STDLIC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Base licensed functionality tier name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.SUMABR**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Acronym for update deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.SUMGR**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Product name for update deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.SYSFAM**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Host system product family.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.SYSMGMT**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|System Management Experience.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.VENDABR**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Abbreviated vendor name (like stock ticker).|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.VENDNAM**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Full vendor name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.VNIC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Virtual USB network interface to BMC name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWW**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Top level public internet vendor URI.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWAHSV**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Active Health viewer.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWBMC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWDOC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor documentation / manuals.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWERS**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Embedded Remote Support.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWGLIS**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for management processor licensing infrastructure.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWINFOSIGHT**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet resource for active health.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWIOL**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Online Insight service.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWLIC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWLML**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Learn More Links.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWPASS**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for accessing support account.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWPRV**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for privacy policy statement.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWQSPEC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Quick Specs.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWRESTDOC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for REST API documentation.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWSUP**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for management processor and product support.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Moniker.WWWSWLIC**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for vendor software licensing.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PreProd

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether the system identifies as pre-production.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Sessions

**Oem.Hpe.Sessions.CertCommonName**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The name of the management processor as it appears in the digital certificate when a secure web GUI session is established to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.CertificateLoginEnabled**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether Certificate login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.KerberosEnabled**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether Kerberos login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.LDAPAuthLicenced**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether a valid license is installed for LDAP use.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.LDAPEnabled**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether LDAP login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.LocalLoginEnabled**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether local users can log in.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.LoginFailureDelay**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The delay (seconds) when a management processor login attempt has failed.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.LoginHint**
**Oem.Hpe.Sessions.LoginHint.Hint**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The information on how to log in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.LoginHint.HintPOSTData**
**Oem.Hpe.Sessions.LoginHint.HintPOSTData.Password**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The password for logging in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.LoginHint.HintPOSTData.UserName**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The user name for logging in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.SecurityMessage**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The login security banner message that is displayed on the management processor Login page.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.SecurityOverride**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Specifies whether the security override switch is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Sessions.ServerName**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The name of the server that this management processor is managing.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.System (array)

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

`System` is an array containing elements of:

**System[{item}].Status**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.Time

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The current Redfish service time.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Product

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The product associated with this Redfish service.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ProtocolFeaturesSupported

**ProtocolFeaturesSupported.ExpandQuery**
**ProtocolFeaturesSupported.ExpandQuery.ExpandAll**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of asterisk (expand all entries) is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**ProtocolFeaturesSupported.ExpandQuery.Levels**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of the $levels qualifier is supported by the service.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**ProtocolFeaturesSupported.ExpandQuery.MaxLevels**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates the maximum number value of the $levels qualifier in expand operations.|
|Type|number|
|Read Only|True|
|Added|iLO6 1.05|

**ProtocolFeaturesSupported.ExpandQuery.NoLinks**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of period (expand only entries not in the Links section) is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**ProtocolFeaturesSupported.FilterQuery**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the filter query parameter is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**ProtocolFeaturesSupported.OnlyMemberQuery**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether Management Processor supports the only query option.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**ProtocolFeaturesSupported.SelectQuery**
Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|This indicates whether the select query parameter is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### RedfishVersion

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The version of the Redfish service|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|Unique identifier for a service instance.  This value should be an exact match of the UUID value returned in a 200OK from an SSDP M-SEARCH request during discovery.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### UpdateService

The URI to this UpdateService resource.
UpdateService is a link (`"@odata.id": URI`) to another resource.

### Vendor

Member of [ServiceRoot.v1\_13\_0.ServiceRoot](#serviceroot)

| | |
|---|---|
|Description|The vendor of the product associated with this Redfish service.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

