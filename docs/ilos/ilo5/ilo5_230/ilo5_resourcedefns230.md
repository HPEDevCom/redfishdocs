---
seo:
  title: iLO 5 2.30 Redfish resource definitions
disableLastModified: false
toc:
  enable: true
  maxDepth: 3
---


# Resource Definitions (iLO 5 2.30)


For each resource type provided by the HPE ilO 5 Redfish service, find below the its description including the list of possible instances (endpoints), links to related other resources, described properties and many other details.

## AccountService.v1\_5\_0.AccountService

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
`/redfish/v1/accountservice/`|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Accounts`|Collection of [ManagerAccount](#manageraccountv1_3_0manageraccount)|
|`LDAP/Certificates`|CertificateCollection|
|`Oem/Hpe`|[AccountService](#accountservicev1_5_0accountservice)|
|`Oem/Hpe/DirectorySettings/LdapCaCertificates`|CertificateCollection|
|`Oem/Hpe/DirectoryTest`|[HpeDirectoryTest](#hpedirectorytestv1_0_0hpedirectorytest)|
|`Roles`|Collection of [Role](#rolev1_2_1role)|

### AccountLockoutCounterResetAfter
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The interval of time in seconds between the last failed login attempt and reset of the lockout threshold counter. This value must be less than or equal to AccountLockoutDuration. Reset sets the counter to zero.|
|Type|number|
|Read Only|True|
|Added|iLO 5 1.40|

### AccountLockoutCounterResetEnabled
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The value indicates whether the threshold counter will be reset after AccountLockoutCounterResetAfter expires.|
|Type|boolean|
|Read Only|True|

### AccountLockoutDuration
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The time in seconds an account is locked out. The value must be greater than or equal to the value of the AccountLockoutCounterResetAfter property. If set to 0, no lockout occurs.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

### AccountLockoutThreshold
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The number of failed login attempts allowed before a user account is locked for a specified duration. A value of 0 means it is never locked.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

### Accounts
This property references a resource of type Collection with a MemberType of ManagerAccount.
Accounts is a link (`"@odata.id": URI`) to another resource.

### ActiveDirectory
**ActiveDirectory.AccountProviderType**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property contains the type of external account provider this resource references.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`ActiveDirectoryService`|An external Active Directory Service.|n
**ActiveDirectory.Authentication**
**ActiveDirectory.Authentication.AuthenticationType**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property contains the type of authentication used to connect to the external account provider.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`UsernameAndPassword`|Username and password combination.|n
**ActiveDirectory.Authentication.Password**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property is used with a PATCH or PUT to write the password for the account service.  This property is null on a GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**ActiveDirectory.Authentication.Username**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property contains the distinguished name for the account service.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**ActiveDirectory.RemoteRoleMapping (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)
`RemoteRoleMapping` is an array containing elements of: 

**RemoteRoleMapping[{item}].LocalRole**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The name of the local role in which to map the remote user or group.|
|Type|string or null|
|Read Only|False|

**RemoteRoleMapping[{item}].RemoteGroup**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property is the name of the remote group (or in the case of a Redfish Service, remote role) that will be mapped to the local role referenced by this entity.|
|Type|string or null|
|Read Only|False|

**ActiveDirectory.ServiceAddresses (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)
`ServiceAddresses` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

**ActiveDirectory.ServiceEnabled**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### AuthFailureLoggingThreshold
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The number of authorization failures allowed before the failure attempt is logged to the manager log.|
|Type|number|
|Read Only|False|

### LDAP
**LDAP.AccountProviderType**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property contains the type of external account provider this resource references.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`ActiveDirectoryService`|An external Active Directory Service.|n|`LDAPService`|A generic external LDAP Service.|n
**LDAP.Authentication**
**LDAP.Authentication.AuthenticationType**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property contains the type of authentication used to connect to the external account provider.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`UsernameAndPassword`|Username and password combination.|n
**LDAP.Authentication.Password**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property is used with a PATCH or PUT to write the password for the account service.  This property is null on a GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**LDAP.Authentication.Username**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property contains the distinguished name for the account service.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**LDAP.Certificates**
A link to a collection of Certificates used for the external account service.
Certificates is a link (`"@odata.id": URI`) to another resource.

**LDAP.LDAPService**
**LDAP.LDAPService.SearchSettings**
**LDAP.LDAPService.SearchSettings.BaseDistinguishedNames (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)
`BaseDistinguishedNames` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

**LDAP.RemoteRoleMapping (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)
`RemoteRoleMapping` is an array containing elements of: 

**RemoteRoleMapping[{item}].LocalRole**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The name of the local role in which to map the remote user or group.|
|Type|string or null|
|Read Only|False|

**RemoteRoleMapping[{item}].RemoteGroup**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property is the name of the remote group (or in the case of a Redfish Service, remote role) that will be mapped to the local role referenced by this entity.|
|Type|string or null|
|Read Only|False|

**LDAP.ServiceAddresses (array)**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)
`ServiceAddresses` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

**LDAP.ServiceEnabled**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### LocalAccountAuth
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|Controls when this service will use the accounts defined withing this AccountService as part of authentication.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Authentication via accounts defined in this AccountService is enabled.|n|`Disabled`|Authentication via accounts defined in this AccountService is disabled.|n
### MaxPasswordLength
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The maximum password length for this service.|
|Type|number|
|Read Only|True|
|Added|iLO 5 1.40|

### MinPasswordLength
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The minimum password length for this account service.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.AuthFailureDelayTimeSeconds
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The time in seconds to delay for each failure after AuthFailuresBeforeDelay authentication attempts have failed.  Values of 2, 5, 10, and 30 seconds are valid.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`2`|
|`5`|
|`10`|
|`30`|

### Oem.Hpe.AuthFailureLoggingThreshold
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property enables you to view and configure logging criteria for failed authentications. A failed login log entry is recorded after the configured number of attempts. 0 = feature disabled; 1-3 and 5 are allowable values.|
|Type|integer|
|Read Only|False|

The following are the supported values:

|Value|
|---|
|`Null`|
|`1`|
|`2`|
|`3`|
|`5`|

### Oem.Hpe.AuthFailuresBeforeDelay
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The number of failed authentication attempts allowed before authentication is delayed by AuthFailureDelayTimeSeconds. Values of  0, 1, 3, and 5 are valid, with 0 indicating delay after every authentication failure.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Null`|
|`1`|
|`3`|
|`5`|

### Oem.Hpe.DefaultPassword
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The default password used to log in to the management processor when factory reset is performed.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.17|

### Oem.Hpe.DefaultUserName
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|The default name used to log in to the management processor when factory reset is performed.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.17|

