---
excludeFromSearch: true
seo:
  title: Other resource definitions
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Other resource definitions of iLO 6 v1.52

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## AccountService

`@odata.type: "#AccountService.v1_5_0.AccountService"`

The AccountService resource describes the BMC user account management service. It represents the properties for this service and has links to the list of accounts.

### Managing User Accounts with the Accounts Collection

**JSONPath**: `/Accounts/@odata.id`

The destination of this link is a collection of user accounts (see ManagerAccount).

* You may create a new user account by POSTing a new account description the the Accounts collection.  See ManagerAccount for details.
> e.g. `POST https://{iLO}/redfish/v1/accountservice/accounts/ with new account description`
* You may modify an existing user by PATCHing properties to the user account resource.  See ManagerAccount for details.
> e.g. `PATCH https://{iLO}/redfish/v1/accountservice/accounts/{item} with different properties`
* You may remove a user account by DELETEing the resources representing the user
> e.g. `DELETE https://{iLO}/redfish/v1/accountservice/accounts/{item}`

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Accounts`|Collection of [ManagerAccount](../ilo6_manager_resourcedefns152/#manageraccountcollection)|

### AccountLockoutCounterResetAfter

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The interval of time in seconds between the last failed login attempt and reset of the lockout threshold counter. This value must be less than or equal to AccountLockoutDuration. Reset sets the counter to zero.|
|Type|number|
|Read Only|True|
|Added|iLO6 1.05|

### AccountLockoutCounterResetEnabled

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The value indicates whether the threshold counter will be reset after AccountLockoutCounterResetAfter expires.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### AccountLockoutDuration

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The time in seconds an account is locked out. The value must be greater than or equal to the value of the AccountLockoutCounterResetAfter property. If set to 0, no lockout occurs.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

### AccountLockoutThreshold

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The number of failed login attempts allowed before a user account is locked for a specified duration. A value of 0 means it is never locked.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

### Accounts

This property references a resource of type Collection with a MemberType of ManagerAccount.
Accounts is a link (`"@odata.id": URI`) to another resource.

### ActiveDirectory

**ActiveDirectory.AccountProviderType**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property contains the type of external account provider this resource references.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ActiveDirectoryService`|An external Active Directory Service.|

**ActiveDirectory.Authentication**
**ActiveDirectory.Authentication.AuthenticationType**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property contains the type of authentication used to connect to the external account provider.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`UsernameAndPassword`|Username and password combination.|

**ActiveDirectory.Authentication.Password**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property is used with a PATCH or PUT to write the password for the account service.  This property is null on a GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**ActiveDirectory.Authentication.Username**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property contains the distinguished name for the account service.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**ActiveDirectory.RemoteRoleMapping (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

`RemoteRoleMapping` is an array containing elements of:

**RemoteRoleMapping[{item}].LocalRole**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The name of the local role in which to map the remote user or group.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**RemoteRoleMapping[{item}].RemoteGroup**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property is the name of the remote group (or in the case of a Redfish Service, remote role) that will be mapped to the local role referenced by this entity.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**ActiveDirectory.ServiceAddresses (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

`ServiceAddresses` is an array containing elements of:

**ServiceAddresses[{item}]**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ActiveDirectory.ServiceEnabled**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### AuthFailureLoggingThreshold

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The number of authorization failures allowed before the failure attempt is logged to the manager log.|
|Type|number|
|Read Only|False|
|Added|iLO6 1.05|

### LDAP

**LDAP.AccountProviderType**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property contains the type of external account provider this resource references.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ActiveDirectoryService`|An external Active Directory Service.|
|`LDAPService`|A generic external LDAP Service.|

**LDAP.Authentication**
**LDAP.Authentication.AuthenticationType**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property contains the type of authentication used to connect to the external account provider.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`UsernameAndPassword`|Username and password combination.|

**LDAP.Authentication.Password**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property is used with a PATCH or PUT to write the password for the account service.  This property is null on a GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**LDAP.Authentication.Username**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property contains the distinguished name for the account service.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**LDAP.Certificates**
A link to a collection of Certificates used for the external account service.
Certificates is a link (`"@odata.id": URI`) to another resource.

**LDAP.LDAPService**
**LDAP.LDAPService.SearchSettings**
**LDAP.LDAPService.SearchSettings.BaseDistinguishedNames (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

`BaseDistinguishedNames` is an array containing elements of:

**BaseDistinguishedNames[{item}]**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**LDAP.RemoteRoleMapping (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

`RemoteRoleMapping` is an array containing elements of:

**RemoteRoleMapping[{item}].LocalRole**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The name of the local role in which to map the remote user or group.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**RemoteRoleMapping[{item}].RemoteGroup**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property is the name of the remote group (or in the case of a Redfish Service, remote role) that will be mapped to the local role referenced by this entity.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**LDAP.ServiceAddresses (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

`ServiceAddresses` is an array containing elements of:

**ServiceAddresses[{item}]**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**LDAP.ServiceEnabled**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### LocalAccountAuth

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|Controls when this service will use the accounts defined withing this AccountService as part of authentication.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Authentication via accounts defined in this AccountService is enabled.|
|`Disabled`|Authentication via accounts defined in this AccountService is disabled.|

### MaxPasswordLength

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The maximum password length for this service.|
|Type|number|
|Read Only|True|
|Added|iLO6 1.05|

### MinPasswordLength

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The minimum password length for this account service.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.AuthFailureDelayTimeSeconds

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The time in seconds to delay for each failure after AuthFailuresBeforeDelay authentication attempts have failed.  Values of 2, 5, 10, and 30 seconds are valid.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`2`|
|`5`|
|`10`|
|`30`|

### Oem.Hpe.AuthFailureLoggingThreshold

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property enables you to view and configure logging criteria for failed authentications. A failed login log entry is recorded after the configured number of attempts. 0 = feature disabled; 1-3 and 5 are allowable values.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Null`|
|`1`|
|`2`|
|`3`|
|`5`|

### Oem.Hpe.AuthFailuresBeforeDelay

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The number of failed authentication attempts allowed before authentication is delayed by AuthFailureDelayTimeSeconds. Values of  0, 1, 3, and 5 are valid, with 0 indicating delay after every authentication failure.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Null`|
|`1`|
|`3`|
|`5`|

### Oem.Hpe.DefaultPassword

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The default password used to log in to the management processor when factory reset is performed.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.DefaultUserName

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|The default name used to log in to the management processor when factory reset is performed.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.DirectorySettings

**Oem.Hpe.DirectorySettings.LdapAuthenticationMode**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|Represents the LDAP authentication mode.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Directory authentication is disabled.|
|`DefaultSchema`|Directory Default schema or Schema-free option is selected.|
|`ExtendedSchema`|HPE Extended schema is selected.|

**Oem.Hpe.DirectorySettings.LdapCaCertificateLoaded**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|Represents if the directory server CA certificate is loaded or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.DirectorySettings.LdapCaCertificates**
A link to a collection of Certificates.
LdapCaCertificates is a link (`"@odata.id": URI`) to another resource.

**Oem.Hpe.DirectorySettings.LdapServerPort**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|Represents the port number of the directory server.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.DirectoryTest

The value of this property shall be a reference to a resource of type HpeDirectoryTest.
DirectoryTest is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.EnforcePasswordComplexity

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|Enforce complexity rules when a user password is set or changed. Three of four character classes must be present; ASCII UPPERCASE, LOWERCASE, DIGITS, and Other|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.KerberosSettings

**Oem.Hpe.KerberosSettings.KDCServerPort**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|Represents the port number of the KDC server.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.KerberosSettings.KerberosRealm**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|Represents the Realm of the KDC server.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.MinPasswordLength

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property specifies the minimum number of characters allowed when a user password is set or changed. It must be a value from 0 to 39.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.TwoFactorAuth

Member of [AccountService.v1\_5\_0.AccountService](#accountservice)

| | |
|---|---|
|Description|This property indicates two factor authentication enabled or not|
|Type|string|
|Read Only|False|
|Added|iLO6 1.50|

The following are the supported values:

|Value|
|---|
|`Enabled`|
|`Disabled`|

### Roles

A link to a collection of Roles.
Roles is a link (`"@odata.id": URI`) to another resource.

### Actions

**HpeiLOAccountService.ImportKerberosKeytab**
Member of [AccountService.v1\_5\_0.AccountService](#accountservice)
Import the Kerberos keytab file.

**Parameters:**

**ImportUri (string)**

URI of the kerberos keytab file.

## BootOption

`@odata.type: "#BootOption.v1_0_1.BootOption"`

This is the schema definition for the BootOption resource. It represents the properties of a bootable device available in the System.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bootoptions/{item}`|GET |

### Alias

Member of [BootOption.v1\_0\_1.BootOption](#bootoption)

| | |
|---|---|
|Description|The alias of this Boot Source.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### BootOptionEnabled

Member of [BootOption.v1\_0\_1.BootOption](#bootoption)

| | |
|---|---|
|Description|A flag that shows if the Boot Option is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### BootOptionReference

Member of [BootOption.v1\_0\_1.BootOption](#bootoption)

| | |
|---|---|
|Description|The unique boot option string that is referenced in the BootOrder.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### DisplayName

Member of [BootOption.v1\_0\_1.BootOption](#bootoption)

| | |
|---|---|
|Description|The user-readable display string of the Boot Option.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### UefiDevicePath

Member of [BootOption.v1\_0\_1.BootOption](#bootoption)

| | |
|---|---|
|Description|The UEFI device path used to access this UEFI Boot Option.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

## BootOptionCollection

`@odata.type: "#BootOptionCollection.BootOptionCollection"`

A Collection of BootOption resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bootoptions`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[BootOption](../ilo6_other_resourcedefns152/#bootoption)|

### Members (array)

Member of BootOptionCollection.BootOptionCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of BootOptionCollection.BootOptionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of BootOptionCollection.BootOptionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## Certificate

`@odata.type: "#Certificate.v1_6_0.Certificate"`

The Certificate resource describes an X509 certificate.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates/{item}`|GET PATCH DELETE |
|`/redfish/v1/managers/{item}/securityservice/iloidevid/certificates/{item}`|GET |
|`/redfish/v1/managers/{item}/securityservice/iloldevid/certificates/{item}`|GET POST DELETE |
|`/redfish/v1/managers/{item}/securityservice/platformcert/certificates/{item}`|GET |
|`/redfish/v1/managers/{item}/securityservice/systemiak/certificates/{item}`|GET |
|`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/certificates/{item}`|GET DELETE |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/certificates/{item}`|GET DELETE |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/certificates/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/certificates/{item}`|GET DELETE |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/certificates/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/certificates/{item}`|GET DELETE |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/certificates/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek/certificates/{item}`|GET DELETE |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault/certificates/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk/certificates/{item}`|GET DELETE |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault/certificates/{item}`|GET |

### CertificateString

Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|
|Format|text|

### CertificateType

Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`PEM`|A PEM encoded certificate.|
|`PKCS7`|A PEM encoded PKCS7 certificate.|

### Issuer

**Issuer.City**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The city or locality of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Issuer.CommonName**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The fully qualified domain name of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Issuer.Country**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The country of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Issuer.DisplayString**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|A human-readable string for this identifier.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

**Issuer.Email**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The email address of the contact within the organization of the entity.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

**Issuer.Organization**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The name of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Issuer.OrganizationalUnit**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The name of the unit or division of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Issuer.State**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The state, province, or region of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

### SerialNumber

Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Subject

**Subject.City**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The city or locality of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Subject.CommonName**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The fully qualified domain name of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Subject.Country**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The country of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Subject.DisplayString**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|A human-readable string for this identifier.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

**Subject.Email**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The email address of the contact within the organization of the entity.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

**Subject.Organization**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The name of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Subject.OrganizationalUnit**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The name of the unit or division of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

**Subject.State**
Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The state, province, or region of the organization of the entity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

### UefiSignatureOwner

Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The UEFI signature owner for this certificate.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ValidNotAfter

Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### ValidNotBefore

Member of [Certificate.v1\_6\_0.Certificate](#certificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

## CertificateCollection

`@odata.type: "#CertificateCollection.CertificateCollection"`

A Collection of Certificate resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates`|GET POST |
|`/redfish/v1/managers/{item}/securityservice/iloidevid/certificates`|GET |
|`/redfish/v1/managers/{item}/securityservice/iloldevid/certificates`|GET POST |
|`/redfish/v1/managers/{item}/securityservice/platformcert/certificates`|GET |
|`/redfish/v1/managers/{item}/securityservice/systemiak/certificates`|GET |
|`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/certificates`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/certificates`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/certificates`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/certificates`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/certificates`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/certificates`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/certificates`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/certificates`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek/certificates`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault/certificates`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pk/certificates`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault/certificates`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Certificate](../ilo6_other_resourcedefns152/#certificate)|

### Members (array)

Member of CertificateCollection.CertificateCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of CertificateCollection.CertificateCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of CertificateCollection.CertificateCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## CertificateLocations

`@odata.type: "#CertificateLocations.v1_0_2.CertificateLocations"`

The CertificateLocations schema describes a Resource that an administrator can use in order to locate all certificates installed on a given service.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/certificateservice/certificatelocations`|GET |

## CertificateService

`@odata.type: "#CertificateService.v1_0_3.CertificateService"`

The CertificateService schema describes a certificate service that represents the actions available to manage certificates and links to the certificates.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/certificateservice`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Links/CertificateLocations`|[CertificateLocations](../ilo6_other_resourcedefns152/#certificatelocations)|

### CertificateLocations

The information about the location of certificates.
CertificateLocations is a link (`"@odata.id": URI`) to another resource.

### Actions

**CertificateService.GenerateCSR**
Member of [CertificateService.v1\_0\_3.CertificateService](#certificateservice)

**Parameters:**

**City (string)**

The city or locality of the organization making the request.

**GivenName (string)**

The given name of the user making the request.

**KeyPairAlgorithm (string)**

The type of key-pair for use with signing algorithms.

**CertificateCollection (object)**

The link to the certificate collection where the certificate is installed after the certificate authority (CA) signs the certificate.

**Country (string)**

The two-letter country code of the organization making the request.

**KeyCurveId (string)**

The curve ID to use with the key, if needed based on the KeyPairAlgorithm parameter value.

**CommonName (string)**

The fully qualified domain name of the component to secure.

**State (string)**

The state, province, or region of the organization making the request.

**ContactPerson (string)**

The name of the user making the request.

**Email (string)**

The email address of the contact within the organization making the request.

**Surname (string)**

The surname of the user making the request.

**KeyUsage (array)**

The usage of the key contained in the certificate.

**UnstructuredName (string)**

The unstructured name of the subject.

**KeyBitLength (integer)**

The length of the key, in bits, if needed based on the KeyPairAlgorithm parameter value.

**Organization (string)**

The name of the organization making the request.

**AlternativeNames (array)**

The additional host names of the component to secure.

**ChallengePassword (string)**

The challenge password to apply to the certificate for revocation requests.

**OrganizationalUnit (string)**

The name of the unit or division of the organization making the request.

**Initials (string)**

The initials of the user making the request.

## ComponentIntegrity

`@odata.type: "#ComponentIntegrity.v1_2_0.ComponentIntegrity"`

The ComponentIntegrity resource provides critical and pertinent security information about a specific device, system, software element, or other managed entity.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/ComponentIntegrity/{item}`|GET POST |

### ComponentIntegrityEnabled

Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|An indication of whether security protocols are enabled for the component.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.10|

### ComponentIntegrityType

Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`SPDM`|Security Protocol and Data Model (SPDM) protocol.|
|`TPM`|Trusted Platform Module (TPM).|
|`OEM`|OEM-specific.|

### ComponentIntegrityTypeVersion

Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The version of the security technology.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

### SPDM

**SPDM.IdentityAuthentication**
**SPDM.IdentityAuthentication.ResponderAuthentication**
**SPDM.IdentityAuthentication.ResponderAuthentication.VerificationStatus**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The status of the verification of the identity of the component.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Success`|Successful verification.|
|`Failed`|Unsuccessful verification.|

**SPDM.MeasurementSet**
**SPDM.MeasurementSet.MeasurementSpecification**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.45|

The following are the supported values:

|Value|Description|
|---|---|
|`DMTF`|DMTF.|

**SPDM.MeasurementSet.Measurements (array)**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

`Measurements` is an array containing elements of:

**Measurements[{item}].LastUpdated**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The date and time when information for the measurement was last updated.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.40|
|Format|date-time|

**Measurements[{item}].Measurement**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The measurement data.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.40|

**Measurements[{item}].MeasurementHashAlgorithm**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The hash algorithm used to compute the measurement.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.40|

**Measurements[{item}].MeasurementIndex**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The index of the measurement.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.45|

**Measurements[{item}].MeasurementType**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.45|

The following are the supported values:

|Value|Description|
|---|---|
|`ImmutableROM`|Immutable ROM.|
|`MutableFirmware`|Mutable firmware or any mutable code.|
|`HardwareConfiguration`|Hardware configuration, such as straps.|
|`FirmwareConfiguration`|Firmware configuration, such as configurable firmware policy.|
|`MutableFirmwareVersion`|Mutable firmware version.|
|`MutableFirmwareSecurityVersionNumber`|Mutable firmware security version number.|
|`MeasurementManifest`|Measurement Manifest.|

**Measurements[{item}].SecurityVersionNumber**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The security version number the measurement represents.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.45|

**SPDM.Requester**
The link to the the component that is reporting the integrity information of the target component.
Requester is a link (`"@odata.id": URI`) to another resource.

### Status

Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)
See the Redfish standard schema and specification for information on common Status object.

### TPM

**TPM.ComponentCommunication**
**TPM.ComponentCommunication.Sessions (array)**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

`Sessions` is an array containing elements of:

**Sessions[{item}].SessionId**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The identifier for an active session or communication channel between two components.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.40|

**Sessions[{item}].SessionType**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Plain`|A plain text session without any protection.|
|`EncryptedAuthenticated`|An established session where both encryption and authentication are protecting the communication.|
|`AuthenticatedOnly`|An established session where only authentication is protecting the communication.|

**TPM.MeasurementSet**
**TPM.MeasurementSet.Measurements (array)**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

`Measurements` is an array containing elements of:

**Measurements[{item}].LastUpdated**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The date and time when information for the measurement was last updated.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.40|
|Format|date-time|

**Measurements[{item}].Measurement**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The measurement data.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.40|

**Measurements[{item}].MeasurementHashAlgorithm**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The hash algorithm used to compute the measurement.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.40|

**Measurements[{item}].PCR**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The Platform Configuration Register (PCR) bank of the measurement.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.40|

**TPM.NonceSizeBytesMaximum**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The maximum number of bytes that can be specified in the Nonce parameter of the TPMGetSignedMeasurements action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.40|

### TargetComponentURI

Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)

| | |
|---|---|
|Description|The link to the the component whose integrity that this resource reports.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

### Actions

**ComponentIntegrity.TPMGetSignedMeasurements**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)
This action gets the TPM Signed Measurements.

**Parameters:**

**Nonce (string)**

A set of bytes as a hex-encoded string that is signed with the measurements.  The value should be unique.

**title (string)**

Friendly action name

**target (string)**

Link to invoke action

**PCRSelection (string)**

An object that identify the PCRs to sign.

**ComponentIntegrity.SPDMGetSignedMeasurements**
Member of [ComponentIntegrity.v1\_2\_0.ComponentIntegrity](#componentintegrity)
This action gets the SPDM Signed Measurements.

**Parameters:**

**Nonce (string)**

A set of bytes as a hex-encoded string that is signed with the measurements.  The value should be unique.

**target (string)**

Link to invoke action

**title (string)**

Friendly action name

**SlotId (integer)**

The slot identifier for the certificate containing the private key to generate the signature over the measurements.

**MeasurementIndices (array)**

An array of indices that identify the measurement blocks to sign.

## ComponentIntegrityCollection

`@odata.type: "#ComponentIntegrityCollection.ComponentIntegrityCollection"`

A Collection of ComponentIntegrity resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/ComponentIntegrity`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[ComponentIntegrity](../ilo6_other_resourcedefns152/#componentintegrity)|

### Members (array)

Member of ComponentIntegrityCollection.ComponentIntegrityCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of ComponentIntegrityCollection.ComponentIntegrityCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|
|Format|uri-reference|

### Members@odata.count

Member of ComponentIntegrityCollection.ComponentIntegrityCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.10|

## EventDestination

`@odata.type: "#EventDestination.v1_13_0.EventDestination"`

The EventDestination resource describes the target of an event subscription, including the types of events subscribed and context to provide to the target in the Event payload.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/eventservice/subscriptions/{item}`|GET PATCH DELETE |

### Context

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|A client-supplied string that is stored with the listener destination subscription.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Destination

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|The URI of the destination listener service.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|
|Format|uri-reference|

### EventFormatType

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|The content types of the message that are sent to the EventDestination.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.51|

The following are the supported values:

|Value|
|---|
|`Event`|
|`MetricReport`|

### HttpHeaders (array)

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

`HttpHeaders` is an array containing elements of:

**HttpHeaders[{item}]**

### MetricReportDefinitions (array)

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

`MetricReportDefinitions` is an array containing elements of:

**MetricReportDefinitions[{item}].@odata.id**
Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.51|
|Format|uri-reference|

### Oem.Hpe.DeliveryRetryAttempts

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|This is the number of attempts an event posting is retried before the subscription is terminated.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.DeliveryRetryIntervalInSeconds

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|This represents the number of seconds between retry attempts for sending any given Event|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.MutualAuthenticationEnabled

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|This represents if the subscriber and iLO need to perform mutual authentication when an event is sent.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.RequestedMaxEventsToQueue

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|This represents the number of events the service should queue.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.RetireOldEventInMinutes

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|This represents the number of minutes until an event is expired.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Protocol

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|The protocol type of the event connection.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Redfish`|

### RegistryPrefixes (array)

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

`RegistryPrefixes` is an array containing elements of:

**RegistryPrefixes[{item}]**
Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### SubscriptionType

Member of [EventDestination.v1\_13\_0.EventDestination](#eventdestination)

| | |
|---|---|
|Description|The subscription type for events.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.20|

The following are the supported values:

|Value|
|---|
|`RedfishEvent`|

## EventDestinationCollection

`@odata.type: "#EventDestinationCollection.EventDestinationCollection"`

A Collection of EventDestination resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/eventservice/subscriptions`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[EventDestination](../ilo6_other_resourcedefns152/#eventdestination)|

### Members (array)

Member of EventDestinationCollection.EventDestinationCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of EventDestinationCollection.EventDestinationCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of EventDestinationCollection.EventDestinationCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## EventService

`@odata.type: "#EventService.v1_7_2.EventService"`

The EventService resource describes the Event Service.  It represents the properties for the service itself and has links to the actual list of subscriptions.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/eventservice`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Subscriptions`|Collection of [EventDestination](../ilo6_other_resourcedefns152/#eventdestinationcollection)|
|`Oem/Hpe/CACertificates`|Collection of [HpeCertificate](../ilo6_hpe_resourcedefns152/#hpecertificatecollection)|

### DeliveryRetryAttempts

Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Description|This is the number of attempts an event posting is retried before the subscription is terminated.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### DeliveryRetryIntervalSeconds

Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Description|This represents the number of seconds between retry attempts for sending any given Event|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### EventTypesForSubscription (array)

Member of [EventService.v1\_7\_2.EventService](#eventservice)

`EventTypesForSubscription` is an array containing elements of:

**EventTypesForSubscription[{item}]**
Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`StatusChange`|The status of this resource has changed|
|`ResourceUpdated`|The value of this resource has been updated|
|`ResourceAdded`|A resource has been added|
|`ResourceRemoved`|A resource has been removed|
|`Alert`|A condition exists which requires attention|

### Oem.Hpe.CACertificates

The value of this property shall be a reference to a Collection of HpeCertificate resources.
CACertificates is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.RequestedMaxEventsToQueueDefault

Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Description|This represents the default number of events the service should queue.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.RetireOldEventInMinutesDefault

Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Description|This represents the default number of minutes until an event is expired.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.TTLCountDefault

Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Description|The default number of TTLUnits until this listener destination subscription expires.  It may be renewed prior to expire to reset the Time to Live counter.  The value 999999 is reserved to mean a perpetual subscription.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.TTLUnitsDefault

Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Description|The default time unit used to measure the subscription time of this listener destination.  This is the units for TTLCount and is used to express the subscription lifetime of the listener destination.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`seconds`|Time to Live (TTL) in Seconds|
|`minutes`|Time to Live (TTL) in Minutes|
|`days`|Time to Live (TTL) in Days|

### RegistryPrefixes (array)

Member of [EventService.v1\_7\_2.EventService](#eventservice)

`RegistryPrefixes` is an array containing elements of:

**RegistryPrefixes[{item}]**
Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ServiceEnabled

Member of [EventService.v1\_7\_2.EventService](#eventservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [EventService.v1\_7\_2.EventService](#eventservice)
See the Redfish standard schema and specification for information on common Status object.

### Subscriptions

This is a reference to a collection of ListenerDestination resources.
Subscriptions is a link (`"@odata.id": URI`) to another resource.

### Actions

**EventService.SubmitTestEvent**
Member of [EventService.v1\_7\_2.EventService](#eventservice)

**Parameters:**

**EventId (string)**

**Severity (string)**

|Value|Description|
|---|---|
|OK|
|Warning|
|Critical|

**EventType (string)**

|Value|Description|
|---|---|
|StatusChange|
|ResourceUpdated|
|ResourceAdded|
|ResourceRemoved|
|Alert|

**OriginOfCondition (string)**

**EventTimestamp (string)**

**MessageId (string)**

**Message (string)**

**MessageArgs (array)**

**HpeEventService.ImportCACertificate**
Member of [EventService.v1\_7\_2.EventService](#eventservice)
Imports a Trusted CA Certificate

**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).

## HostInterface

`@odata.type: "#HostInterface.v1_1_1.HostInterface"`

The HostInterface resource describes a Redfish Host Interface, which is a method of accessing the Redfish API from the host computer system.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/hostinterfaces/{item}`|GET PATCH |

### AuthenticationModes (array)

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

`AuthenticationModes` is an array containing elements of:

**AuthenticationModes[{item}].AuthenticationMode**
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`AuthNone`|Requests without any sort of authentication are allowed.|
|`BasicAuth`|Requests using HTTP Basic Authentication are allowed.|
|`RedfishSessionAuth`|Requests using Redfish Session Authentication are allowed.|
|`OemAuth`|Requests using OEM authentication mechanisms are allowed.|

### ExternallyAccessible

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

| | |
|---|---|
|Description|This indicates whether this interface is accessible by external entities.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### FirmwareAuthEnabled

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

| | |
|---|---|
|Description|This indicates whether this firmware authentication is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### FirmwareAuthRoleId

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

| | |
|---|---|
|Description|This property contains the Role for firmware authentication on this interface.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### HostEthernetInterfaces

This is a reference to a collection of NICs that Computer Systems use for network communication with this Host Interface.
HostEthernetInterfaces is a link (`"@odata.id": URI`) to another resource.

`HostEthernetInterfaces` property is not supported in iLO5.

### HostInterfaceType

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

| | |
|---|---|
|Description|This indicates the Host Interface type for this interface.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NetworkHostInterface`|This interface is a Network Host Interface.|

### InterfaceEnabled

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

| | |
|---|---|
|Description|This indicates whether this interface is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### KernelAuthEnabled

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

| | |
|---|---|
|Description|This indicates whether this kernel authentication is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### KernelAuthRoleId

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)

| | |
|---|---|
|Description|This property contains the Role for kernel authentication on this interface.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### ManagerEthernetInterface

This is a reference to a single NIC that this Manager uses for network communication with this Host Interface.
ManagerEthernetInterface is a link (`"@odata.id": URI`) to another resource.

### NetworkProtocol

This is a reference to the network services and their settings that the Manager controls.  It is here that clients will find network configuration options as well as network services.
NetworkProtocol is a link (`"@odata.id": URI`) to another resource.

### Status

Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterface)
See the Redfish standard schema and specification for information on common Status object.

## HostInterfaceCollection

`@odata.type: "#HostInterfaceCollection.HostInterfaceCollection"`

A Collection of HostInterface resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/hostinterfaces`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[HostInterface](../ilo6_other_resourcedefns152/#hostinterface)|

### Members (array)

Member of HostInterfaceCollection.HostInterfaceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HostInterfaceCollection.HostInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of HostInterfaceCollection.HostInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## JsonSchemaFile

`@odata.type: "#JsonSchemaFile.v1_0_4.JsonSchemaFile"`

The JSON Schema File resource describes the location (URI) of a particular Redfish schema definition being implemented or referenced by a Redfish service.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/jsonschemas/{item}`|GET |

### Languages (array)

Member of [JsonSchemaFile.v1\_0\_4.JsonSchemaFile](#jsonschemafile)

`Languages` is an array containing elements of:

**Languages[{item}]**
Member of [JsonSchemaFile.v1\_0\_4.JsonSchemaFile](#jsonschemafile)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Location (array)

Member of [JsonSchemaFile.v1\_0\_4.JsonSchemaFile](#jsonschemafile)

`Location` is an array containing elements of:

**Location[{item}].Language**
Member of [JsonSchemaFile.v1\_0\_4.JsonSchemaFile](#jsonschemafile)

| | |
|---|---|
|Description|The RFC 5646 language code for this schema or registry item.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Location[{item}].Uri**
Member of [JsonSchemaFile.v1\_0\_4.JsonSchemaFile](#jsonschemafile)

| | |
|---|---|
|Description|Link to locally available URI for schema.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Schema

Member of [JsonSchemaFile.v1\_0\_4.JsonSchemaFile](#jsonschemafile)

| | |
|---|---|
|Description|The typename this schema describes.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

## JsonSchemaFileCollection

`@odata.type: "#JsonSchemaFileCollection.JsonSchemaFileCollection"`

A Collection of JsonSchemaFile resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/jsonschemas`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[JsonSchemaFile](../ilo6_other_resourcedefns152/#jsonschemafile)|

### Members (array)

Member of JsonSchemaFileCollection.JsonSchemaFileCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of JsonSchemaFileCollection.JsonSchemaFileCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of JsonSchemaFileCollection.JsonSchemaFileCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## LogEntry

`@odata.type: "#LogEntry.v1_11_0.LogEntry"`

This resource defines the record format for a log.  It is designed to be used for SEL logs (from IPMI) as well as Event Logs and OEM-specific log formats.  The EntryType field indicates the type of log and the resource includes several additional properties dependent on the EntryType.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/logservices/iel/entries/{item}`|GET |
|`/redfish/v1/managers/{item}/remotesupportservice/serviceeventlogs/{item}`|GET |
|`/redfish/v1/systems/{item}/logservices/dpu/entries/{item}`|GET PATCH |
|`/redfish/v1/systems/{item}/logservices/event/entries/{item}`|GET |
|`/redfish/v1/systems/{item}/logservices/iml/entries/{item}`|GET PATCH |
|`/redfish/v1/systems/{item}/logservices/sl/entries/{item}`|GET |

### Created

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The date and time when the log entry was created, for example, 2014-04-15T00:38:00Z.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### EntryType

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The log entry type.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Oem`|

### EventId

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The unique instance identifier for an event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### EventTimestamp

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The date and time when the event occurred.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Message

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The log entry details.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### MessageArgs (array)

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

`MessageArgs` is an array containing elements of:

**MessageArgs[{item}]**
Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### MessageId

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The MessageId, event data, or OEM-specific information. This property decodes from the entry type.  If the entry type is `Event`, this property contains a Redfish Specification-defined MessageId.  If the entry type is `SEL`, this property contains the Event Data.  Otherwise, this property contains OEM-specific information.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Categories (array)

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

`Categories` is an array containing elements of:

**Categories[{item}]**
Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Security`|
|`Hardware`|
|`Firmware`|
|`Maintenance`|
|`Administration`|
|`Power`|
|`Cooling`|
|`Invalid User Input`|
|`Other`|
|`Configuration`|

### Oem.Hpe.Class

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The log entry event class.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.ClassDescription

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The log entry event class description.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Code

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The log entry event code.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Count

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The occurrence count of the log entry.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Destination

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The destination host name or IP address of the remote server that recevied the service event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.EventNumber

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The event log identification number. Events are numbered in the order in which they are generated.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Identifier

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The unique identifier of the service event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.LearnMoreLink

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The link to troubleshooting information.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Oem.Hpe.RecommendedAction

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The recommended action for the event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Repaired

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The repaired status of the IML event.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.ServiceEvent

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|This indicates a service ticket to be raised for the corresponding event log.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.ServiceEventMessageID

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|This property represents the Embedded Remote Support Message ID. It is applicable only for a Service Event log.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Severity

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The log entry event Severity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Informational`|Informational event|
|`Caution`|Caution event|
|`Critical`|Critical event|
|`Repaired`|Critical or Caution event repaired|

### Oem.Hpe.SubmitStatus

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The service event log submission status .|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Updated

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The date and time of the latest log entry update, for example, 2014-04-15T00:38:00Z.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Oem.Hpe.UserAction

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The User action for the event.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Repaired`|The event repaired by user.|
|`Ignored`|The event ignored by user.|
|`None`|No user action taken on the event.|
|`Not Applicable`|User action not applicable for the event.|

### OemRecordFormat

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The format of an OEM record.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Hpe-IML`|
|`Hpe-iLOEventLog`|
|`Hpe-SL`|
|`Hpe-Event`|

### Severity

Member of [LogEntry.v1\_11\_0.LogEntry](#logentry)

| | |
|---|---|
|Description|The log entry severity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`OK`|
|`Warning`|
|`Critical`|

## LogEntryCollection

`@odata.type: "#LogEntryCollection.LogEntryCollection"`

A Collection of LogEntry resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/logservices/iel/entries`|GET POST |
|`/redfish/v1/managers/{item}/remotesupportservice/serviceeventlogs`|GET |
|`/redfish/v1/systems/{item}/logservices/dpu/entries`|GET POST |
|`/redfish/v1/systems/{item}/logservices/event/entries`|GET POST |
|`/redfish/v1/systems/{item}/logservices/iml/entries`|GET POST |
|`/redfish/v1/systems/{item}/logservices/sl/entries`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[LogEntry](../ilo6_other_resourcedefns152/#logentry)|

### Members (array)

Member of LogEntryCollection.LogEntryCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.context**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**Members[{item}].@odata.etag**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].@odata.id**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**Members[{item}].@odata.type**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Created**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The date and time when the log entry was created, for example, 2014-04-15T00:38:00Z.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**Members[{item}].EntryType**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The log entry type.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Oem`|

**Members[{item}].EventId**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The unique instance identifier for an event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].EventTimestamp**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The date and time when the event occurred.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**Members[{item}].Links**
**Members[{item}].Links.OriginOfCondition**
The link to the resource that caused the log entry.
OriginOfCondition is a link (`"@odata.id": URI`) to another resource.

**Members[{item}].Message**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The log entry details.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].MessageArgs (array)**
Member of LogEntryCollection.LogEntryCollection

`MessageArgs` is an array containing elements of:

**MessageArgs[{item}]**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].MessageId**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The MessageId, event data, or OEM-specific information. This property decodes from the entry type.  If the entry type is `Event`, this property contains a Redfish Specification-defined MessageId.  If the entry type is `SEL`, this property contains the Event Data.  Otherwise, this property contains OEM-specific information.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.Categories (array)**
Member of LogEntryCollection.LogEntryCollection

`Categories` is an array containing elements of:

**Categories[{item}]**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Security`|
|`Hardware`|
|`Firmware`|
|`Maintenance`|
|`Administration`|
|`Power`|
|`Cooling`|
|`Invalid User Input`|
|`Other`|
|`Configuration`|

**Members[{item}].Oem.Hpe.Class**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The log entry event class.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.ClassDescription**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The log entry event class description.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.Code**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The log entry event code.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.Count**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The occurrence count of the log entry.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.Destination**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The destination host name or IP address of the remote server that recevied the service event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.EventNumber**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The event log identification number. Events are numbered in the order in which they are generated.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.Identifier**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The unique identifier of the service event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.LearnMoreLink**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The link to troubleshooting information.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**Members[{item}].Oem.Hpe.RecommendedAction**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The recommended action for the event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.Repaired**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The repaired status of the IML event.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.ServiceEvent**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|This indicates a service ticket to be raised for the corresponding event log.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.ServiceEventMessageID**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|This property represents the Embedded Remote Support Message ID. It is applicable only for a Service Event log.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.Severity**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The log entry event Severity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Informational`|Informational event|
|`Caution`|Caution event|
|`Critical`|Critical event|
|`Repaired`|Critical or Caution event repaired|

**Members[{item}].Oem.Hpe.SubmitStatus**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The service event log submission status .|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Members[{item}].Oem.Hpe.Updated**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The date and time of the latest log entry update, for example, 2014-04-15T00:38:00Z.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**Members[{item}].Oem.Hpe.UserAction**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The User action for the event.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Repaired`|The event repaired by user.|
|`Ignored`|The event ignored by user.|
|`None`|No user action taken on the event.|
|`Not Applicable`|User action not applicable for the event.|

**Members[{item}].OemRecordFormat**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The format of an OEM record.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Hpe-IML`|
|`Hpe-iLOEventLog`|
|`Hpe-SL`|
|`Hpe-Event`|

**Members[{item}].Severity**
Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The log entry severity.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`OK`|
|`Warning`|
|`Critical`|

### Members@odata.count

Member of LogEntryCollection.LogEntryCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## LogService

`@odata.type: "#LogService.v1_1_0.LogService"`

This resource contains properties for monitoring and configuring an event log service for the resource or service to which it is associated.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/logservices/iel`|GET POST |
|`/redfish/v1/systems/{item}/logservices/dpu`|GET POST |
|`/redfish/v1/systems/{item}/logservices/event`|GET POST |
|`/redfish/v1/systems/{item}/logservices/iml`|GET POST |
|`/redfish/v1/systems/{item}/logservices/sl`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Entries`|Collection of [LogEntry](../ilo6_other_resourcedefns152/#logentrycollection)|

### DateTime

Member of [LogService.v1\_1\_0.LogService](#logservice)

| | |
|---|---|
|Description|The current date and time, with UTC offset, that the Log Service uses to set or read time.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|
|Format|date-time|

### DateTimeLocalOffset

Member of [LogService.v1\_1\_0.LogService](#logservice)

| | |
|---|---|
|Description|The UTC offset that the current DateTime proeprtu value contains in the `+HH:MM` format.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

### Entries

The URI to this log entries collection resource.
Entries is a link (`"@odata.id": URI`) to another resource.

### MaxNumberOfRecords

Member of [LogService.v1\_1\_0.LogService](#logservice)

| | |
|---|---|
|Description|The maximum number of log entries.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### OverWritePolicy

Member of [LogService.v1\_1\_0.LogService](#logservice)

| | |
|---|---|
|Description|When the log is full, the overwrite policy is enforced.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|The overwrite policy is not known or is undefined.|
|`WrapsWhenFull`|When the log is full, new entries will overwrite previous entries.|
|`NeverOverwrites`|When the log is full, new entries are discarded.|

### ServiceEnabled

Member of [LogService.v1\_1\_0.LogService](#logservice)

| | |
|---|---|
|Description|An indication of whether this service is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.10|

### Status

Member of [LogService.v1\_1\_0.LogService](#logservice)
See the Redfish standard schema and specification for information on common Status object.

### Actions

**LogService.ClearLog**
Member of [LogService.v1\_1\_0.LogService](#logservice)
There are no parameters for this action.

## LogServiceCollection

`@odata.type: "#LogServiceCollection.LogServiceCollection"`

A Collection of LogService resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/logservices`|GET |
|`/redfish/v1/systems/{item}/logservices`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[LogService](../ilo6_other_resourcedefns152/#logservice)|

### Members (array)

Member of LogServiceCollection.LogServiceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of LogServiceCollection.LogServiceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of LogServiceCollection.LogServiceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## Memory

`@odata.type: "#Memory.v1_14_0.Memory"`

The Memory resource describes a memory module.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/memory/{item}`|GET |

### AllocationAlignmentMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The boundary which memory regions are allocated on, measured in MiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### AllocationIncrementMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The size of the smallest unit of allocation for a memory region, thus it is the multiple in which regions are actually reserved.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### BaseModuleType

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The base module type of the memory.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`RDIMM`|Registered DIMM|
|`UDIMM`|UDIMM|
|`SO_DIMM`|SO_DIMM|
|`LRDIMM`|Load Reduced|
|`Mini_RDIMM`|Mini_RDIMM|
|`Mini_UDIMM`|Mini_UDIMM|
|`SO_RDIMM_72b`|SO_RDIMM_72b|
|`SO_UDIMM_72b`|SO_UDIMM_72b|
|`SO_DIMM_16b`|SO_DIMM_16b|
|`SO_DIMM_32b`|SO_DIMM_32b|
|`Die`|A die within a package.|

### BusWidthBits

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Bus Width in bits.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### CacheSizeMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Total size of the cache portion memory in MiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### CapacityMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Memory Capacity in MiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### ConfigurationLocked

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Indicates that the configuration of this memory has been locked|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### DataWidthBits

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Data Width in bits.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceID

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Device ID|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceLocator

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Location of the Memory in the platform|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ErrorCorrection

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NoECC`|No ECC available|
|`SingleBitECC`|Single bit Data error can be corrected by ECC|
|`MultiBitECC`|Multi-bit Data errors can be corrected by ECC|
|`AddressParity`|Address Parity errors can be corrected|

### FirmwareApiVersion

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Version of API supported by the firmware|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### FirmwareRevision

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The firmware revision of this device|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### LogicalSizeMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Total size of the logical memory in MiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### Manufacturer

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The Memory manufacturer|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### MemoryDeviceType

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`DDR`|DDR|
|`DDR2`|DDR2|
|`DDR3`|DDR3|
|`DDR4`|DDR4|
|`DDR4_SDRAM`|DDR4 SDRAM|
|`DDR4E_SDRAM`|DDR4E SDRAM|
|`LPDDR4_SDRAM`|LPDDR4 SDRAM|
|`DDR3_SDRAM`|DDR3 SDRAM|
|`LPDDR3_SDRAM`|LPDDR3 SDRAM|
|`DDR2_SDRAM`|DDR2 SDRAM|
|`DDR2_SDRAM_FB_DIMM`|DDR2 SDRAM FB_DIMM|
|`DDR2_SDRAM_FB_DIMM_PROBE`|DDR2 SDRAM FB_DIMM PROBE|
|`DDR_SGRAM`|DDR SGRAM|
|`DDR_SDRAM`|DDR SDRAM|
|`ROM`|ROM|
|`SDRAM`|SDRAM|
|`EDO`|EDO|
|`FastPageMode`|Fast Page Mode|
|`PipelinedNibble`|Pipelined Nibble|
|`Logical`|Logical Non-volatile device.|
|`DDR5`|DDR5|

### MemoryLocation

**MemoryLocation.Channel**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Channel number in which Memory is connected|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**MemoryLocation.MemoryController**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Memory controller number in which Memory is connected|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**MemoryLocation.Slot**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Slot number in which Memory is connected|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**MemoryLocation.Socket**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Socket number in which Memory is connected|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### MemoryMedia (array)

Member of [Memory.v1\_14\_0.Memory](#memory)

`MemoryMedia` is an array containing elements of:

**MemoryMedia[{item}]**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`DRAM`|DRAM media|
|`NAND`|NAND media|
|`Intel3DXPoint`|Intel 3D XPoint media|
|`Proprietary`|Proprietary media|

### MemorySubsystemControllerManufacturerID

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The manufacturer ID of the memory subsystem controller of this memory module.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### MemorySubsystemControllerProductID

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The product ID of the memory subsystem controller of this memory module.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### MemoryType

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`DRAM`|DRAM|
|`NVDIMM_N`|NVDIMM_N as defined by JEDEC.|
|`NVDIMM_F`|NVDIMM_F as defined by JEDEC.|
|`NVDIMM_P`|NVDIMM_P as defined by JEDEC.|
|`IntelOptane`|The memory module is Intel Optane DC Persistent Memory and composed of a combination of non-volatile and volatile memory.|

### ModuleManufacturerID

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The manufacturer ID of this memory module.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ModuleProductID

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The product ID of this memory module.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### NonVolatileSizeMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Total size of the non-volatile portion memory in MiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Armed

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Specifies the current backup-ready status of the NVDIMM_N if available.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Attributes (array)

Member of [Memory.v1\_14\_0.Memory](#memory)

`Attributes` is an array containing elements of:

**Attributes[{item}]**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`HpeSmartMemory`|This DIMM is HPE Smart Memory|
|`HpeStandardMemory`|This DIMM is HPE Standard Memory|
|`HpeLogicalNVDIMM`|This DIMM is HPE Logical Memory.|

### Oem.Hpe.BaseModuleType

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`BurstEDO`|
|`FastPage`|
|`Synchronous`|
|`EDO`|
|`LRDIMM`|
|`RDRAM`|
|`RDIMM`|
|`UDIMM`|
|`NVDIMM`|
|`NVDIMM-N`|
|`LRNVDIMM`|
|`SO_RDIMM_72b`|
|`SO_UDIMM_72b`|
|`PMM`|

### Oem.Hpe.BlocksRead

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Number of blocks read for the lifetime of the Memory.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.BlocksWritten

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Number of blocks written for the lifetime of the Memory.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.DIMMManufacturingDate

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Module manufacturing date in YYWW format.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.DIMMStatus

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Specifies memory module status and whether the module in use.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The status of the DIMM is unknown.|
|`Other`|DIMM status that does not fit any of these definitions.|
|`NotPresent`|DIMM is not present.|
|`PresentUnused`|DIMM is present but unused.|
|`GoodInUse`|DIMM is functioning properly and currently in use.|
|`AddedButUnused`|DIMM is added but currently unused.|
|`UpgradedButUnused`|DIMM is upgraded but currently unused.|
|`ExpectedButMissing`|DIMM is expected but missing.|
|`DoesNotMatch`|DIMM type does not match.|
|`NotSupported`|DIMM is not supported.|
|`ConfigurationError`|Configuration error in DIMM.|
|`Degraded`|DIMM state is degraded.|
|`PresentSpare`|DIMM is present but used as spare.|
|`GoodPartiallyInUse`|DIMM is functioning properly but partially in use.|
|`MapOutConfiguration`|DIMM mapped out due to configuration error.|
|`MapOutError`|DIMM mapped out due to training failure.|

### Oem.Hpe.MaxOperatingSpeedMTs

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Maximum capable speed of the device, in megatransfers per second (MT/s).|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.MinimumVoltageVoltsX10

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The minimum DIMM voltage multiplied by 10, for example, 1.2v = 12.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PartNumber

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The HPE product part number of this device|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PredictedMediaLifeLeftPercent

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The percentage of media life left.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.ProductName

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|friendly product name from SMBIOS 202 record|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.RelatedBackupStores (array)

Member of [Memory.v1\_14\_0.Memory](#memory)

`RelatedBackupStores` is an array containing elements of:

**RelatedBackupStores[{item}].@odata.id**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Oem.Hpe.RelatedPhysicalDIMMs (array)

Member of [Memory.v1\_14\_0.Memory](#memory)

`RelatedPhysicalDIMMs` is an array containing elements of:

**RelatedPhysicalDIMMs[{item}].@odata.id**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Oem.Hpe.RelatedPowerBackupUnitBays (array)

Member of [Memory.v1\_14\_0.Memory](#memory)

`RelatedPowerBackupUnitBays` is an array containing elements of:

**RelatedPowerBackupUnitBays[{item}]**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Battery backup unit bay number.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.SPDBytes (array)

Member of [Memory.v1\_14\_0.Memory](#memory)

`SPDBytes` is an array containing elements of:

**SPDBytes[{item}]**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The SPD Bytes in the DIMM|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.SpareBlockLeftPercent

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The percentage of the number of spare blocks remaining.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.VendorName

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Vendor Name decoded from VendorID|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### OperatingMemoryModes (array)

Member of [Memory.v1\_14\_0.Memory](#memory)

`OperatingMemoryModes` is an array containing elements of:

**OperatingMemoryModes[{item}]**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Volatile`|Volatile memory|
|`PMEM`|Persistent memory, byte accesible through system address space|
|`Block`|Block accessible system memory|

### OperatingSpeedMhz

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Operating speed of Memory in MHz|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### PartNumber

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The product part number of this device|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### PersistentRegionNumberLimit

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Total number of persistent regions this Memory can support.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### PersistentRegionSizeLimitMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Total size of persistent regions in MiB|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### PersistentRegionSizeMaxMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Maximum size of a single persistent region in MiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### RankCount

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Number of ranks available in the Memory|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### Regions (array)

Member of [Memory.v1\_14\_0.Memory](#memory)

`Regions` is an array containing elements of:

**Regions[{item}].MemoryClassification**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Classification of memory occupied by the given memory region|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Volatile`|Volatile memory|
|`ByteAccessiblePersistent`|Byte accessible persistent memory|
|`Block`|Block accesible memory|

**Regions[{item}].PassphraseEnabled**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|State of the passphrase for this region|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Regions[{item}].RegionId**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Unique region ID representing a specific region within the Memory|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Regions[{item}].SizeMiB**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Size of this memory region in MiB|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### SecurityCapabilities

**SecurityCapabilities.ConfigurationLockCapable**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Support for configuration locking|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**SecurityCapabilities.DataLockCapable**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Support for data locking|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**SecurityCapabilities.PassphraseCapable**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Memory passphrase set capability|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**SecurityCapabilities.PassphraseLockLimit**
Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Maximum number of incorrect passphrase attempts allowed before memory is locked.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### SecurityState

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The current security state of this Memory|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Secure mode is enabled and access to the data is unlocked|
|`Disabled`|Secure mode is disabled|
|`Locked`|Secure mode is enabled and access to the data is locked|
|`Passphraselimit`|Number of attempts to unlock the Memory exceeded limit|

### SerialNumber

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|The serial number of this device|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [Memory.v1\_14\_0.Memory](#memory)
See the Redfish standard schema and specification for information on common Status object.

### SubsystemDeviceID

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Subsystem Device ID|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### SubsystemVendorID

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|SubSystem Vendor ID|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### VendorID

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Vendor ID|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### VolatileRegionNumberLimit

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Total number of volatile regions this Memory can support.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### VolatileRegionSizeLimitMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Total size of volatile regions in MiB|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### VolatileRegionSizeMaxMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Maximum size of a single volatile region in MiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### VolatileSizeMiB

Member of [Memory.v1\_14\_0.Memory](#memory)

| | |
|---|---|
|Description|Total size of the volitile portion memory in MiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

## MemoryChunks

`@odata.type: "#MemoryChunks.v1_2_3.MemoryChunks"`

The MemoryChunks resource describes a Memory Chunk and its configuration.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/memorydomains/{item}/memorychunks/{item}`|GET DELETE |

### AddressRangeType

Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|Memory type of this memory chunk|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`PMEM`|Byte accessible persistent memory|

### InterleaveSets (array)

Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

`InterleaveSets` is an array containing elements of:

**InterleaveSets[{item}].Memory**
Describes a memory device of the interleave set.
Memory is a link (`"@odata.id": URI`) to another resource.

**InterleaveSets[{item}].MemoryLevel**
Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|Level of the interleave set for multi-level tiered memory.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**InterleaveSets[{item}].OffsetMiB**
Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|Offset within the DIMM that corresponds to the start of this memory region, with units in MiB|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**InterleaveSets[{item}].RegionId**
Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|DIMM region identifier|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**InterleaveSets[{item}].SizeMiB**
Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|Size of this memory region in MiB|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### IsMirrorEnabled

Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|Mirror Enabled status|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### IsSpare

Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|Spare enabled status|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### MemoryChunkSizeMiB

Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|Size of the memory chunk in MiB|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.MemoryChunkSizePercentage

Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)

| | |
|---|---|
|Description|Size of chunk in percent of total capacity.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

### Status

Member of [MemoryChunks.v1\_2\_3.MemoryChunks](#memorychunks)
See the Redfish standard schema and specification for information on common Status object.

## MemoryChunksCollection

`@odata.type: "#MemoryChunksCollection.MemoryChunksCollection"`

A Collection of MemoryChunks resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/memorydomains/{item}/memorychunks`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[MemoryChunks](../ilo6_other_resourcedefns152/#memorychunks)|

### Members (array)

Member of MemoryChunksCollection.MemoryChunksCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of MemoryChunksCollection.MemoryChunksCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of MemoryChunksCollection.MemoryChunksCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## MemoryCollection

`@odata.type: "#MemoryCollection.MemoryCollection"`

A Collection of Memory resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/memory`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Memory](../ilo6_other_resourcedefns152/#memory)|

### Members (array)

Member of MemoryCollection.MemoryCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.AmpModeActive

Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|The management software cannot determine the AMP, host OS may not have provided it yet.|
|`Other`||
|`None`|The management software cannot determine the AMP, or the system is not configured for AMP.|
|`Mirroring`|The system is configured for mirrored memory protection. All memory banks are duplicated in mirrored memory, as opposed to only one for online spare memory. If enough ECC errors occur, the spare memory is activated and the memory that is experiencing the errors is disabled.|
|`OnlineSpare`|A single spare bank of memory is set aside at boot time. If enough ECC errors occur, the spare memory is activated and the memory that is experiencing the errors is disabled.|
|`RAIDXOR`|The system is configured for AMP with the XOR engine.|
|`AdvancedECC`|The system is configured for AMP with the Advanced ECC engine.|
|`Lockstep`||
|`A3DC`|The system is configured for AMP with A3DC.|
|`DIMMECC`|The system is configured for AMP with DIMM ECC (Error Correcting Code) only.|

### Oem.Hpe.AmpModeStatus

Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Unknown`|The management software cannot determine the status, host OS may not have provided it yet.|
|`Other`|The system does not support AMP, or the management software cannot determine the status.|
|`NotProtected`|The system supports AMP, but the feature is disabled.|
|`Protected`|The system supports AMP. The feature is enabled but not engaged.|
|`Degraded`|The system was protected, but AMP is engaged. Therefore, AMP is no longer available.|
|`DIMMECC`|The system is protected by DIMM ECC (Error Correcting Code) only.|
|`Mirroring`|The system is protected by AMP in the mirrored mode. No DIMM faults have been detected.|
|`DegradedMirroring`|The system is protected by AMP in the mirrored mode. One or more DIMM faults have been detected.|
|`OnlineSpare`|The system is protected by AMP in the hot spare mode. No DIMM faults have been detected.|
|`DegradedOnlineSpare`||
|`RAIDXOR`|The system is protected by AMP in the XOR memory mode. No DIMM faults have been detected.|
|`DegradedRAIDXOR`|The system is protected by AMP in the XOR memory mode. One or more DIMM faults have been detected.|
|`AdvancedECC`|The system is protected by AMP in the Advanced ECC mode.|
|`DegradedAdvancedECC`|The system is protected by AMP in the Advanced ECC mode. One or more DIMM faults have been detected.|
|`Lockstep`||
|`DegradedLockstep`||
|`A3DC`|The system is protected by AMP in the A3DC mode.|
|`DegradedA3DC`|The system is protected by AMP in the A3DC mode. One or more DIMM faults have been deteced.|
|`Unsupported`||

### Oem.Hpe.AmpModeSupported (array)

Member of MemoryCollection.MemoryCollection

`AmpModeSupported` is an array containing elements of:

**AmpModeSupported[{item}]**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`RAIDXOR`|The system can be configured for AMP using the XOR engine.|
|`DualBoardMirroring`|The system can be configured for mirrored advanced memory protection in a dual memory board configuration. The mirrored memory can be swapped with memory on the same memory board or with memory on the second memory board.|
|`SingleBoardMirroring`|The system can be configured for mirrored advanced memory protection in a single memory board.|
|`AdvancedECC`|The system can be configured for Advanced ECC.|
|`Mirroring`|The system can be configured for mirrored AMP.|
|`OnlineSpare`|The system can be configured for online spare AMP.|
|`OnlineSpareRank`|The system can be configured for Online Spare Rank AMP.|
|`OnlineSpareChannel`|The system can be configured for Online Spare Channel AMP.|
|`IntersocketMirroring`|The system can be configured for mirrored intersocket AMP between the memory of two processors or boards.|
|`IntrasocketMirroring`|The system can be configured for mirrored intrasocket AMP between the memory of a single processor or board.|
|`Lockstep`||
|`A3DC`|The system can be configured for A3DC.|
|`None`|The system cannot be configured for AMP.|
|`DIMMECC`|The system can be configured for DIMM ECC (Error Correcting Code) only.|

### Oem.Hpe.MemoryList (array)

Member of MemoryCollection.MemoryCollection

`MemoryList` is an array containing elements of:

**MemoryList[{item}].BoardCpuNumber**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**MemoryList[{item}].BoardMemoryType**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|Board Memory Type - DIMM/HBM.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.40|

**MemoryList[{item}].BoardNumberOfSockets**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The number of present memory module sockets.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**MemoryList[{item}].BoardOperationalFrequency**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The frequency at which memory on the board is operating in MHz.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**MemoryList[{item}].BoardOperationalVoltage**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The voltage at which memory on the board is operating in mV.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**MemoryList[{item}].BoardTotalMemorySize**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The total size of the memory populated on the board in MB.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

## MemoryDomain

`@odata.type: "#MemoryDomain.v1_2_1.MemoryDomain"`

The MemoryDomain resource describes a Memory Domain and its configuration. Memory Domains are used to indicate to the client which Memory (DIMMs) can be grouped together in Memory Chunks to form interleave sets or otherwise grouped together.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/memorydomains/{item}`|GET |

### AllowsBlockProvisioning

Member of [MemoryDomain.v1\_2\_1.MemoryDomain](#memorydomain)

| | |
|---|---|
|Description|Indicates if this Memory Domain supports the provisioning of blocks of memory.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### AllowsMemoryChunkCreation

Member of [MemoryDomain.v1\_2\_1.MemoryDomain](#memorydomain)

| | |
|---|---|
|Description|Indicates if this Memory Domain supports the creation of Memory Chunks.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### AllowsMirroring

Member of [MemoryDomain.v1\_2\_1.MemoryDomain](#memorydomain)

| | |
|---|---|
|Description|Indicates if this Memory Domain supports the creation of Memory Chunks with mirroring enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### AllowsSparing

Member of [MemoryDomain.v1\_2\_1.MemoryDomain](#memorydomain)

| | |
|---|---|
|Description|Indicates if this Memory Domain supports the creation of Memory Chunks with sparing enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### InterleavableMemorySets (array)

Member of [MemoryDomain.v1\_2\_1.MemoryDomain](#memorydomain)

`InterleavableMemorySets` is an array containing elements of:

**InterleavableMemorySets[{item}].MemorySet (array)**
Member of [MemoryDomain.v1\_2\_1.MemoryDomain](#memorydomain)

`MemorySet` is an array containing elements of:

**MemorySet[{item}].@odata.id**
Member of [MemoryDomain.v1\_2\_1.MemoryDomain](#memorydomain)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**InterleavableMemorySets[{item}].MemorySet@odata.count**
Member of [MemoryDomain.v1\_2\_1.MemoryDomain](#memorydomain)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### MemoryChunks

A reference to the collection of Memory Chunks associated with this Memory Domain.
MemoryChunks is a link (`"@odata.id": URI`) to another resource.

## MemoryDomainCollection

`@odata.type: "#MemoryDomainCollection.MemoryDomainCollection"`

A Collection of MemoryDomain resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/memorydomains`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[MemoryDomain](../ilo6_other_resourcedefns152/#memorydomain)|

### Members (array)

Member of MemoryDomainCollection.MemoryDomainCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of MemoryDomainCollection.MemoryDomainCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of MemoryDomainCollection.MemoryDomainCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## MessageRegistryFile

`@odata.type: "#MessageRegistryFile.v1_0_4.MessageRegistryFile"`

The MessageRegistryFile resource describes the Schema File locator resource.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/registries/{item}`|GET |

### Languages (array)

Member of [MessageRegistryFile.v1\_0\_4.MessageRegistryFile](#messageregistryfile)

`Languages` is an array containing elements of:

**Languages[{item}]**
Member of [MessageRegistryFile.v1\_0\_4.MessageRegistryFile](#messageregistryfile)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Location (array)

Member of [MessageRegistryFile.v1\_0\_4.MessageRegistryFile](#messageregistryfile)

`Location` is an array containing elements of:

**Location[{item}].Language**
Member of [MessageRegistryFile.v1\_0\_4.MessageRegistryFile](#messageregistryfile)

| | |
|---|---|
|Description|The RFC 5646 language code for this schema or registry item.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Location[{item}].Uri**
Member of [MessageRegistryFile.v1\_0\_4.MessageRegistryFile](#messageregistryfile)

| | |
|---|---|
|Description|Link to locally available URI for schema.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Registry

Member of [MessageRegistryFile.v1\_0\_4.MessageRegistryFile](#messageregistryfile)

| | |
|---|---|
|Description|The Registry Name, Major and Minor version used in MessageID construction.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

## MessageRegistryFileCollection

`@odata.type: "#MessageRegistryFileCollection.MessageRegistryFileCollection"`

A Collection of MessageRegistryFile resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/registries`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[MessageRegistryFile](../ilo6_other_resourcedefns152/#messageregistryfile)|

### Members (array)

Member of MessageRegistryFileCollection.MessageRegistryFileCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of MessageRegistryFileCollection.MessageRegistryFileCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of MessageRegistryFileCollection.MessageRegistryFileCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## MetricDefinition

`@odata.type: "#MetricDefinition.v1_0_0.MetricDefinition"`

The metadata information about a metric.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice/metricdefinitions/{item}`|GET PATCH |

### Calculable

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The types of calculations which can be applied to the metric reading.  This property provides information to the client on the suitability of calculatiion using the metric reading.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NonCalculatable`|No calculations should be performed on the metric reading.|
|`Summable`|The sum of the metric reading across multiple instances is meaningful.|
|`NonSummable`|The sum of the metric reading across multiple instances is not meaningful.|

### CalculationAlgorithm

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The calculation which is performed on a source metric to obtain the metric being defined.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Average`|The metric is calculated as the average of a metric reading over a sliding time interval.|
|`Maximum`|The metric is calculated as the maximum value of a metric reading over during a time interval.|
|`Minimum`|The metric is calculated as the minimum value of a metric reading over a sliding time interval.|

### Implementation

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The implementation of the metric.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`PhysicalSensor`|The metric is implemented as a physical sensor.|
|`Calculated`|The metric is implemented by applying a calculation on another metric property.  The calculation is specified in the CalculationAlgorithm property.|
|`Synthesized`|The metric is implemented by applying a calculation on one or more metric properties.  (The calculation is not specified.  For expressing generalized formula, see MathSON).|
|`DigitalMeter`|The metric is implemented as digital meter.|

### IsLinear

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|Indicates whether the metric values are linear (vs non-linear).|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### MaxReadingRange

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|Maximum value for metric reading.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### MetricDataType

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The data type of the related metric values.  The property provides information to the client on the nature of the metric reading.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Boolean`|The data type follows the JSON Boolean definition.|
|`DateTime`|The data type follows the JSON String definition with the Date-Time format applied.|
|`Decimal`|The data type follows the JSON Decimal definition.|
|`Integer`|The data type follows the JSON Integer definition.|
|`String`|The data type follows the JSON String definition.|
|`Enumeration`|The data type follows the JSON String definition with a set of enumerations defined.|

### MetricProperties (array)

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

`MetricProperties` is an array containing elements of:

**MetricProperties[{item}]**
Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### MetricType

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|Specifies the type of metric provided.  The property provides information to the client on how the metric can be handled.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Numeric`|The metric is a numeric metric.  The metric value is any real number.|
|`Discrete`|The metric is a discrete metric.  The metric value is discrete.  The possible values are listed in the DiscreteValues property.|
|`Gauge`|The metric is a gauge metric.  The metric value is a real number.  When the metric value reaches the gauges extrema, it stays at that value, until the reading falls within the extrema.|
|`Counter`|The metric is a counter metric.  The metric reading is a non-negative integer which increases monotonically.  When a counter reaches its maximum, the value resets to 0 and resumes counting.|
|`Countdown`|The metric is a countdown metric.  The metric reading is a non-negative integer which decreases monotonically.  When a counter reaches its minimum, the value resets to preset value and resumes counting down.|

### MinReadingRange

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|Minimum value for metric reading.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### Units

Member of [MetricDefinition.v1\_0\_0.MetricDefinition](#metricdefinition)

| | |
|---|---|
|Description|The units of measure for this metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

## MetricDefinitionCollection

`@odata.type: "#MetricDefinitionCollection.MetricDefinitionCollection"`

A Collection of MetricDefinition resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice/metricdefinitions`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[MetricDefinition](../ilo6_other_resourcedefns152/#metricdefinition)|

### Members (array)

Member of MetricDefinitionCollection.MetricDefinitionCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of MetricDefinitionCollection.MetricDefinitionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of MetricDefinitionCollection.MetricDefinitionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## MetricReport

`@odata.type: "#MetricReport.v1_0_0.MetricReport"`

The metric definitions used to create a metric report.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice/metricreports/{item}`|GET PATCH |

### MetricReportDefinition

The metric definitions used to create a metric report.
MetricReportDefinition is a link (`"@odata.id": URI`) to another resource.

### MetricValues (array)

Member of [MetricReport.v1\_0\_0.MetricReport](#metricreport)

`MetricValues` is an array containing elements of:

**MetricValues[{item}].MetricDefinition**
A link to the Metric Definition.
MetricDefinition is a link (`"@odata.id": URI`) to another resource.

**MetricValues[{item}].MetricId**
Member of [MetricReport.v1\_0\_0.MetricReport](#metricreport)

| | |
|---|---|
|Description|The metric definitions identifier for this metric.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**MetricValues[{item}].MetricValue**
Member of [MetricReport.v1\_0\_0.MetricReport](#metricreport)

| | |
|---|---|
|Description|The value identifies this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**MetricValues[{item}].Timestamp**
Member of [MetricReport.v1\_0\_0.MetricReport](#metricreport)

| | |
|---|---|
|Description|The time when the value of the metric is obtained.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

## MetricReportCollection

`@odata.type: "#MetricReportCollection.MetricReportCollection"`

A Collection of MetricReport resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice/metricreports`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[MetricReport](../ilo6_other_resourcedefns152/#metricreport)|

### Members (array)

Member of MetricReportCollection.MetricReportCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of MetricReportCollection.MetricReportCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of MetricReportCollection.MetricReportCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## MetricReportDefinition

`@odata.type: "#MetricReportDefinition.v1_4_2.MetricReportDefinition"`

A set of metrics that are collected into a metric report.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice/metricreportdefinitions/{item}`|GET PATCH |

### MetricProperties (array)

Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

`MetricProperties` is an array containing elements of:

**MetricProperties[{item}]**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### MetricReport

Specifies the location where the resultant metric report is placed.
MetricReport is a link (`"@odata.id": URI`) to another resource.

### MetricReportDefinitionType

Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|Indicates when the metric report is generated.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Periodic`|The metric report is generated at a periodic time interval, specified in the Schedule property.|
|`OnChange`|The metric report is generated when any of the metric values change.|
|`OnRequest`|The metric report is generated when a HTTP GET is performed on the specified metric report.|

### Metrics (array)

Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

`Metrics` is an array containing elements of:

**Metrics[{item}].CollectionDuration**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|Specifies the duration over which the function is computed.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Metrics[{item}].CollectionFunction**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|Specifies the function to apply to the list of metric properties.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Average`|The metric is calculated as the average of a metric reading over a sliding time interval.|
|`Maximum`|The metric is calculated as the maximum value of a metric reading over during a time interval.|
|`Minimum`|The metric is calculated as the minimum value of a metric reading over a sliding time interval.|
|`Summation`|The metric is calculated as the sum of the values over a sliding time interval.|

**Metrics[{item}].CollectionTimeScope**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|The time scope of the related metric values.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Point`|The corresponding metric values apply to a point in time.  On the corresponding metric value instances, the value of Timestamp shall specify the point in time.|
|`Interval`|The corresponding metric values apply to a time interval.  On the corresponding metric value instances, the value of Timestamp shall specify the end of the time interval and Duration shall specify its duration.|
|`StartupInterval`|The corresponding metric values apply to a time interval that began at the startup of the measured resource (i.e. the Resources associated by Links.MetricDefinitionForResources).  On the corresponding metric value instances, the value of Timestamp shall specify the end of the time interval.  The value of Duration shall specifies the duration between startup of the resource and TimeStamp.|

**Metrics[{item}].MetricId**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|Specifies the label for the metric definition which is derived by applying the CollectionFunction to the metric property.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Metrics[{item}].MetricProperties (array)**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

`MetricProperties` is an array containing elements of:

**MetricProperties[{item}]**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Schedule

**Schedule.EnabledDaysOfMonth (array)**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

`EnabledDaysOfMonth` is an array containing elements of:

**EnabledDaysOfMonth[{item}]**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Schedule.InitialStartTime**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|The date and time when the initial occurrence is scheduled to occur.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.51|
|Format|date-time|

**Schedule.RecurrenceInterval**
Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)

| | |
|---|---|
|Description|The duration between consecutive occurrences.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.51|

### Status

Member of [MetricReportDefinition.v1\_4\_2.MetricReportDefinition](#metricreportdefinition)
See the Redfish standard schema and specification for information on common Status object.

## MetricReportDefinitionCollection

`@odata.type: "#MetricReportDefinitionCollection.MetricReportDefinitionCollection"`

A Collection of MetricReportDefinition resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice/metricreportdefinitions`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[MetricReportDefinition](../ilo6_other_resourcedefns152/#metricreportdefinition)|

### Members (array)

Member of MetricReportDefinitionCollection.MetricReportDefinitionCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of MetricReportDefinitionCollection.MetricReportDefinitionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of MetricReportDefinitionCollection.MetricReportDefinitionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## PCIeDevice

`@odata.type: "#PCIeDevice.v1_5_0.PCIeDevice"`

This is the schema definition for the PCIeDevice resource.  It represents the properties of a PCIe Device attached to a System.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/pciedevices/{item}`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`PCIeFunctions`|[PCIeFunction](../ilo6_other_resourcedefns152/#pciefunction)|

### AssetTag

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The user-assigned asset tag for this PCIe device.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.20|

### DeviceType

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The device type for this PCIe device.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`SingleFunction`|A single-function PCIe device.|
|`MultiFunction`|A multi-function PCIe device.|
|`Simulated`|A PCIe device which is not currently physically present, but is being simulated by the PCIe infrastructure.|

### FirmwareVersion

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The version of firmware for this PCIe device.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Manufacturer

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The manufacturer of this PCIe device.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Model

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The model number for the PCIe device.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.FirmwareVersion (array)

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

`FirmwareVersion` is an array containing elements of:

**FirmwareVersion[{item}].ComponentName**
Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|Name of GPU cores|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

**FirmwareVersion[{item}].VersionString**
Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|Version string of GPU cores|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

### PCIeFunctions

The link to the collection of PCIe functions associated with this PCIe device.
PCIeFunctions is a link (`"@odata.id": URI`) to another resource.

### PCIeInterface

**PCIeInterface.LanesInUse**
Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The number of PCIe lanes in use by this device.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**PCIeInterface.MaxLanes**
Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The number of PCIe lanes supported by this device.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**PCIeInterface.MaxPCIeType**
Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The highest version of the PCIe specification supported by this device.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Gen1`|A PCIe v1.0 slot.|
|`Gen2`|A PCIe v2.0 slot.|
|`Gen3`|A PCIe v3.0 slot.|
|`Gen4`|A PCIe v4.0 slot.|
|`Gen5`|A PCIe v5.0 slot.|

**PCIeInterface.PCIeType**
Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The version of the PCIe specification in use by this device.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Gen1`|A PCIe v1.0 slot.|
|`Gen2`|A PCIe v2.0 slot.|
|`Gen3`|A PCIe v3.0 slot.|
|`Gen4`|A PCIe v4.0 slot.|
|`Gen5`|A PCIe v5.0 slot.|

### PartNumber

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The part number for this PCIe device.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### SKU

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The SKU for this PCIe device.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### SerialNumber

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)

| | |
|---|---|
|Description|The serial number for this PCIe device.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [PCIeDevice.v1\_5\_0.PCIeDevice](#pciedevice)
See the Redfish standard schema and specification for information on common Status object.

## PCIeDeviceCollection

`@odata.type: "#PCIeDeviceCollection.PCIeDeviceCollection"`

The collection of PCIeDevice Resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/pciedevices`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[PCIeDevice](../ilo6_other_resourcedefns152/#pciedevice)|

### Members (array)

Member of PCIeDeviceCollection.PCIeDeviceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of PCIeDeviceCollection.PCIeDeviceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of PCIeDeviceCollection.PCIeDeviceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## PCIeFunction

`@odata.type: "#PCIeFunction.v1_2_3.PCIeFunction"`

The schema definition for the PCIeFunction Resource.  It represents the properties of a PCIeFunction attached to a System.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/pciedevices/{item}/pciefunctions/{item}`|GET |

### ClassCode

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The Class Code of this PCIe function.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### DeviceClass

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The class for this PCIe function.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`UnclassifiedDevice`|An unclassified device.|
|`MassStorageController`|A mass storage controller.|
|`NetworkController`|A network controller.|
|`DisplayController`|A display controller.|
|`MultimediaController`|A multimedia controller.|
|`MemoryController`|A memory controller.|
|`Bridge`|A bridge.|
|`CommunicationController`|A communication controller.|
|`GenericSystemPeripheral`|A generic system peripheral.|
|`InputDeviceController`|An input device controller.|
|`DockingStation`|A docking station.|
|`Processor`|A processor.|
|`SerialBusController`|A serial bus controller.|
|`WirelessController`|A wireless controller.|
|`IntelligentController`|An intelligent controller.|
|`SatelliteCommunicationsController`|A satellite communications controller.|
|`EncryptionController`|An encryption controller.|
|`SignalProcessingController`|A signal processing controller.|
|`ProcessingAccelerators`|A processing accelerators.|
|`NonEssentialInstrumentation`|A non-essential instrumentation.|
|`Coprocessor`|A coprocessor.|
|`UnassignedClass`|An unassigned class.|
|`Other`|A other class.  The function Device Class Id needs to be verified.|

### DeviceId

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The Device ID of this PCIe function.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### FunctionId

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The PCIe Function Number.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### FunctionType

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The type of the PCIe function.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Physical`|A physical PCIe function.|
|`Virtual`|A virtual PCIe function.|

### RevisionId

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The Revision ID of this PCIe function.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)
See the Redfish standard schema and specification for information on common Status object.

### SubsystemId

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The Subsystem ID of this PCIe function.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### SubsystemVendorId

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The Subsystem Vendor ID of this PCIe function.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### VendorId

Member of [PCIeFunction.v1\_2\_3.PCIeFunction](#pciefunction)

| | |
|---|---|
|Description|The Vendor ID of this PCIe function.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

## PCIeFunctionCollection

`@odata.type: "#PCIeFunctionCollection.PCIeFunctionCollection"`

The collection of PCIeFunction Resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/pciedevices/{item}/pciefunctions`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[PCIeFunction](../ilo6_other_resourcedefns152/#pciefunction)|

### Members (array)

Member of PCIeFunctionCollection.PCIeFunctionCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of PCIeFunctionCollection.PCIeFunctionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of PCIeFunctionCollection.PCIeFunctionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## PCIeSlots

`@odata.type: "#PCIeSlots.v1_3_0.PCIeSlots"`

The PCIeSlots schema describes PCIe slot properties.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/pcieslots`|GET |

### Slots (array)

Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

`Slots` is an array containing elements of:

**Slots[{item}].HotPluggable**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|An indication of whether this PCIe slot supports hotplug.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Slots[{item}].Lanes**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The number of PCIe lanes supported by this slot.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Slots[{item}].Location**
**Slots[{item}].Location.PartLocation**
**Slots[{item}].Location.PartLocation.LocationOrdinalValue**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Slots[{item}].Location.PartLocation.LocationType**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The location types for PartLocation.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Slot`|The slot as the type of location.|
|`Bay`|The bay as the type of location.|
|`Connector`|The connector as the type of location.|
|`Socket`|The socket as the type of location.|
|`Embedded`|Embedded within a part.|

**Slots[{item}].Location.PartLocation.Orientation**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The orientation for the ordering of the part location ordinal value.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`FrontToBack`|The ordering for LocationOrdinalValue is front to back.|
|`BackToFront`|The ordering for the LocationOrdinalValue is back to front.|
|`TopToBottom`|The ordering for the LocationOrdinalValue is top to bottom.|
|`BottomToTop`|The ordering for LocationOrdinalValue is bottom to top.|
|`LeftToRight`|The ordering for the LocationOrdinalValue is left to right.|
|`RightToLeft`|The ordering for the LocationOrdinalValue is right to left.|

**Slots[{item}].Location.PartLocation.Reference**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The reference area for the location of the part.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Top`|The part is in the top of the unit.|
|`Bottom`|The part is in the bottom of the unit.|
|`Front`|The part is in the front of the unit.|
|`Rear`|The part is in the rear of the unit.|
|`Left`|The part is on the left side of of the unit.|
|`Right`|The part is on the right side of the unit.|
|`Middle`|The part is in the middle of the unit.|

**Slots[{item}].Location.PartLocation.ServiceLabel**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Slots[{item}].Location.Placement**
**Slots[{item}].Location.Placement.AdditionalInfo**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Slots[{item}].Location.Placement.Rack**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Slots[{item}].Location.Placement.RackOffset**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**Slots[{item}].Location.Placement.RackOffsetUnits**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The type of rack unit in use.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OpenU`|A rack unit that is equal to 48 mm (1.89 in).|
|`EIA_310`|A rack unit that is equal to 1.75 in (44.45 mm).|

**Slots[{item}].Location.Placement.Row**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Slots[{item}].PCIeType**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The PCIe specification supported by this slot.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Gen1`|A PCIe v1.0 slot.|
|`Gen2`|A PCIe v2.0 slot.|
|`Gen3`|A PCIe v3.0 slot.|
|`Gen4`|A PCIe v4.0 slot.|
|`Gen5`|A PCIe v5.0 slot.|

**Slots[{item}].SlotType**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)

| | |
|---|---|
|Description|The PCIe slot type for this slot.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`FullLength`|Full-Length PCIe slot.|
|`HalfLength`|Half-Length PCIe slot.|
|`LowProfile`|Low-Profile or Slim PCIe slot.|
|`Mini`|Mini PCIe slot.|
|`M2`|PCIe M.2 slot.|
|`OEM`|An OEM-specific slot.|
|`OCP3Small`|Open Compute Project 3.0 small form factor slot.|
|`OCP3Large`|Open Compute Project 3.0 large form factor slot.|
|`U2`|PCIe U.2 slot or bay|

**Slots[{item}].Status**
Member of [PCIeSlots.v1\_3\_0.PCIeSlots](#pcieslots)
See the Redfish standard schema and specification for information on common Status object.

## Port

`@odata.type: "#Port.v1_9_0.Port"`

A  Port represents a discrete physical port capable of connecting to a network.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}`|GET POST PATCH |
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports/{item}/settings`|GET PATCH |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}`|GET POST PATCH |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports/{item}/settings`|GET PATCH |
|`/redfish/v1/systems/{item}/storage/{item}/controllers/{item}/ports/{item}`|GET PATCH |
|`/redfish/v1/systems/{item}/storage/{item}/storagecontrollers/{item}/ports/{item}`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Port](../ilo6_other_resourcedefns152/#port)|

### @Redfish.Settings

Member of [Port.v1\_9\_0.Port](#port)
See the Redfish standard schema and specification for information on common @Redfish properties.

### ActiveWidth

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The number of active lanes for this interface.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### CapableProtocolVersions (array)

Member of [Port.v1\_9\_0.Port](#port)

`CapableProtocolVersions` is an array containing elements of:

**CapableProtocolVersions[{item}]**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### CurrentProtocolVersion

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The protocol version being sent over this port.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### CurrentSpeedGbps

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The current speed of this port.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### Enabled

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An indication of whether this port is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Ethernet

**Ethernet.AssociatedMACAddresses (array)**
Member of [Port.v1\_9\_0.Port](#port)

`AssociatedMACAddresses` is an array containing elements of:

**AssociatedMACAddresses[{item}]**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Ethernet.EEEEnabled**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indicates whether IEEE 802.3az Energy-Efficient Ethernet (EEE) is enabled on this port.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

**Ethernet.FlowControlConfiguration**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The locally configured 802.3x flow control setting for this port.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|No IEEE 802.3x flow control is enabled on this port.|
|`TX`|IEEE 802.3x flow control may be initiated by this station.|
|`RX`|IEEE 802.3x flow control may be initiated by the link partner.|
|`TX_RX`|IEEE 802.3x flow control may be initiated by this station or the link partner.|

**Ethernet.FlowControlStatus**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The 802.3x flow control behavior negotiated with the link partner for this port.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|No IEEE 802.3x flow control is enabled on this port.|
|`TX`|IEEE 802.3x flow control may be initiated by this station.|
|`RX`|IEEE 802.3x flow control may be initiated by the link partner.|
|`TX_RX`|IEEE 802.3x flow control may be initiated by this station or the link partner.|

**Ethernet.LLDPEnabled**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Enable/disable LLDP for this port.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Ethernet.LLDPReceive**
**Ethernet.LLDPReceive.ChassisId**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Link Layer Data Protocol (LLDP) chassis ID received from the remote partner across this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Ethernet.LLDPReceive.ChassisIdSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The type of identifier used for the chassis ID received from the remote partner across this link.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in RFC4133.|
|`IfAlias`|Interface alias, based on the ifAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in RFC4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the ifName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|
|`NotTransmitted`|No data to be sent to/received from remote partner.|

**Ethernet.LLDPReceive.ManagementAddressIPv4**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The IPv4 management address received from the remote partner across this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Ethernet.LLDPReceive.ManagementAddressIPv6**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The IPv6 management address received from the remote partner across this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Ethernet.LLDPReceive.ManagementAddressMAC**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The management MAC address received from the remote partner across this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Ethernet.LLDPReceive.ManagementVlanId**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The management VLAN ID received from the remote partner across this link.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Ethernet.LLDPReceive.PortId**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A colon delimited string of hexadecimal octets identifying a port.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Ethernet.LLDPReceive.PortIdSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The port ID subtype received from the remote partner across this link.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in RFC4133.|
|`IfAlias`|Interface alias, based on the ifAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in RFC4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the ifName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|
|`NotTransmitted`|No data to be sent to/received from remote partner.|

**Ethernet.LLDPTransmit**
**Ethernet.LLDPTransmit.ChassisId**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Link Layer Data Protocol (LLDP) chassis ID.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Ethernet.LLDPTransmit.ChassisIdSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The type of identifier used for the chassis ID.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in RFC4133.|
|`IfAlias`|Interface alias, based on the ifAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in RFC4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the ifName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|
|`NotTransmitted`|No data to be sent to/received from remote partner.|

**Ethernet.LLDPTransmit.ManagementAddressIPv4**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The IPv4 management address to be transmitted from this endpoint.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Ethernet.LLDPTransmit.ManagementAddressIPv6**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The IPv6 management address to be transmitted from this endpoint.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Ethernet.LLDPTransmit.ManagementAddressMAC**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The management MAC address to be transmitted from this endpoint.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Ethernet.LLDPTransmit.ManagementVlanId**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The management VLAN ID to be transmitted from this endpoint.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**Ethernet.LLDPTransmit.PortId**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A colon delimited string of hexadecimal octets identifying a port to be transmitted from this endpoint.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Ethernet.LLDPTransmit.PortIdSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The port ID subtype to be transmitted from this endpoint.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ChassisComp`|Chassis component, based in the value of entPhysicalAlias in RFC4133.|
|`IfAlias`|Interface alias, based on the ifAlias MIB object.|
|`PortComp`|Port component, based in the value of entPhysicalAlias in RFC4133.|
|`MacAddr`|MAC address, based on an agent detected unicast source address as defined in IEEE Std. 802.|
|`NetworkAddr`|Network address, based on an agent detected network address.|
|`IfName`|Interface name, based on the ifName MIB object.|
|`AgentId`|Agent circuit ID, based on the agent-local identifier of the circuit as defined in RFC3046.|
|`LocalAssign`|Locally assigned, based on a alpha-numeric value locally assigned.|
|`NotTransmitted`|No data to be sent to/received from remote partner.|

**Ethernet.WakeOnLANEnabled**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indicates whether Wake on LAN (WoL) is enabled on this port.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### FibreChannel

**FibreChannel.AssociatedWorldWideNames (array)**
Member of [Port.v1\_9\_0.Port](#port)

`AssociatedWorldWideNames` is an array containing elements of:

**AssociatedWorldWideNames[{item}]**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

**FibreChannel.FabricName**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The Fibre Channel Fabric Name provided by the switch.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**FibreChannel.NumberDiscoveredRemotePorts**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The number of ports not on the associated device that the associated device has discovered through this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**FibreChannel.PortConnectionType**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The connection type of this port.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NotConnected`|This port is not connected.|
|`NPort`|This port connects through an N-Port to a switch.|
|`PointToPoint`|This port connects in a Point-to-point configuration.|
|`PrivateLoop`|This port connects in a private loop configuration.|
|`PublicLoop`|This port connects in a public configuration.|
|`Generic`|This port connection type is a generic fabric port.|
|`ExtenderFabric`|This port connection type is an extender fabric port.|
|`FPort`|This port connection type is a fabric port.|
|`EPort`|This port connection type is an extender fabric port.|
|`TEPort`|This port connection type is an trunking extender fabric port.|
|`NPPort`|This port connection type is a proxy N port for N-Port virtualization.|
|`GPort`|This port connection type is a generic fabric port.|
|`NLPort`|This port connects in a node loop configuration.|
|`FLPort`|This port connects in a fabric loop configuration.|
|`EXPort`|This port connection type is an external fabric port.|
|`UPort`|This port connection type is unassigned.|
|`DPort`|This port connection type is a diagnostic port.|

### FunctionMaxBandwidth (array)

Member of [Port.v1\_9\_0.Port](#port)

`FunctionMaxBandwidth` is an array containing elements of:

**FunctionMaxBandwidth[{item}].AllocationPercent**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The maximum bandwidth allocation percentage allocated to the corresponding network device function instance.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**FunctionMaxBandwidth[{item}].NetworkDeviceFunction**
The link to the network device function associated with this bandwidth setting of this network port.
NetworkDeviceFunction is a link (`"@odata.id": URI`) to another resource.

### FunctionMinBandwidth (array)

Member of [Port.v1\_9\_0.Port](#port)

`FunctionMinBandwidth` is an array containing elements of:

**FunctionMinBandwidth[{item}].AllocationPercent**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The minimum bandwidth allocation percentage allocated to the corresponding network device function instance.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**FunctionMinBandwidth[{item}].NetworkDeviceFunction**
The link to the network device function associated with this bandwidth setting of this network port.
NetworkDeviceFunction is a link (`"@odata.id": URI`) to another resource.

### InterfaceEnabled

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An indication of whether the interface is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### LinkConfiguration (array)

Member of [Port.v1\_9\_0.Port](#port)

`LinkConfiguration` is an array containing elements of:

**LinkConfiguration[{item}].AutoSpeedNegotiationCapable**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An indication of whether the port is capable of autonegotiating speed.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**LinkConfiguration[{item}].AutoSpeedNegotiationEnabled**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Controls whether this port is configured to enable autonegotiating speed.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

**LinkConfiguration[{item}].CapableLinkSpeedGbps (array)**
Member of [Port.v1\_9\_0.Port](#port)

`CapableLinkSpeedGbps` is an array containing elements of:

**CapableLinkSpeedGbps[{item}]**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**LinkConfiguration[{item}].ConfiguredNetworkLinks (array)**
Member of [Port.v1\_9\_0.Port](#port)

`ConfiguredNetworkLinks` is an array containing elements of:

**ConfiguredNetworkLinks[{item}].ConfiguredLinkSpeedGbps**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link speed per lane this port is configured to use for autonegotiation.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

**ConfiguredNetworkLinks[{item}].ConfiguredWidth**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link width this port is configured to use for autonegotiation in conjunction with the link speed.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

### LinkNetworkTechnology

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link network technology capabilities of this port.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Ethernet`|The port is capable of connecting to an Ethernet network.|
|`InfiniBand`|The port is capable of connecting to an InfiniBand network.|
|`FibreChannel`|The port is capable of connecting to a Fibre Channel network.|
|`GenZ`|The port is capable of connecting to a Gen-Z fabric.|

### LinkState

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The desired link state for this interface.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|This link is enabled.|
|`Disabled`|This link is disabled.|

### LinkStatus

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The desired link status for this interface.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`LinkUp`|This link on this interface is up.|
|`Starting`|This link on this interface is starting.  A physical link has been established, but the port is not able to transfer data.|
|`Training`|This physical link on this interface is training.|
|`LinkDown`|The link on this interface is down.|
|`NoLink`|No physical link detected on this interface.|

### LinkTransitionIndicator

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The number of link state transitions for this interface.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Location

**Location.PartLocation**
**Location.PartLocation.LocationOrdinalValue**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The number that represents the location of the part.  If LocationType is `slot` and this unit is in slot 2, the LocationOrdinalValue is 2.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Location.PartLocation.LocationType**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The location types for PartLocation.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Slot`|The slot as the type of location.|
|`Bay`|The bay as the type of location.|
|`Connector`|The connector as the type of location.|
|`Socket`|The socket as the type of location.|
|`Embedded`|Embedded within a part.|

**Location.PartLocation.Orientation**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The orientation for the ordering of the part location ordinal value.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`FrontToBack`|The ordering for LocationOrdinalValue is front to back.|
|`BackToFront`|The ordering for the LocationOrdinalValue is back to front.|
|`TopToBottom`|The ordering for the LocationOrdinalValue is top to bottom.|
|`BottomToTop`|The ordering for LocationOrdinalValue is bottom to top.|
|`LeftToRight`|The ordering for the LocationOrdinalValue is left to right.|
|`RightToLeft`|The ordering for the LocationOrdinalValue is right to left.|

**Location.PartLocation.Reference**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The reference area for the location of the part.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Top`|The part is in the top of the unit.|
|`Bottom`|The part is in the bottom of the unit.|
|`Front`|The part is in the front of the unit.|
|`Rear`|The part is in the rear of the unit.|
|`Left`|The part is on the left side of of the unit.|
|`Right`|The part is on the right side of the unit.|
|`Middle`|The part is in the middle of the unit.|

**Location.PartLocation.ServiceLabel**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The label of the part location, such as a silk-screened name or a printed label.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Location.Placement**
**Location.Placement.AdditionalInfo**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Area designation or other additional info.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Location.Placement.Rack**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The name of a rack location within a row.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**Location.Placement.RackOffset**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The vertical location of the item, in terms of RackOffsetUnits.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**Location.Placement.RackOffsetUnits**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The type of rack unit in use.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OpenU`|A rack unit that is equal to 48 mm (1.89 in).|
|`EIA_310`|A rack unit that is equal to 1.75 in (44.45 mm).|

**Location.Placement.Row**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The name of the row.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

### LocationIndicatorActive

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An indicator allowing an operator to physically locate this resource.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### MaxFrameSize

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The maximum frame size supported by the port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### MaxSpeedGbps

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The maximum speed of this port as currently configured.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.AutoNegotiationCapable

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indicates the ability of this network port to autonegotiate link speed.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.ConfiguredNetworkLinks (array)

Member of [Port.v1\_9\_0.Port](#port)

`ConfiguredNetworkLinks` is an array containing elements of:

**ConfiguredNetworkLinks[{item}].ConfiguredLinkSpeedGbps**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link speed per lane this port is configured to use for autonegotiation.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

**ConfiguredNetworkLinks[{item}].ConfiguredWidth**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The number of lanes this port is configured to use for autonegotiation. If this property is omitted, the lane count shall default to one.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.EvbData

**Oem.Hpe.EvbData.Receiving**
**Oem.Hpe.EvbData.Receiving.CdcpActive**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True if a currently active IEEE 802.1Qbg CDCP TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.ChannelActive**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A currently unexpired HPE Channel Link Control or HPE Channel Description TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.ChannelDescriptionLocalSequenceNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link partner's HPE Channel Description sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.ChannelDescriptionRemoteSequenceNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The last HPE Channel Decsription sequence number sent on this link that was successfully received and processed by the link partner.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.ChannelDescriptionSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The header subtype field of the last received HPE Channel Description TLV.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.ChannelLinkControlLocalSequenceNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link partner's HPE Channel Link Control sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.ChannelLinkControlMCEnable**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The Feature Indicators field, Management Controller (MC) Channel (SCID 4094) enabled state in the HPE CLC TLV being received from the link partner on this port.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.ChannelLinkControlRemoteSequenceNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The last HPE Channel Link control sequence number sent on this link that was successfully received and processed by the link partner.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.ChannelLinkControlSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The header subtype field of the last received HPE Channel Link Control TLV.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.Role**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link partner's IEEE 802.1Qbg operating role.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`bridge`|Indicates the link partner is operating as a Bridge.|
|`station`|Indicates the link partner is operating as a Station.|

**Oem.Hpe.EvbData.Receiving.SChannelAssignments (array)**
Member of [Port.v1\_9\_0.Port](#port)

`SChannelAssignments` is an array containing elements of:

**SChannelAssignments[{item}].Scid**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|SCID value for this <SCID,SVID> S-Channel identifier pairreceived from the link partner on this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**SChannelAssignments[{item}].Svid**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|SVID assignment value for this <SCID,SVID> S-Channel identifier pair received from the link partner on this port. When 0 it indicates an assignment request is in progress.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.SChannelMaxCount**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indicates the number of S-Channels the link partner can support on this physical link.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.SChannelsSupported**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true this link supports S-Channels.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Receiving.VirtualLinkStatusVector**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A bit vector indicating S-Channel status received from the link partner, 1=up, 0=down. S-Channel status bits are ordered by SCID from lowest numbered (first) to highest (last).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting**
**Oem.Hpe.EvbData.Transmitting.ChannelDescriptionData (array)**
Member of [Port.v1\_9\_0.Port](#port)

`ChannelDescriptionData` is an array containing elements of:

**ChannelDescriptionData[{item}].Descriptor0BandwidthCirMbps**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The bandwidth Commited Information Rate (CIR) for this S-Channel, in Mbps.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor0BandwidthPirMbps**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The bandwidth Peak Information Rate (PIR) for this S-Channel, in Mbps.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor0ChannelTerminationType**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indicates the termination provided for this S-Channel.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, this S-Channel supports Ethernet.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor0FCoESupport**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, this S-Channel supports Fibre Channel over Ethernet (FCoE).|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor0PcpSupport**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indicates which IEEE 802.1Q Ethernet Priority Code Point (PCP) classes are supported on this S-Channel. When no PCPs are supported, the S-Channel makes no attempt to filter or control traffic class. A string of 1/0 characters indicating 1=enabled, 0=disabled. PCP classes are ordered from highest numbered 7 (first) to lowest 0 (last).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor0RoCEESupport**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, this S-Channel supports RDMA over Converged Enhanced Ethernet (RoCEE).|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor0Scid**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The S-Channel identifier for this Descriptor0 instance.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor0iSCSISupport**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, this S-Channel supports Internet SCSI (iSCSI).|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor1ConnectionID**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A unique S-Channel identifer in UUID format.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ChannelDescriptionData[{item}].Descriptor1Scid**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The S-Channel identifier for this Descriptor1 instance.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.ChannelDescriptionLocalSequenceNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|This station's channel discovery local sequence number which will be transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.ChannelDescriptionRemoteSequenceNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link partner's channel discovery local sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.ChannelDescriptorCount**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The number of channel descriptor pairs being transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.ChannelLinkControlLocalSequenceNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|This station's channel link control local sequence number which will be transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.ChannelLinkControlMCEnable**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The Feature Indicators field, Management Controller (MC) Channel (SCID 4094) enabled state in the HPE CLC TLV being transmitted to the link partner on this port.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.ChannelLinkControlRemoteSequenceNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The link partner's channel link control local sequence number that was last successfully received and processed.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.Role**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|This port's IEEE 802.1Qbg role being advertised on the link.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`bridge`|Indicates this link is operating locally as a Bridge.|
|`station`|Indicates this link is operating locally as a Station.|

**Oem.Hpe.EvbData.Transmitting.SChannelAssignments (array)**
Member of [Port.v1\_9\_0.Port](#port)

`SChannelAssignments` is an array containing elements of:

**SChannelAssignments[{item}].Scid**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|SCID value for this <SCID,SVID> S-Channel identifier pair being transmitted to the link partner on this port.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**SChannelAssignments[{item}].Svid**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|SVID assignment value for this <SCID,SVID> S-Channel identifier pair being transmitted to the link partner on this port. When 0 it indicates an SVID assignment request to the link partner is in progress.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.SChannelMaxCount**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The Channel Capacity value being advertised to the link partner. It indicates the number of S-Channels this station can support on this physical link.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.SChannelsSupported**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, indicates that this physical link has S-Channel capability.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.EvbData.Transmitting.VirtualLinkStatusVector**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A bit vector indicating S-Channel status being transmitted on this link, 1=up, 0=down. S-Channel status bits are ordered by SCID from lowest numbered (first) to highest (last).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.LldpData

**Oem.Hpe.LldpData.Receiving**
**Oem.Hpe.LldpData.Receiving.ChassisID**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The LLDP chassis ID received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.ChassisIDSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The IEEE 802.1AB-2009 chassis ID subtype received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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

**Oem.Hpe.LldpData.Receiving.Dcb**
**Oem.Hpe.LldpData.Receiving.Dcb.ApplicationPriorityReceived**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True when an unexpired Data Center Bridging (DCB) Application Priority Table TLV has been received.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.ApplicationPriorityTable (array)**
Member of [Port.v1\_9\_0.Port](#port)

`ApplicationPriorityTable` is an array containing elements of:

**ApplicationPriorityTable[{item}].ApplicationPriority**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indicates which priority level is assigned for this application protocol.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**ApplicationPriorityTable[{item}].ApplicationProtocol**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An integer value indicating application protocol identity, of the type described by DCBApplicationSelect.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**ApplicationPriorityTable[{item}].ApplicationSelect**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indentifies the type of the DCBApplicationProtocol property.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`reserved`|Reserved select value.|
|`default-Ethertype`|Default priority. Use when priority not otherwise specified.|
|`TCP-SCTP`|DCBApplicationProtocol value is a well known port over TCP or SCTP.|
|`UDP-DCCP`|DCBApplicationProtocol value is a well known port over UDP or DCCP.|
|`TCP-SCTP-UDP-DCCP`|DCBApplicationProtocol is a well known port over TCP, SCTP, SCTP, or DCCP.|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets**
**Oem.Hpe.LldpData.Receiving.Dcb.Ets.BandwidthAssignmentTable (array)**
Member of [Port.v1\_9\_0.Port](#port)

`BandwidthAssignmentTable` is an array containing elements of:

**BandwidthAssignmentTable[{item}]**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|One entry in the DCB ETS Traffic Class (TC) Bandwidth Assignment Table.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.CreditBasedShaper**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True if the link partner supports the Credit-based Shaper (CBS) transmmission selection algortithm.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.MaximumTrafficClassCount**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The maximum number of traffic classes supported by the link partner.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.PriorityAssignmentTable (array)**
Member of [Port.v1\_9\_0.Port](#port)

`PriorityAssignmentTable` is an array containing elements of:

**PriorityAssignmentTable[{item}]**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|One entry in the DCB ETS Priority Assignment Table indicating this priority's Traffic Class assignment.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.TlvReceived**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True when an unexpired DCB Enhanced Transmission Selection (ETS) TLV has been received.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.TrafficSelectionAlgorithmTable (array)**
Member of [Port.v1\_9\_0.Port](#port)

`TrafficSelectionAlgorithmTable` is an array containing elements of:

**TrafficSelectionAlgorithmTable[{item}]**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An assignment of a Traffic Selection Algorithm (TSA) to a traffic class.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`strict`|Strict priority algorithm.|
|`CBS`|Credit-Based Shaper algorithm.|
|`ETS`|Enhanced Traffic Selection algorithm.|
|`vendor`|Vendor specific algorithm for use with DCB.|

**Oem.Hpe.LldpData.Receiving.Dcb.Ets.Willing**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True if the link partner is willing to accept ETS configurations.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.LocalEqualRemote**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True when the transmitted and received contents match for both DCB ETS and PFC TLVs.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc**
**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.EnabledTrafficClasses**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A bit string indicating which priority levels have PFC enabled, 1=enabled. PFC levels are bit ordered from 7 (first) to 0 (last).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.MacSecurityBypassCapability**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True when the link partner has the ability to bypass MAC security in order to improve PFC responsiveness.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.MaximumTrafficClassCount**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Indicates the maximum number of traffic classes that the link partner can simultaneously support.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.TlvReceived**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True when an unexpired DCB Priority Flow Control (PFC) TLV has been received.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Pfc.Willing**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True if the LLDP link partner is willing to accept PFC configurations.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.Dcb.Version**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The DCB version supported by the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`unknown`|Unknown|
|`CEE`|Converged Enhanced Ethernet|
|`IEEE`|IEEE 802.1Q|

**Oem.Hpe.LldpData.Receiving.ManagementAddress**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The management address received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.ManagementAddressOID**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An object identifier for the hardware or protocol entity associated with the management address.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.ManagementAddressReceived**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True when a currently unexpired management address TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.ManagementAddressType**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The type of management address received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`IPv4`|Type 1 (IP version 4).|
|`IPv6`|Type 2 (IP version 6).|
|`all802`|Type 6 (All 802 media plus Ethernet 'canonical format').|

**Oem.Hpe.LldpData.Receiving.ManagementIFNumSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Management interface number subtype.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`unknown`|Interface number is not known.|
|`ifIndex`|Interface number is based on the ifIndex MIB object.|
|`sysPortNum`|Interface number is based on the system port numbering convention.|

**Oem.Hpe.LldpData.Receiving.ManagementIFNumber**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|Management interface number received from the link partner represented as a colon delimited string of hexadecimal octets.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.ManagementVlanReceived**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True when a currently unexpired management address VID TLV has been received from the link partner.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.NearestBridgeTtlExpired**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|True when the LLDP PDU most recently received from the link partner has expired.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.PortDescription**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The remote link partner's port description.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.PortID**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A colon delimited string of hexadecimal octets received from the link partner identifying its port.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Receiving.PortIDSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The port ID subtype enumeration from IEEE 802.1AB-2009 Table 8-3, which indicates the format for the PortID property.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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

**Oem.Hpe.LldpData.Receiving.SystemDescription**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The system description received from the link partner.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Transmitting**
**Oem.Hpe.LldpData.Transmitting.ChassisID**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The Link Layer Data Protocol (LLDP) chassis ID being transmitted on this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Transmitting.ChassisIDSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The IEEE 802.1AB-2009 chassis ID subtype being transmitted on this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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

**Oem.Hpe.LldpData.Transmitting.ManagementAddresses (array)**
Member of [Port.v1\_9\_0.Port](#port)

`ManagementAddresses` is an array containing elements of:

**ManagementAddresses[{item}].ManagementIPAddress**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A management address.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ManagementAddresses[{item}].ManagementIPAddressType**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The IANA type of this management address.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`IPv4`|Type 1 (IP version 4).|
|`IPv6`|Type 2 (IP version 6).|
|`all802`|Type 6 (All 802 media plus Ethernet 'canonical format').|

**Oem.Hpe.LldpData.Transmitting.ManagementCvlanIDTransmitted**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, indicates that a management CVLAN ID is being transmitted on this link.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Transmitting.PortDescription**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An alphanumeric string describing this link.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Transmitting.PortID**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A colon delimited string of hexadecimal octets identifying this port.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.LldpData.Transmitting.PortIDSubtype**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The port ID subtype from IEEE 802.1AB-2009 Table 8-3.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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

**Oem.Hpe.LldpData.Transmitting.SystemDescription**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|A textual description of this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PortDiagnosticEnableLocalLoopback

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, local loopback is active on this port.  PortDiagnosticsEnabled must first be true in order to set this property to true.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.PortDiagnosticEnableRemoteLoopback

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, remote loopback is active on this port. PortDiagnosticsEnabled must first be true in order to set this property to true.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.PortDiagnosticLocalLoopbackCapable

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, the port has local loopback capability.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PortDiagnosticRemoteLoopbackCapable

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, the port has remote loopback capability.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PortDiagnosticsEnabled

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|When true, diagnostic features are enabled on this port.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.VirtualFunctionAllocations (array)

Member of [Port.v1\_9\_0.Port](#port)

`VirtualFunctionAllocations` is an array containing elements of:

**VirtualFunctionAllocations[{item}].NetworkDeviceFunction**
The logical network device function to which this virtual function allocation applies.
NetworkDeviceFunction is a link (`"@odata.id": URI`) to another resource.

**VirtualFunctionAllocations[{item}].VirtualFunctionsAllocated**
Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The number of virtual functions allocated to this logical network device function instance.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

### PortId

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The label of this port on the physical package for this port.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### PortMedium

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The physical connection medium for this port.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Electrical`|This port has an electrical cable connection.|
|`Optical`|This port has an optical cable connection.|

### PortProtocol

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The protocol being sent over this port.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Ethernet`|Ethernet.|
|`FC`|Fibre Channel.|
|`FCoE`|Fibre Channel over Ethernet (FCoE).|
|`GenZ`|GenZ.|
|`InfiniBand`|InfiniBand.|
|`SAS`|Serial Attached SCSI.|
|`MultiProtocol`|Multiple Protocols.|
|`PCIe`|PCI Express.|
|`AHCI`|Advanced Host Controller Interface (AHCI).|
|`UHCI`|Universal Host Controller Interface (UHCI).|
|`SATA`|Serial AT Attachment.|
|`USB`|Universal Serial Bus (USB).|
|`NVMe`|Non-Volatile Memory Express (NVMe).|
|`iSCSI`|Internet SCSI.|
|`FCP`|Fibre Channel Protocol for SCSI.|
|`FICON`|FIbre CONnection (FICON).|
|`NVMeOverFabrics`|NVMe over Fabrics.|
|`SMB`|Server Message Block (SMB).  Also known as the Common Internet File System (CIFS).|
|`NFSv3`|Network File System (NFS) version 3.|
|`NFSv4`|Network File System (NFS) version 4.|
|`HTTP`|Hypertext Transport Protocol (HTTP).|
|`HTTPS`|Hypertext Transfer Protocol Secure (HTTPS).|
|`FTP`|File Transfer Protocol (FTP).|
|`SFTP`|SSH File Transfer Protocol (SFTP).|
|`iWARP`|Internet Wide Area RDMA Protocol (iWARP).|
|`RoCE`|RDMA over Converged Ethernet Protocol.|
|`RoCEv2`|RDMA over Converged Ethernet Protocol Version 2.|
|`I2C`|Inter-Integrated Circuit Bus.|
|`TCP`|Transmission Control Protocol (TCP).|
|`UDP`|User Datagram Protocol (UDP).|
|`TFTP`|Trivial File Transfer Protocol (TFTP).|
|`NVLink`|NVLink.|
|`OEM`|OEM-specific.|
|`DisplayPort`|DisplayPort.|
|`HDMI`|HDMI.|
|`VGA`|VGA.|
|`DVI`|DVI.|

### PortType

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The type of this port.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`UpstreamPort`|This port connects to a host device.|
|`DownstreamPort`|This port connects to a target device.|
|`InterswitchPort`|This port connects to another switch.|
|`ManagementPort`|This port connects to a switch manager.|
|`BidirectionalPort`|This port connects to any type of device.|
|`UnconfiguredPort`|This port has not yet been configured.|

### SignalDetected

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|An indication of whether a signal is detected on this interface.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [Port.v1\_9\_0.Port](#port)
See the Redfish standard schema and specification for information on common Status object.

### Width

Member of [Port.v1\_9\_0.Port](#port)

| | |
|---|---|
|Description|The number of lanes, phys, or other physical transport links that this port contains.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Actions

**Port.Reset**
Member of [Port.v1\_9\_0.Port](#port)

**Parameters:**

**target (string)**

Link to invoke action

**ResetValue (string)**

Reset Port

|Value|Description|
|---|---|
|GracefulRestart|Shut down gracefully and restart the system.|
|GracefulShutdown|Shut down gracefully and power off.|
|PowerCycle|Power cycle the unit.  Behaves like a full power removal, followed by a power restore to the resource.|
|On|Turn on the unit.|
|ForceOff|Turn off the unit immediately (non-graceful shutdown).|
|PushPowerButton|Simulate the pressing of the physical power button on this unit.|
|ForceOn|Turn on the unit immediately.|
|ForceRestart|Shut down immediately and non-gracefully and restart the system.|
|Nmi|Generate a diagnostic interrupt, which is usually an NMI on x86 systems, to stop normal operations, complete diagnostic actions, and, typically, halt the system.|

## PortCollection

`@odata.type: "#PortCollection.PortCollection"`

A Collection of Port resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/networkadapters/{item}/ports`|GET |
|`/redfish/v1/systems/{item}/networkinterfaces/{item}/ports`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Port](../ilo6_other_resourcedefns152/#port)|

### Members (array)

Member of PortCollection.PortCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of PortCollection.PortCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of PortCollection.PortCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## Power

`@odata.type: "#Power.v1_3_0.Power"`

The Power resource describes the Power Metrics.  It represents the properties for Power Consumption and Power Limiting.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/power`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Oem/Hpe/Links/FederatedGroupCapping`|[HpeiLOFederatedGroupCapping](../ilo6_hpe_resourcedefns152/#hpeilofederatedgroupcapping)|
|`Oem/Hpe/Links/PowerMeter`|[HpePowerMeter](../ilo6_hpe_resourcedefns152/#hpepowermeter)|
|`Redundancy[]/RedundancySet[]`|[Power](../ilo6_other_resourcedefns152/#power)|
|`Oem/Hpe/Links/FastPowerMeter`|[HpePowerMeter](../ilo6_hpe_resourcedefns152/#hpepowermeter)|

### Oem.Hpe.BatteryBackedUnits (array)

Member of [Power.v1\_3\_0.Power](#power)

`BatteryBackedUnits` is an array containing elements of:

**BatteryBackedUnits[{item}].BBUStatus**
**BatteryBackedUnits[{item}].BBUStatus.Health**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|This represents the health state of this resource in the absence of its dependent resources.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**BatteryBackedUnits[{item}].BBUStatus.HealthRollup**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|This represents the overall health state from the view of this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

**BatteryBackedUnits[{item}].BBUStatus.State**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|This indicates the known state of the resource, such as if it is enabled.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

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

**BatteryBackedUnits[{item}].BayNumber**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Bay number of the battery backed unit.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].CapacityWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Total capacity (in Watts) of the battery backed unit.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].CutOffSetPointmAh**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Cut off threshold (mAh) where battery backed unit stops supplying power to the server.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].FirmwareVersion**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Firmware version of the battery backed unit.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].PercentCharge**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Percentage charge remaining for the battery backed unit.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].RemainingCapacitymAh**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Remaining capacity (mAh) of the battery backed unit.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].SerialNumber**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Serial number of the battery backed unit.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].TimeToCutOffSeconds**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Run time (in seconds) available with the battery backed unit until cut off. This is detected only when battery is charging or discharging, otherwise set to 0.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].TimeToFullChargeMinutes**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Time required (in minutes) to fully charge the battery backed unit. This is detected only when battery is charging or discharging, otherwise set to 0.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**BatteryBackedUnits[{item}].UsableCapacitymAh**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description| Usable capacity (mAh) of the battery backed unit.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.BbuPowerSupply

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Battery Backup Unit Power Supply action determines what will occur when a server is running on battery power.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`DoNothing`|No action will be taken when a server switches to battery power.|
|`MomentaryPowerButtonPress`|Momentary virtual power button press which should shutdown host operating system when pressed.|
|`HostShutdown`|Shutdown message sent to host operating system with installed management software to initiate a shutdown.|

### Oem.Hpe.BrownoutRecoveryEnabled

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|When a brownout condition occurs in the server, this setting will determine if the server should recover from it.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.Domains (array)

Member of [Power.v1\_3\_0.Power](#power)

`Domains` is an array containing elements of:

**Domains[{item}].DomainName**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Power Supply Domain Name.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

The following are the supported values:

|Value|
|---|
|`System`|
|`GPU`|

**Domains[{item}].HighEfficiencyMode**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The redundant power supply mode that will be used when redundant power supplies are configured.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

The following are the supported values:

|Value|
|---|
|`Null`|
|`Auto`|
|`Balanced`|
|`Even`|
|`Odd`|
|`NoSupport`|

**Domains[{item}].PowerSupplies (array)**
Member of [Power.v1\_3\_0.Power](#power)

`PowerSupplies` is an array containing elements of:

**PowerSupplies[{item}].@odata.id**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**Domains[{item}].PowerSupplyRedundancy**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|This indicates if the Power Supply is redundant or not. |
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Redundant`|The power supplies are Redundant.|
|`NonRedundant`|The power supplies are not Redundant.|
|`FailedRedundant`|The Redundant power supply has failed.|
|`Unknown`|The Redundant state is unknown.|

**Domains[{item}].Status**
Member of [Power.v1\_3\_0.Power](#power)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.FanPowerRequirement

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Cooling challenge bucket definition.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.FanPowerRequirementErrors

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Cooling challenge errors.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.FanPowerRequirementVersion

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Version of the Synergy cooling table bucket definitions.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.HasCpuPowerMetering

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Indicates if the system has CPU power metering.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.HasDimmPowerMetering

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Indicates if the system has DIMM power metering.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.HasGpuPowerMetering

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Indicates if the system has GPU power metering.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.HasPowerMetering

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Indicates if the system has power metering.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.HighEfficiencyMode

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The redundant power supply mode that will be used when redundant power supplies are configured.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Null`|
|`Auto`|
|`Balanced`|
|`Even`|
|`Odd`|
|`NoSupport`|

### Oem.Hpe.MinimumSafelyAchievableCap

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Minimum Safely Achievable Cap is the lowest cap value that is safe for a group power manager to apply to a particular server. It can either be identical to or slightly greater than the 0 percent cap value calculated during ROM power burn.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.MinimumSafelyAchievableCapValid

Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Indicates if the msac is valid.  msac is valid only if this is true.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PowerMetric

**Oem.Hpe.PowerMetric.AmbTemp**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Ambient temperature, in degrees Celsius.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.Cap**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The applicable power cap in Watts at the time of this power sample.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.CpuCapLim**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Measures the effect of the power cap on performance in percent.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.CpuMax**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The percentage of time the CPU spent in its maximum power mode.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.CpuPwrSavLim**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Measures the effect of CPU Power Regulator state switching on performance in percent.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.CpuWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The power consumed by the system CPUs in Watts.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.DimmWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The power consumed by the system memory DIMMs in Watts.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.GpuWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The power consumed by the GPU(s) in Watts.  This will be 0 if no GPUs are installed or if the drivers are not loaded.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.PrMode**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Power Regulator mode, which can be OS Control, Static High, Static Low or Dynamic.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.51|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`dyn`|Dynamic Mode - CPU power regulation is managed dynamically by the firmware.|
|`min`|Minimum Mode - CPU power regulation is configured to save as much power as possible at the possible expense of performance.|
|`max`|Maximum Mode - CPU power regulation is configured for maximum performance at the possible expense of power efficiency.|
|`osc`|OS Control Mode - CPU power regulation is managed by the Operating System.|

**Oem.Hpe.PowerMetric.PunCap**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|If true, CPU performance is being penalized by the current power cap.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.51|

**Oem.Hpe.PowerMetric.UnachCap**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|If true, the configured power cap could not be achieved due to system power requirements.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.51|

### Oem.Hpe.SNMPPowerThresholdAlert

**Oem.Hpe.SNMPPowerThresholdAlert.DurationInMin**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Sets the length of time, in minutes, that power consumption must remain above the warning threshold before an SNMP alert is triggered. The maximum duration is 240 minutes, and the duration must be a multiple of 5.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.SNMPPowerThresholdAlert.ThresholdWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Sets the power consumption threshold (watts). If power consumption exceeds this value for the specified time duration, an SNMP alert is triggered.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.SNMPPowerThresholdAlert.Trigger**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Trigger determines whether alerts are based on peak power consumption, average power consumption, or if they are disabled. Trigger property can only be enabled if the ThresholdWatts and DurationInMin values are specified/configured.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Disabled`|
|`AveragePowerConsumption`|
|`PeakPowerConsumption`|

### PowerControl (array)

Member of [Power.v1\_3\_0.Power](#power)

`PowerControl` is an array containing elements of:

**PowerControl[{item}].@odata.id**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**PowerControl[{item}].MemberId**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|This is the identifier for the member within the collection.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerAllocatedWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The total amount of power that has been allocated (or budegeted)to  chassis resources.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerAvailableWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The amount of power not already budgeted and therefore available for additional allocation. (powerCapacity - powerAllocated).  This indicates how much reserve power capacity is left.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerCapacityWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The total amount of power available to the chassis for allocation. This may the power supply capacity, or power budget assigned to the chassis from an up-stream chassis.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerConsumedWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The actual power being consumed by the chassis.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerLimit**
**PowerControl[{item}].PowerLimit.CorrectionInMs**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The time required for the limiting process to reduce power consumption to below the limit.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerLimit.LimitException**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The action that is taken if the power cannot be maintained below the LimitInWatts.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NoAction`|Take no action when the limit is exceeded.|
|`HardPowerOff`|Turn the power off immediately when the limit is exceeded.|
|`LogEventOnly`|Log an event when the limit is exceeded, but take no further action.|
|`Oem`|Take an OEM-defined action.|

**PowerControl[{item}].PowerLimit.LimitInWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The Power limit in watts. Set to null to disable power capping.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerMetrics**
**PowerControl[{item}].PowerMetrics.AverageConsumedWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The average power level over the measurement window (the last IntervalInMin minutes).|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerMetrics.IntervalInMin**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The time interval (or window) in which the PowerMetrics are measured over.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerMetrics.MaxConsumedWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The highest power consumption level that has occured over the measurement window (the last IntervalInMin minutes).|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerMetrics.MinConsumedWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The lowest power consumption level over the measurement window (the last IntervalInMin minutes).|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].PowerRequestedWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The potential power that the chassis resources are requesting which may be higher than the current level being consumed since requested power includes budget that the chassis resource wants for future use.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerControl[{item}].RelatedItem (array)**
Member of [Power.v1\_3\_0.Power](#power)

`RelatedItem` is an array containing elements of:

**RelatedItem[{item}].@odata.id**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**PowerControl[{item}].Status**
Member of [Power.v1\_3\_0.Power](#power)
See the Redfish standard schema and specification for information on common Status object.

### PowerSupplies (array)

Member of [Power.v1\_3\_0.Power](#power)

`PowerSupplies` is an array containing elements of:

**PowerSupplies[{item}].@odata.id**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**PowerSupplies[{item}].FirmwareVersion**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The firmware version for this Power Supply|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].LastPowerOutputWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The average power output of this Power Supply|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].LineInputVoltage**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The line input voltage at which the Power Supply is operating|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].LineInputVoltageType**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The line voltage type supported as an input to this Power Supply|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The power supply line input voltage type cannot be determined.|
|`ACLowLine`|100-127V AC input.|
|`ACMidLine`|200-240V AC input.|
|`ACHighLine`|277V AC input.|
|`DCNeg48V`|-48V DC input.|
|`HighVoltageDC`|High Voltage DC input (380V).|

**PowerSupplies[{item}].Manufacturer**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|This is the manufacturer of this power supply.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].MemberId**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|This is the identifier for the member within the collection.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Model**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The model number for this Power Supply|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.AveragePowerOutputWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The latest observed average power being drawn by the power supply (Watts). This is usually updated every 10 seconds but the period can vary in some circumstances.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.BayNumber**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The power supply bay number.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.Domain**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|This indicates the domain of the specific power supply.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

The following are the supported values:

|Value|
|---|
|`System`|
|`GPU`|

**PowerSupplies[{item}].Oem.Hpe.HotplugCapable**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|If true, this power supply (and power supply bay) is capable of being hot-plugged.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.MaxPowerOutputWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The latest observed maximum output power being drawn by the power supply (Watts). This is usually updated every 10 seconds but the period can vary in some circumstances.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.Mismatched**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|If true, this power supply is mismatched with others in the system.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.PowerSupplyStatus**
**PowerSupplies[{item}].Oem.Hpe.PowerSupplyStatus.State**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Indicates the known state of the resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Unknown`|
|`Ok`|
|`Degraded`|
|`Failed`|
|`OverVoltage`|
|`OverCurrent`|
|`OverTemperature`|
|`ACPowerLost`|
|`FanFailure`|
|`WarningHighInputVoltage`|
|`WarningLowInputVoltage`|
|`WarningHighOutputVoltage`|
|`WarningLowOutputVoltage`|
|`WarningInletTemperature`|
|`WarningInternalTemperature`|
|`WarningHighAuxiliaryVoltage`|
|`WarningLowAuxiliaryVoltage`|
|`PowerSupplyMismatch`|
|`GoodInStandby`|

**PowerSupplies[{item}].Oem.Hpe.iPDU**
**PowerSupplies[{item}].Oem.Hpe.iPDU.IPAddress**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The IP address of the iPDU connected to this power supply.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.iPDU.MacAddress**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The Ethernet MAC address of the iPDU connected to this power supply.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.iPDU.Model**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The model number of the iPDU connected to this power supply.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.iPDU.SerialNumber**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The serial number of the iPDU connected to this power supply.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Oem.Hpe.iPDU.iPDUStatus**
**PowerSupplies[{item}].Oem.Hpe.iPDU.iPDUStatus.State**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|Indicates the known state of the resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Unknown`|
|`Ok`|
|`Degraded`|
|`Failed`|
|`OverVoltage`|
|`OverCurrent`|
|`OverTemperature`|
|`ACPowerLost`|
|`FanFailure`|
|`WarningHighInputVoltage`|
|`WarningLowInputVoltage`|
|`WarningHighOutputVoltage`|
|`WarningLowOutputVoltage`|
|`WarningInletTemperature`|
|`WarningInternalTemperature`|
|`WarningHighAuxiliaryVoltage`|
|`WarningLowAuxiliaryVoltage`|
|`PowerSupplyMismatch`|
|`GoodInStandby`|

**PowerSupplies[{item}].Oem.Hpe.iPDUCapable**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|If true, this power supply is capable of being connected to an iPDUs.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].PartNumber**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The part number for this Power Supply|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].PowerCapacityWatts**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The maximum capacity of this Power Supply|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].PowerSupplyType**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The Power Supply type (AC or DC)|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`Unknown`|The power supply type cannot be determined|
|`AC`|Alternating Current (AC) power supply|
|`DC`|Direct Current (DC) power supply|

**PowerSupplies[{item}].Redundancy**
Member of [Power.v1\_3\_0.Power](#power)
See the Redfish standard schema and specification for information on common Redundancy object.

**PowerSupplies[{item}].RelatedItem (array)**
Member of [Power.v1\_3\_0.Power](#power)

`RelatedItem` is an array containing elements of:

**RelatedItem[{item}].@odata.id**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**PowerSupplies[{item}].SerialNumber**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The serial number for this Power Supply|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].SparePartNumber**
Member of [Power.v1\_3\_0.Power](#power)

| | |
|---|---|
|Description|The spare part number for this Power Supply|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**PowerSupplies[{item}].Status**
Member of [Power.v1\_3\_0.Power](#power)
See the Redfish standard schema and specification for information on common Status object.

### Redundancy

Member of [Power.v1\_3\_0.Power](#power)
See the Redfish standard schema and specification for information on common Redundancy object.

### Status

Member of [Power.v1\_3\_0.Power](#power)
See the Redfish standard schema and specification for information on common Status object.

## Processor

`@odata.type: "#Processor.v1_7_2.Processor"`

The Processor resource describes the Processor resource.  It represents the properties of a processor attached to a System.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/processors/{item}`|GET |

### InstructionSet

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The instruction set of the processor|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`x86`|x86 32-bit|
|`x86-64`|x86 64-bit|
|`IA-64`|Intel IA-64|
|`ARM-A32`|ARM 32-bit|
|`ARM-A64`|ARM 64-bit|
|`MIPS32`|MIPS 32-bit|
|`MIPS64`|MIPS 64-bit|
|`OEM`|OEM-defined|

### Manufacturer

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The processor manufacturer|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### MaxSpeedMHz

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The maximum clock speed of the processor|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Model

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The product model number of this device|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.AssetTag

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The processor asset tag.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Cache (array)

Member of [Processor.v1\_7\_2.Processor](#processor)

`Cache` is an array containing elements of:

**Cache[{item}].Associativity**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The associativity of the cache.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`DirectMapped`|Direct Mapped|
|`2waySetAssociative`|2-way Set-Associative|
|`4waySetAssociative`|4-way Set-Associative|
|`FullyAssociative`|Fully Associative|
|`8waySetAssociative`|8-way Set-Associative|
|`16waySetAssociative`|16-way Set-Associative|
|`12waySetAssociative`|12-way Set-Associative|
|`24waySetAssociative`|24-way Set-Associative|
|`32waySetAssociative`|32-way Set-Associative|
|`48waySetAssociative`|48-way Set-Associative|
|`64waySetAssociative`|64-way Set-Associative|
|`20waySetAssociative`|20-way Set-Associative|
|`None`||

**Cache[{item}].CacheSpeedns**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The cache speed (ns).|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Cache[{item}].CurrentSRAMType (array)**
Member of [Processor.v1\_7\_2.Processor](#processor)

`CurrentSRAMType` is an array containing elements of:

**CurrentSRAMType[{item}]**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The array of supported SRAM attributes currently used by the cache.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NonBurst`|Non-Burst|
|`Burst`|Burst|
|`PipelineBurst`|Pipeline Burst|
|`Synchronous`|Synchronous|
|`Asynchronous`|Asynchronous|

**Cache[{item}].EccType**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The cache memory ECC type.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`None`|None|
|`Parity`|Parity|
|`SingleBitECC`|Single-bit ECC|
|`MultiBitECC`|Multi-bit ECC|

**Cache[{item}].InstalledSizeKB**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The installed cache size (KB).|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Cache[{item}].Location**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The cache location (internal or external).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Internal`|Internal|
|`External`|External|

**Cache[{item}].MaximumSizeKB**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The maximum cache size (KB).|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Cache[{item}].Policy**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The caching policy.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`WriteThrough`|Write through|
|`WriteBack`|Write back|
|`Varies`|Varies with memory address|

**Cache[{item}].Socketed**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|If true, the cache is a socketed component.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Cache[{item}].Status**
Member of [Processor.v1\_7\_2.Processor](#processor)
See the Redfish standard schema and specification for information on common Status object.

**Cache[{item}].SupportedSRAMType (array)**
Member of [Processor.v1\_7\_2.Processor](#processor)

`SupportedSRAMType` is an array containing elements of:

**SupportedSRAMType[{item}]**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`NonBurst`|Non-Burst|
|`Burst`|Burst|
|`PipelineBurst`|Pipeline Burst|
|`Synchronous`|Synchronous|
|`Asynchronous`|Asynchronous|

**Cache[{item}].SystemCacheType**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The cache type (unified, instructions, or data).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Instruction`|Instruction|
|`Data`|Data|
|`Unified`|Unified|

### Oem.Hpe.Characteristics (array)

Member of [Processor.v1\_7\_2.Processor](#processor)

`Characteristics` is an array containing elements of:

**Characteristics[{item}]**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`64Bit`|64-bit Capable|
|`MultiCore`|Multi-Core|
|`HwThread`|Hardware Thread|
|`ExecuteProtection`|Execute Protection|
|`EnhancedVirtualization`|Enhanced Virtualization|
|`PowerPerfControl`|Power/Performance Control|

### Oem.Hpe.ConfigStatus

**Oem.Hpe.ConfigStatus.Populated**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|True if the processor socket is populated with a CPU.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.ConfigStatus.State**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The current state of the processor.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|CPU Enabled|
|`DisabledByUser`|CPU Disabled by User through BIOS Setup|
|`DisabledByBios`|CPU Disabled By BIOS (POST Error)|
|`Idle`|CPU is Idle, waiting to be enabled.|

### Oem.Hpe.CoresEnabled

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The number of enabled cores in the processor.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.ExternalClockMHz

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The processor external clock frequency (MHZ), for example, 1000 = 1 GHZ.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.MicrocodePatches (array)

Member of [Processor.v1\_7\_2.Processor](#processor)

`MicrocodePatches` is an array containing elements of:

**MicrocodePatches[{item}].CpuId**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The microcode patch CPUID.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**MicrocodePatches[{item}].Date**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The microcode patch date.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**MicrocodePatches[{item}].PatchId**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The microcode patch ID.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.PartNumber

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The processor part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.RatedSpeedMHz

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The speed of the processor (in MHz) as of the last system boot, for example, 1000 = 1GHz.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.SerialNumber

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The processor serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.VoltageVoltsX10

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The processor voltage multiplied by 10, for example, 3.3v = 33.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### PartNumber

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The processor part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ProcessorArchitecture

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The architecture of the processor|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`x86`|x86 or x86-64|
|`IA-64`|Intel Itanium|
|`ARM`|ARM|
|`MIPS`|MIPS|
|`OEM`|OEM-defined|

### ProcessorId

**ProcessorId.EffectiveFamily**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The effective Family for this processor|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ProcessorId.EffectiveModel**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The effective Model for this processor|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ProcessorId.IdentificationRegisters**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The contents of the Identification Registers (CPUID) for this processor|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ProcessorId.MicrocodeInfo**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The Microcode Information for this processor|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ProcessorId.Step**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The Step value for this processor|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**ProcessorId.VendorId**
Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The Vendor Identification for this processor|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### ProcessorType

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The type of processor|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`CPU`|A Central Processing Unit|
|`GPU`|A Graphics Processing Unit|
|`FPGA`|A Field Programmable Gate Array|
|`DSP`|A Digital Signal Processor|
|`Accelerator`|An Accelerator|
|`OEM`|An OEM-defined Processing Unit|

### SerialNumber

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The processor serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Socket

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The socket or location of the processor|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [Processor.v1\_7\_2.Processor](#processor)
See the Redfish standard schema and specification for information on common Status object.

### TotalCores

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The total number of cores contained in this processor|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### TotalThreads

Member of [Processor.v1\_7\_2.Processor](#processor)

| | |
|---|---|
|Description|The total number of execution threads supported by this processor|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

## ProcessorCollection

`@odata.type: "#ProcessorCollection.ProcessorCollection"`

A Collection of Processor resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/processors`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Processor](../ilo6_other_resourcedefns152/#processor)|

### Members (array)

Member of ProcessorCollection.ProcessorCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of ProcessorCollection.ProcessorCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of ProcessorCollection.ProcessorCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## Role

`@odata.type: "#Role.v1_2_1.Role"`

This resource defines a user role to be used in conjunction with a Manager Account.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/roles/{item}`|GET PATCH |

### AssignedPrivileges (array)

Member of [Role.v1\_2\_1.Role](#role)

`AssignedPrivileges` is an array containing elements of:

**AssignedPrivileges[{item}]**
Member of [Role.v1\_2\_1.Role](#role)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Login`|Able to log into the service and read resources.|
|`ConfigureManager`|Able to configure Manager resources.|
|`ConfigureUsers`|Able to configure Users and their Accounts.|
|`ConfigureSelf`|Able to change the password for the current user Account.|
|`ConfigureComponents`|Able to configure components managed by this service.|

### IsPredefined

Member of [Role.v1\_2\_1.Role](#role)

| | |
|---|---|
|Description|This property is used to indicate if the Role is one of the Redfish Predefined Roles vs a Custom role.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.GroupDn

Member of [Role.v1\_2\_1.Role](#role)

| | |
|---|---|
|Description|The complete or shortened distinguished name of the directory group.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.GroupSid

Member of [Role.v1\_2\_1.Role](#role)

| | |
|---|---|
|Description|The security identifier of the directory group (for kerberos authentication and Active Directory integration only).|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### OemPrivileges (array)

Member of [Role.v1\_2\_1.Role](#role)

`OemPrivileges` is an array containing elements of:

**OemPrivileges[{item}]**
Member of [Role.v1\_2\_1.Role](#role)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`RemoteConsolePriv`|Able to remotely access the host system Remote Console, including video, keyboard, and mouse control.|
|`VirtualMediaPriv`|Able to use the Virtual Media feature on the host system.|
|`VirtualPowerAndResetPriv`|Able to power-cycle or reset the host system. These activities interrupt system availability. A user with this privilege can diagnose the system by using the Generate NMI to System button.|
|`HostBIOSConfigPriv`|Able to configure Host BIOS Settings.|
|`HostNICConfigPriv`|Able to configure Host NIC Settings.|
|`HostStorageConfigPriv`|Able to configure Host Storage Settings.|
|`SystemRecoveryConfigPriv`|Able to manage the critical recovery firmware images on the Manager's Repository.|

### RoleId

Member of [Role.v1\_2\_1.Role](#role)

| | |
|---|---|
|Description|This property contains the name of the Role.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

## RoleCollection

`@odata.type: "#RoleCollection.RoleCollection"`

A Collection of Role resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/accountservice/roles`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Role](../ilo6_other_resourcedefns152/#role)|

### Members (array)

Member of RoleCollection.RoleCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of RoleCollection.RoleCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of RoleCollection.RoleCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## SecureBoot

`@odata.type: "#SecureBoot.v1_1_0.SecureBoot"`

This resource contains UEFI Secure Boot information. It represents properties for managing the UEFI Secure Boot functionality of a system.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/secureboot`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`securebootdatabases`|Collection of [SecureBootDatabase](../ilo6_other_resourcedefns152/#securebootdatabasecollection)|

### SecureBootCurrentBoot

Member of [SecureBoot.v1\_1\_0.SecureBoot](#secureboot)

| | |
|---|---|
|Description|Secure Boot state during the current boot cycle.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Secure Boot is currently enabled.|
|`Disabled`|Secure Boot is currently disabled.|

### SecureBootDatabases

A link to the collection of UEFI Secure Boot databases.
SecureBootDatabases is a link (`"@odata.id": URI`) to another resource.

### SecureBootEnable

Member of [SecureBoot.v1\_1\_0.SecureBoot](#secureboot)

| | |
|---|---|
|Description|Enable or disable UEFI Secure Boot (takes effect on next boot).|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### SecureBootMode

Member of [SecureBoot.v1\_1\_0.SecureBoot](#secureboot)

| | |
|---|---|
|Description|Current Secure Boot Mode.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`SetupMode`|Secure Boot is currently in Setup Mode.|
|`UserMode`|Secure Boot is currently in User Mode.|
|`AuditMode`|Secure Boot is currently in Audit Mode.|
|`DeployedMode`|Secure Boot is currently in Deployed Mode.|

### Actions

**SecureBoot.ResetKeys**
Member of [SecureBoot.v1\_1\_0.SecureBoot](#secureboot)
Action to perform reset of the Secure Boot Keys.

**Parameters:**

**ResetKeysType (string)**

This parameter specifies what type of reset action to perform.

|Value|Description|
|---|---|
|ResetAllKeysToDefault|Reset to default Secure Boot keys on next boot.|
|DeletePK|Delete Secure Boot platform keys on next boot.|
|DeleteAllKeys|Delete all Secure Boot keys on next boot.|

## SecureBootDatabase

`@odata.type: "#SecureBootDatabase.v1_0_0.SecureBootDatabase"`

The SecureBootDatabase schema describes a UEFI Secure Boot database used to store certificates or hashes.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/PK`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kek`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/kekdefault`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/pkdefault`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Certificates`|Collection of [Certificate](../ilo6_other_resourcedefns152/#certificatecollection)|
|`Signatures`|Collection of [Signature](../ilo6_other_resourcedefns152/#signaturecollection)|

### Certificates

A link to the collection of certificates contained in this UEFI Secure Boot database.
Certificates is a link (`"@odata.id": URI`) to another resource.

### DatabaseId

Member of [SecureBootDatabase.v1\_0\_0.SecureBootDatabase](#securebootdatabase)

| | |
|---|---|
|Description|This property contains the name of the UEFI Secure Boot database.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

### Signatures

A link to the collection of signatures contained in this UEFI Secure Boot database.
Signatures is a link (`"@odata.id": URI`) to another resource.

### Actions

**SecureBootDatabase.ResetKeys**
Member of [SecureBootDatabase.v1\_0\_0.SecureBootDatabase](#securebootdatabase)
Action to perform reset of the Secure Boot Database Keys.

**Parameters:**

**ResetKeysType (string)**

This parameter specifies what type of reset action to perform.

|Value|Description|
|---|---|
|ResetAllKeysToDefault|Reset to default Secure Boot Database keys on next boot.|
|DeleteAllKeys|Delete all Secure Boot Database keys on next boot.|

## SecureBootDatabaseCollection

`@odata.type: "#SecureBootDatabaseCollection.SecureBootDatabaseCollection"`

The collection of SecureBootDatabase resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[SecureBootDatabase](../ilo6_other_resourcedefns152/#securebootdatabase)|

### Members (array)

Member of SecureBootDatabaseCollection.SecureBootDatabaseCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of SecureBootDatabaseCollection.SecureBootDatabaseCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|
|Format|uri-reference|

### Members@odata.count

Member of SecureBootDatabaseCollection.SecureBootDatabaseCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.10|

## SerialInterface

`@odata.type: "#SerialInterface.v1_1_7.SerialInterface"`

This is the schema definition for the Serial Interface.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/serialinterfaces/{item}`|GET PATCH |

### BitRate

Member of [SerialInterface.v1\_1\_7.SerialInterface](#serialinterface)

| | |
|---|---|
|Description|The receive and transmit rate of data flow, typically in bits per second (bit/s), over the serial connection.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`9600`|A bit rate of 9600 bit/s.|
|`19200`|A bit rate of 19200 bit/s.|
|`38400`|A bit rate of 38400 bit/s.|
|`57600`|A bit rate of 57600 bit/s.|
|`115200`|A bit rate of 115200 bit/s.|

### InterfaceEnabled

Member of [SerialInterface.v1\_1\_7.SerialInterface](#serialinterface)

| | |
|---|---|
|Description|An indication of whether this interface is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

## SerialInterfaceCollection

`@odata.type: "#SerialInterfaceCollection.SerialInterfaceCollection"`

A Collection of SerialInterface resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/serialinterfaces`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[SerialInterface](../ilo6_other_resourcedefns152/#serialinterface)|

### Members (array)

Member of SerialInterfaceCollection.SerialInterfaceCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of SerialInterfaceCollection.SerialInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.40|
|Format|uri-reference|

### Members@odata.count

Member of SerialInterfaceCollection.SerialInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.40|

## Session

`@odata.type: "#Session.v1_0_0.Session"`

The Session resource describes a single connection (session) between a client and a Redfish service instance.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/sessionservice/sessions/{item}`|GET DELETE |

### Oem.Hpe.AccessTime

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|User session last-access time|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Oem.Hpe.LoginTime

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|User session login time|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Oem.Hpe.MySession

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|Indicates whether this is a session I own.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Privileges

**Oem.Hpe.Privileges.HostBIOSConfigPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host Bios Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.HostNICConfigPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host NIC Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.HostStorageConfigPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host Storage Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.LoginPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to log in to the management processor. All local accounts have the login privilege. This privilege is added automatically if it is not specified.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.RemoteConsolePriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to remotely access the host system Remote Console, including video, keyboard, and mouse control.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.SystemRecoveryConfigPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to manage the critical recovery firmware images on the iLO Repository.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.UserConfigPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to add, edit, and delete local management processor user accounts. A user with this privilege can change privileges for all users.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.VirtualMediaPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to use the Virtual Media feature on the host system.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.VirtualPowerAndResetPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to power-cycle or reset the host system. These activities interrupt system availability. A user with this privilege can diagnose the system by using the Generate NMI to System button.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Privileges.iLOConfigPriv**
Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|This privilege enables a user to configure most management processor settings, including security settings, and to remotely update the management processor firmware. This privilege does not enable local user account administration.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.UserAccount

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|Login details of the user|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.UserDistinguishedName

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|LDAP user is identified by its distinguished name (DN).|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.UserExpires

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|User session expire time|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Oem.Hpe.UserIP

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|IP address of the user|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.UserTag

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|Session source|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|User type|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

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

Member of [Session.v1\_0\_0.Session](#session)

| | |
|---|---|
|Description|Name to use to log in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

## SessionCollection

`@odata.type: "#SessionCollection.SessionCollection"`

A Collection of Session resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/sessionservice/sessions`|GET POST |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Oem/Hpe/Links/MySession`|[Session](../ilo6_other_resourcedefns152/#session)|
|`Members[]`|[Session](../ilo6_other_resourcedefns152/#session)|

### Members (array)

Member of SessionCollection.SessionCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of SessionCollection.SessionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of SessionCollection.SessionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## SessionService

`@odata.type: "#SessionService.v1_0_0.SessionService"`

The SessionService resource describes the BMC Redfish Session Service.  It represents the properties for the service itself and has links to the actual list of sessions.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/sessionservice`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Sessions`|Collection of [Session](../ilo6_other_resourcedefns152/#sessioncollection)|

### ServiceEnabled

Member of [SessionService.v1\_0\_0.SessionService](#sessionservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### SessionTimeout

Member of [SessionService.v1\_0\_0.SessionService](#sessionservice)

| | |
|---|---|
|Description|This is the number of seconds of inactivity that a session may have before the session service closes the session due to inactivity. Here the value 0 means no timeout or infinite timeout.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Sessions

This property references a Collection resource of Sessions.
Sessions is a link (`"@odata.id": URI`) to another resource.

### Status

Member of [SessionService.v1\_0\_0.SessionService](#sessionservice)
See the Redfish standard schema and specification for information on common Status object.

## Signature

`@odata.type: "#Signature.v1_0_2.Signature"`

The Signature schema describes a signature or a hash.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/signatures/{item}`|GET DELETE |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbdefault/signatures/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/signatures/{item}`|GET DELETE|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/signatures/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/signatures/{item}`|GET DELETE|
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/signatures/{item}`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/signatures/{item}`|GET DELETE |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/signatures/{item}`|GET |

### SignatureString

Member of [Signature.v1\_0\_2.Signature](#signature)

| | |
|---|---|
|Description|The string for the signature.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.10|

### SignatureType

Member of [Signature.v1\_0\_2.Signature](#signature)

| | |
|---|---|
|Description|The format of the signature.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.10|

### SignatureTypeRegistry

Member of [Signature.v1\_0\_2.Signature](#signature)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO6 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`UEFI`|A signature defined in the UEFI Specification.|

### UefiSignatureOwner

Member of [Signature.v1\_0\_2.Signature](#signature)

| | |
|---|---|
|Description|The UEFI signature owner for this signature.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.10|

## SignatureCollection

`@odata.type: "#SignatureCollection.SignatureCollection"`

The collection of Signature resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/secureBoot/securebootdatabases/dbdefault/signatures`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/db/signatures`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbr/signatures`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbrdefault/signatures`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbt/signatures`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbtdefault/signatures`|GET |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbx/signatures`|GET POST |
|`/redfish/v1/systems/{item}/secureboot/securebootdatabases/dbxdefault/signatures`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Signature](../ilo6_other_resourcedefns152/#signature)|

### Members (array)

Member of SignatureCollection.SignatureCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of SignatureCollection.SignatureCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|
|Format|uri-reference|

### Members@odata.count

Member of SignatureCollection.SignatureCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.10|

## SoftwareInventory

`@odata.type: "#SoftwareInventory.v1_2_0.SoftwareInventory"`

The SoftwareInventory resource describes the inventory of software or firmware components.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/firmwareinventory/{item}`|GET |
|`/redfish/v1/updateservice/softwareinventory/{item}`|GET |

### Manufacturer

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|The manufacturer or producer of this software.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.DeviceClass

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|DeviceType GUID rendered by iLO for certain items iLO knows how to flash, and omitted for all other items.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.DeviceContext

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|Friendly text string - same as 'Location' in fw inventory - omitted if not available.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.DeviceInstance

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|UEFI Device Path if a PCI Device - omitted otherwise.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Targets (array)

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

`Targets` is an array containing elements of:

**Targets[{item}]**
Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|A GUID indicating iLO's knowledge of a possible correlation GUIDs vs. components.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.Version

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|NVIDIA CEC Firmware version|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.30|

### RelatedItem (array)

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

`RelatedItem` is an array containing elements of:

**RelatedItem[{item}].@odata.id**
Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### RelatedItem@odata.count

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|The number of items in a collection.|
|Type|number|
|Read Only|True|
|Added|iLO6 1.05|

### SoftwareId

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|The implementation-specific label that identifies this software.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)
See the Redfish standard schema and specification for information on common Status object.

### Updateable

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|This is true if the item is updatable.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### Version

Member of [SoftwareInventory.v1\_2\_0.SoftwareInventory](#softwareinventory)

| | |
|---|---|
|Description|same as 'VersionString' in existing FwSwVersionInventory|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

## SoftwareInventoryCollection

`@odata.type: "#SoftwareInventoryCollection.SoftwareInventoryCollection"`

A Collection of SoftwareInventory resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice/firmwareinventory`|GET |
|`/redfish/v1/updateservice/softwareinventory`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[SoftwareInventory](../ilo6_other_resourcedefns152/#softwareinventory)|

### Members (array)

Member of SoftwareInventoryCollection.SoftwareInventoryCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of SoftwareInventoryCollection.SoftwareInventoryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of SoftwareInventoryCollection.SoftwareInventoryCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## Task

`@odata.type: "#Task.v1_3_0.Task"`

The Task resource describes a specific Task scheduled by or being executed by a Redfish service's Task Service.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/taskservice/tasks/{item}`|GET |

### EndTime

Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|The date-time stamp that the task was last completed.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Messages (array)

Member of [Task.v1\_3\_0.Task](#task)

`Messages` is an array containing elements of:

**Messages[{item}].Message**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|This is the human readable message, if provided.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Messages[{item}].MessageArgs (array)**
Member of [Task.v1\_3\_0.Task](#task)

`MessageArgs` is an array containing elements of:

**MessageArgs[{item}]**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Messages[{item}].MessageId**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|This is the key for this message which can be used to look up the message in a message registry.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Messages[{item}].RelatedProperties (array)**
Member of [Task.v1\_3\_0.Task](#task)

`RelatedProperties` is an array containing elements of:

**RelatedProperties[{item}]**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Messages[{item}].Resolution**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|Used to provide suggestions on how to resolve the situation that caused the error.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Messages[{item}].Severity**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|This is the severity of the event.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|Normal|
|`Warning`|A condition exists that requires attention|
|`Critical`|A critical condition exists that requires immediate attention|

### Payload

**Payload.HttpHeaders (array)**
Member of [Task.v1\_3\_0.Task](#task)

`HttpHeaders` is an array containing elements of:

**HttpHeaders[{item}]**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Payload.HttpOperation**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|The HTTP operation to perform to execute this Task.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Payload.JsonBody**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|This property contains the JSON payload to use in the execution of this Task.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Payload.TargetUri**
Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|The URI of the target for this task.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### StartTime

Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|The date-time stamp that the task was last started.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### TaskMonitor

Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|The URI of the Task Monitor for this task.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### TaskState

Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|The state of the task.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`New`|A new task.|
|`Starting`|Task is starting.|
|`Running`|Task is running normally.|
|`Suspended`|Task has been suspended.|
|`Interrupted`|Task has been interrupted.|
|`Pending`|Task is pending and has not started.|
|`Stopping`|Task is in the process of stopping.|
|`Completed`|Task has completed.|
|`Killed`|Task was terminated.|
|`Exception`|Task has stopped due to an exception condition.|
|`Service`|Task is running as a service.|

### TaskStatus

Member of [Task.v1\_3\_0.Task](#task)

| | |
|---|---|
|Description|This is the completion status of the task.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|Normal.|
|`Warning`|A condition exists that requires attention.|
|`Critical`|A critical condition exists that requires immediate attention.|

## TaskCollection

`@odata.type: "#TaskCollection.TaskCollection"`

A Collection of Task resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/taskservice/tasks`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Task](../ilo6_other_resourcedefns152/#task)|

### Members (array)

Member of TaskCollection.TaskCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of TaskCollection.TaskCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of TaskCollection.TaskCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## TaskService

`@odata.type: "#TaskService.v1_1_1.TaskService"`

The TaskService resource describes the Task service. It represents the properties for the service itself and has links to the actual list of tasks.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/taskservice`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Tasks`|Collection of [Task](../ilo6_other_resourcedefns152/#taskcollection)|

### CompletedTaskOverWritePolicy

Member of [TaskService.v1\_1\_1.TaskService](#taskservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Manual`|Completed tasks are not automatically overwritten.|
|`Oldest`|Oldest completed tasks are overwritten.|

### DateTime

Member of [TaskService.v1\_1\_1.TaskService](#taskservice)

| | |
|---|---|
|Description|The current DateTime (with offset) setting that the task service is using.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### LifeCycleEventOnTaskStateChange

Member of [TaskService.v1\_1\_1.TaskService](#taskservice)

| | |
|---|---|
|Description|Send an Event upon Task State Change.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### ServiceEnabled

Member of [TaskService.v1\_1\_1.TaskService](#taskservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [TaskService.v1\_1\_1.TaskService](#taskservice)
See the Redfish standard schema and specification for information on common Status object.

### Tasks

This property references a resource of type Collection with a MemberType of TaskCollection.
Tasks is a link (`"@odata.id": URI`) to another resource.

## TelemetryService

`@odata.type: "#TelemetryService.v1_0_0.TelemetryService"`

The TelemetryService resource describes the Metrics Service.

### Telemetry not supported on AMD platforms

Telemetry Service is supported only on Intel platform. On AMD systems, performing `GET` on `/redfish/v1/TelemetryService` will return 400 Error Operation not supported.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice`|GET PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`MetricReports`|Collection of [MetricReport](../ilo6_other_resourcedefns152/#metricreportcollection)|
|`MetricReportDefinitions`|Collection of [MetricDefinition](../ilo6_other_resourcedefns152/#metricdefinitioncollection)|
|`Triggers`|Collection of [Triggers](../ilo6_other_resourcedefns152/#triggerscollection)|

### MaxReports

Member of [TelemetryService.v1\_0\_0.TelemetryService](#telemetryservice)

| | |
|---|---|
|Description|The maximum number of metric reports supported by this service.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

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

Member of [TelemetryService.v1\_0\_0.TelemetryService](#telemetryservice)

| | |
|---|---|
|Description|The minimum time interval between collections supported by this service.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Status

Member of [TelemetryService.v1\_0\_0.TelemetryService](#telemetryservice)
See the Redfish standard schema and specification for information on common Status object.

### SupportedCollectionFunctions (array)

Member of [TelemetryService.v1\_0\_0.TelemetryService](#telemetryservice)

`SupportedCollectionFunctions` is an array containing elements of:

**SupportedCollectionFunctions[{item}]**
Member of [TelemetryService.v1\_0\_0.TelemetryService](#telemetryservice)

| | |
|---|---|
|Description|An operation to perform over the sample.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Average`|An averaging function.|
|`Maximum`|A maximum function.|
|`Minimum`|A minimum function.|
|`Summation`|A summation function.|

### Triggers

A link to the collection of Triggers, which apply to metrics.
Triggers is a link (`"@odata.id": URI`) to another resource.

## Thermal

`@odata.type: "#Thermal.v1_7_1.Thermal"`

The Thermal resource describes the system thermal metrics. It represents the properties for temperature and cooling.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/chassis/{item}/thermal`|GET POST PATCH |

### Fans (array)

Member of [Thermal.v1\_7\_1.Thermal](#thermal)

`Fans` is an array containing elements of:

**Fans[{item}].@odata.id**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**Fans[{item}].CorrelatableID**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The CorrelatableID for this fan.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].LowerThresholdCritical**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Below normal range but not yet fatal.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].LowerThresholdFatal**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Below normal range and is fatal.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].LowerThresholdNonCritical**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Below normal range.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].MaximumValue**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Maximum value for CurrentReading.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].MemberId**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|This is the identifier for the member within the collection.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].MinimumValue**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Minimum value for CurrentReading.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].Oem.Hpe.HotPluggable**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Indicates if the fan can be replaced while server is running.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].Oem.Hpe.IsLiquidCooling**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Indicates that the device is Liquid cooling device or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].Oem.Hpe.Location**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Indicates the component (i.e. CPU, Memory, and Storage) that the fan is being used to cool.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`System`|
|`System Board`|
|`I/O Board`|
|`CPU`|
|`Memory`|
|`Storage`|
|`Removable Media`|
|`Power Supply`|
|`Ambient`|
|`Chassis`|
|`Bridge Board`|
|`Exhaust`|
|`Processor Bay`|
|`IO Bay`|
|`Blade Slot`|
|`Virtual`|

**Fans[{item}].Oem.Hpe.Redundant**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Indicates if the fan is in a redundant configuration.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].PhysicalContext**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Room`|The room|
|`Intake`|The intake point of the chassis|
|`Exhaust`|The exhaust point of the chassis|
|`Front`|The front of the chassis|
|`Back`|The back of the chassis|
|`Upper`|The upper portion of the chassis|
|`Lower`|The lower portion of the chassis|
|`CPU`|A Processor (CPU)|
|`GPU`|A Graphics Processor (GPU)|
|`Backplane`|A backplane within the chassis|
|`SystemBoard`|The system board (PCB)|
|`PowerSupply`|A power supply|
|`VoltageRegulator`|A voltage regulator device|
|`StorageDevice`|A storage device|
|`NetworkingDevice`|A networking device|
|`ComputeBay`|Within a compute bay|
|`StorageBay`|Within a storage bay|
|`NetworkBay`|Within a networking bay|
|`ExpansionBay`|Within an expansion bay|
|`PowerSupplyBay`|Within a power supply bay|

**Fans[{item}].Reading**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The current speed of the fan.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].ReadingUnits**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Units for the CurrentReading.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|
|---|
|`Null`|
|`Percent`|

**Fans[{item}].Status**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)
See the Redfish standard schema and specification for information on common Status object.

**Fans[{item}].UpperThresholdCritical**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Above normal range but not yet fatal.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].UpperThresholdFatal**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Above normal range and is fatal.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Fans[{item}].UpperThresholdNonCritical**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Above normal range.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.FanPercentAdjust

Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|System-wide setting for fan +/- percentage adjustment.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.FanPercentMinimum

Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|System-wide setting for fan speed minimum percentage.|
|Type|integer|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.ThermalConfiguration

Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The value of this property selects the fan cooling method for the system.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`OptimalCooling`|Provides the most efficient solution by configuring fan speeds to the minimum required to provide adequate cooling|
|`IncreasedCooling`|Operates fans at a higher speed.|
|`MaximumCooling`|Provides the maximum cooling available for the system.|
|`EnhancedCooling`|Provides additional cooling to the processors, which can improve performance.|
|`AcousticMode`|Edgeline-only option. Prioritizes minimizing noise from the enclosure.|

### Status

Member of [Thermal.v1\_7\_1.Thermal](#thermal)
See the Redfish standard schema and specification for information on common Status object.

### Temperatures (array)

Member of [Thermal.v1\_7\_1.Thermal](#thermal)

`Temperatures` is an array containing elements of:

**Temperatures[{item}].@odata.id**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**Temperatures[{item}].CorrelatableID**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The CorrelatableID for this temperature sensor.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].LowerThresholdCritical**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Below normal range but not yet fatal.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].LowerThresholdFatal**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Below normal range and is fatal.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].LowerThresholdNonCritical**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Below normal range.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].MaximumValue**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Maximum value for CurrentReading.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].MemberId**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|This is the identifier for the member within the collection.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].MinimumValue**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Minimum value for CurrentReading.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].Oem.Hpe.CriticalTempUserThreshold**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|User provided temperature threshold value for the sensor that results in a critical alert.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].Oem.Hpe.LocationXmm**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The location of the sensor, in millimeters, along the X axis from the logical reference point.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].Oem.Hpe.LocationYmm**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The location of the sensor, in millimeters, along the Y axis from the logical reference point.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].Oem.Hpe.LocationZmm**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The location of the sensor, in millimeters, along the Z axis from the logical reference point.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].Oem.Hpe.MainSensorName**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Sensor name of main temperature sensor that has atleast one sub sensor|
|Type|string|
|Read Only|True|
|Added|iLO6 1.20|

**Temperatures[{item}].Oem.Hpe.WarningTempUserThreshold**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|User provided temperature threshold value for the sensor that results in a warning alert.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].PhysicalContext**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Room`|The room.|
|`Intake`|The air intake point or points or region of the chassis.|
|`Exhaust`|The air exhaust point or points or region of the chassis.|
|`LiquidInlet`|The liquid inlet point of the chassis.|
|`LiquidOutlet`|The liquid outlet point of the chassis.|
|`Front`|The front of the chassis.|
|`Back`|The back of the chassis.|
|`Upper`|The upper portion of the chassis.|
|`Lower`|The lower portion of the chassis.|
|`CPU`|A processor (CPU).|
|`CPUSubsystem`|The entire processor (CPU) subsystem.|
|`GPU`|A graphics processor (GPU).|
|`GPUSubsystem`|The entire graphics processor (GPU) subsystem.|
|`FPGA`|An FPGA.|
|`Accelerator`|An accelerator.|
|`ASIC`|An ASIC device, such as a networking chip or chipset component.|
|`Backplane`|A backplane within the chassis.|
|`SystemBoard`|The system board (PCB).|
|`PowerSupply`|A power supply.|
|`PowerSubsystem`|The entire power subsystem.|
|`VoltageRegulator`|A voltage regulator device.|
|`Rectifier`|A rectifier device.|
|`StorageDevice`|A storage device.|
|`NetworkingDevice`|A networking device.|
|`ComputeBay`|Within a compute bay.|
|`StorageBay`|Within a storage bay.|
|`NetworkBay`|Within a networking bay.|
|`ExpansionBay`|Within an expansion bay.|
|`PowerSupplyBay`|Within a power supply bay.|
|`Memory`|A memory device.|
|`MemorySubsystem`|The entire memory subsystem.|
|`Chassis`|The entire chassis.|
|`Fan`|A fan.|
|`CoolingSubsystem`|The entire cooling, or air and liquid, subsystem.|
|`Motor`|A motor.|
|`Transformer`|A transformer.|
|`ACUtilityInput`|An AC utility input.|
|`ACStaticBypassInput`|An AC static bypass input.|
|`ACMaintenanceBypassInput`|An AC maintenance bypass input.|
|`DCBus`|A DC bus.|
|`ACOutput`|An AC output.|
|`ACInput`|An AC input.|
|`TrustedModule`|A trusted module.|
|`Board`|A circuit board.|
|`Transceiver`|A transceiver.|
|`Battery`|A battery.|
|`Pump`|A pump.|

**Temperatures[{item}].ReadingCelsius**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The current reading of the temperature sensor.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].SensorNumber**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|A numerical identifier to represent the temperature sensor.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].Status**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)
See the Redfish standard schema and specification for information on common Status object.

**Temperatures[{item}].UpperThresholdCritical**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Above normal range but not yet fatal.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].UpperThresholdFatal**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|Above normal range and is fatal.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

**Temperatures[{item}].UpperThresholdNonCritical**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)

| | |
|---|---|
|Description|The noncritical temperature threshold.|
|Type|number or null|
|Read Only|True|
|Added|iLO6 1.05|

### Actions

**HpeThermalExt.SetUserTempThreshold**
Member of [Thermal.v1\_7\_1.Thermal](#thermal)
The action to set a user defined threshold for a PCIe slot temperature sensor.

**Parameters:**

**AlertType (string)**

Alert type thrown when user defined temperature threshold is exceeded.

|Value|Description|
|---|---|
|Critical|Generate a critical alert when user threshold exceeded.|
|Warning|Generate a warning alert when user threshold exceeded.|

**SensorNumber (integer)**

Sensor number of the sensor to be monitored.

**ThresholdValue (integer)**

Temperature thershold that once passed will issue an alert.

## Triggers

`@odata.type: "#Triggers.v1_0_0.Triggers"`

The Triggers resource describes the a metric trigger, which apply to metrics.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice/triggers/{item}`|GET PATCH |

### MetricProperties (array)

Member of [Triggers.v1\_0\_0.Triggers](#triggers)

`MetricProperties` is an array containing elements of:

**MetricProperties[{item}]**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### MetricType

Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|Specifies the type of metric for which the trigger is configured.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Numeric`|The trigger is for numeric sensor.|
|`Discrete`|The trigger is for a discrete sensor.|

### NumericThresholds

**NumericThresholds.LowerCritical**
**NumericThresholds.LowerCritical.Activation**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Increasing`|Value increases above the threshold.|
|`Decreasing`|Value decreases below the threshold.|
|`Either`|Value crosses the threshold in either direction.|

**NumericThresholds.LowerCritical.DwellTime**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**NumericThresholds.LowerCritical.Reading**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

**NumericThresholds.LowerWarning**
**NumericThresholds.LowerWarning.Activation**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Increasing`|Value increases above the threshold.|
|`Decreasing`|Value decreases below the threshold.|
|`Either`|Value crosses the threshold in either direction.|

**NumericThresholds.LowerWarning.DwellTime**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**NumericThresholds.LowerWarning.Reading**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

**NumericThresholds.UpperCritical**
**NumericThresholds.UpperCritical.Activation**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Increasing`|Value increases above the threshold.|
|`Decreasing`|Value decreases below the threshold.|
|`Either`|Value crosses the threshold in either direction.|

**NumericThresholds.UpperCritical.DwellTime**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**NumericThresholds.UpperCritical.Reading**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

**NumericThresholds.UpperWarning**
**NumericThresholds.UpperWarning.Activation**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Increasing`|Value increases above the threshold.|
|`Decreasing`|Value decreases below the threshold.|
|`Either`|Value crosses the threshold in either direction.|

**NumericThresholds.UpperWarning.DwellTime**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|

**NumericThresholds.UpperWarning.Reading**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO6 1.05|

### Status

Member of [Triggers.v1\_0\_0.Triggers](#triggers)
See the Redfish standard schema and specification for information on common Status object.

### TriggerActions (array)

Member of [Triggers.v1\_0\_0.Triggers](#triggers)

`TriggerActions` is an array containing elements of:

**TriggerActions[{item}]**
Member of [Triggers.v1\_0\_0.Triggers](#triggers)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`LogToLogService`|Upon a trigger, record in a log.|
|`RedfishEvent`|Upon a trigger, send a Redfish Event message of type MetricReport.|

## TriggersCollection

`@odata.type: "#TriggersCollection.TriggersCollection"`

A Collection of Triggers resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/telemetryservice/triggers`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[Triggers](../ilo6_other_resourcedefns152/#triggers)|

### Members (array)

Member of TriggersCollection.TriggersCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of TriggersCollection.TriggersCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of TriggersCollection.TriggersCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

## UpdateService

`@odata.type: "#UpdateService.v1_2_1.UpdateService"`

The UpdateService resource describes the Update Service. It represents the properties for the service itself and has links to collections of firmware and software inventory.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/updateservice`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Oem/Hpe/InstallSets`|Collection of [HpeComponentInstallSet](../ilo6_hpe_resourcedefns152/#hpecomponentinstallsetcollection)|
|`Oem/Hpe/ComponentRepository`|Collection of [HpeComponent](../ilo6_hpe_resourcedefns152/#hpecomponentcollection)|
|`FirmwareInventory`|Collection of [SoftwareInventory](../ilo6_other_resourcedefns152/#softwareinventorycollection)|
|`SoftwareInventory`|Collection of [SoftwareInventory](../ilo6_other_resourcedefns152/#softwareinventorycollection)|
|`Oem/Hpe/UpdateTaskQueue`|Collection of [HpeComponentUpdateTask](#hpecomponentupdatetask)|

### FirmwareInventory

Link to Firmware Inventory.
FirmwareInventory is a link (`"@odata.id": URI`) to another resource.

### HttpPushUri

Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|The URI to which a client may POST an update image.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Oem.Hpe.Accept3rdPartyFirmware

Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Enable or disable support for 3rd party firmware update packages.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.BundleUpdateReport

Link to the Bundle Update report.
BundleUpdateReport is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.Capabilities

**Oem.Hpe.Capabilities.BundleDowngradeSupport**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Indicates whether iLO supports downgrade capability for cloud based updates.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.10|

**Oem.Hpe.Capabilities.COMBootToUefiShellSupport**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Indicates whether iLO supports booting to Uefi shell for cloud based updates.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.40|

**Oem.Hpe.Capabilities.COMVCSupport**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Indicates whether iLO supports pending reset for bundle update.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.40|

**Oem.Hpe.Capabilities.OfflineRuntimeBundleUpdate**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Indicates whether iLO supports offline type D installation.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`ProductionMode`|iLO supports offline type D installation in production security state only.|
|`ProductionAndHighSecurityMode`|iLO supports offline type D installation in Production and High security state only.|
|`AllModes`|iLO supports offline type D installation in all security states viz, Production, High security, FIPS and CNSA.|

**Oem.Hpe.Capabilities.PLDMFirmwareUpdate**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Indicates whether iLO supports PLDM firmware updates.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Capabilities.UpdateFWPKG**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Indicates whether iLO supports FWPKG 2.0 firmware images.|
|Type|boolean|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.ComponentRepository

Link to the Component Repository.
ComponentRepository is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.CurrentTime

Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|ISO 8601 Redfish-style time string of the current iLO time (the reference for all scheduling)|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

### Oem.Hpe.DowngradePolicy

Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Can be used to restrict the firmware downgrade.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`AllowDowngrade`|Downgrading firmware is allowed.|
|`RecoveryDowngrade`|Downgrading firmware is allowed by a user with the Recovery Set privilege.|
|`NoDowngrade`|Downgrading firmware is not allowed.  This is a permanent setting and cannot be undone.|

### Oem.Hpe.FirmwareIntegrity

**Oem.Hpe.FirmwareIntegrity.EnableBackgroundScan**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Enables or disables background scan of critical firmware.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

**Oem.Hpe.FirmwareIntegrity.LastFailedImageUri**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|This is a link to the binary image of the firmware that failed an integrity check and is intended for diagnostic purposes.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

**Oem.Hpe.FirmwareIntegrity.LastScanResult**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|The firmware integrity scan engine status.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`OK`|The last firmware integrity scan completed without finding any issues.|
|`Repaired`|The last firmware integrity scan successfully repaired an issue.  Refer to the event log for details.|
|`Failure`|The last firmware integrity scan failed to complete or repair an issue.  Refer to the event log for details.|
|`Stopped`|The last firmware integrity scan was stopped prior to completion.  Refer to the event log for details.|

**Oem.Hpe.FirmwareIntegrity.LastScanTime**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|The time stamp of the last firmware integrity scan.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|
|Format|date-time|

**Oem.Hpe.FirmwareIntegrity.OnIntegrityFailure**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Sets the policy for how the firmware integrity check handles integrity failures.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`LogOnly`|Log failures to the iLO event log but do not automatically attempt to repair.|
|`LogAndRepairAutomatically`|Log failures to the iLO event log and automatically attempt to repair.|

**Oem.Hpe.FirmwareIntegrity.ScanEveryDays**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Sets the interval between firmware integrity scans in 24 hour increments.|
|Type|integer or null|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.FlashProgressPercent

Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|This is the percent complete for an iLO flash operation.  It is only valid when State is Updating.|
|Type|integer or null|
|Read Only|True|
|Added|iLO6 1.05|

### Oem.Hpe.InstallSets

Link to the Install Sets collection.
InstallSets is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.InvalidImageRepository

Link to the Invalid Image Repository.
InvalidImageRepository is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.MaintenanceWindows

Link to the Maintenance Windows.
MaintenanceWindows is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.Result

**Oem.Hpe.Result.MessageArgs (array)**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

`MessageArgs` is an array containing elements of:

**MessageArgs[{item}]**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

**Oem.Hpe.Result.MessageId**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|The key for this message that can be used to look up the message in a message registry.|
|Type|string|
|Read Only|False|
|Added|iLO6 1.05|

### Oem.Hpe.State

Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|The update service is idle.|
|`Uploading`|The update service is receiving a new component.|
|`Verifying`|The update service is verifying the integrity of a new component.|
|`Writing`|The update service is writing a new component to the iLO Repository.|
|`Updating`|The update service is updating (flashing) firmware.|
|`Complete`|The update service has completed up upload or update operation.|
|`Error`|The upload service encountered an error.  See Result for detail.|

### Oem.Hpe.UpdateTaskQueue

Link to the Update Task Queue.
UpdateTaskQueue is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.UploadCurrentEtag

Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|client-supplied etag (during component upload) indicating to what UploadStatus is reporting upon.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

### ServiceEnabled

Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

| | |
|---|---|
|Description|Indicates if the Update Service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO6 1.05|

### SoftwareInventory

Link to Software Inventory.  This is only available when the Agentless Management Service is running.
SoftwareInventory is a link (`"@odata.id": URI`) to another resource.

### Actions

**UpdateService.SimpleUpdate**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

**Parameters:**

**Username (string)**

The username credential required for authentication to fetch image.

**TransferProtocol (string)**

|Value|Description|
|---|---|
|HTTP|Hypertext Transfer Protocol|
|HTTPS|HTTP Secure protocol|

**ImageURI (string)**

**Password (string)**

The password credential required for authentication to fetch image.

**Targets (array)**

Target Redfish URI

**HpeiLOUpdateServiceExt.DeleteInstallSets**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

**Parameters:**

**IncludeRecoverySet (boolean)**

**HpeiLOUpdateServiceExt.DeleteUnlockedComponents**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)
There are no parameters for this action.

**HpeiLOUpdateServiceExt.DeleteMaintenanceWindows**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)
There are no parameters for this action.

**HpeiLOUpdateServiceExt.AddFromUri**
Member of [UpdateService.v1\_2\_1.UpdateService](#updateservice)

**Parameters:**

**UpdateTarget (boolean)**

If true the action will flash the target.

**UpdateRecoverySet (boolean)**

If true the action will update the system recovery set if it contains a matching target after the repository is updated.

**UploadCurrentEtag (string)**

client-supplied etag (during component upload) indicating to what UploadStatus is reporting upon.

## VirtualMedia

`@odata.type: "#VirtualMedia.v1_3_0.VirtualMedia"`

The VirtualMedia resource describes the BMC virtual media feature.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/virtualmedia/{item}`|GET POST PATCH |

### ConnectedVia

Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

| | |
|---|---|
|Description|Specifies how the virtual media is connected to the server.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|
|`NotConnected`|No current connection.|
|`URI`|Connected to a URI location.|
|`Applet`|Connected to a client application.|

### Image

Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

| | |
|---|---|
|Description|The valid URI indicating the image that is mounted on this server. A null value indicates that no image exists.|
|Type|string or null|
|Read Only|False|
|Added|iLO6 1.05|
|Format|uri-reference|

### ImageName

Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

| | |
|---|---|
|Description|The name of the image that is mounted on this server. This is usually provided when a URL image is mounted through scripted virtual media.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Inserted

Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

| | |
|---|---|
|Description|Indicates whether the virtual media is mounted on the server.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### MediaTypes (array)

Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

`MediaTypes` is an array containing elements of:

**MediaTypes[{item}]**
Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

| | |
|---|---|
|Description|The array of supported media types for this connection.|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|

The following are the supported values:

|Value|Description|
|---|---|
|`CD`|A CD-ROM format (ISO) image.|
|`Floppy`|A floppy disk image.|
|`USBStick`|An emulation of a USB storage device.|
|`DVD`|A DVD-ROM format image.|

### Oem.Hpe.BootOnNextServerReset

Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

| | |
|---|---|
|Description|If set to true, the server will boot to this image on the next server reboot. The image will be ejected automatically on the second server reboot so that the server does not boot to this image twice.|
|Type|boolean|
|Read Only|False|
|Added|iLO6 1.05|

### TransferProtocolType

Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

| | |
|---|---|
|Description|Network Protocol to use with the image|
|Type|string|
|Read Only|True|
|Added|iLO6 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`CIFS`|Common Internet File System protocol.|
|`FTP`|File Transfer Protocol.|
|`SFTP`|Secure File Transfer Protocol.|
|`HTTP`|Hypertext Transfer Protocol.|
|`HTTPS`|HTTP Secure protocol.|
|`NFS`|Network File System protocol.|
|`SCP`|Secure File Copy protocol.|
|`TFTP`|Trivial File Transfer Protocol.|
|`OEM`|A protocol defined by the manufacturer.|

### WriteProtected

Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

| | |
|---|---|
|Description|Indicates whether the virtual media is protected against write operations.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO6 1.05|

### Actions

**VirtualMedia.InsertMedia**
Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

**Parameters:**

**TransferProtocolType (string)**

Network Protocol to use with the image

|Value|Description|
|---|---|
|FTP|File Transfer Protocol.|
|HTTP|Hypertext Transfer Protocol.|
|CIFS|Common Internet File System protocol.|
|HTTPS|HTTP Secure protocol.|
|SFTP|Secure File Transfer Protocol.|
|NFS|Network File System protocol.|
|OEM|A protocol defined by the manufacturer.|
|TFTP|Trivial File Transfer Protocol.|
|SCP|Secure File Copy protocol.|

**Image (string)**

The URI of the remote media to attach to the virtual media.

**WriteProtected (boolean)**

Indicates whether the virtual media is protected against write operations. If this parameter is not provided by the client, the service shall default this value to be true.

**Inserted (boolean)**

Indicates if the image is to be treated as inserted upon completion of the action. If this parameter is not provided by the client, the service shall default this value to be true.

**VirtualMedia.EjectMedia**
Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)
There are no parameters for this action.

**HpeiLOVirtualMedia.InsertVirtualMedia**
Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

**Parameters:**

**Certificate (string)**

A PEM encoded X509 certificate used to validate the https server.

**Image (string)**

A URL for an ISO, BIN, or IMG file locating the virtual media image.

**Intent (string)**

A text description of the reason for this action invocation.

**Signature (string)**

A RSA2048 SHA-256 signature validating the provided Intent (Base64 encoded).

**WriteProtected (boolean)**

Indicates whether the virtual media is protected against write operations.

**HpeiLOVirtualMedia.EjectVirtualMedia**
Member of [VirtualMedia.v1\_3\_0.VirtualMedia](#virtualmedia)

**Parameters:**

**Intent (string)**

A text description of the reason for this action invocation.

**Signature (string)**

A RSA2048 SHA-256 signature validating the provided Intent (Base64 encoded).

## VirtualMediaCollection

`@odata.type: "#VirtualMediaCollection.VirtualMediaCollection"`

A Collection of VirtualMedia resource instances.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/managers/{item}/virtualmedia`|GET |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`Members[]`|[VirtualMedia](../ilo6_other_resourcedefns152/#virtualmedia)|

### Members (array)

Member of VirtualMediaCollection.VirtualMediaCollection

`Members` is an array containing elements of:

**Members[{item}].@odata.id**
Member of VirtualMediaCollection.VirtualMediaCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO6 1.05|
|Format|uri-reference|

### Members@odata.count

Member of VirtualMediaCollection.VirtualMediaCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|
|Added|iLO6 1.05|