### Oem.Hpe.DirectorySettings
**Oem.Hpe.DirectorySettings.LdapAuthenticationMode**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|Represents the LDAP authentication mode.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Disabled`|Directory authentication is disabled.|n|`DefaultSchema`|Directory Default schema or Schema-free option is selected.|n|`ExtendedSchema`|HPE Extended schema is selected.|n
**Oem.Hpe.DirectorySettings.LdapCaCertificateLoaded**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|Represents if the directory server CA certificate is loaded or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.DirectorySettings.LdapCaCertificates**
A link to a collection of Certificates.
LdapCaCertificates is a link (`"@odata.id": URI`) to another resource.

**Oem.Hpe.DirectorySettings.LdapServerPort**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|Represents the port number of the directory server.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.DirectoryTest
The value of this property shall be a reference to a resource of type HpeDirectoryTest.
DirectoryTest is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.EnforcePasswordComplexity
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|Enforce complexity rules when a user password is set or changed. Three of four character classes must be present; ASCII UPPERCASE, LOWERCASE, DIGITS, and Other|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.40|

### Oem.Hpe.KerberosSettings
**Oem.Hpe.KerberosSettings.KDCServerPort**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|Represents the port number of the KDC server.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.KerberosSettings.KerberosRealm**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|Represents the Realm of the KDC server.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

### Oem.Hpe.MinPasswordLength
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)

| | |
|---|---|
|Description|This property specifies the minimum number of characters allowed when a user password is set or changed. It must be a value from 0 to 39.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Roles
A link to a collection of Roles.
Roles is a link (`"@odata.id": URI`) to another resource.

### Actions

**HpeiLOAccountService.ImportKerberosKeytab**
Member of [AccountService.v1\_5\_0.AccountService](#accountservicev1\_5\_0accountservice)
Import the Kerberos keytab file.


**Parameters:**

**ImportUri (string)**

URI of the kerberos keytab file.
## Bios.v1\_0\_0.Bios

`@odata.type: "#Bios.v1_0_0.Bios"`

Bios contains properties surrounding a BIOS Attribute Registry (where the system-specific BIOS attributes are described) and the Actions needed to perform changes to BIOS settings, which typically require a system reset to apply.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/bios/`|GET |
`/redfish/v1/systems/{item}/bios/settings/`|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`@Redfish.Settings/SettingsObject`|[Bios](#biosv1_0_0bios)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](#hpebaseconfigsv2_0_0hpebaseconfigs)|
|`Oem/Hpe/Links/Boot`|[HpeServerBootSettings](#hpeserverbootsettingsv2_0_0hpeserverbootsettings)|
|`Oem/Hpe/Links/KmsConfig`|[HpeKmsConfig](#hpekmsconfigv1_0_0hpekmsconfig)|
|`Oem/Hpe/Links/Mappings`|[HpeBiosMapping](#hpebiosmappingv2_0_0hpebiosmapping)|
|`Oem/Hpe/Links/ServerConfigLock`|[HpeServerConfigLock](#hpeserverconfiglockv1_0_0hpeserverconfiglock)|
|`Oem/Hpe/Links/TlsConfig`|[HpeTlsConfig](#hpetlsconfigv1_0_0hpetlsconfig)|
|`Oem/Hpe/Links/iScsi`|[HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2_0_0hpeiscsisoftwareinitiator)|

### @Redfish.Settings
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)
See the Redfish standard schema and specification for information on common @Redfish properties.

### AttributeRegistry
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|The Resource ID of the Attribute Registry for the BIOS Attributes resource.|
|Type|string or null|
|Read Only|True|

### Attributes
**AcpiHpet (High Precision Event Timer (HPET) ACPI Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the High Precision Event Timer (HPET) table and device object in ACPI. When disabled, the HPET is not available to an operating system that supports the HPET through the industry standard ACPI name space.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AcpiRootBridgePxm (Memory Proximity Reporting for I/O)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When enabled, the System BIOS reports the proximity relationship between I/O devices and system memory to the operating system. Most operating systems can use this information to efficiently assign memory resources for devices, such as network controllers and storage devices. Additionally, certain I/O devices might not be able to take advantage of I/O handling benefits if their OS drivers are not properly optimized to support this feature. See your operating system and I/O device documentation for more details.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AcpiSlit (ACPI SLIT)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|The ACPI SLIT (System Locality Information Table) defines the relative access times between processors, memory subsystems, and I/O subsystems. Operating systems that support the SLIT can use this information to improve performance by allocating resources and workloads more efficiently.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AdjSecPrefetch (Adjacent Sector Prefetch)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the processor Adjacent Sector Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AdminEmail (Administrator E-mail Address)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter the server administrator's e-mail address.|
|Type|String|
|Read Only|False|

**AdminName (Administrator Name)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter the server administrator's name text.|
|Type|String|
|Read Only|False|

**AdminOtherInfo (Administrator Other Information)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter the server administrator's information text.|
|Type|String|
|Read Only|False|

**AdminPhone (Administrator Phone Number)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter the server administrator's phone number text.|
|Type|String|
|Read Only|False|

**AdvCrashDumpMode (Advanced Crash Dump Mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable the Advanced Crash Dump Mode. When enabled, the system will be configured to log additional debug information to the Active Health System logs when an unexpected system crash is experienced. This option should only be enabled when directed by qualified service personnel|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**AdvancedMemProtection (Advanced Memory Protection)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure additional memory protection with ECC (Error Checking and Correcting). Options and support vary per system.
Advanced ECC keeps all installed memory available for use while still protecting the system against all single-bit failures and certain multi-bit failures.
Online Spare Memory enables a system to automatically map out a group of memory that is detected to be at an increased risk of receiving uncorrected memory errors based on an advanced analysis of corrected memory errors. The mapped out memory is automatically replaced by a spare group of memory without interrupting the system.
Mirrored Memory provides the maximum protection against uncorrected memory errors that might otherwise result in a system failure.
Fault Tolerant Advanced Double Device Data Correction (ADDDC) enables the system to correct memory errors and continue to operate in cases of multiple DRAM device failures on a DIMM. This provides protection against uncorrectable memory errors beyond what is available with Advanced ECC.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```FastFaultTolerantADDDC```|Fault Tolerant Memory (ADDDC)|
|```AdvancedEcc```|Advanced ECC Support|
|```OnlineSpareAdvancedEcc```|Online Spare with Advanced ECC Support|
|```MirroredAdvancedEcc```|Mirrored Memory with Advanced ECC Support|

**ApplyDefaultNamespaces (Apply Default Namespaces)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable creation of a default namespaces on PMM configuration. Note: A configuration must be present or pending for this action to succeed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AsrStatus (ASR Status)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the Automatic Server Recovery option, which enables the system to automatically reboot if the server locks up.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AsrTimeoutMinutes (ASR Timeout)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Automatic Server Recovery is enabled, you can use this option to set the time to wait before rebooting the server in the event of an operating system crash or server lockup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Timeout10```|10 Minutes|
|```Timeout15```|15 Minutes|
|```Timeout20```|20 Minutes|
|```Timeout30```|30 Minutes|
|```Timeout5```|5 Minutes|

**AssetTagProtection (Asset Tag Protection)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to lock Asset Tag information. When set to lock, the Asset Tag is not erased if the default system settings are restored.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Locked```|Locked|
|```Unlocked```|Unlocked|

**AutoPowerOn (Automatic Power-On)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the server power state when AC power is applied to the system. 
Restore Last Power State returns the system to its previous power state when AC power is restored after an AC power loss. 
Note: This option is not available on all systems. 
Always Power On and Always Power Off causes the system to always return to the "on" and "off" state, respectively, whenever power is applied, even if the system is in the "off" state when power is lost.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AlwaysPowerOn```|Always Power On|
|```AlwaysPowerOff```|Always Power Off|
|```RestoreLastState```|Restore Last Power State|

**BootMode (Boot Mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select the boot mode of the system. Selecting UEFI Mode configures the system to boot Unified Extensible Firmware Interface (UEFI) compatible operating systems. Selecting Legacy BIOS Mode configures the system to boot traditional operating systems in Legacy BIOS compatibility mode. The operating system can only boot in the mode in which it is installed. The following options require booting in UEFI Mode: Secure Boot, IPv6 PXE Boot, boot > 2.2 TB Disks in AHCI SATA Mode, and Smart Array SW RAID.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Uefi```|UEFI Mode|
|```LegacyBios```|Legacy BIOS Mode|

**BootOrderPolicy (Boot Order Policy)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure how the system attempts to boot devices per the Boot Order list when no bootable device is found. If configured to 'Retry Boot Order Indefinitely,' the system continuously attempts to process the Boot Order list until a bootable device is found. If configured to 'Attempt Boot Order Once,' the system attempts to process all items in the Boot Order list once, and if unsuccessful, waits for user input to proceed. If configured for 'Reset After Failed Boot Attempt,' the system attempts to process all items in the Boot Order list once, and then reboots the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```RetryIndefinitely```|Retry Boot Order Indefinitely|
|```AttemptOnce```|Attempt Boot Order Once|
|```ResetAfterFailed```|Reset After Failed Boot Attempt|

**ChannelInterleaving (Channel Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to modify the level of interleaving for which the memory system is configured. Typically, higher levels of memory interleaving result in maximum performance. However, reducing the level of interleaving can result in power savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**CollabPowerControl (Collaborative Power Control)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|For operating systems that support the Processor Clocking Control (PCC) Interface, enabling this option enables the Operating System to request processor frequency changes even if the Power Regulator option on the server are configured for Dynamic Power Savings Mode. For Operating Systems that do not support the PCC Interface, or when the Power Regulator Mode is not configured for Dynamic Power Savings Mode, this option has no effect on system operation.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ConsistentDevNaming (Consistent Device Naming)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select the level of Consistent Device Naming. On supported operating systems, NIC ports are named based on their location in the system. CDN Support for LOMs Only names Embedded NICs and FlexibleLOMs. Existing NIC connections retain their names until reinstalled under the OS environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```LomsAndSlots```|CDN Support for LOMs and Slots|
|```LomsOnly```|CDN Support for LOMs Only|
|```Disabled```|Disabled|

**CoreBoosting (Core Boosting)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable the Core Boosting technology to increase processor performance on qualified processors. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**CustomPostMessage (Custom POST Message)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter a message to be displayed on POST screen during system startup. This feature limits POST screen messaging to 62 characters, special characters are also accepted.|
|Type|String|
|Read Only|False|

**DaylightSavingsTime (Daylight Savings Time)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option controls the Daylight Savings Time (DST) adjustment to the displayed local time.  If this option is disabled, the displayed local time will not be adjusted for DST.  If this option is enabled, the displayed local time will be advanced by one hour.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**DcuIpPrefetcher (DCU IP Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the processor DCU IP Prefetcher feature. In some cases, setting this option to disabled can improve performance. In most cases, the default value of enabled provides optimal performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**DcuStreamPrefetcher (DCU Stream Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the processor DCU Stream Prefetcher feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in your environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**Dhcpv4 (DHCPv4)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When enabled, this option enables obtaining the pre-boot network IPv4 configuration from a DHCP server. Individual settings are not available. When disabled, you must configure static IP address settings individually.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**DirectToUpi (Direct To UPI (D2K))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Direct To UPI (D2K)|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**DynamicPowerCapping (Dynamic Power Capping Functionality)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure when the System BIOS executes power calibration during the boot process. In Auto mode, calibration is run the first time the server is booted, and is then only run again when the server's hardware configuration changes, configuration settings change, or if the system determines a new calibration is necessary. When disabled, the calibration does not run, and Dynamic Power Capping is not supported. When enabled, the calibration is run on every boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbNicAspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**EmbNicEnable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**EmbNicLinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|

**EmbNicPCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbSas1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**EmbSas1Boot (Embedded SAS Controller 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order list.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order list.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**EmbSas1Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**EmbSas1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**EmbSas1PcieOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbSata1Aspm (SATA Power Management(SALP))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Aggressive Link Power Management(SALP).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**EmbSata1Enable (SATA Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable SATA devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**EmbSata1PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbSata2Aspm (SATA Power Management(SALP))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Aggressive Link Power Management(SALP).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**EmbSata2Enable (SATA Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable SATA devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**EmbSata2PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbVideoConnection (Embedded Video Connection)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When configured for Auto mode, the external video connection to the embedded video controller is automatically disabled to save power when a monitor is not attached. It is automatically enabled when a monitor is attached, including when the server is operating. When configured for Always Disabled, the external video connection to the embedded video controller is disabled, and a monitor connected to this port does not display except during system boot. This can be used for security reasons. When configured for Always Enabled, the external video connection to the embedded video controller is always enabled. This option is only required if a monitor is attached with a monitor detection that does not function properly (making AUTO mode not work properly). Note: This option does not affect Integrated Remote Console video. Also, if you press F9 or F11 during system boot, the configured video connector behavior is overridden, and the video console remains enabled. This lets you reconfigure the Embedded Video Connection option even if the video is disabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```AlwaysDisabled```|Always Disabled|
|```AlwaysEnabled```|Always Enabled|

**EmbeddedDiagnostics (Embedded Diagnostics)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Embedded Diagnostics functionality. If disabled, you cannot launch Embedded Diagnostics. Enable this option to use the Embedded Diagnostics functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbeddedSata (Embedded SATA Configuration)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Important: Smart Array SW RAID is not supported when Boot Mode is set to Legacy BIOS Mode. 

Use this option to configure the embedded chipset SATA controller. When selecting the Advanced Host Controller Interface (AHCI) or RAID (if supported), make sure the proper operating system drivers are used for proper operation.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Ahci```|SATA AHCI Support|
|```Raid```|Smart Array SW RAID Support|

**EmbeddedSerialPort (Embedded Serial Port)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to assign the logical COM port address and associated default resources to the selected physical serial port. The operating system can overwrite this setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Com1Irq4```|COM 1; IRQ4; I/O: 3F8h-3FFh|
|```Com2Irq3```|COM 2; IRQ3; I/O: 2F8h-2FFh|
|```Disabled```|Disabled|

**EmbeddedUefiShell (Embedded UEFI Shell)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Embedded UEFI Shell. When enabled, you can launch the Embedded UEFI Shell from the pre-boot environment. When enabled and the Boot Mode is configured for UEFI Mode, you can add the Embedded UEFI Shell to the UEFI Boot Order list  by selecting the option entitled 'Add Embedded UEFI Shell to Boot Order'. When disabled, the Embedded UEFI Shell is not available in the pre-boot environment, and you cannot add it to the UEFI Boot Order list. The Embedded UEFI Shell is a pre-boot command line environment that you can use for scripting and running UEFI applications. It provides CLI-based commands to configure the server, update the System BIOS and other firmware, and obtain system information and error logs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmsConsole (EMS Console)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the ACPI serial port settings, which include the ability to redirect the Windows Server Emergency Management console (EMS) through either the physical or virtual serial port.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Physical```|Physical Serial Port|
|```Virtual```|Virtual Serial Port|

**EnabledCoresPerProc (Enabled Cores per Processor)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option enables limiting the number of enabled processor cores per physical processor. You can set the number of enabled cores to a value supported by the physical processor. Setting the value to 0 or a value larger than the number of supported cores of the installed processor will result in all processor cores in the socket being enabled.|
|Type|Integer|
|Read Only|False|

**EnergyEfficientTurbo (Energy Efficient Turbo)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option controls whether the processor uses an energy efficiency based policy when engaging turbo range frequencies. This option is only applicable when Turbo Mode is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EnergyPerfBias (Energy/Performance Bias)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to configure several processor subsystems to optimize the performance and power usage of the processor. Balanced Performance provides optimum power efficiency, and is recommended for most environments. Maximum Performance Mode is recommended for environments that require the highest performance and lowest latency but are not sensitive to power consumption. Only use Power Savings Mode in environments that are power sensitive and can accept reduced performance.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```MaxPerf```|Maximum Performance|
|```BalancedPerf```|Balanced Performance|
|```BalancedPower```|Balanced Power|
|```PowerSavingsMode```|Power Savings Mode|

**EnhancedProcPerf (Enhanced Processor Performance)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable the Enhanced Processor Performance setting.  When enabled, this option will adjust the processor settings to a more aggressive setting that can result in improved performance, but may result in a higher power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**EraseUserDefaults (Erase User Defaults)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to erase the user defaults backup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```No```|No, Cancel|
|```Yes```|Yes, erase the current settings.|

**ExtendedAmbientTemp (Extended Ambient Temperature Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable the server to operate at higher ambient temperatures than normally supported. These options are only supported with specific hardware configurations. See your server documentation before configuring the server to enable extended ambient temperature support. Improper system operation or damage to hardware components can result from enabling these options in unsupported configurations. Selecting Enabled for 40c Ambient (ASHRAE 3) enables the server to operate in environments with ambient temperatures up to 40 degrees Celsius. Selecting Enabled for 45c Ambient (ASHRAE 4) enables the server to operate in environments with ambient temperatures up to 45 degrees Celsius. Not all servers support both 40c Ambient (ASHRAE 3) and 45c Ambient (ASHRAE 4).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```ASHRAE3```|Enabled for 40c Ambient (ASHRAE 3)|
|```ASHRAE4```|Enabled for 45c Ambient (ASHRAE 4)|

**ExtendedMemTest (Extended Memory Test)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When enabled, the system validates memory during the memory initialization process. If uncorrectable memory errors are detected, the memory is mapped out, and the failed DIMMs are logged to the Integrated Management Log (IML). Enabling this option can result in a significant increase in the server boot time.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**F11BootMenu (One-Time Boot Menu (F11 Prompt))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the POST One-Time Boot F11 Prompt. 
Note: When disabled, shell 'boot' command is not available for use.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**FCScanPolicy (Fibre Channel/FCoE Scan Policy)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to change the default Fibre Channel or FCoE policy for scanning for boot targets. When configured for Scan All Targets, each installed FC/FCoE adapter scans all available targets. When configured for Scan Configured Targets Only, the FC/FCoE adapters only scan targets that are preconfigured in the devices settings. This option overrides any individual device settings configured in the device-specific setup.This option is only supported in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Scan All Targets|
|```CardConfig```|Scan Configured Targets Only|

**FanFailPolicy (Fan Failure Policy)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure how the server reacts when fans fail, resulting in the server not having required fans in operation. When configured for "Shutdown/Halt on Critical Fan Failures," the server cannot boot or operate when it does not have required fans operating due to one or more fan failures.  When configured for "Allow Operation with Critical Fan Failures," the server can boot and operate if it does not have required fans operating due to one or more fan failures. It is recommended that you configure the Fan Failure Policy to the default state of "Shutdown/Halt on Critical Fan Failures." Operating without the required fans operating can result in damage to hardware components.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Shutdown```|Shutdown/Halt on Critical Fan Failures|
|```Allow```|Allow Operation with Critical Fan Failures|

**FanInstallReq (Fan Installation Requirements)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure how the server reacts when all required fans are not installed. When configured for Enable Messaging, the server displays messages and log events to the Integrated Management Log (IML) when required fans are not installed. The server can still boot and operate. When configured for Disable Messaging, the server does not display messages and log events when required fans are not installed. All indications that the server is operating without required fans are removed. It is recommended that you leave Fan Installation Requirements in the default state of Enable Messaging. Operating without the required fans can result in damage to hardware components.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```EnableMessaging```|Enable Messaging|
|```DisableMessaging```|Disable Messaging|

**FlexLom1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**FlexLom1Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**FlexLom1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**FlexLom1PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**HttpSupport (HTTP Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the UEFI HTTP(s) boot support when in UEFI Mode, and the 'Discover Shell Auto-Start Script using DHCP' option under 'Embedded UEFI Shell' settings.
When 'Auto' is selected, the system automatically adds HTTP(S) boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTP or HTTPS URLs provided by the DHCP server. Any other URLs provided by the DHCP server are ignored. 
When 'HTTP only' is selected, the system automatically adds HTTP boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTP URLs provided by the DHCP server, and to ignore any HTTPS or other URLs that are provided. 
When 'HTTPS only' is selected, the system automatically adds HTTPS boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTPS URLs provided by the DHCP server, and to ignore any HTTP or other URLs that are provided. 
To enable HTTPS boot either by selecting 'Auto' or 'HTTPS only', you must enroll the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
Note: This setting only affects the HTTP boot options added for the network ports, and the Discover Shell Auto-Start Script provided by the DHCP server. Other settings, such as Boot from URL, are not affected by this setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```HttpsOnly```|HTTPS only|
|```HttpOnly```|HTTP only|
|```Disabled```|Disabled|

**HwPrefetcher (HW Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the processor HW prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IODCConfiguration (IODC Configuration)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enable/Disable IODC (IO Direct Cache): Generate snoops instead of memory lookups, for remote InvItoM (IIO) and/or WCiLF (cores)|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```EnableforRemoteInvItoMHybridPush```|Enable for Remote InvItoM Hybrid Push|
|```InvItoMAllocFlow```|InvItoM AllocFlow|
|```InvItoMHybridAllocFlow```|InvItoM Hybrid AllocFlow|
|```EnableforRemoteInvItoMandRemoteWViLF```|Enable for Remote InvItoM and Remote WViLF|

**IntelDmiLinkFreq (Intel DMI Link Frequency)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to force the link speed between the processor and the southbridge to run at slower speeds to save power.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```DmiGen1```|Gen 1 Speed|
|```DmiGen2```|Gen 2 Speed|

**IntelNicDmaChannels (Intel NIC DMA Channels (IOAT))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select the Intel NIC DMA Channels support. This is a NIC acceleration option that only runs on Intel-based NICs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelPerfMonitoring (Intel Performance Monitoring Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option does not impact performance. When enabled, this option exposes certain chipset devices that can be used with the Intel Performance Monitoring Toolkit.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**IntelPriorityBaseFreq (Intel(R) Priority Based Frequency)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Intel(R) Priority Base Frequency (PBF) support is available on only select processor models.Processors with Prioritized Base Frequency support have unique configurations that support a higher base frequency for a select number of cores (high priority cores) while the remaining cores will have a lower base frequency (low priority cores). Enabling this setting will result in increasing the CPU base frequency for the high priority cores and decreasing the CPU base frequency for the low priority cores. Consult processor documentation for more information on priority core counts and frequency adjustments.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**IntelProcVtd (Intel(R) VT-d)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|If enabled, a hypervisor or operating system supporting this option can use hardware capabilities provided by Intel VT for Directed I/O. You can leave this set to enabled even if you are not using a hypervisor or an operating system that uses this option.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelSpeedSelect (Intel(R) Speed Select)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Intel(R) Speed Select is available on only certain processor models.Speed Select processors have unique configurations that support higher base frequencies with fewer enabled core counts. Changing this setting will result in increasing the CPU base frequency along with a reduction in number of available cores. Consult documentation for the installed processor model for more information and core/frequency mappings of each configuration.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Base```|Base|
|```Config1```|Config 1|
|```Config2```|Config 2|

**IntelTxt (Intel(R) TXT Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to modify Intel TXT support.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelUpiFreq (Intel UPI Link Frequency)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to set the UPI Link frequency to a lower speed. Running at a lower frequency can reduce power consumption, but can also affect system performance. You can only configure this option if two or more CPUs are present and the Workload Profile is set to custom.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```MinUpiSpeed```|Min UPI Speed|

**IntelUpiLinkEn (Intel UPI Link Enablement)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the UPI topology to use fewer links between processors, when available. Changing from the default can reduce UPI bandwidth performance in exchange for less power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SingleLink```|Single Link Operation|

**IntelUpiPowerManagement (Intel UPI Link Power Management)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to place the Quick Path Interconnect (UPI) links into a low power state when the links are not being used. This lowers power usage with minimal effect on performance. You can only configure this option if two or more CPUs are present and the Workload Profile is set to custom.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelligentProvisioning (Intelligent Provisioning (F10 Prompt))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Intelligent Provisioning functionality. When disabled, you are prevented from entering the Intelligent Provisioning environment by pressing F10 during server boot. You must set this option to enabled to use Intelligent Provisioning functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**InternalSDCardSlot (Internal SD Card Slot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Internal SD Card Slot. When set to disabled, the SD card slot is disabled, regardless of whether an SD Card is installed or not. The SD Card will not be visible in the pre-boot environment or under the operating system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**Ipv4Address (IPv4 Address)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4Gateway (IPv4 Gateway)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network gateway IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4PrimaryDNS (IPv4 Primary DNS)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Primary DNS Server IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4SecondaryDNS (IPv4 Secondary DNS)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Secondary DNS Server IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4SubnetMask (IPv4 Subnet Mask)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network subnet mask. Enter a static IP address using dotted-decimal notation (for example, 255.255.255.0). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6Address (IPv6 Address)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6ConfigPolicy (IPv6 Config Policy)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When set to Automatic, this option enables obtaining the pre-boot network IPv6 configuration automatically. Individual settings are not available. When set to Manual, you must configure static IP address settings individually.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Automatic```|Automatic|
|```Manual```|Manual|

**Ipv6Duid (IPv6 DHCP Unique Identifier)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the IPv6 DHCP Unique Identifier (DUID). If configured for Auto, the DUID is set using the Universal Unique Identifier (UUID) of the server, or using the DUID-LLT method if the server UUID is not available. If configured for DUID-LLT, the DUID is set based on the Link-layer Address Plus Time [DUID-LLT] method. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```DuidLlt```|DUID-LLT|

**Ipv6Gateway (IPv6 Gateway)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network gateway IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6PrimaryDNS (IPv6 Primary DNS)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Primary DNS Server IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6SecondaryDNS (IPv6 Secondary DNS)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Secondary DNS Server IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**LLCDeadLineAllocation (LLC Dead Line Allocation)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enable  - Opportunistically fill dead lines in LLC. Disable - Never fill dead lines in LLC.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**LlcPrefetch (LLC Prefetch)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the processor Last Level Cache (LLC) prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**LocalRemoteThreshold (Local/Remote Threshold)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Local/Remote Threshold setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Low```|Low|
|```Medium```|Medium|
|```High```|High|
|```Disabled```|Disabled|

**MaxMemBusFreqMHz (Maximum Memory Bus Frequency)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the memory system to run memory at a lower maximum speed than that supported by the installed processor and DIMM configuration. Setting this option to Auto configures the system to run memory at the maximum speed supported.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```MaxMemBusFreq2933```|2933 MHz|
|```MaxMemBusFreq2667```|2667 MHz|
|```MaxMemBusFreq2400```|2400 MHz|
|```MaxMemBusFreq2133```|2133 MHz|
|```MaxMemBusFreq1867```|1867 MHz|

**MaxPcieSpeed (Maximum PCI Express Speed)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|If a PCI Express device does not run properly at its optimal speed, lowering the speed at which the device is running can address this issue. This option enables you to lower the maximum PCI Express speed at which the server allows PCI Express devices to operate. You can also use it to address issues with problematic PCI Express devices. Setting this value to Maximum Supported configures the platform to run at the maximum speed supported by the platform or the PCIe device, whichever is lower.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```PerPortCtrl```|Per Port Control|
|```PcieGen1```|PCIe Generation 1.0|

**MemClearWarmReset (Memory Clear on Warm Reset)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure when memory is cleared on warm resets. When disabled, the contents of memory are only cleared on a warm reset if requested by the operating system. When enabled, memory is cleared on all reboots. Disabling this option can save boot time by skipping the clearing of memory on warm resets.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**MemFastTraining (Memory Fast Training)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option enables a boot time reduction by controlling when the BIOS bypasses the full memory training. When enabled, the server bypasses the full memory training during boot, and uses memory parameters determined on a previous boot to decrease boot time. Note that even when enabled, the BIOS performs a full memory training if the DIMM configuration or processor configuration changes, or if there is a change in any BIOS setting related to memory or processor configuration. When disabled, the server performs a full memory training on every server boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**MemMirrorMode (Memory Mirroring Mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select from the available Memory Mirroring modes. Full Mirror - reserves 50% of the total available memory for mirroring. Partial Mirror (20% above 4GB) - reserves 20% of the total available Memory above 4GB for Mirroring. Partial Mirror (10% above 4GB) - reserves 10% of the total available Memory above 4GB for Mirroring. Partial Mirror (Memory below 4GB) - depending on the memory configuration, sets up 2GB or 3GB of lower memory below 4GB for Mirroring. Partial Mirror (OS Configured) - sets up the system to configure Partial Mirroring at OS level. This option will be not active and grayed out unless Advanced Memory Protection is set to Mirrored Memory with Advanced ECC Support.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Full```|Full Mirror|
|```PartialOsConfig```|Partial Mirror (OS Configured)|
|```PartialFirst4GB```|Partial Mirror (Memory below 4GB)|
|```Partial10PercentAbove4GB```|Partial Mirror (10% above 4GB)|
|```Partial20PercentAbove4GB```|Partial Mirror (20% above 4GB)|

**MemPatrolScrubbing (Memory Patrol Scrubbing)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option corrects memory soft errors so that, over the length of the system runtime, the risk of producing multi-bit and uncorrectable errors is reduced.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**MemRefreshRate (Memory Refresh Rate)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option controls the refresh rate of the memory controller and might affect the performance and resiliency of the server memory. It is recommended that you leave this setting in the default state unless indicated in other documentation for this server.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Refreshx1```|1x Refresh|
|```Refreshx2```|2x Refresh|

**MemoryControllerInterleaving (Memory Controller Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the Memory Controller Interleaving option. When set to Auto, the system will automatically enable or disable memory controller interleaving based on the configuration of the system. When set to disabled, the user may force disable memory controller interleaving. In certain memory configurations, setting this option to disabled has showed a performance benefit across all memory in the system. It is recommended to leave this option to set to Auto.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**MemoryRemap (Memory Remap)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to remap memory that may have been previously disabled from the system due to a failure event, such as an uncorrectable memory error. The Remap All Memory Option causes the system to make all memory in the system available again on the next boot. The No Action option leaves any affected memory unavailable to the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```AllMemory```|All Memory|

**MinProcIdlePkgState (Minimum Processor Idle Power Package C-State)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|You can configure this option only if the Workload Profile is set to Custom. Use this option to select the lowest idle package power state (C-state) of the processor. The processor automatically transitions into package C-states based on the Core C-states in which cores on the processor have transitioned. The higher the package C-state, the lower the power usage of that idle package state. (Package C6 (retention) is the lowest power idle package state supported by the processor).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```C6Retention```|Package C6 (retention) State|
|```C6NonRetention```|Package C6 (non-retention) State|
|```NoState```|No Package State|

**MinProcIdlePower (Minimum Processor Idle Power Core C-State)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|You can only configure this option if Workload Profile is set to Custom. Use this option to select the lowest idle power state (C-state) of the processor that the operating system uses. The higher the C-state, the lower the power usage of that idle state. (C6 is the lowest power idle state supported by the processor).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```C6```|C6 State|
|```C1E```|C1E State|
|```NoCStates```|No C-states|

**MixedPowerSupplyReporting (Mixed Power Supply Reporting)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When enabled, the server logs a message that a mixed power supply configuration is present. When disabled, the server no longer logs messages that a mixed power supply configuration is present.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NetworkBootRetry (Network Boot Retry Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the Network Boot Retry Support. When enabled, the system BIOS attempts to boot the network device up to the number of times configured in the Network Boot Retry Count option before attempting to boot the next network device. This setting only takes effect when attempting to boot a network device from the F12 function key and one-time boot options.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NetworkBootRetryCount (Network Boot Retry Count)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the number of times the system BIOS attempts to boot a network device. The valid range is from 0 to 20.|
|Type|Integer|
|Read Only|False|

**NicBoot1 (Embedded NIC 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot10 (Embedded NIC 10 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot11 (Embedded NIC 11 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot12 (Embedded NIC 12 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot2 (Embedded NIC 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot3 (Embedded NIC 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot4 (Embedded NIC 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot5 (Embedded NIC 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot6 (Embedded NIC 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot7 (Embedded NIC 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot8 (Embedded NIC 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot9 (Embedded NIC 9 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NodeInterleaving (Node Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the NUMA architecture properties for the system. All operating system platforms support NUMA architectures. In most cases, optimum performance is obtained by disabling the Node Interleaving option. When this option is enabled, memory addresses are interleaved across the memory installed for each processor. Some workloads might experience improved performance when this option is enabled. Node Interleaving cannot be enabled when NVDIMMs are present in the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NumaGroupSizeOpt (NUMA Group Size Optimization)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure how the System BIOS reports the size of a NUMA node (number of logical processors), which assists the Operating System in grouping processors for application use (referred to as Kgroups). The default setting of Clustered provides better performance due to optimizing the resulting groups along NUMA boundaries. However, some applications might not be optimized to take advantage of processors spanning multiple groups. In such cases, selecting the Flat option might be necessary in order for those applications to utilize more logical processors.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Flat```|Flat|
|```Clustered```|Clustered|

**NvDimmNMemFunctionality (NVDIMM-N Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option controls whether NVDIMM-N support (including backing up the contents of the memory to flash on power down or reset) is enabled. If this option is configured for Disabled, then the NVDIMMs of type NVDIMM-N in the system are NOT used by the operating system as persistent storage, and are NOT used by the operating system as system memory.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvDimmNMemInterleaving (NVDIMM-N Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option controls whether the NVDIMMs of type NVDIMM-N installed on a particular processor will be interleaved with each other in the memory map. This option does NOT impact the interleaving of standard DIMMs, and interleaving is never enabled across NVDIMMs of type NVDIMM-N and standard DIMMs. NVDIMMs of type NVDIMM-N installed on different processors are never interleaved together. If this setting is changed, then all installed NVDIMMs of type NVDIMM-N must be sanitized.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvDimmNSanitizePolicy (NVDIMM-N Sanitize/Erase on Next Reboot Policy)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option is used to Sanitize/Erase all user data and error status data saved in the selected NVDIMMs of type NVDIMM-N. Selected NVDIMMs of type NVDIMM-N are sanitized/erased on the next reboot of the system. This process is required BEFORE the NVDIMM-N Memory Interleaving option can be modified. An NVDIMM-N must be sanitized/erased when it is initially installed in the system or installed in a different DIMM slot on the system. In addition, an NVDIMM-N can be recovered to normal operation if it has received an Uncorrectable Memory Error, a Backup Error, a Restore Error, or an Arming Error (if the NVDIMM hardware is functional). Note that the largest group of NVDIMMs of type NVDIMM-N selected are sanitized/erased. For instance, if 'Sanitize/Erase all NVDIMM-N on Processor 1' is enabled and 'Sanitize/Erase Processor 1 DIMM 8' is disabled, all NVDIMMs of type NVDIMM-N on Processor 1 are sanitized/erased including Processor 1 DIMM 8. There are four policies that control the action of the system after NVDIMMs of type NVDIMM-N are sanitized/erased. The options are to power off the system after sanitizing/erasing NVDIMMs, to enable the system to boot to the operating system after sanitizing/erasing NVDIMMs, to boot to the System Utilities after sanitizing/erasing NVDIMMs, or to sanitize/erase the NVDIMMs back to the factory default settings and power off the system. 'Sanitize/Erase to Factory Defaults and Power System Off' is recommended when retiring the NVDIMMs with no intention of reuse.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```SanitizeAndRebootSystem```|Sanitize/Erase and Boot to Operating System|
|```SanitizeAndShutdownSystem```|Sanitize/Erase and Power System Off|
|```SanitizeAndBootToFirmwareUI```|Sanitize/Erase and Boot to System Utilities|
|```SanitizeToFactoryDefaults```|Sanitize/Erase to Factory Defaults and Power System Off|

**NvdimmLabelSupport (NVDIMM-N OS Label Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable NVDIMM OS Label support via the ACPI methods _LSI, _LSR, and _LSW.When this option is enabled, the ACPI methods will be generated for each active NVDIMM in the system.  When this option is disabled, those methods will not be generated.  This option does NOT apply to PMMs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat1 (NVMe Drive 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat10 (NVMe Drive 10)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat11 (NVMe Drive 11)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat12 (NVMe Drive 12)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat13 (NVMe Drive 13)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat14 (NVMe Drive 14)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat15 (NVMe Drive 15)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat16 (NVMe Drive 16)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat17 (NVMe Drive 17)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat18 (NVMe Drive 18)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat19 (NVMe Drive 19)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat2 (NVMe Drive 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat20 (NVMe Drive 20)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat21 (NVMe Drive 21)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat22 (NVMe Drive 22)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat23 (NVMe Drive 23)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat24 (NVMe Drive 24)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat25 (NVMe Drive 25)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat26 (NVMe Drive 26)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat27 (NVMe Drive 27)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat28 (NVMe Drive 28)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat29 (NVMe Drive 29)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat3 (NVMe Drive 3)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat30 (NVMe Drive 30)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat31 (NVMe Drive 31)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat32 (NVMe Drive 32)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat33 (NVMe Drive 33)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat34 (NVMe Drive 34)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat35 (NVMe Drive 35)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat36 (NVMe Drive 36)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat37 (NVMe Drive 37)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat38 (NVMe Drive 38)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat39 (NVMe Drive 39)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat4 (NVMe Drive 4)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat40 (NVMe Drive 40)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat41 (NVMe Drive 41)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat42 (NVMe Drive 42)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat43 (NVMe Drive 43)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat44 (NVMe Drive 44)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat45 (NVMe Drive 45)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat46 (NVMe Drive 46)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat47 (NVMe Drive 47)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat48 (NVMe Drive 48)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat49 (NVMe Drive 49)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat5 (NVMe Drive 5)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat50 (NVMe Drive 50)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat6 (NVMe Drive 6)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat7 (NVMe Drive 7)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat8 (NVMe Drive 8)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat9 (NVMe Drive 9)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeOptionRom (Embedded NVM Express Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable embedded NVM Express Option ROM. When enabled, the system loads the NVM Express Option ROM provided by the system BIOS. When disabled, the system loads the NVM Express Option ROM provided by the adapter.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**OpportunisticSelfRefresh (Opportunistic Self-Refresh)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enables or disables opportunistic self-refresh.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciPeerToPeerSerialization (PCI Peer to Peer Serialization)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to configure the PCIe Peer to Peer Serialization Option. When set to enabled, PCIe transactions are interleaved across PCIe root ports of a processor which can result in increased performance in peer to peer communication. Certain configurations such as systems populated with multiple GPUs on a processor socket may see increased performance when this feature is enabled. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciResourcePadding (NVMe PCIe Resource Padding)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure PCIe resources to support PCIe hot-add for NVMe drives. When Normal is selected, PCIe resources are only allocated to devices installed at boot time, and PCIe hot-add is not supported. When Medium is selected, additional PCIe resources are allocated for each PCIe Root Port, which might enable a PCIe hot-add event to work without requiring a system reboot to enumerate the device. When High is selected, a maximum amount of PCIe resources are set aside to allow for the best chance of supporting a PCIe hot-add event.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Normal```|Normal|
|```Medium```|Medium|
|```High```|High|

**PciSlot1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot1Bifurcation (PCIe Slot 1 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot1Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot1OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot2Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot2Bifurcation (PCIe Slot 2 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot2Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot2LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot2OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot3Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot3Bifurcation (PCIe Slot 3 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot3Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot3LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot3OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PersistentMemAddressRangeScrub (Persistent Memory Address Range Scrub)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the NVDIMM memory Address Range Scrub support. When enabled, this option allows a supported OS to attempt recovery from an uncorrectable memory error detected in the NVDIMM memory. When disabled, the NVDIMM memory will be disabled on the following boot after detecting an uncorrectable memory error in the NVDIMM. If the NVDIMM memory Memory Interleaving option is enabled, a disabled NVDIMM will include all the modules or regions within the set.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PersistentMemBackupPowerPolicy (Persistent Memory Backup Power Policy)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option controls whether the system waits during system boot for batteries to charge if sufficient battery backup power for the installed persistent memory is not available. If this option is configured for 'Continue Boot without Backup Power', the server boots even if sufficient battery backup power is not installed. In this case, if sufficient battery backup power is not enabled, the configured memory will NOT be used by the operating system as persistent storage or as system memory.  If this option is configured for 'Use External Backup Power', the server will depend on an external UPS to handle an AC loss condition.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```WaitForBackupPower```|Wait for Backup Power on Boot|
|```BootWithoutBackupPower```|Continue Boot without Backup Power|
|```UseExternalBackupPower```|Use External Backup Power|

**PersistentMemNumaAffinity (Persistent Memory NUMA Affinity Reporting)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control how persistent memory regions for each socket are reported in the Static Resource Affinity Table (SRAT) and System Locality Information Table (SLIT) in ACPI.In the Shared NUMA Domain model, persistent memory is affinitized to the processor cores and shares the same domain as installed volatile memory. In the Isolated NUMA Domain model, persistent memory is given its own NUMA domain that is not associated with any processor cores. In both cases, software can identify which regions are persistent versus volatile memory using the APCI NFIT table and ACPI memory attributes.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```SharedNumaDomains```|Shared NUMA Domains|
|```IsolatedNumaDomains```|Isolated NUMA Domains|

**PersistentMemScanMem (Persistent Memory Integrity Check)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When this option is enabled, persistent memory will be checked during system boot to determine data integrity. Depending on the Persistent Memory Address Range Scrub setting, discovered errors during the data integrity check will either be presented to the operating system for recovery or cause the persistent memory to be mapped out and unavailable to the operating system. If this option is disabled, any persistent memory which has issues with the ability to read data or which has bad data may result in uncorrectable errors that result in a system crash. 
 If this option is disabled, Persistent Memory Address Range Scrub functionality might be impacted.For NVDIMM-N, this option will be automatically enabled if Persistent Memory Address Range Scrub functionality is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PersistentMemoryInterleaving (Persistent Memory Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable persistent memory interleaving when applying a new PMM configuration. Note: A configuration change will only be applied to PMMs upon pressing the 'Apply Goal Configuration' button.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PmmAppDirectSnoopyMode (Snoopy Mode for AppDirect)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enable this option to avoid directory updates to PMMs for non-NUMA optimized workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**PmmFastGo (FastGo Configuration)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Controls optimization of traffic within CPU.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|
|```Auto```|Auto|

**PmmMemModeSnoopyMode (Snoopy Mode for Memory Mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enable this option to avoid directory updates to PMMs for non-NUMA optimized workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**PmmPerformance (Performance Setting)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Controls baseline performance settings depending on the workload behavior.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```BandwidthOptimized```|Bandwidth Optimized|
|```LatencyOptimized```|Latency Optimized|
|```BalancedPerformanceMode```|Balanced Performance Mode|

**PmmQos (Quality of Service)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Controls Quality of Service profiles. Profile 1 recommended for 4 or more PMMs per socket. Profile 2 recommended for 2 PMMs per socket. Profile 3 recommended for 1 PMM per socket. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Profile1```|Profile 1|
|```Profile2```|Profile 2|
|```Profile3```|Profile 3|

**PmmSanitizeOperation (Sanitize/Erase Operation on Reboot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option is used to Sanitize the selected PMMs on the next reboot of the system. Cryptographic Erase removes the key used to access persistent regions. This fast operation does not actually overwrite data on the PMM, but effectively randomizes it and clears the password, if set. Overwrite Media writes zeroes to the media. This is a long operation and all configuration and error information will be erased from the PMM. Both operations can be done to clear the persistent region encryption key, clear the password, clear the configuration and error information, and overwrite the media with zeroes. It is recommended that the Overwrite Media operation be performed on PMMs before installing in a new system or in a different DIMM slot on the same system. Note that the largest group of PMMs selected are sanitized. For instance, if 'Sanitize operation for all PMMs on Processor 1' is set to 'Overwrite Media' and 'Sanitize operation Processor 1 DIMM 8' is set to 'No Action', all PMMs on Processor 1 will perform the Overwrite Media operation, including Processor 1 DIMM 8.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```CryptoErase```|Cryptographically Erase|
|```Overwrite```|Overwrite Media|
|```CryptoEraseOverwrite```|Cryptographically Erase then Overwrite Media|

**PmmSanitizePolicy (Policy after Sanitize/Erase on Reboot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option is used to specify what the system does after PMMs are sanitized/erased. 'Sanitize/Erase to Factory Defaults and Power System Off' is recommended when retiring the PMM with no intention of reuse.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```SanitizeAndRebootSystem```|Sanitize/Erase and Reboot System|
|```SanitizeAndShutdownSystem```|Sanitize/Erase and Power System Off|
|```SanitizeAndBootToFirmwareUI```|Sanitize/Erase and Reboot to System Utilities|
|```SanitizeToFactoryDefaults```|Sanitize/Erase to Factory Defaults and Power System Off|

**PostBootProgress (POST Verbose Boot Progress)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable verbose boot progress messaging. Because this option displays additional debug information to the screen and serial console, it might be helpful for determining why a server became unresponsive during the boot process.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Serial```|Serial Only|
|```All```|All|

**PostDiscoveryMode (UEFI POST Discovery Mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the UEFI POST Discovery Mode. When Auto is selected, the system selectively starts devices which are required for booting the devices in the UEFI Boot Order list. Note: For some situations like system configuration change, the system will change to start all devices for discovering all boot devices. When Force Full Discovery is selected, the system starts all devices in the system providing full boot target availability. Note: When Force Full Discovery is selected, boot time might significantly increase. When Force Fast Discovery is selected, the system starts as few devices as possible to get minimal boot time. Note: When Force Fast Discovery is selected, some unsupported devices may not work properly. You may need to replace the unsupported device with one that supports Fast Discovery.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```ForceFullDiscovery```|Force Full Discovery|
|```ForceFastDiscovery```|Force Fast Discovery|

**PostF1Prompt (POST F1 Prompt)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the system to display the F1 key on the server POST screen. If an error is encountered, you can press the F1 key to continue with the server power-up sequence. Select one of the following options: 
Delayed 20 Seconds - If an error occurs, the system pauses for 20 seconds at the F1 prompt and continues to boot the OS. 
Delayed 2 Seconds - If an error occurs, the system pauses for 2 seconds at the F1 prompt and continues to boot the OS. 
Disabled - If an error occurs, the system bypasses the F1 prompt and continues to boot the OS. 
Note: For critical errors, the system pauses for 20 seconds at the F1 prompt, regardless of how this option is configured.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Delayed20Sec```|Delayed 20 seconds|
|```Delayed2Sec```|Delayed 2 seconds|
|```Disabled```|Disabled|

**PostVideoSupport (POST Video Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure the POST Video Support setting. When set to Display All, the system will display POST video to all installed video controllers. When set to Display Embedded Only, the system will only display POST video to the embedded video controller. This option is only supported in UEFI Boot Mode and only applies to video output during the POST (pre-boot) environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```DisplayAll```|Display All|
|```DisplayEmbeddedOnly```|Display Embedded Only|

**PostedInterruptThrottle (Posted Interrupt Throttle)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enable/Disable - Posted Interrupt IERR Mitigation - increases the time posted interrupts are throttled to prevent overwhelming the queues|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PowerButton (Power Button Mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Disabling this option disables the momentary power button functionality. This option does not affect the four-second power button override or the remote power control functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PowerOnDelay (Power-On Delay)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to delay the server from turning on for a specified time. Pressing the power button (using the Virtual Power Button), or Wake-ON LAN events, and RTC Wake-up events override the delay and power on the server without any additional delay. This enables staggering when servers power-up after a power loss to prevent power usage spikes.Note that the actual delay before the server is powered on will be longer than the specified time because the server must always wait for iLO FW to initialize before the server attempts to power on.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoDelay```|No Delay|
|```Random```|Random Delay|
|```Delay15Sec```|15 Second Delay|
|```Delay30Sec```|30 Second Delay|
|```Delay45Sec```|45 Second Delay|
|```Delay60Sec```|60 Second Delay|

**PowerRegulator (Power Regulator)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to configure the following Power Regulator support: 
- Dynamic Power Savings Mode: Automatically varies processor speed and power usage based on processor utilization. Enables the reduction of overall power consumption with little or no impact on performance. Does not require OS support. 
- Static Low Power Mode: Reduces processor speed and power usage. Guarantees a lower maximum power usage for the system. Performance impacts are greater for environments with higher processor utilization. 
- Static High Performance Mode: Processors run in their maximum power/performance state at all times, regardless of the OS power management policy. 
- OS Control Mode: Processors run in their maximum power/performance state at all times unless the OS enables a power management policy.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```DynamicPowerSavings```|Dynamic Power Savings Mode|
|```StaticLowPower```|Static Low Power Mode|
|```StaticHighPerf```|Static High Performance Mode|
|```OsControl```|OS Control Mode|

**PreBootNetwork (Pre-Boot Network Interface)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select the network interface used for pre-boot network connections. When the selection is Auto, the system uses the first available port with a network connection.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```EmbNicPort1```|Embedded NIC Port 1|
|```EmbNicPort2```|Embedded NIC Port 2|
|```EmbNicPort3```|Embedded NIC Port 3|
|```EmbNicPort4```|Embedded NIC Port 4|
|```EmbNicPort5```|Embedded NIC Port 5|
|```EmbNicPort6```|Embedded NIC Port 6|
|```EmbNicPort7```|Embedded NIC Port 7|
|```EmbNicPort8```|Embedded NIC Port 8|
|```FlexLom1Port1```|Embedded FlexibleLOM 1 Port 1|
|```FlexLom1Port2```|Embedded FlexibleLOM 1 Port 2|
|```FlexLom1Port3```|Embedded FlexibleLOM 1 Port 3|
|```FlexLom1Port4```|Embedded FlexibleLOM 1 Port 4|
|```FlexLom1Port5```|Embedded FlexibleLOM 1 Port 5|
|```FlexLom1Port6```|Embedded FlexibleLOM 1 Port 6|
|```FlexLom1Port7```|Embedded FlexibleLOM 1 Port 7|
|```FlexLom1Port8```|Embedded FlexibleLOM 1 Port 8|
|```Slot1NicPort1```|Slot 1 NIC Port 1|
|```Slot1NicPort2```|Slot 1 NIC Port 2|
|```Slot1NicPort3```|Slot 1 NIC Port 3|
|```Slot1NicPort4```|Slot 1 NIC Port 4|
|```Slot1NicPort5```|Slot 1 NIC Port 5|
|```Slot1NicPort6```|Slot 1 NIC Port 6|
|```Slot1NicPort7```|Slot 1 NIC Port 7|
|```Slot1NicPort8```|Slot 1 NIC Port 8|
|```Slot2NicPort1```|Slot 2 NIC Port 1|
|```Slot2NicPort2```|Slot 2 NIC Port 2|
|```Slot2NicPort3```|Slot 2 NIC Port 3|
|```Slot2NicPort4```|Slot 2 NIC Port 4|
|```Slot2NicPort5```|Slot 2 NIC Port 5|
|```Slot2NicPort6```|Slot 2 NIC Port 6|
|```Slot2NicPort7```|Slot 2 NIC Port 7|
|```Slot2NicPort8```|Slot 2 NIC Port 8|
|```Slot3NicPort1```|Slot 3 NIC Port 1|
|```Slot3NicPort2```|Slot 3 NIC Port 2|
|```Slot3NicPort3```|Slot 3 NIC Port 3|
|```Slot3NicPort4```|Slot 3 NIC Port 4|
|```Slot3NicPort5```|Slot 3 NIC Port 5|
|```Slot3NicPort6```|Slot 3 NIC Port 6|
|```Slot3NicPort7```|Slot 3 NIC Port 7|
|```Slot3NicPort8```|Slot 3 NIC Port 8|

**PrebootNetworkEnvPolicy (Pre-Boot Network Environment)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to set the preference for Pre-Boot Network.
If configured for Auto, all the network operations initiated in the pre boot environment occur over IPv4 or IPv6. The order of the existing network boot targets is not modified in the UEFI Boot Order list. New network boot targets are added to the end of the list using the default policy of the System BIOS.
If configured for IPv4, all the network operations initiated in the pre boot environment only occur over IPv4. All existing IPv6 network boot targets are removed in the UEFI Boot Order. No new IPv6 network boot targets are added to the list.
If configured for IPv6, all the network operations initiated in the pre boot environment only occur over IPv6. All existing IPv4 network boot targets in the UEFI Boot Order are removed. No new IPv4 network boot targets are added to the list.
|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```IPv4```|IPv4|
|```IPv6```|IPv6|

**PrebootNetworkProxy (Pre-Boot Network Proxy)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure a pre-boot network proxy. When set, network operations for 'Pre-Boot Network Interface' are attempted through the configured proxy. The proxy must be in a HTTP URL format, and can be specified as http://IPv4_address:port, http://IPv6 address:port or http://FQDN:port.|
|Type|String|
|Read Only|False|

**ProcAes (Processor AES-NI Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Advanced Encryption Standard Instruction Set (AES-NI) in the processor.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ProcHyperthreading (Intel(R) Hyper-Threading)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable Intel Hyper-Threading. When enabled, each physical processor core operates as two logical processor cores. When disabled, each physical processor core operates as one logical processor core. Enabling this option can improve overall performance for applications that benefit from a higher processor core count.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ProcTurbo (Intel(R) Turbo Boost Technology)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Turbo Boost Technology enables the processor to transition to a higher frequency than the processor's rated speed if the processor has available power and is within temperature specifications. Disabling this option reduces power usage, and also reduces the system's maximum achievable performance under some workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**ProcVirtualization (Intel(R) Virtualization Technology (Intel VT) )**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When enabled, a hypervisor or operating system supporting this option can use hardware capabilities provided by Intel VT. Some hypervisors require that you enable Intel VT. You can leave this set to enabled even if you are not using a hypervisor or an operating system that uses this option.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ProcX2Apic (Processor x2APIC Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|x2APIC support enables operating systems to run more efficiently on high core count configurations. It also optimizes interrupt distribution in virtualized environments. In most cases, set this option to enabled. This configures the operating system to optionally enable x2APIC support when it loads. Some older hypervisors and operating systems might have issues with optional x2APIC support, in which case disabling x2APIC might be necessary to address those issues. Additionally, some hypervisors and operating systems will not use X2APIC unless this option is set to Force Enabled prior to booting.  The Force Enabled option also causes the Intel(R) VT-d setting to be set to enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```ForceEnabled```|Force Enabled|
|```Disabled```|Disabled|

**ProcessorConfigTDPLevel (Processor Config TDP Level)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to override the default CPU policy for SSE, AVX, and AVX-512 deterministic frequencies.This will result in lowering the deterministic operational frequency (P1) based on the setting.Disabling Turbo Mode will enhance the deterministic behavior, but result in a lower operational frequency.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Normal```|Normal|
|```Level1```|Level 1|
|```Level2```|Level 2|

**ProcessorJitterControl (Processor Jitter Control)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Processor Jitter Control allows the customer to manage processor frequency variance to do technologies such as Turbo which vary the frequency based on power, thermals, and active cores. When configured for Auto-tuned, the platform will monitor frequency variance and automatically make adjustments to minimize variance over time. When configured for Manual-tuned, the customer can choose to attempt to operate the processor at a fixed frequency and can select lower or higher frequencies statically.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Auto-tuned```|Auto-tuned|
|```Manual-tuned```|Manual-tuned|

**ProcessorJitterControlFrequency (Processor Jitter Control Frequency)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Processor Jitter Control Frequency allows the customer to stipulate the starting frequency in the Auto-tuned mode, or the desired frequency in the Manual-tuned mode. The input frequency is in units of Megahertz. System firmware will adjust the frequency to the nearest higher intermediate frequency supported by the processor if the input frequency is not supported.|
|Type|Integer|
|Read Only|False|

**ProcessorJitterControlOptimization (Processor Jitter Control Optimization)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option optimizes the thresholds used when the Auto-tuned function detects fluctuations in processor frequency. Optimizing for throughput allows only the amount of fluctuations that doesn't impact overall compute throughput. Optimizing for Latency allows for a very small amount of occasional fluctuations to occur before reducing processor frequency. Zero Latency attempts to eliminate any frequency fluctuations. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```OptimizedForThroughput```|Optimized for Throughput|
|```OptimizedForLatency```|Optimized for Latency|
|```ZeroLatency```|Zero Latency|

**ProductId (Product ID)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to set the system product ID. This value must always match the product ID sticker located on the chassis.|
|Type|String|
|Read Only|False|

**RedundantPowerSupply (Redundant Power Supply Mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure how the system handles redundant power supply configurations. Balanced Mode shares the power delivery equally between all installed power supplies. All High Efficiency Mode options provide the most power efficient operation with redundant power supplies by keeping half of the power supplies in standby mode at lower power usage levels. The High Efficiency Mode options enable the system to select which power supply to place in standby. Auto enables the system to select between the odd or even power supply based on a semi-random distribution within a group of systems.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```BalancedMode```|Balanced Mode|
|```HighEfficiencyAuto```|High Efficiency Mode (Auto)|
|```HighEfficiencyOddStandby```|High Efficiency Mode (Odd Supply Standby)|
|```HighEfficiencyEvenStandby```|High Efficiency Mode (Even Supply Standby)|

**RefreshWatermarks (Refresh Watermarks)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select the memory controller Refresh Watermarks Settings. When Auto is selected, the system will automatically set this feature based on the installed DIMMs and the supported DIMM topology. When Low Watermark (Low WM) is selected, the system can mitigate failures due to row hammer traffic patterns.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```LowWM```|Low WM|

**RemovableFlashBootSeq (Removable Flash Media Boot Sequence)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select which USB or SD Card devices you want to search for first when enumerating boot devices. You can select whether the system boots to external USB drive keys, internal USB drive keys, or the internal SD card slot. This option does not override the device boot order in the Standard Boot Order (IPL) option. You can only configure this option when Boot Mode is set to Legacy BIOS.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```InternalSdCardFirst```|Internal SD Card First|
|```InternalKeysFirst```|Internal DriveKeys First|
|```ExternalKeysFirst```|External DriveKeys First|

**RestoreDefaults (Restore Default System Settings)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to reset all configuration settings to their default values. Changes that have been made might be lost. You must reboot the system for changes to take effect.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```No```|No, cancel the restore procedure.|
|```Yes```|Yes, restore the default settings.|

**RestoreManufacturingDefaults (Restore Default Manufacturing Settings)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to reset all configuration settings to their default manufacturing values. Changes that have been made might be lost. If Secure Boot is enabled, related security settings might be lost. You must reboot the system for changes to take effect.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```No```|No, cancel restore procedure.|
|```Yes```|Yes, restore the default settings.|

**RomSelection (ROM Selection)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to revert the server to a previous BIOS ROM image. The backup image is the BIOS ROM image that was used prior to the last flash event.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```CurrentRom```|Use Current ROM|
|```BackupRom```|Switch to Backup ROM|

**SanitizeAllNvDimmN (Sanitize/Erase all NVDIMM-N in the System)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N in the system are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeAllPmm (All PMMs in the System)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for ALL PMMs in the system to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Dimm1 (Sanitize/Erase Processor 1 DIMM 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm10 (Sanitize/Erase Processor 1 DIMM 10)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm11 (Sanitize/Erase Processor 1 DIMM 11)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm12 (Sanitize/Erase Processor 1 DIMM 12)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm2 (Sanitize/Erase Processor 1 DIMM 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm3 (Sanitize/Erase Processor 1 DIMM 3)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm4 (Sanitize/Erase Processor 1 DIMM 4)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm5 (Sanitize/Erase Processor 1 DIMM 5)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm6 (Sanitize/Erase Processor 1 DIMM 6)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm7 (Sanitize/Erase Processor 1 DIMM 7)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm8 (Sanitize/Erase Processor 1 DIMM 8)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm9 (Sanitize/Erase Processor 1 DIMM 9)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1NvDimmN (Sanitize/Erase all NVDIMM-N on Processor 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N installed on the selected processor are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Pmm (All PMMs on Processor 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for ALL PMMs on the selected processor to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm1 (Processor 1 DIMM 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm10 (Processor 1 DIMM 10)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm11 (Processor 1 DIMM 11)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm12 (Processor 1 DIMM 12)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm2 (Processor 1 DIMM 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm3 (Processor 1 DIMM 3)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm4 (Processor 1 DIMM 4)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm5 (Processor 1 DIMM 5)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm6 (Processor 1 DIMM 6)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm7 (Processor 1 DIMM 7)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm8 (Processor 1 DIMM 8)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc1Pmm9 (Processor 1 DIMM 9)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Dimm1 (Sanitize/Erase Processor 2 DIMM 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm10 (Sanitize/Erase Processor 2 DIMM 10)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm11 (Sanitize/Erase Processor 2 DIMM 11)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm12 (Sanitize/Erase Processor 2 DIMM 12)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm2 (Sanitize/Erase Processor 2 DIMM 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm3 (Sanitize/Erase Processor 2 DIMM 3)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm4 (Sanitize/Erase Processor 2 DIMM 4)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm5 (Sanitize/Erase Processor 2 DIMM 5)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm6 (Sanitize/Erase Processor 2 DIMM 6)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm7 (Sanitize/Erase Processor 2 DIMM 7)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm8 (Sanitize/Erase Processor 2 DIMM 8)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm9 (Sanitize/Erase Processor 2 DIMM 9)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2NvDimmN (Sanitize/Erase all NVDIMM-N on Processor 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N installed on the selected processor are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Pmm (All PMMs on Processor 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for ALL PMMs on the selected processor to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm1 (Processor 2 DIMM 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm10 (Processor 2 DIMM 10)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm11 (Processor 2 DIMM 11)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm12 (Processor 2 DIMM 12)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm2 (Processor 2 DIMM 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm3 (Processor 2 DIMM 3)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm4 (Processor 2 DIMM 4)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm5 (Processor 2 DIMM 5)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm6 (Processor 2 DIMM 6)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm7 (Processor 2 DIMM 7)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm8 (Processor 2 DIMM 8)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SanitizeProc2Pmm9 (Processor 2 DIMM 9)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Sanitize operation for the selected PMM to be performed on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**SataSecureErase (SATA Secure Erase)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control whether Secure Erase functionality is supported. When enabled, the Security Freeze Lock command is not sent to supported SATA hard drives, enabling Secure erase to function (the Secure Erase command is supported). This option is only supported when the SATA controller is in AHCI mode. Secure Erase only operates with hard drives that support the Secure Erase command.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SaveUserDefaults (Save User Defaults)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to save the current settings as the system defaults.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```No```|No, Cancel|
|```Yes```|Yes, Save|

**SecStartBackupImage (Backup ROM Image Authentication)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable cryptographic authentication of the backup ROM image on startup. When this option is disabled, only the primary image is authenticated on each startup. Enable this option to also perform cryptographic authentication of the backup ROM image.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SecureBootStatus (Secure Boot Status)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|The current state of Secure Boot configuration.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SecurityFreezeLock (Security Freeze Lock)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to enable or disable Security Freeze Lock on PMMs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SerialConsoleBaudRate (BIOS Serial Console Baud Rate)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This is the transfer rate at which data is transmitted through the serial port.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```BaudRate9600```|9600|
|```BaudRate19200```|19200|
|```BaudRate38400```|38400|
|```BaudRate57600```|57600|
|```BaudRate115200```|115200|

**SerialConsoleEmulation (BIOS Serial Console Emulation Mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select the emulation mode type. The option you select depends on the emulation you want to use in your serial terminal program (such as HyperTerminal or PuTTy). The BIOS emulation mode must match the mode you select in your terminal program.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Vt100```|VT100|
|```Ansi```|ANSI|
|```Vt100Plus```|VT100+|
|```VtUtf8```|VT-UTF8|

**SerialConsolePort (BIOS Serial Console Port)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to re-direct video and keystrokes through the serial port to OS boot. This option can interfere with non-terminal devices attached to the serial port. In such cases, set this option to disabled. This option is only supported in English language mode when running in the UEFI pre-boot System Utilities.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```Physical```|Physical Serial Port|
|```Virtual```|Virtual Serial Port|

**SerialNumber (Serial Number)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to set the system serial number. This value must always match the serial number sticker located on the chassis.|
|Type|String|
|Read Only|False|

**ServerAssetTag (Server Asset Tag)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to modify the Server Asset Tag text line.|
|Type|String|
|Read Only|False|

**ServerConfigLockStatus (Server Configuration Lock Status)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|The current state of the Server Configuration Lock feature.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ServerName (Server Name)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to modify the server name text line.|
|Type|String|
|Read Only|False|

**ServerOtherInfo (Server Other Information)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to modify the Other Server text line.|
|Type|String|
|Read Only|False|

**ServerPrimaryOs (Server Primary OS)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to modify the Server Primary OS text line.|
|Type|String|
|Read Only|False|

**ServiceEmail (Service Contact E-mail Address)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter the server service contact e-mail address.|
|Type|String|
|Read Only|False|

**ServiceName (Service Contact Name)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter the server service contact name text.|
|Type|String|
|Read Only|False|

**ServiceOtherInfo (Service Contact Other Information)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter the other server service contact information text.|
|Type|String|
|Read Only|False|

**ServicePhone (Service Contact Phone Number)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enter the server service contact phone number text.|
|Type|String|
|Read Only|False|

**SetupBrowserSelection (Setup Browser Selection)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select which setup browser to use: GUI or Text. Auto mode uses text when the user enters RBSU via serial console, and uses GUI via IRC or physical terminal.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```GUI```|GUI|
|```Text```|Text|
|```Auto```|Auto|

**Slot1MctpBroadcastSupport (PCIe Slot 1 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**Slot1NicBoot1 (Slot 1 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot2 (Slot 1 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot3 (Slot 1 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot4 (Slot 1 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot5 (Slot 1 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot6 (Slot 1 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot7 (Slot 1 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot8 (Slot 1 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1StorageBoot (PCIe Slot 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot2MctpBroadcastSupport (PCIe Slot 2 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**Slot2NicBoot1 (Slot 2 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot2 (Slot 2 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot3 (Slot 2 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot4 (Slot 2 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot5 (Slot 2 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot6 (Slot 2 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot7 (Slot 2 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot8 (Slot 2 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2StorageBoot (PCIe Slot 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot3MctpBroadcastSupport (PCIe Slot 3 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**Slot3NicBoot1 (Slot 3 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot2 (Slot 3 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot3 (Slot 3 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot4 (Slot 3 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot5 (Slot 3 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot6 (Slot 3 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot7 (Slot 3 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot8 (Slot 3 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3StorageBoot (PCIe Slot 3)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Sriov (SR-IOV)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|If enabled, SR-IOV support enables a hypervisor to create virtual instances of a PCI-express device, potentially increasing performance. If enabled, the BIOS allocates additional resources to PCI-express devices. You can leave this option set to enabled even if you are not using a hypervisor.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**StaleAtoS (Stale A to S)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Stale A to S directory optimization.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SubNumaClustering (Sub-NUMA Clustering)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When enabled, Sub-NUMA Clustering divides the processor's cores, cache, and memory into multiple NUMA domains. Enabling this feature can increase performance for workloads that are NUMA aware and optimized. 
Note: When this option is enabled, up to 1GB of system memory may become unavailable.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ThermalConfig (Thermal Configuration)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select the fan cooling solution for the system. Optimal Cooling provides the most efficient solution by configuring fan speeds to the minimum required speed to provide adequate cooling. Increased Cooling runs fans at higher speeds to provide additional cooling. Select Increased Cooling when third-party storage controllers are cabled to the embedded hard drive cage, or if the system is experiencing thermal issues that cannot be resolved. Maximum cooling provides the maximum cooling available on this platform. Enhanced CPU Cooling runs the fans at a higher speed to provide additional cooling to the processors. Selecting Enhanced CPU Cooling may improve system performance with certain processor intensive workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```OptimalCooling```|Optimal Cooling|
|```IncreasedCooling```|Increased Cooling|
|```MaxCooling```|Maximum Cooling|
|```EnhancedCPUCooling```|Enhanced CPU Cooling|

**ThermalShutdown (Thermal Shutdown)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the reaction of the system to caution level thermal events. When disabled, the System Management Firmware ignores thermal events, and the system immediately powers off in data-destructive situations.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**TimeFormat (Time Format)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option controls how the system time is stored in the hardware Real Time Clock (RTC). When configured to 'Coordinated Universal Time (UTC)' (default) the local time is calculated from the associated time zone value. When configured to 'Local Time' the time is stored directly as local time and the time zone option does not have meaning. Setting this option to 'Local Time' works around an issue when using Microsoft Windows operating systems in Legacy Boot Mode where the time is set incorrectly.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Utc```|Coordinated Universal Time (UTC)|
|```Local```|Local Time|

**TimeZone (Time Zone)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option displays the current time zone setting for the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```UtcM12```|UTC-12:00, International Date Line West|
|```UtcM11```|UTC-11:00, Midway Island, Samoa|
|```UtcM10```|UTC-10:00, Hawaii|
|```UtcM9```|UTC-09:00, Alaska|
|```UtcM8```|UTC-08:00, Pacific Time(US & Canada)|
|```UtcM7```|UTC-07:00, Mountain Time (US & Canada)|
|```UtcM6```|UTC-06:00, Central America, Central Time(US & Canada)|
|```UtcM5```|UTC-05:00, Eastern Time(US & Canada)|
|```UtcM430```|UTC-04:30, Caracas|
|```UtcM4```|UTC-04:00, Atlantic Time(Canada), Caracas, Santiago|
|```UtcM330```|UTC-03:30, Newfoundland|
|```UtcM3```|UTC-03:00, Brasilia, Buenos Aires, Georgetown, Greenland|
|```UtcM2```|UTC-02:00, Mid-Atlantic|
|```UtcM1```|UTC-01:00, Azores, Cape Verde Is.|
|```Utc0```|UTC-00:00, Greenwich Mean Time, Monrovia|
|```UtcWET```|UTC-00:00, Dublin, London|
|```UtcP1```|UTC+01:00, Amsterdam, Berlin, Rome, Paris, West Central Africa|
|```UtcP2```|UTC+02:00, Athens, Istanbul, Cairo, Jerusalem|
|```UtcP3```|UTC+03:00, Baghdad, Kuwait, Riyadh, Moscow, Nairobi|
|```UtcP330```|UTC+03:30, Tehran|
|```UtcP4```|UTC+04:00, Abu Dhabi, Muscat, Baku, Tbilisi, Yerevan|
|```UtcP430```|UTC+04:30, Kabul|
|```UtcP5```|UTC+05:00, Ekaterinburg, Islamabad, Karachi, Tashkent|
|```UtcP530```|UTC+05:30, Chennai, Kolkata, Mumbai, New Delhi|
|```UtcP545```|UTC+05:45, Kathmandu|
|```UtcP6```|UTC+06:00, Almaty, Novosibirsk, Astana, Dhaka|
|```UtcP630```|UTC+06:30, Rangoon|
|```UtcP7```|UTC+07:00, Bangkok, Hanoi, Jakarta, Krasnoyarsk|
|```UtcP8```|UTC+08:00, Taipei, Beijing, Chongqing, Hong Kong, Urumqi|
|```UtcP9```|UTC+09:00, Osaka, Sapporo, Tokyo, Seoul, Yakutsk|
|```UtcP930```|UTC+09:30, Adelaide, Darwin|
|```UtcP10```|UTC+10:00, Canberra, Melbourne, Sydney, Guam, Hobart, Vladivostok|
|```UtcP11```|UTC+11:00, Magadan, Solomon Is., New Caledonia|
|```UtcP12```|UTC+12:00, Auckland, Wellington, Fiji, Kamchatka, Marshall Is.|
|```UtcP13```|UTC+13:00, Nuku'alofa|
|```UtcP14```|UTC+14:00, Line Islands|
|```Unspecified```|Unspecified Time Zone|

**Tpm20SoftwareInterfaceOperation (TPM 2.0 Software Interface Operation)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|TPM 2.0 Software Interface Operation: FIFO or CRB.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Fifo```|FIFO interface|
|```Crb```|CRB interface|

**Tpm20SoftwareInterfaceStatus (Current TPM 2.0 Software Interface Status)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Current TPM 2.0 Software Interface Status: FIFO or CRB.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Fifo```|FIFO interface|
|```Crb```|CRB interface|

**Tpm2Operation (TPM 2.0 Operation)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to perform a clear operation on the TPM. Clearing the TPM can prevent the server from booting to a TPM-aware operating system if the operating system uses TPM's measurements. TPM 2.0 is only supported in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Clear```|Clear|

**TpmActivePcrs (Current TPM 2.0 Active PCRs)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Current TPM 2.0 Active PCRs: SHA1, SHA256 or SHA1_SHA256|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NotSpecified```|Not specified|
|```Sha1```|SHA1 only|
|```Sha256```|SHA256 only|
|```Sha1Sha256```|SHA1 and SHA256|

**TpmChipId (Current TPM Chip ID)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Current TPM Chip: STMicro, Intel PTT fTPM or Nationz TPM20|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```None```|None|
|```StMicroGen10```|ST Micro Gen10|
|```IntelPttFTpm```|Intel PTT fTPM|
|```NationzTpm20```|Nationz TPM20|

**TpmFips (Current TPM FIPS mode)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Current TPM FIPS (Federal Information Processing Standard) status: Not specified; non-FIPS certified; FIPS certified.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NotSpecified```|Not specified|
|```NonFipsMode```|Non-FIPS Mode|
|```FipsMode```|FIPS mode|

**TpmFipsModeSwitch (TPM FIPS Mode Switch)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to switch the TPM chip to FIPS mode, regular mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```RegularMode```|Regular mode|
|```FipsMode```|FIPS mode|

**TpmModeSwitchOperation (TPM Mode Switch Operation)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to switch the TPM chip to TPM 1.2/2.0, FIPS mode or non-FIPS mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Tpm12```|TPM 1.2|
|```Tpm20```|TPM 2.0|

**TpmOperation (TPM 1.2 Operation)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable the Trusted Platform Module and BIOS secure startup. When enabled, the TPM is fully functional. When disabled, the TPM is visible; however, functionality is limited. This option also enables you to reset the TPM to factory settings, which clears any assigned passwords, keys, or ownership data. Clearing the TPM can prevent the server from booting to a TPM-aware operating system if the operating system uses TPM's measurements.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Enable```|Enable|
|```Disable```|Disable|
|```Clear```|Clear|

**TpmState (Current TPM State)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Current TPM device state: Not Present; Present and Disabled; Present and Enabled.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NotPresent```|Not Present|
|```PresentDisabled```|Present and Disabled|
|```PresentEnabled```|Present and Enabled|

**TpmType (Current TPM Type)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Current TPM device type.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NoTpm```|No TPM|
|```Tpm12```|TPM 1.2|
|```Tpm20```|TPM 2.0|

**TpmUefiOpromMeasuring (TPM UEFI Option ROM Measurement)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable measuring the UEFI PCI option ROMs. Disabling this option skips measuring the UEFI PCI option ROMs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**TpmVisibility (TPM Visibility)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to hide the TPM from the operating system. When the TPM is hidden, BIOS secure startup is disabled, and the TPM does not respond to any commands. Intended use is for removing the TPM option from the system without removing the actual hardware.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Hidden```|Hidden|
|```Visible```|Visible|

**UefiOptimizedBoot (UEFI Optimized Boot)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When enabled, the system BIOS boots using native UEFI graphics drivers. When disabled, the system BIOS boots using INT10 legacy video support. You cannot disable this option if Secure Boot is enabled. You can only configure this option if Boot Mode is configured to UEFI Mode. 
Set this option to disabled for compatibility with Microsoft Windows 2008 and Windows 2008 R2 operating systems on a system configured for UEFI Mode. 
Set this option to enabled for compatibility with VMWare ESXi operating systems on a system configured for UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiSerialDebugLevel (UEFI Serial Debug Message Level)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable the UEFI Serial Debug output and verbosity level. Selecting Verbose can impact server boot time significantly. This option is only applicable in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```ErrorsOnly```|Errors Only|
|```Medium```|Medium|
|```Network```|Network|
|```Verbose```|Verbose|
|```Custom```|Custom|

**UefiShellBootOrder (Add Embedded UEFI Shell to Boot Order)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|When enabled, this option adds the Embedded UEFI Shell as an entry in the UEFI Boot Order list. This option is only available when the Boot Mode is configured to UEFI Mode and the Embedded UEFI Shell is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiShellScriptVerification (Shell Script Verification)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Enable this option to allow verification of UEFI shell script files when Secure Boot is enabled. For successful execution of script, make sure that UEFI shell scripts are enrolled in the Secure Boot database (db).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiShellStartup (UEFI Shell Script Auto-Start)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable automatic execution of the Embedded UEFI Shell startup script. You can store the script file on local media or access it from a network location. You must name the script file "startup.nsh" and place it on local media or a network location accessible to the server.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiShellStartupLocation (Shell Auto-Start Script Location)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to select the location of the Embedded UEFI Shell startup script. For the 'File Systems on Attached Media' option, you must name the script file "startup.nsh" and place it on a UEFI accessible local file system, such as a FAT32 partition on a USB disk or HDD. For the 'Network Location' option, the file must end with a .nsh extension, and must be placed at an HTTP/HTTPS or FTP location accessible to the system. When you select the 'Auto' option, the system attempts to retrieve the startup script from the network location first, followed by locally attached media.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```AttachedMedia```|File Systems on Attached Media|
|```NetworkLocation```|Network Location|

**UefiShellStartupUrl (Network Location for Shell Auto-Start Script)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a UEFI Shell startup script. This option is available and used only when the Auto-Start Script Location is set to 'Network Location', or 'Auto', and the Shell Auto-Start Script discovery using DHCP is set to 'Disabled'. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. FTP formats are accepted using either an IPv4 server address or a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/file.nsh, http://example.com/file/file.nsh, https://example.com/file/file.nsh, http://[1234::1000]/file.nsh. The file must end with an .nsh extension. When configured, the Embedded UEFI Shell attempts to load and execute the startup script from the network location pointed to by this URL. When a HTTPS URL is configured, you must enroll the respective HTTPS server's TLS certificate under Server Security > TLS(HTTPS) Options.|
|Type|String|
|Read Only|False|

**UefiShellStartupUrlFromDhcp (Discover Shell Auto-Start Script using DHCP)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to let the Shell discover its startup script URL using DHCP. This option is available only if the 'HTTP Support' policy is not set to 'Disabled' and Auto-Start Script Location is set to 'Network Location', or 'Auto'. When set to 'Enabled', the Shell sends DHCP requests with the DHCP User Class option set to the string 'UEFIShell'. The DHCP server must be configured to provide HTTP/HTTPS or FTP URLs when this DHCP User Class string is present in the DHCP request. The User Class option is Option 77 when using DHCP over IPv4, and Option 15 when using DHCP over IPv6. URLs in HTTP/HTTPS must use either an IPv4 or IPv6 server address, or a host name. FTP formats are accepted using either an IPv4 server address or a host name. The URL provided by the DHCP server should match the 'HTTP Support' policy. When 'HTTP Support' policy is set to 'Auto', any HTTP/HTTPS or FTP URL provided by the DHCP server is used. When policy is set to 'HTTPS only', only HTTPS URLs are used, and other URLs are ignored. When policy is set to 'HTTP only', only HTTP or FTP URLs are used, and other URLs are ignored. When policy is set to 'Disabled', the Shell does not send any DHCP request.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiVariableAccessFwControl (UEFI Variable Access Firmware Control)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to allow the system BIOS to completely control certain UEFI variables from being written to by other software such as an Operating System. When Disabled is selected, all UEFI variables are writable. When Enabled is selected, all changes made by software other than the system BIOS to critical UEFI variables will be blocked. For instance, new boot options the Operating System attempt to add to the top of BootOrder will actually be placed at the bottom of the BootOrder. Note: When UEFI Variable Access Firmware Control is Enabled, some Operating System functionality may not work as expected. Errors may occur while installing a new Operating System.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**UncoreFreqScaling (Uncore Frequency Scaling)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|This option controls the frequency scaling of the processor's internal busses (the uncore.) Setting this option to Auto enables the processor to dynamically change frequencies based on workload. Forcing to the maximum or minimum frequency enables tuning for latency or power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Maximum```|Maximum|
|```Minimum```|Minimum|

**UpiPrefetcher (UPI Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the processor UPI Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. This option must be enabled when Sub-Numa Clustering (SNC) is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UrlBootFile (Boot from URL 1)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso. 
When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu. 
This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings.
This is only applicable in UEFI Mode. 
Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile2 (Boot from URL 2)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso. 
When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu. 
This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings.
This is only applicable in UEFI Mode. 
Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile3 (Boot from URL 3)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso. 
When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu. 
This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings.
This is only applicable in UEFI Mode. 
Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile4 (Boot from URL 4)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso. 
When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu. 
This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings.
This is only applicable in UEFI Mode. 
Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UsbBoot (USB Boot Support)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Set this option to disabled to prevent the system from booting to any USB devices connected to the server. This includes preventing boot to virtual media devices, and the embedded SD or uSD card slot (if supported).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UsbControl (USB Control)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|All USB Ports Enabled: Enables all USB ports and embedded devices.All USB Ports Disabled: Disables all USB ports and embedded devices.External USB Ports Disabled: Disables only external USB ports.Internal USB Ports Disabled: Disables only internal USB ports.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```UsbEnabled```|All USB Ports Enabled|
|```UsbDisabled```|All USB Ports Disabled|
|```ExternalUsbDisabled```|External USB Ports Disabled|
|```InternalUsbDisabled```|Internal USB Ports Disabled|

**UserDefaultsState (User Defaults)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Displays whether user default settings are enabled or disabled.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UtilityLang (Utility Language)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to adjust the current language for the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```English```|English|
|```Japanese```|Japanese|
|```Chinese```|Chinese|

**VideoOptions (Video Options)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to configure video settings in the system. When set to Add-in Video Enabled, Embedded Video Disabled, the system only displays video to the first discovered add-in video controller. When set to Both Add-in and Embedded Video Enabled, the system displays video to both the embedded and the first discovered add-in video controllers. In both modes, early system startup video is displayed to the embedded video controller.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```OptionalVideoOnly```|Add-in Video Enabled, Embedded Video Disabled|
|```BothVideoEnabled```|Both Add-in and Embedded Video Enabled|

**VirtualInstallDisk (Virtual Install Disk)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to control the Virtual Install Disk. The Virtual Install Disk contains drivers specific to this server that an OS can use during installation. If enabled, the Virtual Install Disk appears as a drive in the operating system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**VirtualSerialPort (Virtual Serial Port)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to assign the logical COM port address and associated default resources used by the Virtual Serial Port (VSP). VSP enables the Management Processor to present an emulated serial port to support the BIOS Serial Console and operating system serial console.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Com1Irq4```|COM 1; IRQ4; I/O: 3F8h-3FFh|
|```Com2Irq3```|COM 2; IRQ3; I/O: 2F8h-2FFh|
|```Disabled```|Disabled|

**VlanControl (VLAN Control)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to enable or disable VLAN tagging on all enabled network interfaces.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**VlanId (VLAN ID)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to set the global VLAN ID for all enabled network interfaces. Valid values are 0 to 4094.A value of 0 sets the device to send untagged frames.|
|Type|Integer|
|Read Only|False|

**VlanPriority (VLAN Priority)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to set the priority for the VLAN tagged frames. Valid values are 0 to 7.|
|Type|Integer|
|Read Only|False|

**WakeOnLan (Wake-On LAN)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|You can configure the server to be powered on remotely when it receives a special packet. This option requires a NIC, NIC driver, and operating system that are WOL-capable.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**WorkloadProfile (Workload Profile)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Select this option to change the Workload Profile to accommodate your desired workload. Settings that are changed by the Workload Profile are grayed out and unchangeable unless in the 'Custom' profile. Please refer to the 'UEFI Workload-based Performance Tuning Guide' for details on which profiles affect which options. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```GeneralPowerEfficientCompute```|General Power Efficient Compute|
|```GeneralPeakFrequencyCompute```|General Peak Frequency Compute|
|```GeneralThroughputCompute```|General Throughput Compute|
|```Virtualization-PowerEfficient```|Virtualization - Power Efficient|
|```Virtualization-MaxPerformance```|Virtualization - Max Performance|
|```LowLatency```|Low Latency|
|```MissionCritical```|Mission Critical|
|```TransactionalApplicationProcessing```|Transactional Application Processing|
|```HighPerformanceCompute(HPC)```|High Performance Compute (HPC)|
|```DecisionSupport```|Decision Support|
|```GraphicProcessing```|Graphic Processing|
|```I/OThroughput```|I/O Throughput|
|```Custom```|Custom|

**XptPrefetcher (XPT Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to disable the processor XPT Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. This option must be enabled when Sub-Numa Clustering (SNC) is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**iSCSIPolicy (iSCSI Policy)**
Member of [Bios.v1\_0\_0.Bios](#biosv1\_0\_0bios)

| | |
|---|---|
|Description|Use this option to set the iSCSI Policy. If configured to Software Initiator, the iSCSI software initiator will be used to access iSCSI targets on any configured NIC ports. If configured to Adapter Initiator, the adapter specific iSCSI initiator will be used instead. The adapter firmware must be configured to access iSCSI targets from the adapter initiator.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```SoftwareInitiator```|Software Initiator|
|```AdapterInitiator```|Adapter Initiator|

## BootOption.v1\_0\_1.BootOption

`@odata.type: "#BootOption.v1_0_1.BootOption"`

This is the schema definition for the BootOption resource. It represents the properties of a bootable device available in the System.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/bootoptions/{item}/`|GET |

### Alias
Member of [BootOption.v1\_0\_1.BootOption](#bootoptionv1\_0\_1bootoption)

| | |
|---|---|
|Description|The alias of this Boot Source.|
|Type|string or null|
|Read Only|True|

### BootOptionEnabled
Member of [BootOption.v1\_0\_1.BootOption](#bootoptionv1\_0\_1bootoption)

| | |
|---|---|
|Description|A flag that shows if the Boot Option is enabled.|
|Type|boolean or null|
|Read Only|False|

### BootOptionReference
Member of [BootOption.v1\_0\_1.BootOption](#bootoptionv1\_0\_1bootoption)

| | |
|---|---|
|Description|The unique boot option string that is referenced in the BootOrder.|
|Type|string or null|
|Read Only|True|

### DisplayName
Member of [BootOption.v1\_0\_1.BootOption](#bootoptionv1\_0\_1bootoption)

| | |
|---|---|
|Description|The user-readable display string of the Boot Option.|
|Type|string or null|
|Read Only|True|

### UefiDevicePath
Member of [BootOption.v1\_0\_1.BootOption](#bootoptionv1\_0\_1bootoption)

| | |
|---|---|
|Description|The UEFI device path used to access this UEFI Boot Option.|
|Type|string or null|
|Read Only|True|

## BootOptionCollection.BootOptionCollection

`@odata.type: "#BootOptionCollection.BootOptionCollection"`

A Collection of BootOption resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/bootoptions/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[BootOption](#bootoptionv1_0_1bootoption)|

### Members (array)
Member of BootOptionCollection.BootOptionCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of BootOptionCollection.BootOptionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of BootOptionCollection.BootOptionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## Certificate.v1\_1\_0.Certificate

`@odata.type: "#Certificate.v1_1_0.Certificate"`

The Certificate resource describes an X509 certificate.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates/{item}/`|GET DELETE |

### CertificateString
Member of [Certificate.v1\_1\_0.Certificate](#certificatev1\_1\_0certificate)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|
|Format|text|

### CertificateType
Member of [Certificate.v1\_1\_0.Certificate](#certificatev1\_1\_0certificate)

| | |
|---|---|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|`PEM`|A PEM encoded certificate.|n|`PKCS7`|A PEM encoded PKCS7 certificate.|n
### Issuer
Member of [Certificate.v1\_1\_0.Certificate](#certificatev1\_1\_0certificate)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SerialNumber
Member of [Certificate.v1\_1\_0.Certificate](#certificatev1\_1\_0certificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Subject
Member of [Certificate.v1\_1\_0.Certificate](#certificatev1\_1\_0certificate)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### ValidNotAfter
Member of [Certificate.v1\_1\_0.Certificate](#certificatev1\_1\_0certificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

### ValidNotBefore
Member of [Certificate.v1\_1\_0.Certificate](#certificatev1\_1\_0certificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

## CertificateCollection.CertificateCollection

`@odata.type: "#CertificateCollection.CertificateCollection"`

A Collection of Certificate resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/accountservice/externalaccountproviders/ldap/certificates/`|GET POST |
`/redfish/v1/managers/{item}/securityservice/iloidevid/certificates/`|GET |
`/redfish/v1/managers/{item}/securityservice/iloldevid/certificates/`|GET POST |
`/redfish/v1/managers/{item}/securityservice/platformcert/certificates/`|GET |
`/redfish/v1/managers/{item}/securityservice/systemiak/certificates/`|GET |
`/redfish/v1/managers/{item}/securityservice/systemidevid/certificates/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[Certificate](#certificatev1_1_0certificate)|

### Members (array)
Member of CertificateCollection.CertificateCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of CertificateCollection.CertificateCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of CertificateCollection.CertificateCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## CertificateService.v1\_0\_3.CertificateService

`@odata.type: "#CertificateService.v1_0_3.CertificateService"`

The CertificateService schema describes a certificate service that represents the actions available to manage certificates and links to the certificates.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/certificateservice/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`CertificateLocations`|[CertificateLocations](#certificatelocationsv1_0_2certificatelocations)|

### CertificateLocations
The information about the location of certificates.
CertificateLocations is a link (`"@odata.id": URI`) to another resource.

### Actions

**CertificateService.GenerateCSR**
Member of [CertificateService.v1\_0\_3.CertificateService](#certificateservicev1\_0\_3certificateservice)

**Parameters:**

**AlternativeNames (array)**

The additional host names of the component to secure.

**CertificateCollection (object)**

The link to the certificate collection where the certificate is installed after the certificate authority (CA) signs the certificate.

**ChallengePassword (string)**

The challenge password to apply to the certificate for revocation requests.

**City (string)**

The city or locality of the organization making the request.

**CommonName (string)**

The fully qualified domain name of the component to secure.

**ContactPerson (string)**

The name of the user making the request.

**Country (string)**

The two-letter country code of the organization making the request.

**Email (string)**

The email address of the contact within the organization making the request.

**GivenName (string)**

The given name of the user making the request.

**Initials (string)**

The initials of the user making the request.

**KeyBitLength (integer)**

The length of the key, in bits, if needed based on the KeyPairAlgorithm parameter value.

**KeyCurveId (string)**

The curve ID to use with the key, if needed based on the KeyPairAlgorithm parameter value.

**KeyPairAlgorithm (string)**

The type of key-pair for use with signing algorithms.

**KeyUsage (array)**

The usage of the key contained in the certificate.

**Organization (string)**

The name of the organization making the request.

**OrganizationalUnit (string)**

The name of the unit or division of the organization making the request.

**State (string)**

The state, province, or region of the organization making the request.

**Surname (string)**

The surname of the user making the request.

**UnstructuredName (string)**

The unstructured name of the subject.
## Chassis.v1\_10\_2.Chassis

`@odata.type: "#Chassis.v1_10_2.Chassis"`

The Chassis resource describes the physical components for a system. This object represents rack mount servers, blades, and all other containers. The non-CPU/device-centric parts of the schema are accessed either directly or indirectly through this resource.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/chassis/{item}/`|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/ComputerSystems[]`|[ComputerSystem](#computersystemv1_10_0computersystem)|
|`Links/Drives[]`|[Drive](#drivev1_7_0drive)|
|`Links/ManagedBy[]`|[Manager](#managerv1_5_1manager)|
|`NetworkAdapters`|Collection of [NetworkAdapter](#networkadapterv1_4_0networkadapter)|
|`Oem/Hpe/Links/Devices`|Collection of [HpeServerDevice](#hpeserverdevicev2_0_0hpeserverdevice)|
|`PCIeDevices`|Collection of [PCIeDevice](#pciedevicev1_4_0pciedevice)|
|`PCIeSlots`|[PCIeSlots](#pcieslotsv1_3_0pcieslots)|
|`Power`|[Power](#powerv1_3_0power)|
|`Thermal`|[Thermal](#thermalv1_6_2thermal)|

### AssetTag
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis user-assigned asset tag.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### ChassisType
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|This property indicates the physical form factor type of this resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Rack`|An equipment rack, typically a 19-inch wide freestanding unit.|n|`Blade`|An enclosed or semi-enclosed, typically vertically-oriented, system chassis that must be plugged into a multi-system chassis to function normally.|n|`Enclosure`|A generic term for a chassis that does not fit any other description.|n|`StandAlone`|A single, free-standing system, commonly called a tower or desktop chassis.|n|`RackMount`|A single system chassis designed specifically for mounting in an equipment rack.|n|`Card`|A loose device or circuit board intended to be installed in a system or other enclosure.|n|`Cartridge`|A small self-contained system intended to be plugged into a multi-system chassis.|n|`Row`|A collection of equipment racks.|n|`Pod`|A collection of equipment racks in a large, likely transportable, container.|n|`Expansion`|A chassis that expands the capabilities or capacity of another chassis.|n|`Sidecar`|A chassis that mechanically connects with another chassis to expand its capabilities or capacity.|n|`Zone`|A logical division or portion of a physical chassis that contains multiple devices or systems that cannot be physically separated.|n|`Sled`|TBD|n|`Shelf`|An enclosed or semi-enclosed, typically horizontally-oriented, system chassis that must be plugged into a multi-system chassis to function normally.|n|`Other`|A chassis that does not fit any of these definitions.|n
### IndicatorLED
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis indicator LED that is used to identify the chassis. The user can manipulate this LED.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Unknown`|The state of the Indicator LED cannot be determined.|n|`Lit`|The Indicator LED is on.|n|`Blinking`|The Indicator LED is blinking.|n|`Off`|The Indicator LED is off.|n
### Manufacturer
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis manufacturer.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Model
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis model number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### NetworkAdapters
The collection of network adapters contained within this chassis.
NetworkAdapters is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.BayNumber
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The bay number of the node or the blade.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.BaysConsumedHeight
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The number of enclosure bays this chassis consumes in height.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.BaysConsumedWidth
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The number of enclosure bays this chassis consumes in width.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.ChassisPowerWatts
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The total power consumed by the chassis and nodes.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.ElConfigOverride
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The value indicates if Thermal Configuration includes Edgeline specific options.|
|Type|boolean|
|Read Only|False|

### Oem.Hpe.EnclosureCPLD
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The CPLD version of the enclosure.|
|Type|string|
|Read Only|True|

### Oem.Hpe.EnclosureDateTime
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The date and time in a Moonshot EL chassis (enclosure).|
|Type|string|
|Read Only|False|
|Format|date-time|

### Oem.Hpe.EnclosureIndicatorLED
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The enclosure indicator LED that is used to identify the enclosure.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Unknown`|The state of the Indicator LED cannot be determined.|n|`Lit`|The Indicator LED is on.|n|`Blinking`|The Indicator LED is blinking.|n|`Off`|The Indicator LED is off.|n
### Oem.Hpe.EnclosureModel
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Type of enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.EnclosureUUID
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The UUID of the enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.Firmware
**Oem.Hpe.Firmware.ChassisControllerVersion**
**Oem.Hpe.Firmware.ChassisControllerVersion.Current**
**Oem.Hpe.Firmware.ChassisControllerVersion.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The firmware version of the chassis controller.|
|Type|string|
|Read Only|True|

**Oem.Hpe.Firmware.PlatformDefinitionTable**
**Oem.Hpe.Firmware.PlatformDefinitionTable.Current**
**Oem.Hpe.Firmware.PlatformDefinitionTable.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The version of the Intelligent Platform Abstraction Data.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.PowerManagementController**
**Oem.Hpe.Firmware.PowerManagementController.Current**
**Oem.Hpe.Firmware.PowerManagementController.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The firmware version of the Power Monitor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.PowerManagementControllerBootloader**
**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current**
**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current.Family**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The family type of the Power Monitor hardware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.PowerManagementControllerBootloader.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The firmware version of the Power Monitor boot loader.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.SASProgrammableLogicDevice**
**Oem.Hpe.Firmware.SASProgrammableLogicDevice.Current**
**Oem.Hpe.Firmware.SASProgrammableLogicDevice.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The firmware version of the SAS controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.SPSFirmwareVersionData**
**Oem.Hpe.Firmware.SPSFirmwareVersionData.Current**
**Oem.Hpe.Firmware.SPSFirmwareVersionData.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The SPS FW Version number, aka ME FW Version, AAAA.BBBB.CCCC.DDDD.E|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Firmware.SystemProgrammableLogicDevice**
**Oem.Hpe.Firmware.SystemProgrammableLogicDevice.Current**
**Oem.Hpe.Firmware.SystemProgrammableLogicDevice.Current.VersionString**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The firmware version of the CPLD.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IPv4Address
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The IPv4 address of the chassis manager.|
|Type|string|
|Read Only|True|

### Oem.Hpe.Images
**Oem.Hpe.Images.Front**
**Oem.Hpe.Images.Front.extref**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The URI of an external resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

**Oem.Hpe.Images.Model**
**Oem.Hpe.Images.Model.extref**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The URI of an external resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Oem.Hpe.Location
**Oem.Hpe.Location.GeographicLocation**
**Oem.Hpe.Location.GeographicLocation.RackName**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The name of the chassis enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack**
**Oem.Hpe.Location.LocationInRack.RackLdsPartNumber**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis rack part number.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.RackLdsProductDescription**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description| The chassis rack product description.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.RackUHeight**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis rack U height.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.RackUUID**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis rack UUID.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.TagVersion**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis rack tag version.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.ULocation**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis rack U location.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationInRack.UPosition**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis U position in the rack.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Location.LocationOfChassis**
**Oem.Hpe.Location.LocationOfChassis.UUID**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis UUID provided by SMBIOS.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.MCTPEnabledOnServer
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Indicates if MCTP is enabled on the server or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.NodePowerWatts
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The total power being consumed by this node.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.OnboardAdministrator
**Oem.Hpe.OnboardAdministrator.IPv4Address**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|IPv4 address of the chassis.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

**Oem.Hpe.OnboardAdministrator.IPv6**
**Oem.Hpe.OnboardAdministrator.IPv6.DHCPv6Address (array)**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
`DHCPv6Address` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.IPv6.SLAACAddress (array)**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
`SLAACAddress` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.IPv6.StaticAddress (array)**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
`StaticAddress` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv6|

**Oem.Hpe.OnboardAdministrator.MacAddress**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|MAC address of the chassis.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.PcieMini2SlotRiser
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|PCIE mini 2 slot riser is a platform dependent value used to identify installation of this riser.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`NotInstalled`|The PCIE mini 2 slot riser is not installed. The PCIE mini slot 3 and slot 4 do not exist in this Enclosure.|n|`InstalledWithOtherFRU`|A non recognized riser option is installed with a valid EEPROM FRU. Contact Customer Support to secure a replacement.|n|`InstalledWithBadFRU`|The PCIe mini 2 slot riser is installed with an invaild EEPROM FRU. Contact Customer Support to secure a replacement.|n|`Installed`|The PCIE mini 2 slot riser is installed. The PCIE mini slot 3 and slot 4 exist in this Enclosure.|n
### Oem.Hpe.PowerAlertMode
**Oem.Hpe.PowerAlertMode.Activated**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The power alert mode activation state.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.PowerAlertMode.AlertPowerWatts**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The power consumption of the system when operating in alert mode.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.PowerAlertMode.SpikeWatts**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Maximum additional power consumed when all CPUs are in Turbo Mode|
|Type|integer|
|Read Only|True|

### Oem.Hpe.RackName
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The name of the rack that contains the enclosure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.SmartStorageBattery (array)
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
`SmartStorageBattery` is an array containing elements of: 

**SmartStorageBattery[{item}].BatteryWearLevelPercent**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The battery wear level percentage. When this value reaches 100%, the battery is completely worn out and needs to be replaced. The value is null if battery wear level cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|

**SmartStorageBattery[{item}].ChargeLevelPercent**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|State of charge of the battery.|
|Type|integer or null|
|Read Only|True|

**SmartStorageBattery[{item}].ErrorCode**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Error code of the battery.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`GeneralFailure`|The battery has failed.|n|`HighInternalBatteryResistance`|The battery has failed due to high internal resistance.|n|`LowOpenCircuitVoltage`|The battery has failed due to a low voltage output.|n|`BatteryCellFailure`|The battery has failed.|n|`BatteryChargeTimeout`|The battery did not charge at the expected rate, indicating a faulty battery.|n|`OverTemperature`|The battery was disabled due to high ambient temperature, and will be re-enabled when the temperature is lowered.|n|`DischargeBelowMinimumVoltage`|The battery discharged below the minimum discharge voltage, and may be re-enabled upon recharging the battery.|n|`DischargeCurrentHigh`|The last backup failed due to exceeding the maximum discharge current.|n|`LoadCountExceeded`|The battery was disabled due to exceeding the maximum amount of devices supported, and will be re-enabled when the battery has been recharged or the additional devices are removed.|n|`BackupSucceeded`|The last backup succeeded within the expected time.|n|`OverCurrent`|The battery has been protected due to exceeding the output current capability. The battery should be re-enabled on the next reboot.|n|`PermanentFailure`|The battery has permanently failed.|n|`BackupTimeExceeded`|The last backup failed due to exceeding the battery discharge time limit.|n
**SmartStorageBattery[{item}].FailurePredicted**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Is this battery currently predicting a failure in the near future.|
|Type|boolean or null|
|Read Only|True|

**SmartStorageBattery[{item}].FirmwareVersion**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Firmware version of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].Index**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Index of the battery.|
|Type|integer|
|Read Only|True|

**SmartStorageBattery[{item}].MaximumCapWatts**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Maximum capacity of the battery in watts.|
|Type|integer|
|Read Only|True|

**SmartStorageBattery[{item}].Model**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Model of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].ProductName**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Product name of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].RemainingChargeTimeSeconds**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Remaining charging time of the battery in seconds.|
|Type|integer or null|
|Read Only|True|

**SmartStorageBattery[{item}].SerialNumber**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Serial number of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].SparePartNumber**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Spare part number of the battery.|
|Type|string|
|Read Only|True|

**SmartStorageBattery[{item}].Status**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.SystemMaintenanceSwitches
**Oem.Hpe.SystemMaintenanceSwitches.Sw1**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Override iLO security.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|iLO Security Override Enabled.|n|`Off`|No function (Normal).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw10**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Normal).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw11**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Normal).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw12**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Normal).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw2**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Normal).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw3**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Normal).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw4**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Normal).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw5**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|BIOS/UEFI Password Disable.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Power On Password disabled.|n|`Off`|Power On Password enabled (Normal).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw6**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reset Configuration.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`||n|`Off`||n
**Oem.Hpe.SystemMaintenanceSwitches.Sw7**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Default).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw8**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Default).|n
**Oem.Hpe.SystemMaintenanceSwitches.Sw9**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Reserved.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`On`|Switch is on.|n|`Off`|Switch is off (Default).|n
### Oem.Hpe.TrayID
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|Tray ID is a platform dependent value used to identify what kind of server tray it is.|
|Type|string|
|Read Only|True|

### PCIeDevices
The link to the collection of PCIe devices located in this chassis.
PCIeDevices is a link (`"@odata.id": URI`) to another resource.

### PCIeSlots
The link to the PCIe slot properties for this chassis.
PCIeSlots is a link (`"@odata.id": URI`) to another resource.

### PartNumber
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalSecurity
**PhysicalSecurity.IntrusionSensor**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|This indicates the known state of the physical security sensor, such as if it is hardware intrusion detected.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Normal`|No abnormal physical security conditions are detected at this time.|n|`HardwareIntrusion`|A door, lock, or other mechanism protecting the internal system hardware from being accessed is detected as being in an insecure state.|n|`TamperingDetected`|Physical tampering of the monitored entity is detected.|n
**PhysicalSecurity.IntrusionSensorReArm**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|This indicates how the Normal state to be restored.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Manual`|This sensor would be restored to the Normal state by a manual re-arm.|n|`Automatic`|This sensor would be restored to the Normal state automatically as no abnormal physical security conditions are detected.|n
### Power
A reference to the thermal metrics (power supplies, power policies, sensors) for this chassis.
Power is a link (`"@odata.id": URI`) to another resource.

### PowerState
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|This is the current power state of the chassis.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|`Null`|
|`On`|
|`Off`|
|`Unknown`|
|`Reset`|

### SKU
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis SKU.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)

| | |
|---|---|
|Description|The chassis serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Status
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
See the Redfish standard schema and specification for information on common Status object.

### Thermal
A reference to the thermal metrics (fans, cooling, sensors) for this chassis.
Thermal is a link (`"@odata.id": URI`) to another resource.

### Actions

**HpeServerChassis.DisableMCTPOnServer**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
There are no parameters for this action.

**HpeServerChassis.FactoryResetMCTP**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
There are no parameters for this action.

**HpeServerChassis.ModifyEnclosureChassisFru**
Member of [Chassis.v1\_10\_2.Chassis](#chassisv1\_10\_2chassis)
The action to modify field of enclosure chassis FRU.


**Parameters:**

**PartNumber (string)**

Part Number of the enclosure chassis.

**SerialNumber (string)**

Serial Number of the enclosure chassis.
## ChassisCollection.ChassisCollection

`@odata.type: "#ChassisCollection.ChassisCollection"`

A Collection of Chassis resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/chassis/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[Chassis](#chassisv1_10_2chassis)|

### Members (array)
Member of ChassisCollection.ChassisCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of ChassisCollection.ChassisCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of ChassisCollection.ChassisCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## ComputerSystem.v1\_10\_0.ComputerSystem

`@odata.type: "#ComputerSystem.v1_10_0.ComputerSystem"`

The ComputerSystem resource describes the compute node and its properties. A ComputerSystem represents a physical or virtual machine and the local resources, such as memory, CPU, and other devices that can be accessed from that machine.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/`|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Bios`|[Bios](#biosv1_0_0bios)|
|`Boot/BootOptions`|Collection of [BootOption](#bootoptionv1_0_1bootoption)|
|`EthernetInterfaces`|Collection of [EthernetInterface](#ethernetinterfacev1_4_1ethernetinterface)|
|`Links/Chassis[]`|[Chassis](#chassisv1_10_2chassis)|
|`Links/HpServerSettings`|[HpServerSettings](#hpserversettings2)|
|`Links/ManagedBy[]`|[Manager](#managerv1_5_1manager)|
|`LogServices`|Collection of [LogService](#logservicev1_0_0logservice)|
|`Memory`|Collection of [Memory](#memoryv1_7_1memory)|
|`MemoryDomains`|MemoryDomainCollection|
|`NetworkInterfaces`|Collection of [NetworkInterface](#networkinterfacev1_1_1networkinterface)|
|`Oem/Hpe/Links/EthernetInterfaces`|Collection of [EthernetInterface](#ethernetinterfacev1_4_1ethernetinterface)|
|`Oem/Hpe/Links/HpeIpProvider`|[HpeIp](#hpeipv1_0_0hpeip)|
|`Oem/Hpe/Links/NetworkAdapters`|Collection of [HpeBaseNetworkAdapter](#hpebasenetworkadapterv2_0_0hpebasenetworkadapter)|
|`Oem/Hpe/Links/PCIDevices`|Collection of [HpeServerPciDevice](#hpeserverpcidevicev2_0_0hpeserverpcidevice)|
|`Oem/Hpe/Links/PCISlots`|Collection of [HpeServerPCISlot](#hpeserverpcislotv2_1_0hpeserverpcislot)|
|`Oem/Hpe/Links/SUT`|[SUT](#sutv2_8_0sut)|
|`Oem/Hpe/Links/SecureEraseReportService`|[HpeSecureEraseReportService](#hpesecureerasereportservicev1_0_0hpesecureerasereportservice)|
|`Oem/Hpe/Links/SmartStorage`|[HpeSmartStorage](#hpesmartstoragev2_0_0hpesmartstorage)|
|`Oem/Hpe/Links/USBDevices`|HpeUSBDevicesCollection|
|`Oem/Hpe/Links/USBPorts`|Collection of [HpeUSBPort](#hpeusbportv2_0_0hpeusbport)|
|`Oem/Hpe/Links/WorkloadPerformanceAdvisor`|Collection of [HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisorv1_0_0hpeworkloadperformanceadvisor)|
|`Oem/Hpe/SmartStorageConfig[]`|[SmartStorageConfig](#smartstorageconfigv2_0_2smartstorageconfig)|
|`Processors`|Collection of [Processor](#processorv1_7_2processor)|
|`SecureBoot`|[SecureBoot](#securebootv1_0_0secureboot)|
|`Storage`|Collection of [Storage](#storagev1_7_1storage)|

### AssetTag
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|A user-definable tag that is used to track this system for inventory or other client purposes.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Bios
The Bios URI.
Bios is a link (`"@odata.id": URI`) to another resource.

### BiosVersion
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The version of the system BIOS or primary system firmware.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Boot
**Boot.BootOptions**
A reference to the collection of the UEFI Boot Options associated with this Computer System.
BootOptions is a link (`"@odata.id": URI`) to another resource.

**Boot.BootOrder (array)**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
`BootOrder` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

**Boot.BootSourceOverrideEnabled**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|BootSourceOverrideTarget must be specified before BootSourceOverrideEnabled can be used.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Disabled`|The system will boot normally.|n|`Once`|On its next boot cycle, the system will boot (one time) to the Boot Source Override Target. The value of BootSourceOverrideEnabled is then reset back to Disabled.|n|`Continuous`|The system will boot to the target specified in the BootSourceOverrideTarget until this property is set to Disabled.|n
**Boot.BootSourceOverrideMode**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Legacy`|The system will boot in non-UEFI boot mode to the Boot Source Override Target.|n|`UEFI`|The system will boot in UEFI boot mode to the Boot Source Override Target.|n
**Boot.BootSourceOverrideTarget**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The current boot source to be used at next boot instead of the normal boot device, if BootSourceOverrideEnabled is true.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Boot.BootSourceOverrideTarget@Redfish.AllowableValues (array)**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
`BootSourceOverrideTarget@Redfish.AllowableValues` is an array containing elements of: 


| | |
|---|---|
|Description|The current boot source to be used at next boot instead of the normal boot device, if BootSourceOverrideEnabled is not Disabled.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`None`|Boot from the normal boot device.|n|`Pxe`|Boot from the Pre-Boot EXecution (PXE) environment.|n|`Floppy`|Boot from the floppy disk drive.|n|`Cd`|Boot from the CD/DVD disc.|n|`Usb`|Boot from a USB device as specified by the system BIOS.|n|`Hdd`|Boot from a hard drive.|n|`BiosSetup`|Boot to the BIOS Setup Utility.|n|`Utilities`|Boot the manufacturer's Utilities program(s).|n|`Diags`|Boot the manufacturer's Diagnostics program.|n|`UefiShell`|Boot to the UEFI Shell.|n|`UefiTarget`|Boot to the UEFI Device specified in the UefiTargetBootSourceOverride property.|n|`SDCard`|Boot from an SD Card|n|`UefiHttp`|Boot from a UEFI HTTP network location|n
**Boot.UefiTargetBootSourceOverride**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This property is the UEFI Device Path of the device to boot from when BootSourceOverrideTarget is UefiTarget.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Boot.UefiTargetBootSourceOverride@Redfish.AllowableValues (array)**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
`UefiTargetBootSourceOverride@Redfish.AllowableValues` is an array containing elements of: 


| | |
|---|---|
|Description|An array of structured boot strings.|
|Type|string or null|
|Read Only|True|

### EthernetInterfaces
A reference to the collection of Ethernet interfaces associated with this system.
EthernetInterfaces is a link (`"@odata.id": URI`) to another resource.

### HostName
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The DNS Host Name, without any domain information|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### HostingRole
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The enumerations of HostingRoles specify different features that the hosting ComputerSystem supports.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`ApplicationServer`|The system hosts functionality that supports general purpose applications.|n|`StorageServer`|The system hosts functionality that supports the system acting as a storage server.|n|`Switch`|The system hosts functionality that supports the system acting as a switch.|n|`Appliance`|The system hosts functionality that supports the system acting as an appliance.|n|`BareMetalServer`|The system hosts functionality that supports the system acting as a bare metal server.|n|`VirtualMachineServer`|The system hosts functionality that supports the system acting as a virtual machine server.|n|`ContainerServer`|The system hosts functionality that supports the system acting as a container server.|n
### IndicatorLED
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The state of the indicator LED.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Unknown`|The state of the Indicator LED cannot be determined.|n|`Lit`|The Indicator LED is lit.|n|`Blinking`|The Indicator LED is blinking.|n|`Off`|The Indicator LED is off.|n
### LogServices
The LogService collection URI for this resource.
LogServices is a link (`"@odata.id": URI`) to another resource.

### Manufacturer
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The manufacturer or OEM of this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Memory
The central memory in the system.
Memory is a link (`"@odata.id": URI`) to another resource.

### MemoryDomains
A reference to the collection of Memory Domains associated with this system.
MemoryDomains is a link (`"@odata.id": URI`) to another resource.

### MemorySummary
**MemorySummary.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**MemorySummary.TotalSystemMemoryGiB**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This is the total amount of memory in the system measured in GiB.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**MemorySummary.TotalSystemPersistentMemoryGiB**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The total configured, system-accessible persistent memory, measured in GiB.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Model
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The model information that the manufacturer uses to refer to this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### NetworkInterfaces
The collection of network interfaces partitioned to this system.
NetworkInterfaces is a link (`"@odata.id": URI`) to another resource.

### Oem.Hpe.AggregateHealthStatus
**Oem.Hpe.AggregateHealthStatus.AgentlessManagementService**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This indicates if the Agentless Management Service is available or not. |
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Unavailable`|The Agentless Management Service is unavailable.|n|`Ready`|The Agentless Management Service is Ready.|n
**Oem.Hpe.AggregateHealthStatus.BiosOrHardwareHealth**
**Oem.Hpe.AggregateHealthStatus.BiosOrHardwareHealth.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.FanRedundancy**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This indicates if the Fan is redundant or not. |
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Redundant`|The fans are Redundant.|n|`NonRedundant`|The fans are not Redundant.|n|`FailedRedundant`|The Redundant fan has failed.|n|`Unknown`|The Redundant state is unknown.|n
**Oem.Hpe.AggregateHealthStatus.Fans**
**Oem.Hpe.AggregateHealthStatus.Fans.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.LiquidCooling**
**Oem.Hpe.AggregateHealthStatus.LiquidCooling.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.LiquidCoolingRedundancy**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This indicates if the LiquidCooling Units are redundant or not. |
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|`Redundant`|The Liquid Cooling modules are Redundant.|n|`NonRedundant`|The Liquid Cooling modules are not Redundant.|n|`FailedRedundant`|The Redundant fan has failed.|n|`Unknown`|The Redundant state is unknown.|n
**Oem.Hpe.AggregateHealthStatus.Memory**
**Oem.Hpe.AggregateHealthStatus.Memory.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.Network**
**Oem.Hpe.AggregateHealthStatus.Network.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.PowerSupplies**
**Oem.Hpe.AggregateHealthStatus.PowerSupplies.PowerSuppliesMismatch**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This indicates if the there is a mismatch in the power supplies.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.AggregateHealthStatus.PowerSupplies.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.PowerSupplyRedundancy**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This indicates if the Power Supply is redundant or not. |
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Redundant`|The power supplies are Redundant.|n|`NonRedundant`|The power supplies are not Redundant.|n|`FailedRedundant`|The Redundant power supply has failed.|n|`Unknown`|The Redundant state is unknown.|n
**Oem.Hpe.AggregateHealthStatus.Processors**
**Oem.Hpe.AggregateHealthStatus.Processors.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.SmartStorageBattery**
**Oem.Hpe.AggregateHealthStatus.SmartStorageBattery.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.Storage**
**Oem.Hpe.AggregateHealthStatus.Storage.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

**Oem.Hpe.AggregateHealthStatus.Temperatures**
**Oem.Hpe.AggregateHealthStatus.Temperatures.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.Bios
**Oem.Hpe.Bios.Backup**
**Oem.Hpe.Bios.Backup.BuildNumber**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.BuildNumberString**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.Date**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.DebugBuild**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.Family**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.MajorVersion**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.MinorVersion**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.Time**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Backup.VersionString**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock**
**Oem.Hpe.Bios.Bootblock.BuildNumber**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.BuildNumberString**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.Date**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.DebugBuild**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.Family**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.MajorVersion**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.MinorVersion**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.Time**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Bootblock.VersionString**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current**
**Oem.Hpe.Bios.Current.BuildNumber**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build number of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.BuildNumberString**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The string version of the build number of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.Date**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build date of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.DebugBuild**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|True if the firmware is a debug build; False if it is not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.Family**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The family of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.MajorVersion**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The major version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.MinorVersion**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The minor version of the firmware.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.Time**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The build time of the firmware.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.Current.VersionString**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The version string of the firmware. This value might be null if VersionString is unavailable.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Bios.UefiClass**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The UEFI BIOS Class value defined in the UEFI specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Null`|
|`1`|
|`2`|
|`3`|

### Oem.Hpe.CriticalTempRemainOff
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates whether server should remain off after thermal shutdown is triggered.|
|Type|boolean|
|Read Only|False|

### Oem.Hpe.CurrentPowerOnTimeSeconds
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Displays the amount of time(in seconds) that has passed since the server was last powered on. The data is reset on iLO reset.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.15|

### Oem.Hpe.DeviceDiscoveryComplete
**Oem.Hpe.DeviceDiscoveryComplete.AMSDeviceDiscovery**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This property indicates the current AMS Device Discovery Status.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Busy`|The server has AMS loaded and iLO is discovering devices that require AMS to be loaded|n|`Complete`|The server has AMS loaded and iLO is finished discovering devices that require AMS to be loaded|n|`NoAMS`|The server does not have AMS loaded for device discovery.|n|`Initial`|Default state after iLO has booted.|n
**Oem.Hpe.DeviceDiscoveryComplete.DeviceDiscovery**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This property indicates the current device discovery status of devices that are not Smart Array or AMS related.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Busy`|iLO is discovering devices.|n|`vAuxDeviceDiscoveryComplete`|The server is off and iLO is finished discovering devices.|n|`vMainDeviceDiscoveryComplete`|The server is on and iLO is finished discovering devices.|n|`DataIncomplete`|iLO response took longer than expected while discovering devices.|n|`Initial`|Default state after iLO has booted.|n
**Oem.Hpe.DeviceDiscoveryComplete.SmartArrayDiscovery**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This property indicates the current Smart Array Storage Device Discovery Status|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Busy`|iLO is discovering Smart Array devices.  If the server is shutdown before discovery is complete, this reflects an incomplete data set.|n|`PendingSoftwareRAID`|Pending discovery of Dynamic Smart Array.|n|`Complete`|iLO is finished discovering Smart Array storage.|n|`Initial`|Default state for Smart Array|n|`Cached`|Data is cached, server is offline or data not yet available.|n
### Oem.Hpe.ElapsedEraseTimeInMinutes
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Reports the time elapsed since the erase started|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.EndOfPostDelaySeconds
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Supported on UEFI based systems only. The number of seconds to delay before finalizing POST with the Mode action (e.g. delay before shutdown). If > 255 seconds is requested, the value is rounded up to the nearest minute.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.EstimatedEraseTimeInMinutes
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Reports the guestimate time (in minutes) for the overall erase process|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.HostOS
**Oem.Hpe.HostOS.OsName**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|from cpqHoName if AMS is running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.HostOS.OsSysDescription**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|from cpqHosysDesc if AMS is running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.HostOS.OsType**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|from cpqHoOsType if AMS is running.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.HostOS.OsVersion**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|from cpqHoVersion if AMS is running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IntelligentProvisioningAlwaysOn
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Always on Intelligent Provisioning is available.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IntelligentProvisioningIndex
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description| Index in the Firmware Version Table for Intelligent Provisioning.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IntelligentProvisioningLocation
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description| Location string of Intelligent Provisioning in Firmware Version Table.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IntelligentProvisioningVersion
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description| Intelligent Provisioning Version.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.IsColdBooting
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates if the system is cold booting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.30|

### Oem.Hpe.PCAPartNumber
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The PCA part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PCASerialNumber
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The PCA serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PostDiscoveryCompleteTimeStamp
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Displays the last known POST Discovery Complete time|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Oem.Hpe.PostDiscoveryMode
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The manner in which the system will operate during the discovery section of POST.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Auto`|BIOS will automatically use ForceFastBoot if the system hardware has not changed from last time of FullDiscovery or ForceFullDiscovery if the system hardware has changed.|n|`ForceFullDiscovery`|Server makes a full discovery of all devices.|n|`ForceFastBoot`|Server uses the existing cached discovery data.|n
### Oem.Hpe.PostMode
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The manner in which the system will operate during and at completion of POST.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Normal`|Normal operations.|n|`PostToShutdown`|Server boots until Discovery Completes, then shuts down.|n|`PostToReboot`|Server boots until Discovery Completes, then reboots.|n
### Oem.Hpe.PostState
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The current state of system POST.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Unknown`|iLO was unable to determine the current server state.|n|`Reset`|The server is currently in reset.|n|`PowerOff`|The server power is off.|n|`InPost`|The server is booting and has not reached discovery complete.|n|`InPostDiscoveryStart`|The server has started to discover devices.|n|`InPostDiscoveryComplete`|The server has reached discovery complete and is now waiting for the installed OS to be booted.  Discovery complete is the point at which it has been deemed safe to read and write the BIOS configuration information.|n|`FinishedPost`|The server has booted the installed OS.|n
### Oem.Hpe.PowerAllocationLimit
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The total amount of power allocated to the system.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PowerAutoOn
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Auto Power-On mode defines what occurs when the AC power is applied to the system.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`RemainOff`|
|`PowerOn`|
|`Restore`|

### Oem.Hpe.PowerOnDelay
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The PowerAutoOn policy delay that can also be found in the HpBios::PowerOnDelay object.  Will be null if PowerAutoOn is set to RemainOff.  Blades only support Minimum and RandomUpTo120Sec.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Null`|
|`Minimum`|
|`15Sec`|
|`30Sec`|
|`45Sec`|
|`60Sec`|
|`RandomUpTo120Sec`|

### Oem.Hpe.PowerOnMinutes
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The number of lifetime minutes that the server has been powered on.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.15|

### Oem.Hpe.PowerRegulatorMode
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Power Regulator mode.  Switching to and from OS Control mode requires a server reboot to take effect.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`OSControl`|
|`Dynamic`|
|`Max`|
|`Min`|
|`Unknown`|

### Oem.Hpe.PowerRegulatorModesSupported (array)
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
`PowerRegulatorModesSupported` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

### Oem.Hpe.ProcessorJitterControl
**Oem.Hpe.ProcessorJitterControl.ConfiguredFrequencyLimitMHz**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Displays the last known user configured frequency limit of the processor in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**Oem.Hpe.ProcessorJitterControl.FrequencyLimitMHz**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current frequency limit of the processor in MHz.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.15|

**Oem.Hpe.ProcessorJitterControl.Mode**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Provides various jitter control modes.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.15|

The following are the supported values:

|Value|
|---|
|`Auto`|
|`Disabled`|
|`Manual`|

**Oem.Hpe.ProcessorJitterControl.ProcessorJitterControlOptimization**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Provides Jitter Control Optimizations.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.30|

The following are the supported values:

|Value|Description|
|---|---|
|`OptimizedForThroughput`||n|`OptimizedForLatency`||n|`ZeroLatency`||n
### Oem.Hpe.SMBIOS
**Oem.Hpe.SMBIOS.extref**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The URI of an external resource.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Oem.Hpe.ServerFQDN
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The IP address or FQDN of the server. Host software like AMS is required to obtain this value from the OS.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|

### Oem.Hpe.ServerIntelligentDiagnosticsModeEnabled
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the current state of server Intelligent Diagnostics mode.|
|Type|boolean|
|Read Only|True|

### Oem.Hpe.ServerSafeModeEnabled
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the current state of server Safe Mode.|
|Type|boolean|
|Read Only|True|

### Oem.Hpe.ServerSignature
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description| The CRC32 of:  All Device Signatures combined together, Server Slot Location in Enclosure, Enclosure UUID, and Manager Domain IP Address|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.ServerSignatureStatus
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The current state of Server Signature.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Initial`|The server signature calculation has not run yet.|n|`Busy`|The server signature calculation is being run.|n|`Invalid`|The server signature is invalid.  Re-compute action necessary.|n|`Complete`|The server signature calculation is complete and valid.|n
### Oem.Hpe.SmartStorageConfig (array)
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
`SmartStorageConfig` is an array containing elements of: 

**SmartStorageConfig[{item}].@odata.id**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Oem.Hpe.SystemROMAndiLOEraseComponentStatus
**Oem.Hpe.SystemROMAndiLOEraseComponentStatus.BIOSSettingsEraseStatus**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
**Oem.Hpe.SystemROMAndiLOEraseComponentStatus.iLOSettingsEraseStatus**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
### Oem.Hpe.SystemROMAndiLOEraseStatus
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
### Oem.Hpe.SystemUsage
**Oem.Hpe.SystemUsage.AvgCPU0Freq**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current CPU0 average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.AvgCPU1Freq**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current CPU1 average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.AvgCPU2Freq**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current CPU2 average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.AvgCPU3Freq**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current CPU3 average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPU0Power**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current power consumed by the system CPU0 in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPU1Power**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current power consumed by the system CPU1 in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPU2Power**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current power consumed by the system CPU2 in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPU3Power**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current power consumed by the system CPU3 in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPUICUtil**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current System CPU Interconnect utilization in percentage|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.CPUUtil**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current System CPU utilization in percentage|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.IOBusUtil**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current System I/O bus utilization in percentage|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.JitterCount**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current processor Jitter Count.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

**Oem.Hpe.SystemUsage.MemoryBusUtil**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Current System memory bus utilization in percentage|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.UserDataEraseComponentStatus
**Oem.Hpe.UserDataEraseComponentStatus.NVDIMMEraseStatus**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
**Oem.Hpe.UserDataEraseComponentStatus.NVMeDrivesEraseStatus**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
**Oem.Hpe.UserDataEraseComponentStatus.SATADrivesEraseStatus**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
**Oem.Hpe.UserDataEraseComponentStatus.SmartStorageEraseStatus**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
**Oem.Hpe.UserDataEraseComponentStatus.TPMEraseStatus**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
### Oem.Hpe.UserDataEraseStatus
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Indicates the erase status of the individual components|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Idle`|Indicates SecureSystem Erase is not started|n|`Initiated`|Indicates Secure System Erase process is started|n|`InProgress`|Indicates Secure System Erase process is under progress|n|`CompletedWithSuccess`|Indicates Secure System Erase process has been completed with no errors|n|`CompletedWithErrors`|Indicates Secure System Erase process has been completed with some errors|n|`Failed`|Indicates Secure System Erase process has failed|n
### Oem.Hpe.VirtualProfile
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The current state of the systems virtual profile.  This profile is the one that, when the server is rebooted, will set the  Virtual properties.  Intent is to use this state to determine whether the server needs to be rebooted so these values are set.  Additional informaiton about the profile will be considered later.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Active`|
|`Busy`|
|`Inactive`|
|`Unknown`|

### Oem.Hpe.VirtualUUID
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Used in conjunction with the UUID (Logical) value.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PartNumber
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The manufacturer's system part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerState
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This is the current power state of the system|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Null`|
|`On`|
|`Off`|
|`Unknown`|
|`Reset`|

### ProcessorSummary
**ProcessorSummary.Count**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The number of processors in the system.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ProcessorSummary.Model**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The processor model for the primary or majority of processors in this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ProcessorSummary.Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

### Processors
The central processors in the system.
Processors is a link (`"@odata.id": URI`) to another resource.

### SKU
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|SKU for this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SecureBoot
A reference to the UEFI SecureBoot resource associated with this system.
SecureBoot is a link (`"@odata.id": URI`) to another resource.

### SerialNumber
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The system serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Status
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

### Storage
A reference to the collection of storage devices associated with this system.
Storage is a link (`"@odata.id": URI`) to another resource.

### SystemType
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The type of computer system that this resource represents.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Physical`|A computer system|n|`Virtual`|A virtual machine instance running on this system|n|`OS`|An operating system instance|n|`PhysicallyPartitioned`|A hardware-based partition of a computer system|n|`VirtuallyPartitioned`|A virtual or software-based partition of a computer system|n
### TrustedModules (array)
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
`TrustedModules` is an array containing elements of: 

**TrustedModules[{item}].FirmwareVersion**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The firmware version of this Trusted Module|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**TrustedModules[{item}].InterfaceType**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|This property indicates the interface type of the Trusted Module.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`TM1_0`|Trusted Module (TM) 1.0|n|`TPM1_2`|Trusted Platform Module (TPM) 1.2|n|`TPM2_0`|Trusted Platform Module (TPM) 2.0|n
**TrustedModules[{item}].Oem.Hpe.VendorName**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|Trusted module vendor name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|`None`|
|`STMicro`|
|`Intel`|
|`Nationz`|
|`Unknown`|

**TrustedModules[{item}].Status**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
See the Redfish standard schema and specification for information on common Status object.

### UUID
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

| | |
|---|---|
|Description|The universal unique identifier for this system.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Actions

**ComputerSystem.Reset**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
This action resets the system.


**Parameters:**

**ResetType (string)**

The type of reset.

|Value|Description|
|---|---|
|ForceOff|Turn off the unit immediately (non-graceful shutdown).|
|ForceOn|Turn on the unit immediately.|
|ForceRestart|Shut down immediately and non-gracefully and restart the system.|
|GracefulRestart|Shut down gracefully and restart the system.|
|GracefulShutdown|Shut down gracefully and power off.|
|Nmi|Generate a diagnostic interrupt, which is usually an NMI on x86 systems, to stop normal operations, complete diagnostic actions, and, typically, halt the system.|
|On|Turn on the unit.|
|PowerCycle|Power cycle the unit.|
|PushPowerButton|Simulate the pressing of the physical power button on this unit.|

**target (string)**

Link to invoke action

**title (string)**

Friendly action name

**HpeComputerSystemExt.PowerButton**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

**Parameters:**

**PushType (string)**

PushType identifies the type of Action to be performed.

|Value|Description|
|---|---|
|Press|
|PressAndHold|

**HpeComputerSystemExt.RestoreManufacturingDefaults**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.RestoreSystemDefaults**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.SecureSystemErase**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

**Parameters:**

**SystemROMAndiLOErase (boolean)**

Action to perform resetting the system BIOS settings and iLO to manufacturing defaults. It also erases the user data in the NAND like Active Health System(AHS), Repository.

**UserDataErase (boolean)**

Action to perform erasing all the user data on the system including TPMs, persistent memory devices, storage controller configurations, RAID settings, as well as the hard drives attached to the system. USB and other removable media will be excluded.

**HpeComputerSystemExt.ServerIntelligentDiagnosticsMode**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.ServerSafeMode**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.ServerSigRecompute**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)
There are no parameters for this action.

**HpeComputerSystemExt.SystemReset**
Member of [ComputerSystem.v1\_10\_0.ComputerSystem](#computersystemv1\_10\_0computersystem)

**Parameters:**

**ResetType (string)**

ResetType identifies the type of Action to be performed.

|Value|Description|
|---|---|
|ColdBoot|
|AuxCycle|
## ComputerSystemCollection.ComputerSystemCollection

`@odata.type: "#ComputerSystemCollection.ComputerSystemCollection"`

A Collection of ComputerSystem resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[ComputerSystem](#computersystemv1_10_0computersystem)|

### Members (array)
Member of ComputerSystemCollection.ComputerSystemCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of ComputerSystemCollection.ComputerSystemCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of ComputerSystemCollection.ComputerSystemCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## EthernetInterface.v1\_4\_1.EthernetInterface

`@odata.type: "#EthernetInterface.v1_4_1.EthernetInterface"`

The EthernetInterface resource describes a single, logical ethernet interface or network interface controller (NIC).
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/ethernetinterfaces/3/`|GET PATCH |
`/redfish/v1/managers/{item}/ethernetinterfaces/{item}/`|GET PATCH |
`/redfish/v1/systems/{item}/ethernetinterfaces/{item}/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/HostInterface`|[HostInterface](#hostinterfacev1_1_1hostinterface)|

### AutoNeg
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates if the speed and duplex are automatically negotiated and configured on this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.10|

### DHCPv4
**DHCPv4.DHCPEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether DHCPv4 is enabled on this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied DNS servers.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use a DHCPv4-supplied domain name.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use a DHCPv4-supplied gateway.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied NTP servers.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv4.UseStaticRoutes**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied static routes.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### DHCPv6
**DHCPv6.OperatingMode**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines the DHCPv6 operating mode for this interface.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Stateful`|DHCPv6 stateful mode.|n|`Stateless`|DHCPv6 stateless mode.|n|`Disabled`|DHCPv6 is disabled.|n
**DHCPv6.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|When enabled, DNS server addresses supplied through DHCPv6 stateless mode will be used.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv6.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|When enabled, the domain name supplied through DHCPv6 stateless mode will be used.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv6.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|When enabled, NTP server addresses supplied through DHCPv6 stateless mode will be used.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**DHCPv6.UseRapidCommit**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv6 rapid commit mode for stateful mode address assignments. Do not enable in networks where more than one DHCPv6 server is configured to provide address assignments.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### FQDN
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the complete, fully qualified domain name obtained by DNS for this interface.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### FullDuplex
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates if the interface is in Full Duplex mode or not.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.10|

### HostName
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The DNS Host Name, without any domain information.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### IPv4Addresses (array)
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`IPv4Addresses` is an array containing elements of: 

**IPv4Addresses[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**IPv4Addresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Static`|A static address as configured by the user.|n|`DHCP`|Address is provided by a DHCPv4 service.|n|`BOOTP`|Address is provided by a BOOTP service.|n|`IPv4LinkLocal`|Address is valid only for this network segment (link).|n
**IPv4Addresses[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 gateway for this address.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**IPv4Addresses[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Subnet mask.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### IPv4StaticAddresses (array)
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`IPv4StaticAddresses` is an array containing elements of: 

**IPv4StaticAddresses[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**IPv4StaticAddresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Static`|A static address as configured by the user.|n|`DHCP`|Address is provided by a DHCPv4 service.|n|`BOOTP`|Address is provided by a BOOTP service.|n|`IPv4LinkLocal`|Address is valid only for this network segment (link).|n
**IPv4StaticAddresses[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 gateway for this address.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**IPv4StaticAddresses[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv4 Subnet mask.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

### IPv6AddressPolicyTable (array)
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`IPv6AddressPolicyTable` is an array containing elements of: 

**IPv6AddressPolicyTable[{item}].Label**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The IPv6 Label (as defined in RFC 6724 section 2.1).|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

**IPv6AddressPolicyTable[{item}].Precedence**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The IPv6 Precedence (as defined in RFC 6724 section 2.1.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

**IPv6AddressPolicyTable[{item}].Prefix**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The IPv6 Address Prefix (as defined in RFC 6724 section 2.1).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### IPv6Addresses (array)
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`IPv6Addresses` is an array containing elements of: 

**IPv6Addresses[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv6 Address.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**IPv6Addresses[{item}].AddressOrigin**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates how the address was determined.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Static`|A static address as configured by the user.|n|`DHCPv6`|Address is provided by a DHCPv6 service.|n|`LinkLocal`|Address is valid only for this network segment (link).|n|`SLAAC`|Address is provided by a Stateless Address AutoConfiguration (SLAAC) service.|n
**IPv6Addresses[{item}].AddressState**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The current state of this address as defined in RFC 4862.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`Preferred`|This address is currently within both it's valid and preferred lifetimes as defined in RFC 4862.|n|`Deprecated`|This address is currently within it's valid lifetime, but is now outside of it's preferred lifetime as defined in RFC 4862.|n|`Tentative`|This address is currently undergoing Duplicate Address Detection testing as defined in RFC 4862 section 5.4.|n|`Failed`|This address has failed Duplicate Address Detection testing as defined in RFC 4862 section 5.4 and is not currently in use.|n
**IPv6Addresses[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv6 Address Prefix Length.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### IPv6DefaultGateway
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the IPv6 default gateway address that is currently in use on this interface.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### IPv6StaticAddresses (array)
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`IPv6StaticAddresses` is an array containing elements of: 

**IPv6StaticAddresses[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|A valid IPv6 address.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**IPv6StaticAddresses[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The Prefix Length of this IPv6 address.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### IPv6StaticDefaultGateways (array)
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`IPv6StaticDefaultGateways` is an array containing elements of: 

**IPv6StaticDefaultGateways[{item}].Address**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|A valid IPv6 address.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**IPv6StaticDefaultGateways[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The Prefix Length of this IPv6 address.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.40|

### InterfaceEnabled
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates whether this interface is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### LinkStatus
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The link status of this interface (port).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`Null`|A value is temporarily unavailable|n|`LinkUp`|The link is available for communication on this interface.|n|`NoLink`|There is no link or connection detected on this interface.|n|`LinkDown`|There is no link on this interface, but the interface is connected.|n
### MACAddress
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the currently configured MAC address of the (logical port) interface.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### MTUSize
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the currently configured Maximum Transmission Unit (MTU) in bytes on this interface.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.40|

### MaxIPv6StaticAddresses
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates the maximum number of Static IPv6 addresses that can be configured on this interface.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### NameServers (array)
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`NameServers` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

### Oem.Hpe.ConfigurationSettings
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The state of the currently displayed configuration settings.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`Current`|All configuration settings for this NIC are currently in use.|n|`SomePendingReset`|One or more configuration settings on this NIC are not yet in use.  They require a reset of this management processor in order to take effect.|n
### Oem.Hpe.DHCPv4
**Oem.Hpe.DHCPv4.ClientId**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The client ID to override the default used in iLO.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**Oem.Hpe.DHCPv4.ClientIdType**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The type of client id in use or to be selected.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Custom`|Allows user to enter any value.|n|`Default`|Use the default iLO5 value - MAC Address + Instance number.|n|`Hostname`|Use the hostname.|n|`MacAddress`|Use the default iLO4 value - MAC Address.|n
**Oem.Hpe.DHCPv4.Enabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.DHCPEnabled, and will be removed in a future release. Determines whether DHCPv4 is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseDNSServers, and will be removed in a future release. Determines whether to use DHCPv4-supplied DNS servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseDomainName, and will be removed in a future release. Determines whether to use a DHCPv4-supplied domain name. Can only be enabled when DHCPv4 is also enabled; otherwis,e this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseGateway, and will be removed in a future release. Determines whether to use a DHCPv4-supplied gateway. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseNTPServers, and will be removed in a future release. Determines whether to use DHCPv4-supplied NTP servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseStaticRoutes**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv4.UseStaticRoutes, and will be removed in a future release. Determines whether to use DHCPv4-supplied static routes. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv4.UseWINSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether to use DHCPv4-supplied WINS servers. Can only be enabled when DHCPv4 is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.DHCPv6
**Oem.Hpe.DHCPv6.StatefulModeEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.OperatingMode, and will be removed in a future release.Determines whether DHCPv6 Stateful mode is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.StatelessModeEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.OperatingMode, and will be removed in a future release. Determines whether DHCPv6 Stateless mode is enabled.  Always enabled by default whenever DHCPv6 Stateful mode is also enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.UseDNSServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseDNSServers, and will be removed in a future release. Determines whether to use DHCPv6-supplied DNS servers. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.UseDomainName**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseDomainName, and will be removed in a future release. Determines whether to use a DHCPv6-supplied domain name. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.UseNTPServers**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseNTPServers, and will be removed in a future release. Determines whether to use DHCPv6-supplied NTP servers. Can only be enabled when DHCPv6 Stateless mode is also enabled; otherwise, this property will be set to false and will be read-only.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.DHCPv6.UseRapidCommit**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property DHCPv6Configuration.UseRapidCommit, and will be removed in a future release. Determines whether to use DHCPv6 rapid commit mode. Can only be enabled when DHCPv6 Stateful mode is also enabled; otherwise, this property will be set to false and will be read-only. Do not enable in networks where more than one DHCPv6 server is configured to provide address assignments.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.DomainName
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Domain name of the network to which this management processor belongs. This property can only be modified when the management processor is not configured to use a DHCP supplied domain name; otherwise this property is read-only indicating the value is provided by DHCP.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.HostName
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property HostName, and will be removed in a future release. The management processor host name.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|
|Format|hostname|

### Oem.Hpe.IPv4
**Oem.Hpe.IPv4.DDNSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether DDNS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.IPv4.DNSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`DNSServers` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv4|

**Oem.Hpe.IPv4.StaticRoutes (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`StaticRoutes` is an array containing elements of: 

**StaticRoutes[{item}].Destination**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|An IPv4 static route destination. Only writeable when use of DHCPv4-supplied static routes is disabled; otherwise this property is read-only indicating the value is provided by DHCPv4.|
|Type|string|
|Read Only|False|
|Format|ipv4|

**StaticRoutes[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|An IPv4 static route gateway. Only writeable when use of DHCPv4-supplied static routes is disabled; otherwise this property is read-only indicating the value is provided by DHCPv4.|
|Type|string|
|Read Only|False|
|Format|ipv4|

**StaticRoutes[{item}].SubnetMask**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|An IPv4 static route subnet mask. Only writeable when use of DHCPv4-supplied static routes is disabled; otherwise this property is read-only indicating the value is provided by DHCPv4.|
|Type|string|
|Read Only|False|
|Format|ipv4|

**Oem.Hpe.IPv4.WINSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether WINS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.IPv4.WINSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`WINSServers` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv4|

### Oem.Hpe.IPv6
**Oem.Hpe.IPv6.DDNSRegistration**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether IPv6 DDNS registration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.IPv6.DNSServers (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`DNSServers` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|ipv6|

**Oem.Hpe.IPv6.SLAACEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property StatelessAddressAutoConfig.IPv6AutoConfigEnabled, and will be removed in a future release. Determines whether StateLess Address Auto-Configuration is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Oem.Hpe.IPv6.StaticDefaultGateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property IPv6StaticDefaultGateways[].Address, and will be removed in a future release. The IPv6 static default gateway entry.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|
|Format|ipv6|

**Oem.Hpe.IPv6.StaticRoutes (array)**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`StaticRoutes` is an array containing elements of: 

**StaticRoutes[{item}].Destination**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The IPv6 static route destination address.|
|Type|string|
|Read Only|False|
|Format|ipv6|

**StaticRoutes[{item}].Gateway**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The IPv6 static route gateway.|
|Type|string|
|Read Only|False|
|Format|ipv6|

**StaticRoutes[{item}].PrefixLength**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The prefix length of the IPv6 static route destination address.|
|Type|integer or null|
|Read Only|False|

**StaticRoutes[{item}].Status**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.InterfaceType
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Describes the network interface type.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|`Dedicated`|
|`Shared`|
|`HostInterface`|

### Oem.Hpe.NICEnabled
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Deprecated, replaced by DMTF standard property InterfaceEnabled, and will be removed in a future release. Determines whether this NIC is enabled or disabled. Enabling one NIC will disable the others. If no NIC is enabled, this management processor is not accessible over the network.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.NICSupportsIPv6
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Indicates whether or not this NIC can support the IPv6 protocol.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PingGatewayOnStartup
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Determines whether to ping the IPv4 gateway on startup.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.SharedNetworkPortOptions
**Oem.Hpe.SharedNetworkPortOptions.NIC**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Selects the system NIC that is to be shared with this management processor.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`LOM`|The LOM NIC is configured to be shared.|n|`FlexibleLOM`|The FlexibleLOM NIC is configured to be shared.|n|`FlexibleLOM/OCP`|The FlexibleLOM/OCP is configured to be shared.|n
**Oem.Hpe.SharedNetworkPortOptions.Port**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The network adapter port number that is used for sharing. This feature is only applicable on systems and network adapters that support it.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.SupportsFlexibleLOM
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Indicates whether this system supports FlexibleLOM. Only applies to Shared Network Port.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.SupportsLOM
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Indicates whether this system supports LOM. Only applies to Shared Network Port.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PermanentMACAddress
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the permanent MAC address assigned to this interface (port).|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SpeedMbps
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This is the current speed in Mbps of this interface.|
|Type|integer or null|
|Read Only|False|

### StatelessAddressAutoConfig
**StatelessAddressAutoConfig.IPv4AutoConfigEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Indicates whether IPv4 SLAAC is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

**StatelessAddressAutoConfig.IPv6AutoConfigEnabled**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|Indicates whether IPv6 SLAAC is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### StaticNameServers (array)
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
`StaticNameServers` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

### Status
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)
See the Redfish standard schema and specification for information on common Status object.

### UefiDevicePath
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|The UEFI device path for this interface.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### VLAN
**VLAN.VLANEnable**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates if this VLAN is enabled.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.10|

**VLAN.VLANId**
Member of [EthernetInterface.v1\_4\_1.EthernetInterface](#ethernetinterfacev1\_4\_1ethernetinterface)

| | |
|---|---|
|Description|This indicates the VLAN identifier for this VLAN.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### VLANs
This is a reference to a collection of VLANs and is only used if the interface supports more than one VLANs.
VLANs is a link (`"@odata.id": URI`) to another resource.

## EthernetInterfaceCollection.EthernetInterfaceCollection

`@odata.type: "#EthernetInterfaceCollection.EthernetInterfaceCollection"`

A Collection of EthernetInterface resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/ethernetinterfaces/`|GET |
`/redfish/v1/systems/{item}/ethernetinterfaces/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[EthernetInterface](#ethernetinterfacev1_4_1ethernetinterface)|

### Members (array)
Member of EthernetInterfaceCollection.EthernetInterfaceCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of EthernetInterfaceCollection.EthernetInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of EthernetInterfaceCollection.EthernetInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## EventDestinationCollection.EventDestinationCollection

`@odata.type: "#EventDestinationCollection.EventDestinationCollection"`

A Collection of EventDestination resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/eventservice/subscriptions/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[EventDestination](#eventdestinationv1_0_0eventdestination)|

### Members (array)
Member of EventDestinationCollection.EventDestinationCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of EventDestinationCollection.EventDestinationCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of EventDestinationCollection.EventDestinationCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## EventService.v1\_0\_8.EventService

`@odata.type: "#EventService.v1_0_8.EventService"`

The EventService resource describes the Event Service.  It represents the properties for the service itself and has links to the actual list of subscriptions.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/eventservice/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Oem/Hpe`|[EventService](#eventservicev1_0_8eventservice)|
|`Oem/Hpe/CACertificates`|HpeCertificateCollection|
|`Subscriptions`|Collection of [EventDestination](#eventdestinationv1_0_0eventdestination)|

### DeliveryRetryAttempts
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)

| | |
|---|---|
|Description|This is the number of attempts an event posting is retried before the subscription is terminated.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### DeliveryRetryIntervalSeconds
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)

| | |
|---|---|
|Description|This represents the number of seconds between retry attempts for sending any given Event|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### EventTypesForSubscription (array)
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)
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
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)

| | |
|---|---|
|Description|This represents the default number of events the service should queue.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.RetireOldEventInMinutesDefault
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)

| | |
|---|---|
|Description|This represents the default number of minutes until an event is expired.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TTLCountDefault
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)

| | |
|---|---|
|Description|The default number of TTLUnits until this listener destination subscription expires.  It may be renewed prior to expire to reset the Time to Live counter.  The value 999999 is reserved to mean a perpetual subscription.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TTLUnitsDefault
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)

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
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Status
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)
See the Redfish standard schema and specification for information on common Status object.

### Subscriptions
This is a reference to a collection of ListenerDestination resources.
Subscriptions is a link (`"@odata.id": URI`) to another resource.

### Actions

**EventService.SubmitTestEvent**
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)

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
Member of [EventService.v1\_0\_8.EventService](#eventservicev1\_0\_8eventservice)
Imports a Trusted CA Certificate


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).
## HostInterface.v1\_1\_1.HostInterface

`@odata.type: "#HostInterface.v1_1_1.HostInterface"`

The HostInterface resource describes a Redfish Host Interface, which is a method of accessing the Redfish API from the host computer system.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/hostinterfaces/{item}/`|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`ManagerEthernetInterface`|[EthernetInterface](#ethernetinterfacev1_4_1ethernetinterface)|
|`NetworkProtocol`|[ManagerNetworkProtocol](#managernetworkprotocolv1_0_0managernetworkprotocol)|

### AuthenticationModes (array)
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)
`AuthenticationModes` is an array containing elements of: 

**AuthenticationModes[{item}].AuthenticationMode**
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)

| | |
|---|---|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`AuthNone`|Requests without any sort of authentication are allowed.|n|`BasicAuth`|Requests using HTTP Basic Authentication are allowed.|n|`RedfishSessionAuth`|Requests using Redfish Session Authentication are allowed.|n|`OemAuth`|Requests using OEM authentication mechanisms are allowed.|n
### ExternallyAccessible
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)

| | |
|---|---|
|Description|This indicates whether this interface is accessible by external entities.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.40|

### FirmwareAuthEnabled
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)

| | |
|---|---|
|Description|This indicates whether this firmware authentication is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### FirmwareAuthRoleId
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)

| | |
|---|---|
|Description|This property contains the Role for firmware authentication on this interface.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

### HostEthernetInterfaces
This is a reference to a collection of NICs that Computer Systems use for network communication with this Host Interface.
HostEthernetInterfaces is a link (`"@odata.id": URI`) to another resource.

### HostInterfaceType
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)

| | |
|---|---|
|Description|This indicates the Host Interface type for this interface.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`NetworkHostInterface`|This interface is a Network Host Interface.|n
### InterfaceEnabled
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)

| | |
|---|---|
|Description|This indicates whether this interface is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.40|

### KernelAuthEnabled
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)

| | |
|---|---|
|Description|This indicates whether this kernel authentication is enabled for this interface.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### KernelAuthRoleId
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)

| | |
|---|---|
|Description|This property contains the Role for kernel authentication on this interface.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

### ManagerEthernetInterface
This is a reference to a single NIC that this Manager uses for network communication with this Host Interface.
ManagerEthernetInterface is a link (`"@odata.id": URI`) to another resource.

### NetworkProtocol
This is a reference to the network services and their settings that the Manager controls.  It is here that clients will find network configuration options as well as network services.
NetworkProtocol is a link (`"@odata.id": URI`) to another resource.

### Status
Member of [HostInterface.v1\_1\_1.HostInterface](#hostinterfacev1\_1\_1hostinterface)
See the Redfish standard schema and specification for information on common Status object.

## HostInterfaceCollection.HostInterfaceCollection

`@odata.type: "#HostInterfaceCollection.HostInterfaceCollection"`

A Collection of HostInterface resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/hostinterfaces/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HostInterface](#hostinterfacev1_1_1hostinterface)|

### Members (array)
Member of HostInterfaceCollection.HostInterfaceCollection
`Members` is an array containing elements of: 

**Members[{item}].@odata.id**
Member of HostInterfaceCollection.HostInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HostInterfaceCollection.HostInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs

`@odata.type: "#HpeBaseConfigs.v2_0_0.HpeBaseConfigs"`
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/bios/baseconfigs/`|GET |
`/redfish/v1/systems/{item}/bios/boot/baseconfigs/`|GET |
`/redfish/v1/systems/{item}/bios/iscsi/baseconfigs/`|GET |
`/redfish/v1/systems/{item}/bios/kmsconfig/baseconfigs/`|GET |
`/redfish/v1/systems/{item}/bios/serverconfiglock/baseconfigs/`|GET |
`/redfish/v1/systems/{item}/bios/tlsconfig/baseconfigs/`|GET |

### BaseConfigs (array)
Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigsv2\_0\_0hpebaseconfigs)
`BaseConfigs` is an array containing elements of: 

### Capabilities
**Capabilities.BaseConfig**
Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigsv2\_0\_0hpebaseconfigs)

| | |
|---|---|
|Type|boolean|
|Read Only|True|

**Capabilities.BaseConfigs**
Member of [HpeBaseConfigs.v2\_0\_0.HpeBaseConfigs](#hpebaseconfigsv2\_0\_0hpebaseconfigs)

| | |
|---|---|
|Type|boolean|
|Read Only|True|

## HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter

`@odata.type: "#HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter"`

The HpeBaseNetworkAdapter resource describes an Ethernet Adapter and its ports.  Clients should use the Redfish NetworkAdapter and NetworkInterface resources when available instead of this.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/basenetworkadapters/{item}/`|GET |

### FcPorts (array)
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)
`FcPorts` is an array containing elements of: 

**FcPorts[{item}].PortNumber**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|Port Number.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**FcPorts[{item}].WWNN**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|World Wide Node Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**FcPorts[{item}].WWPN**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|World Wide Port Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Firmware
**Firmware.Current**
**Firmware.Current.VersionString**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|Location of the device.|
|Type|string|
|Read Only|True|

### PartNumber
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|The device part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalPorts (array)
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)
`PhysicalPorts` is an array containing elements of: 

**PhysicalPorts[{item}].FullDuplex**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|Full-duplex data transmission means that data can be transmitted in both directions on a signal carrier at the same time.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].IPv4Addresses (array)**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)
`IPv4Addresses` is an array containing elements of: 

**IPv4Addresses[{item}].Address**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|True|

**PhysicalPorts[{item}].IPv6Addresses (array)**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)
`IPv6Addresses` is an array containing elements of: 

**IPv6Addresses[{item}].Address**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|This is the IPv6 Address.|
|Type|string or null|
|Read Only|True|
|Format|ipv6|

**PhysicalPorts[{item}].LinkStatus**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

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
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|The port MAC address.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.BadReceives**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames that were received by the adapter but which had an error.  This counter is the sum of mib items cpqNicIfPhysAdapterAlignmentErrors, cpqNicIfPhysAdapterFCSErrors, cpqNicIfPhysAdapterFrameTooLongs, and cpqNicIfPhysAdapterInternalMacReceiveErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.BadTransmits**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames that were not transmitted by the adapter because of an error.  This counter is the sum of MIB items cpqNicIfPhysAdapterDeferredTransmissions, cpqNicIfPhysAdapterLateCollisions, cpqNicIfPhysAdapterExcessiveCollisions, cpqNicIfPhysAdapterCarrierSenseErrors, and cpqNicIfPhysAdapterInternalMacTransmitErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.GoodReceives**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames successfully received by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.GoodTransmits**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames successfully transmitted by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.StructuredName**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.Team**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|If a port is configured for NIC teaming, the name of the configured link between the physical ports that form a logical network adapter. This value is displayed for system NICs only (embedded and stand-up).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].SpeedMbps**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|An estimate of the interface's current bandwidth in Megabits per second.  For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Status**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)
See the Redfish standard schema and specification for information on common Status object.

**PhysicalPorts[{item}].UEFIDevicePath**
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|The device serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Status
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)
See the Redfish standard schema and specification for information on common Status object.

### StructuredName
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePath
Member of [HpeBaseNetworkAdapter.v2\_0\_0.HpeBaseNetworkAdapter](#hpebasenetworkadapterv2\_0\_0hpebasenetworkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeBaseNetworkAdapterCollection.HpeBaseNetworkAdapterCollection

`@odata.type: "#HpeBaseNetworkAdapterCollection.HpeBaseNetworkAdapterCollection"`

A Collection of HpeBaseNetworkAdapter resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/basenetworkadapters/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeBaseNetworkAdapter](#hpebasenetworkadapterv2_0_0hpebasenetworkadapter)|

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

## HpeBiosMapping.v2\_0\_0.HpeBiosMapping

`@odata.type: "#HpeBiosMapping.v2_0_0.HpeBiosMapping"`

This is the schema definition for the BIOS Attributes Mappings resource.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/bios/mappings/`|GET |

### AttributeRegistry
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)

| | |
|---|---|
|Description|The Resource ID of the Attribute Registry for the BIOS Attributes resource.|
|Type|string or null|
|Read Only|True|

### BiosPciSettingsMappings (array)
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)
`BiosPciSettingsMappings` is an array containing elements of: 

**BiosPciSettingsMappings[{item}].Associations (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)
`Associations` is an array containing elements of: 

**BiosPciSettingsMappings[{item}].CorrelatableID**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)

| | |
|---|---|
|Description|Contains any CorrelatableIDs that represent this PCI device. The CorrelatableID values can be JSON Pointers or UEFI identifiers.|
|Type|string|
|Read Only|True|

**BiosPciSettingsMappings[{item}].Instance**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)

| | |
|---|---|
|Description|The instance number of the parent PCI device for this association set.|
|Type|integer|
|Read Only|True|

**BiosPciSettingsMappings[{item}].Subinstances (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)
`Subinstances` is an array containing elements of: 

**Subinstances[{item}].Associations (array)**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)
`Associations` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

**Subinstances[{item}].CorrelatableID**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)

| | |
|---|---|
|Description|Contains any CorrelatableIDs that represent this PCI device. The CorrelatableID values can be JSON Pointers or UEFI identifiers.|
|Type|string|
|Read Only|True|

**Subinstances[{item}].Subinstance**
Member of [HpeBiosMapping.v2\_0\_0.HpeBiosMapping](#hpebiosmappingv2\_0\_0hpebiosmapping)

| | |
|---|---|
|Description|The sub-instance number of the child PCI device for this association set.|
|Type|integer|
|Read Only|True|

## HpeBundleUpdateReport.v1\_0\_0.HpeBundleUpdateReport

`@odata.type: "#HpeBundleUpdateReport.v1_0_0.HpeBundleUpdateReport"`
ERROR: No instances found for resource type #HpeBundleUpdateReport.v1_0_0.HpeBundleUpdateReport in the resource map.

This resource contains Bundle Update report
### Resource Instances
|Uri|HTTP Allow|
|---|---|

ERROR: No instances found for resource type #HpeBundleUpdateReport.v1_0_0.HpeBundleUpdateReport in the resource map.
## HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection

`@odata.type: "#HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection"`
ERROR: No instances found for resource type #HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection in the resource map.

A Collection of HpeComponentBundleUpdateReport resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|

ERROR: No instances found for resource type #HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection in the resource map.
## HpeCertAuth.v1\_1\_0.HpeCertAuth

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
|`Links/UserCertificateMapping`|Collection of [HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemapv1_0_1hpeiloaccountcertificatemap)|

### CACertificates
The value of this property shall be a reference to a Collection of HpeCertificate resources.
CACertificates is a link (`"@odata.id": URI`) to another resource.

### CRLIssuer
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)

| | |
|---|---|
|Description|Issuer of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### CRLSerial
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)

| | |
|---|---|
|Description|Serial Number of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### CertificateLoginEnabled
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)

| | |
|---|---|
|Description|Specifies whether Certificate login is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### LDAPCertificateNameMapping
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)

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
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)

| | |
|---|---|
|Description|URL to use for OCSP certificate checking.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.15|
|Format|uri-reference|

### StrictCACModeEnabled
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)

| | |
|---|---|
|Description|Whether or not Strict CAC Mode is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeCertAuth.DeleteCRL**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)
Remove an installed Certificate Revocation List (CRL).

There are no parameters for this action.

**HpeCertAuth.ImportCACertificate**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)
Imports a Trusted Certificate


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).

**HpeCertAuth.ImportCRL**
Member of [HpeCertAuth.v1\_1\_0.HpeCertAuth](#hpecertauthv1\_1\_0hpecertauth)
Imports a Certificate Revocation List (CRL).


**Parameters:**

**ImportUri (string)**

Contains URI of PEM formatted certificate revocation list (CRL) (Base64 encoded).
## HpeCertificate.v1\_0\_0.HpeCertificate

`@odata.type: "#HpeCertificate.v1_0_0.HpeCertificate"`

The HpeCertificate resource describes an X509 certificate.

This resource type was added in iLO 5 1.20

### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates/{item}/`|GET DELETE |

### Issuer
Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificatev1\_0\_0hpecertificate)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificatev1\_0\_0hpecertificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Subject
Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificatev1\_0\_0hpecertificate)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ValidNotAfter
Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificatev1\_0\_0hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### ValidNotBefore
Member of [HpeCertificate.v1\_0\_0.HpeCertificate](#hpecertificatev1\_0\_0hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

## HpeCertificateCollection.HpeCertificateCollection

`@odata.type: "#HpeCertificateCollection.HpeCertificateCollection"`

A Collection of HpeCertificate resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/eventservice/cacertificates/`|GET |
`/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeCertificate](#hpecertificatev1_0_0hpecertificate)|

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

## HpeComponent.v1\_0\_1.HpeComponent

`@odata.type: "#HpeComponent.v1_0_1.HpeComponent"`

The HpeComponent resource describes a software or firmware update component.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/componentrepository/{item}/`|GET PATCH DELETE |

### Activates
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

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
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|HTTP-style content-type of binary|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ComponentUri
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|URI of the component binary.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Configuration
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|string defining customized parameters for some components provided by client at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Created
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|ISO 8601 time string indicating when this component was added to the NAND.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Criticality
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)
### Criticality
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)
### Criticality
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

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
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|Device type GUID from iLO secure flash header|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ExecutionParameters
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|Client supplied execution parameters.  These are supplied at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Filename
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|The unique filename of the component.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Filepath
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|Path of file on the USB LUN if you mount the repo as USB.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Locked
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|If true, this component cannot be removed with DELETE because it is referenced by an Install Set|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### SizeBytes
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|Size of the component file in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Targets (array)
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)
`Targets` is an array containing elements of: 


| | |
|---|---|
|Description|Target GUIDs from secure flash header or sidecar file.|
|Type|string|
|Read Only|True|

### UpdatableBy (array)
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)
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
Member of [HpeComponent.v1\_0\_1.HpeComponent](#hpecomponentv1\_0\_1hpecomponent)

| | |
|---|---|
|Description|Version of the component from secure flash header or sidecar file.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeComponentCollection.HpeComponentCollection

`@odata.type: "#HpeComponentCollection.HpeComponentCollection"`

A Collection of HpeComponent resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/componentrepository/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeComponent](#hpecomponentv1_0_1hpecomponent)|

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

## HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet

`@odata.type: "#HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet"`

The HpeComponentInstallSet resource describes an Install Set, an ordered list of installation instructions that may be invoked.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/installsets/{item}/`|GET POST PATCH DELETE |

### Created
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install set creation.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### IsRecovery
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

| | |
|---|---|
|Description|If true, this install set is reserved to hold only critical firmware recovery updatable by iLO.  Additionally the 'Administrate Recovery Set' iLO privilege is required to modify or remove this install set.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Modified
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install modification.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Sequence (array)
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)
`Sequence` is an array containing elements of: 

**Sequence[{item}].Command**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

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
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

**Sequence[{item}].ExecutionTimeoutMinutes**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

| | |
|---|---|
|Description|The number of minutes that this update will likely take to apply.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|

**Sequence[{item}].Filename**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

| | |
|---|---|
|Description|The unique filename of the component.  This correlates to 'Filename' in the HpeComponent.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

**Sequence[{item}].UpdatableBy (array)**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)
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
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

| | |
|---|---|
|Description|The number of seconds to pause if the command is 'Wait'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeComponentInstallSet.Invoke**
Member of [HpeComponentInstallSet.v1\_1\_0.HpeComponentInstallSet](#hpecomponentinstallsetv1\_1\_0hpecomponentinstallset)

**Parameters:**

**ClearTaskQueue (boolean)**

Previous items in the task queue can be cleared before the Install Set is invoked
## HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

`@odata.type: "#HpeComponentInstallSetCollection.HpeComponentInstallSetCollection"`

A Collection of HpeComponentInstallSet resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/installsets/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeComponentInstallSet](#hpecomponentinstallsetv1_1_0hpecomponentinstallset)|

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

## HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

`@odata.type: "#HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection"`
ERROR: No instances found for resource type #HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection in the resource map.

A Collection of HpeComponentUpdateEntry resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|

ERROR: No instances found for resource type #HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection in the resource map.
## HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

`@odata.type: "#HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection"`

A Collection of HpeComponentUpdateTaskQueue resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/updatetaskqueue/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeComponentUpdateTask](#hpecomponentupdatetaskv1_2_0hpecomponentupdatetask)|

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

## HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest

`@odata.type: "#HpeDirectoryTest.v1_0_0.HpeDirectoryTest"`

The HpeDirectoryTest resource describes the BMC directory test.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/accountservice/directorytest/`|GET POST |

### OverallStatus
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytestv1\_0\_0hpedirectorytest)

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
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytestv1\_0\_0hpedirectorytest)
`TestResults` is an array containing elements of: 

**TestResults[{item}].Notes**
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytestv1\_0\_0hpedirectorytest)

| | |
|---|---|
|Description|This provides additional details on the directory test.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**TestResults[{item}].Status**
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytestv1\_0\_0hpedirectorytest)
See the Redfish standard schema and specification for information on common Status object.

**TestResults[{item}].TestName**
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytestv1\_0\_0hpedirectorytest)

| | |
|---|---|
|Description|The name of directory test.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Actions

**HpeDirectoryTest.StartTest**
Member of [HpeDirectoryTest.v1\_0\_0.HpeDirectoryTest](#hpedirectorytestv1\_0\_0hpedirectorytest)
Start the directory test.


**Parameters:**
## HpeESKM.v2\_0\_0.HpeESKM

`@odata.type: "#HpeESKM.v2_0_0.HpeESKM"`

The HpeESKM resource describes properties for managing the ESKM feature.  ESKM (Enterprise Security Key Manager) enables connections to an operational key manager,change redundancy settings,view the key manager connection settings,test the connection,and view key management events.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/eskm/`|GET POST PATCH |

### ESKMEvents (array)
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)
`ESKMEvents` is an array containing elements of: 

**ESKMEvents[{item}].Event**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|ESKM event description.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ESKMEvents[{item}].Timestamp**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Time of ESKM event.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### KeyManagerConfig
**KeyManagerConfig.AccountGroup**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Account group on ESKM.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.AccountName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Account name on ESKM.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.ESKMLocalCACertificateName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|This is the name of Local CA (Certificate Authority) in ESKM that is used to sign the ESKM server certificate. iLO will retrieve this certificate from the ESKM server.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.ImportedCertificateIssuer**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Imported certificate issuer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.ImportedCertificateSubject**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Imported certificate subject.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.LoginName**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account login name. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.Password**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account password. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### KeyServerRedundancyReq
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|If true encryption keys will be maintained on both the configured key servers. When this option is disabled, iLO will not verify that encryption keys are copied to both of the configured key servers.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### PrimaryKeyServerAddress
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Primary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### PrimaryKeyServerPort
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Primary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecondaryKeyServerAddress
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Secondary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecondaryKeyServerPort
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)

| | |
|---|---|
|Description|Secondary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeESKM.ClearESKMLog**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)
Clears ESKM log.

There are no parameters for this action.

**HpeESKM.TestESKMConnections**
Member of [HpeESKM.v2\_0\_0.HpeESKM](#hpeeskmv2\_0\_0hpeeskm)
Test ESKM connections.

There are no parameters for this action.
## HpeHttpsCert.v2\_0\_0.HpeHttpsCert

`@odata.type: "#HpeHttpsCert.v2_0_0.HpeHttpsCert"`

The HpeHttpsCert resource describes an X509 certificate.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/httpscert/`|GET POST DELETE |

### CertificateSigningRequest
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscertv2\_0\_0hpehttpscert)

| | |
|---|---|
|Description|GenerateCSR action, wait few minutes (upto 10), perform GET operation, fills CSR. Contains a public and private key pair.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### X509CertificateInformation
**X509CertificateInformation.Issuer**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscertv2\_0\_0hpehttpscert)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.SerialNumber**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscertv2\_0\_0hpehttpscert)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.Subject**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscertv2\_0\_0hpehttpscert)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.ValidNotAfter**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscertv2\_0\_0hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**X509CertificateInformation.ValidNotBefore**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscertv2\_0\_0hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Actions

**HpeHttpsCert.GenerateCSR**
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscertv2\_0\_0hpehttpscert)

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
Member of [HpeHttpsCert.v2\_0\_0.HpeHttpsCert](#hpehttpscertv2\_0\_0hpehttpscert)
Imports a Trusted Certificate and iLO is reset.


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate (Base64 encoded).
## HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap

`@odata.type: "#HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap"`

The HpeiLOAccountCertificateMap resource describes mapping X509 certificates to user accounts.

This resource type was added in iLO 5 1.20

### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/accountservice/usercertificatemapping/{item}/`|GET POST DELETE |

### Fingerprint
Member of [HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemapv1\_0\_1hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The fingerprint which uniquely identifies the mapped certificate.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### FingerprintDigestAlgorithm
Member of [HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemapv1\_0\_1hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The algorithm used to calculate the fingerprint.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### UserName
Member of [HpeiLOAccountCertificateMap.v1\_0\_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemapv1\_0\_1hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The name used to log in to the management processor.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection

`@odata.type: "#HpeiLOAccountCertificateMapCollection.HpeiLOAccountCertificateMapCollection"`

A Collection of HpeiLOAccountCertificateMap resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/accountservice/usercertificatemapping/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemapv1_0_1hpeiloaccountcertificatemap)|

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

## HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem

`@odata.type: "#HpeiLOActiveHealthSystem.v2_5_0.HpeiLOActiveHealthSystem"`

The HpeiLOActiveHealthSystem resource describes the properties for managing the Active Health System.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/activehealthsystem/`|GET POST PATCH |

### AHSEnabled
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging is enabled or disabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### AHSFileEnd
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|The end of the AHS log.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### AHSFileStart
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|The start of the AHS log.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### AHSStatus
**AHSStatus.HardwareEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging in hardware is enabled or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**AHSStatus.SoftwareEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging in software is enabled or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**AHSStatus.TemporaryHoldEnabled**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|Determines whether HPE Active Health System logging access is temporarily disabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### LocationParameters
**LocationParameters.case_no**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the case number into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&case_no=abc123.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.co_name**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the company name into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&co_name=myCompany.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.contact_name**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contact name into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&contact_name=JohnDoe.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.days**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter should be used to download the most recent N days of the AHS log. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?days=7. Will retrive logs made within the last 7 days.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

**LocationParameters.downloadAll**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter should be used to download entire AHS log. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.email**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contacts email address into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&email=abc@xyz.com.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.from**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter must be added with the 'to' query parameter to the AHS location URI to limit the range of data returned. 'downloadAll' parameter should not be used with this query parameter. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?from=2014-03-01&&to=2014-03-30.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.phone**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter may be added to the AHS location URI to insert the contacts phone number into the AHS log header. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?downloadAll=1&&contact_name=JohnDoe&&phone=555-555-5555.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**LocationParameters.to**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

| | |
|---|---|
|Description|This query parameter must be added with the 'from' query parameter to the AHS location URI to limit the range of data returned.'downloadAll' parameter should not be used with this query parameter. For example, http://iloname.example.net/ahsdata/HPE_xxxxxxxxxx_20140821.ahs?from=2014-03-01&&to=2014-03-30.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Actions

**HpeiLOActiveHealthSystem.CaptureSystemLog**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)
There are no parameters for this action.

**HpeiLOActiveHealthSystem.ClearLog**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)
There are no parameters for this action.

**HpeiLOActiveHealthSystem.LogAmplifierData**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

**Parameters:**

**iLOAmplifierManagesCount (integer)**

Number of iLOs that this Amplifier instance manages.

**iLOAmplifierName (string)**

Name of the iLO Amplifier instance that manages this iLO.

**HpeiLOActiveHealthSystem.LogMilestone**
Member of [HpeiLOActiveHealthSystem.v2\_5\_0.HpeiLOActiveHealthSystem](#hpeiloactivehealthsystemv2\_5\_0hpeiloactivehealthsystem)

**Parameters:**

**MilestoneDescription (string)**

Description of milestone.

**MilestoneOrigin (string)**

Origin of milestone.
## HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

`@odata.type: "#HpeiLOBackupFileCollection.HpeiLOBackupFileCollection"`

A Collection of HpeiLOBackupFile resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/backuprestoreservice/backupfiles/`|GET POST |

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

## HpeiLOBackupRestoreService.v2\_2\_0.HpeiLOBackupRestoreService

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
Member of [HpeiLOBackupRestoreService.v2\_2\_0.HpeiLOBackupRestoreService](#hpeilobackuprestoreservicev2\_2\_0hpeilobackuprestoreservice)

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
Member of [HpeiLOBackupRestoreService.v2\_2\_0.HpeiLOBackupRestoreService](#hpeilobackuprestoreservicev2\_2\_0hpeilobackuprestoreservice)

| | |
|---|---|
|Description|The URI to which a client may POST a file for a subsequent restore operation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|
|Format|uri-reference|

## HpeiLODateTime.v2\_0\_0.HpeiLODateTime

`@odata.type: "#HpeiLODateTime.v2_0_0.HpeiLODateTime"`

The HpeiLODateTime resource describes the properties for managing the BMC data and time.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/datetime/`|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Links/EthernetNICs`|Collection of [EthernetInterface](#ethernetinterfacev1_4_1ethernetinterface)|

### ConfigurationSettings
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

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
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

| | |
|---|---|
|Description|The date and time used by management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### NTPServers (array)
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)
`NTPServers` is an array containing elements of: 


| | |
|---|---|
|Description|The current NTP server's IPv4 address, IPv6 address, or FQDN. The value either comes from DHCP or is static depending on the DHCP settings.|
|Type|string or null|
|Read Only|True|

### PropagateTimeToHost
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

| | |
|---|---|
|Description|Determines whether the server time is synchronized with the management processor time during the first POST after AC power is applied.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### StaticNTPServers (array)
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)
`StaticNTPServers` is an array containing elements of: 


| | |
|---|---|
|Description|The static NTP server's IPv4 address, IPv6 address, or FQDN. To set this property, management processor must not be configured to use NTP servers provided by DHCPv4 or DHCPv6.|
|Type|string|
|Read Only|True|

### TimeZone
**TimeZone.Index**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

| | |
|---|---|
|Description|The index of the current time zone. To set a new time zone, specify a different time zone index. This property can be set only when DHCPv4 or DHCPv6 supplied time settings are disabled. Since the time zone list might vary from one firmware version to another (which often leads to differences in time zone indices), setting the time zone by name is recommended over setting by index, for better compatibility.|
|Type|number|
|Read Only|False|
|Added|iLO 5 1.10|

**TimeZone.UtcOffset**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the current time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZone.Value**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### TimeZoneList (array)
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)
`TimeZoneList` is an array containing elements of: 

**TimeZoneList[{item}].Index**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

| | |
|---|---|
|Description|The time zone index.|
|Type|number|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZoneList[{item}].UtcOffset**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZoneList[{item}].Value**
Member of [HpeiLODateTime.v2\_0\_0.HpeiLODateTime](#hpeilodatetimev2\_0\_0hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia

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
Member of [HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmediav2\_0\_0hpeiloembeddedmedia)

| | |
|---|---|
|Description|The current version of the embedded media controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Controller.Status**
Member of [HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmediav2\_0\_0hpeiloembeddedmedia)
See the Redfish standard schema and specification for information on common Status object.

### SDCard
**SDCard.SizeMB**
Member of [HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmediav2\_0\_0hpeiloembeddedmedia)

| | |
|---|---|
|Description|The size of the SD card present in the server, in MB.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**SDCard.Status**
Member of [HpeiLOEmbeddedMedia.v2\_0\_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmediav2\_0\_0hpeiloembeddedmedia)
See the Redfish standard schema and specification for information on common Status object.

## HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping

`@odata.type: "#HpeiLOFederatedGroupCapping.v2_0_0.HpeiLOFederatedGroupCapping"`

The HpeiLOFederatedGroupCapping resource describes the properties for managing Federated Group Capping.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/chassis/{item}/power/federatedgroupcapping/`|GET PATCH |

### CapWatts
Member of [HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcappingv2\_0\_0hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The configured power cap for all servers in a group. This value is 0 if the power cap is not configured.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityWatts
Member of [HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcappingv2\_0\_0hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The total power supply capacity for all servers in a group.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Groups
### Throttle
Member of [HpeiLOFederatedGroupCapping.v2\_0\_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcappingv2\_0\_0hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|High, Med, or Low based on the percentage of power usage.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup

`@odata.type: "#HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup"`

The HpeiLOFederationGroup resource describes the properties for managing Federation groups.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/federationgroups/{item}/`|GET PATCH DELETE |

### Key
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|The password used by the Federation Group.|
|Type|string or null|
|Read Only|False|

### Privileges
**Privileges.HostBIOSConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|Host BIOS configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.HostNICConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|Host NIC configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.HostStorageConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|Host Storage configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.LoginPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|Login privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.RemoteConsolePriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|Remote console privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.SystemRecoveryConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|System Recovery configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.UserConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|User configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.VirtualMediaPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual media privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.VirtualPowerAndResetPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual power and reset privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.iLOConfigPriv**
Member of [HpeiLOFederationGroup.v2\_0\_0.HpeiLOFederationGroup](#hpeilofederationgroupv2\_0\_0hpeilofederationgroup)

| | |
|---|---|
|Description|The management processor configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection

`@odata.type: "#HpeiLOFederationGroupCollection.HpeiLOFederationGroupCollection"`

A Collection of HpeiLOFederationGroup resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/federationgroups/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeiLOFederationGroup](#hpeilofederationgroupv2_0_0hpeilofederationgroup)|

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

## HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers

`@odata.type: "#HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers"`

The HpeiLOFederationPeers resource describes the properties for viewing Federation peers.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/federationpeers/{item}/`|GET |

### Peers (array)
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeersv2\_0\_0hpeilofederationpeers)
`Peers` is an array containing elements of: 

**Peers[{item}].HttpErrorCode**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeersv2\_0\_0hpeilofederationpeers)

| | |
|---|---|
|Description|Error code for success or failure.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Peers[{item}].ManagerIPAddress**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeersv2\_0\_0hpeilofederationpeers)

| | |
|---|---|
|Description|Manager IP address of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Peers[{item}].Time**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeersv2\_0\_0hpeilofederationpeers)

| | |
|---|---|
|Description|Time when the federation peer was added.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**Peers[{item}].URL**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeersv2\_0\_0hpeilofederationpeers)

| | |
|---|---|
|Description|URL of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|url|

**Peers[{item}].UUID**
Member of [HpeiLOFederationPeers.v2\_0\_0.HpeiLOFederationPeers](#hpeilofederationpeersv2\_0\_0hpeilofederationpeers)

| | |
|---|---|
|Description|UUID peers that are part of the federation group.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection

`@odata.type: "#HpeiLOFederationPeersCollection.HpeiLOFederationPeersCollection"`

A Collection of HpeiLOFederationPeers resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/federationpeers/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeiLOFederationPeers](#hpeilofederationpeersv2_0_0hpeilofederationpeers)|

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

## HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService

`@odata.type: "#HpeiLOGUIService.v1_1_0.HpeiLOGUIService"`

The HpeiLOGUIService resource describes properties used by the BMC Graphical User Interface.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/guiservice/`|GET |

### Features
**Features.AhsViewer**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Active Health System Viewer feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.AnonymousData**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Anonymous Data feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.BiosPrivilege**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host BIOS privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.CacSmartcard**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Certificate Authentication feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ComputeCloudConsoleFlag**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Compute Cloud Console Feature is enabled.|
|Type|boolean|
|Read Only|True|

**Features.CoolingModuleSupport**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Liquid Cooling modules are available on this platform.|
|Type|boolean|
|Read Only|True|

**Features.DotNetConsole**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote console feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.EAPTLSSupport**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether 802.1X feature is supported on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Encryption**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Encryption feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.EventDetails**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Event Details feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ExternalMonitor**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Server Health on External Monitor feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Federation**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Federation feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.HighEfficiencyMode**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether High Efficiency Mode on redundant power supply is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.HostNicPrivilege**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host NIC Privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.IntelligentProvisioning**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Intelligent Provisioning is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.IpManager**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether the BMC is managed by Remote Manager software.|
|Type|boolean|
|Read Only|True|

**Features.IpxeBoot**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates Embedded iPXE boot option is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.JavaConsole**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Java based Remote console feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Kerberos**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Kerberos authentication feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Licensing**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Licensing feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Mobile**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Mobile view feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.PowerDiscovery**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether HPE Power Discovery Service feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RIBCL**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether RIBCL feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RecoverySet**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Recovery Set privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RemoteConsoleSecurity**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote Console Security feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RemoteSupport**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote Support feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Repository**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Repository feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SecurityDashboard**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Security Dashboard feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ServiceAccount**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Service Account feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SharedNicOcp**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether SNP device is an NC-SI compliant Open Computing Project 3.0 or later NIC.|
|Type|boolean|
|Read Only|True|

**Features.SingleSignOn**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Single Sign-On (SSO) feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.StoragePrivilege**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host Storage privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SwapROM**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Swap ROM feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SystemAutoHeal**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Intelligent Diagnostics feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SystemDefaults**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether System Defaults feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ThermalGraph**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Power Meter feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Thumbnail**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Thumbnail feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.UefiSerialDbgMsg**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates Uefi Serial debug Message option is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.UpdateService**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Firmware update feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.VirtualMedia**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Virtual Media feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

### TreeList (array)
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)
`TreeList` is an array containing elements of: 

**TreeList[{item}].Features**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|The name of the feature associated with the navigation link.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].LangKey**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|The localization key in reference to the navigation link.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

**TreeList[{item}].Link**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

**TreeList[{item}].RightHandMenu**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|Name of the component.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].TabSet**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|The name of the navigation item linked with the tabs.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].Tabs (array)**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)
`Tabs` is an array containing elements of: 

**Tabs[{item}].Features**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|The name of the feature associated with the tab.|
|Type|string|
|Read Only|False|

**Tabs[{item}].LangKey**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|The localization key in reference to the name of the tab.|
|Type|string|
|Read Only|True|

**Tabs[{item}].Link**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|The name of the HTML file for this tab.|
|Type|string|
|Read Only|False|

**Tabs[{item}].Text**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|The default text used for this tab.|
|Type|string|
|Read Only|False|

**TreeList[{item}].Text**
Member of [HpeiLOGUIService.v1\_1\_0.HpeiLOGUIService](#hpeiloguiservicev1\_1\_0hpeiloguiservice)

| | |
|---|---|
|Description|The default text used for this navigation link.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

## HpeiLOLicense.v2\_3\_0.HpeiLOLicense

`@odata.type: "#HpeiLOLicense.v2_3_0.HpeiLOLicense"`

The HpeiLOLicense resource describes the properties for managing BMC licenses.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/licenseservice/{item}/`|GET DELETE |

### Confirmation
**Confirmation.Code**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Confirmation service response code.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Message**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|User-friendly confirmation information for the current managment processor license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Service**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Confirmation service URI.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Status**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)
See the Redfish standard schema and specification for information on common Status object.

### ConfirmationRequest
**ConfirmationRequest.EON**
**ConfirmationRequest.EON.License**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.LicenseKey**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|The license key installed on this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.Quantity**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|The number of entitlements licensed.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.State**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

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
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Source of confirmation request.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System**
**ConfirmationRequest.System.ChipId**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Management processor unique chip identifier.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System.Product**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|System housing management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System.SerialNumber**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|System serial number.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### License
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseClass
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

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
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Error information from the most recent attempt to alter the installed management processor license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseExpire
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|User-friendly expiration information of the installed management processor license. For example, for demo license, Evaluation period 2 months 5 days 6 hours remain.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseFeatures
**LicenseFeatures.DirectoryAuth**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Directory integrated authentication.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.DowngradePolicy**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Firmware downgrade policy setting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**LicenseFeatures.EmailAlert**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Email based alerting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.FWScan**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Runtime FW Integrity check.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Federation**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Distributed peer to peer management.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Jitter**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Jitter Control.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.KD**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Kernel Debugging (VSP raw mode).|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.KeyMgr**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Store and retrieve keys from an external key manager.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.MURC**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Shared Multi-User Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.ODIM**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Open Distributed Infrastructure Management.|
|Type|boolean|
|Read Only|True|

**LicenseFeatures.PowerReg**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Power Regulator.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.RC**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Graphical Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Recovery**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|OS Recovery Event.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.17|

**LicenseFeatures.RemoteSyslog**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Remote Syslog.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Scrncap**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Video Capture.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SecureErase**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Secure Erase of embedded media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SmartCard**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|2-Factor Authentication (Smart Card).|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SuiteB**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|SuiteB/CNSA mode support.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.TextCons**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Text Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VM**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Remote Console based Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VMScript**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Scripted Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VSPLogging**
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|Virtual Serial Port Logging and Playback.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseInstallDate
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|User-friendly installation date information of the installed management processor license. For example, 19 May 2017|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LicenseKey
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|User-visible license key installed on this management processor. License keys are 25 or 29 characters and contain letters, numbers and hypens. Use POST method to collection of membertype HpeiLOLicense to install / update the license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseSeats
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

| | |
|---|---|
|Description|The number of systems authorized to use this activation key.|
|Type|integer|
|Read Only|True|

### LicenseTier
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

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
Member of [HpeiLOLicense.v2\_3\_0.HpeiLOLicense](#hpeilolicensev2\_3\_0hpeilolicense)

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

## HpeiLOLicenseCollection.HpeiLOLicenseCollection

`@odata.type: "#HpeiLOLicenseCollection.HpeiLOLicenseCollection"`

A Collection of HpeiLOLicense resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/licenseservice/`|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeiLOLicense](#hpeilolicensev2_3_0hpeilolicense)|

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

## HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory

`@odata.type: "#HpeiLOResourceDirectory.v2_0_0.HpeiLOResourceDirectory"`

The HpeiLOResourceDirectory resource describes the resource directory.  The resource directory is a selected set of resources and resource types for faster access to resources.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/resourcedirectory/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Instances[]`|[ServiceRoot](#servicerootv1_5_1serviceroot)|

### Instances (array)
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectoryv2\_0\_0hpeiloresourcedirectory)
`Instances` is an array containing elements of: 

**Instances[{item}].@odata.id**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectoryv2\_0\_0hpeiloresourcedirectory)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Instances[{item}].@odata.type**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectoryv2\_0\_0hpeiloresourcedirectory)

| | |
|---|---|
|Type|string|
|Read Only|True|

**Instances[{item}].ETag**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectoryv2\_0\_0hpeiloresourcedirectory)

| | |
|---|---|
|Description|This is the last known etag of the resource. The property is omitted if not known.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Instances[{item}].HttpMethods (array)**
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectoryv2\_0\_0hpeiloresourcedirectory)
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
Member of [HpeiLOResourceDirectory.v2\_0\_0.HpeiLOResourceDirectory](#hpeiloresourcedirectoryv2\_0\_0hpeiloresourcedirectory)

| | |
|---|---|
|Description|This property has the type of members for collection resources.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOSecurityDashboard.v1\_0\_0.HpeiLOSecurityDashboard

`@odata.type: "#HpeiLOSecurityDashboard.v1_0_0.HpeiLOSecurityDashboard"`

The HpeiLOSecurityDashboard resource describes the BMC security dashboard.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/securitydashboard/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`SecurityParameters`|Collection of [HpeiLOSecurityParam](#hpeilosecurityparamv1_1_0hpeilosecurityparam)|

### OverallSecurityStatus
Member of [HpeiLOSecurityDashboard.v1\_0\_0.HpeiLOSecurityDashboard](#hpeilosecuritydashboardv1\_0\_0hpeilosecuritydashboard)

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
Member of [HpeiLOSecurityDashboard.v1\_0\_0.HpeiLOSecurityDashboard](#hpeilosecuritydashboardv1\_0\_0hpeilosecuritydashboard)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|`Enabled`|Server Configuration Lock is Enabled.|n|`Disabled`|Server Configuration Lock is Disabled.|n
## HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam

`@odata.type: "#HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam"`

The HpeiLOSecurityParam resource describes the properties for BMC security dashboard parameters.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams/{item}/`|GET PATCH |

### Ignore
Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparamv1\_1\_0hpeilosecurityparam)

| | |
|---|---|
|Description|This indicates if the security status of the security parameter is set to ignored or not.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### IgnoredBy
Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparamv1\_1\_0hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the user who changed the value of Ignore.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### IgnoredTime
Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparamv1\_1\_0hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the time when the risk configuration was suppressed.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### RecommendedAction
Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparamv1\_1\_0hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the recommended action.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SecurityStatus
Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparamv1\_1\_0hpeilosecurityparam)

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
Member of [HpeiLOSecurityParam.v1\_1\_0.HpeiLOSecurityParam](#hpeilosecurityparamv1\_1\_0hpeilosecurityparam)

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
## HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection

`@odata.type: "#HpeiLOSecurityParamCollection.HpeiLOSecurityParamCollection"`

A Collection of HpeiLOSecurityParam resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams`|GET |
`/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams/`|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`Members[]`|[HpeiLOSecurityParam](#hpeilosecurityparamv1_1_0hpeilosecurityparam)|

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

## HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService

`@odata.type: "#HpeiLOSnmpService.v2_3_0.HpeiLOSnmpService"`

The HpeiLOSnmpService resource describes the properties for managing the SNMP configuration of the BMC.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/snmpservice/`|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`SNMPAlertDestinations`|Collection of [HpeSNMPAlertDestination](#hpesnmpalertdestinationv2_0_0hpesnmpalertdestination)|
|`SNMPUsers`|Collection of [HpeSNMPUser](#hpesnmpuserv2_1_0hpesnmpuser)|

### AlertDestinationAssociations (array)
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)
`AlertDestinationAssociations` is an array containing elements of: 

**AlertDestinationAssociations[{item}].SNMPAlertProtocol**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Indicate the SNMP protocol associated with the AlertDestination.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|`SNMPv1Trap`|Indicate SNMPv1 trap is enabled for the destination.|n|`SNMPv3Trap`|Indicate SNMPv3 trap is enabled for the destination. Needs to fill the SecurityName as well.|n|`SNMPv3Inform`|Indicate SNMPv3 Inform is enabled for the destination. Needs to fill the SecurityName as well.|n|`Null`|A value is temporarily unavailable|n
**AlertDestinationAssociations[{item}].SecurityName**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Provides the SNMPv3 security name associated with the destination when SNMP alert protocol is SNMPv3 trap or inform.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### AlertDestinations (array)
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)
`AlertDestinations` is an array containing elements of: 


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### AlertsEnabled
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|The alert conditions that the management processor detects independently of the host operating system can be sent to specified SNMP alert destinations.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Contact
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 49 characters that specifies the system administrator or server owner. The string can include a name, email address, or phone number.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Location
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 49 characters that specifies the physical location of the server.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Oem.Hpe.SNMPColdStartTrapBroadcast
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|If set to true, the Cold Start Trap will be enabled. The Cold Start Trap is broadcast to a subnet broadcast address if there are no trap destinations configured in the SNMP Alert Destination(s) boxes.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### PeriodicHSATrapConfig
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

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
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)
`ReadCommunities` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

### Role
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|The string of up to 64 characters that describes the server role or function.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### RoleDetail
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

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
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Indicates if the SNMPv1 protocol is enabled.|
|Type|boolean|
|Read Only|False|

### SNMPv1Traps
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|When enabled, SNMPv1 traps are sent to the remote management systems configured in the SNMP Alert Destination(s) boxes.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### SNMPv3EngineID
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|The SNMPv3 Engine ID is the unique identifier of an SNMP engine that belongs to an SNMP agent entity. This value must be a hexadecimal string with an even number of 6 to 32 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SNMPv3InformRetryAttempt
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Specifies the number of retries to be used in SNMPv3 inform.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.20|

### SNMPv3InformRetryIntervalSeconds
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Specifies the interval in seconds between SNMPv3 inform retries.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.20|

### Status
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)
See the Redfish standard schema and specification for information on common Status object.

### TrapCommunities (array)
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)
`TrapCommunities` is an array containing elements of: 


| | |
|---|---|
|Type|string|
|Read Only|True|

### TrapSourceHostname
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

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
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)
`Users` is an array containing elements of: 

**Users[{item}].AuthPassphrase**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the passphrase to use for sign operations. Enter a value of 8 to 49 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Users[{item}].AuthProtocol**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the message digest algorithm to use for encoding the authorization passphrase. The message digest is calculated over an appropriate portion of an SNMP message, and is included as part of the message sent to the recipient. Select MD5 (Message Digest) or SHA (Secure Hash Algorithm).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`MD5`|Indicate Message Digest Algorithm.|n|`SHA`|Indicate Secure Hash Algorithm.|n|`SHA256`|Indicate SHA256 Algorithm.|n|`Null`|A value is temporarily unavailable|n
**Users[{item}].PrivacyPassphrase**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the passphrase to use for encrypt operations. Enter a value of 8 to 49 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Users[{item}].PrivacyProtocol**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|Sets the encryption algorithm to use for encoding the privacy passphrase. A portion of an SNMP message is encrypted before transmission. Select AES (Advanced Encryption Standard) or DES (Data Encryption Standard).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|`AES`|Indicate Advanced Encryption Standard Algorithm.|n|`DES`|Indicate Data Encryption Standard Algorithm.|n|`Null`|A value is temporarily unavailable|n
**Users[{item}].SecurityName**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|The user profile name. Enter an alphanumeric string of 1 to 32 characters.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**Users[{item}].UserEngineID**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)

| | |
|---|---|
|Description|The UserEngineID is combined with the SecurityName to create a SNMPv3 user for each manager. It is only used for creating remote accounts used with INFORM messages. If this property is not set then INFORM message will be sent with default or iLO configured engine ID. This value must be a hexadecimal string with an even number of 10 to 64 characters, excluding the first two characters, 0x (for example, 0x01020304abcdef).|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### Actions

**HpeiLOSnmpService.SendSNMPTestAlert**
Member of [HpeiLOSnmpService.v2\_3\_0.HpeiLOSnmpService](#hpeilosnmpservicev2\_3\_0hpeilosnmpservice)
There are no parameters for this action.
## HpeiLOSSO.v2\_0\_0.HpeiLOSSO

`@odata.type: "#HpeiLOSSO.v2_0_0.HpeiLOSSO"`

The HpeiLOSSO resource describes the configuration of the HPE BMC single-sign-on trusted server feature.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/managers/{item}/securityservice/sso/`|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`ManagerTrustedCertificates[]`|[ERROR_UNKNOWN](#error_unknownv0_0_0error_unknown)|

### ManagerTrustedCertificates (array)
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)
`ManagerTrustedCertificates` is an array containing elements of: 

**ManagerTrustedCertificates[{item}].@odata.id**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**ManagerTrustedCertificates[{item}].@odata.type**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|

**ManagerTrustedCertificates[{item}].Certificate**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate (Base64 encoded).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails**
**ManagerTrustedCertificates[{item}].CertificateDetails.Issuer**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails.Subject**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotAfter**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotBefore**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**ManagerTrustedCertificates[{item}].RecordType**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

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
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Contains the Serial number for the SSO records.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].ServerName**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|The Server name (or certificate subject).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].Status**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)
See the Redfish standard schema and specification for information on common Status object.

### SSOsettings
**SSOsettings.AdminPrivilege**
**SSOsettings.AdminPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege**
**SSOsettings.OperatorPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.SSOTrustMode**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

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
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeiLOSSO.DeleteAllSSORecords**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)
Delete all the SSO records.

There are no parameters for this action.

**HpeiLOSSO.DeleteSSORecordbyNumber**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)
Delete SSO record by record number.


**Parameters:**

**RecordNumber (integer)**

Index of the SSO record to be deleted.

**HpeiLOSSO.ImportCertificate**
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)
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
Member of [HpeiLOSSO.v2\_0\_0.HpeiLOSSO](#hpeilossov2\_0\_0hpeilosso)
Add DNS Name to the record list.


**Parameters:**

**DNSName (string)**

DNS Name of the HPE SSO Trusted Server.
## HpeInvalidImageCollection.HpeInvalidImageCollection

`@odata.type: "#HpeInvalidImageCollection.HpeInvalidImageCollection"`

A Collection of HpeInvalidImage resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/updateservice/invalidimagerepository/`|GET |

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

## HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator

`@odata.type: "#HpeiSCSISoftwareInitiator.v2_0_0.HpeiSCSISoftwareInitiator"`
### Resource Instances
|Uri|HTTP Allow|
|---|---|
`/redfish/v1/systems/{item}/bios/iscsi/`|GET |
`/redfish/v1/systems/{item}/bios/iscsi/settings/`|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|`@Redfish.Settings/SettingsObject`|[HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2_0_0hpeiscsisoftwareinitiator)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](#hpebaseconfigsv2_0_0hpebaseconfigs)|

### @Redfish.Settings
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2\_0\_0hpeiscsisoftwareinitiator)
See the Redfish standard schema and specification for information on common @Redfish properties.

### iSCSIInitiatorName
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2\_0\_0hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|The worldwide unique iSCSI Qualified Name (IQN) of this iSCSI Initiator. Only IQN format is accepted. EUI format is not supported (for example, 'iqn.1986-03.com.hp:init.sn-123456').|
|Type|string|
|Read Only|True|

### iSCSINicSources (array)
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2\_0\_0hpeiscsisoftwareinitiator)
`iSCSINicSources` is an array containing elements of: 


| | |
|---|---|
|Description|The BIOS Attribute that describes a NIC instance that can be used as a target for iSCSI configuration.|
|Type|string|
|Read Only|True|

### iSCSISources (array)
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2\_0\_0hpeiscsisoftwareinitiator)
`iSCSISources` is an array containing elements of: 

**iSCSISources[{item}].StructuredBootString**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2\_0\_0hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Identifies this iSCSI option within the server.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].UEFIDevicePath**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2\_0\_0hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path for this option, in UTF-8 format.|
|Type|string or null|
|Read Only|True|

**iSCSISources[{item}].iSCSIAttemptInstance**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2\_0\_0hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Uniquely identifies this iSCSI attempt within iSCSISources array. If set to zero, all other properties in the boot option object are ignored (which will delete an existing boot attempt).|
|Type|integer|
|Read Only|True|

**iSCSISources[{item}].iSCSIAttemptName**
Member of [HpeiSCSISoftwareInitiator.v2\_0\_0.HpeiSCSISoftwareInitiator](#hpeiscsisoftwareinitiatorv2\_0\_0hpeiscsisoftwareinitiator)

| | |
|---|---|
|Description|Human readable descriptive name for this iSCSI attempt configuration|
|Type|string or null|
|Read Only|True|

