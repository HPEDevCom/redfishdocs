---
seo:
  title: Managing iLO users
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Managing iLO Users

:::info NOTE

It is possible that some properties or resources described in this section are not implemented in iLO 4 and ilo 5.

:::

iLO supports both local user authentication as well as directory authentication.

* Role based local user administration via Redfish
* Directory Authentication configuration via Redfish

All user account modifications require the Redfish client to be authenticated with the "Administer User Accounts" privilege (`UserConfigPriv` in the Redfish `ManagerAccount` resource type)

## Local User Administration

iLO has a local user database enabling consistent user management for all interfaces including the Web interface (GUI) as well as the Redfish API. The iLO local user accounts are managed in the AccountService (`/redfish/v1/AccountService`). An `Accounts` collection in the AccountService enables clients to create, modify, or remove local user accounts.

```text GET request
GET /redfish/v1/AccountService/Accounts/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ManagerAccountCollection.ManagerAccountCollection",
    "@odata.etag": "W/\"21C260DB\"",
    "@odata.id": "/redfish/v1/AccountService/Accounts/",
    "@odata.type": "#ManagerAccountCollection.ManagerAccountCollection",
    "Description": "iLO User Accounts",
    "Name": "Accounts",
    "Members": [
        {
            "@odata.id": "/redfish/v1/AccountService/Accounts/1/"
        }
    ],
    "Members@odata.count": 1
}
```

A local user account consists of a user name, password, and a set of privileges. The `RoleId` describes one of three defined Redfish roles based upon assigned privileges. The `Oem/Hpe/LoginName` property is a description of the account.

:::info NOTE
Due to a terminology mismatch between the Redfish standard and historical iLO products, the Properties for `UserName` and `LoginName` are reversed in Redfish vs. the iLO Web interface:
:::

|Redfish Property|GUI Term|Description|Example|
|---|---|---|---|
|`UserName`|Login Name|The user identity string used with a password to log into iLO|jsmith|
|`Oem/Hpe/LoginName`|User Name|The descriptive name of the user|Jane Smith - Director of IT|

```text GET account properties
GET /redfish/v1/AccountService/Accounts/1/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ManagerAccount.ManagerAccount",
    "@odata.etag": "W/\"D9DF9F68\"",
    "@odata.id": "/redfish/v1/AccountService/Accounts/1/",
    "@odata.type": "#ManagerAccount.v1_1_3.ManagerAccount",
    "Id": "1",
    "Description": "iLO User Account",
    "Links": {
        "Role": {
            "@odata.id": "/redfish/v1/AccountService/Roles/Administrator/"
        }
    },
    "Name": "User Account",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOAccount.HpeiLOAccount",
            "@odata.type": "#HpeiLOAccount.v2_2_0.HpeiLOAccount",
            "LoginName": "Jane Smith - Director of IT",
            "Privileges": {
                "HostBIOSConfigPriv": true,
                "HostNICConfigPriv": true,
                "HostStorageConfigPriv": true,
                "LoginPriv": true,
                "RemoteConsolePriv": true,
                "SystemRecoveryConfigPriv": true,
                "UserConfigPriv": true,
                "VirtualMediaPriv": true,
                "VirtualPowerAndResetPriv": true,
                "iLOConfigPriv": true
            },
            "ServiceAccount": false
        }
    },
    "Password": null,
    "RoleId": "Administrator",
    "UserName": "jsmith"
}
```

:::info NOTE
`Password` is always shown as `null` even though it is PATCHable with a new password
:::

### Roles and Privileges

iLO uses a set of privileges assigned to each user account to grant and restrict access to features. iLO's privileges are:

|Redfish|iLO Web Interface (GUI)|
|---|---|
|LoginPriv|Login
|RemoteConsolePriv|Remote Console
|VirtualPowerAndResetPriv|Virtual Power and Reset
|VirtualMediaPriv|Virtual Media
|HostBIOSConfigPriv|Host BIOS
|iLOConfigPriv|Configure iLO Settings
|UserConfigPriv|Administer User Accounts
|HostNICConfigPriv|Host NIC
|HostStorageConfigPriv|Host Storage
|SystemRecoveryConfigPriv|Recovery Set

#### Roles

You can use `RoleId` to create users with specific starting privileges.

On a GET of the local user account, `RoleId` is synthesized based upon the enabled privileges. iLO does not store a separate `RoleId` value. For this reason, modifications to raw privileges may or may not result in a changed `RoleId` based upon iLO's mapping.

If the PATCH includes both `RoleID` and individual privileges, the privileges corresponding to the RoleId are assigned to the local user account first, and then the explicit privileges are assigned.

The following example sets all iLO privileges as long as the account performing the operation already has sufficient privileges to grant these privileges.

```text Account role configuration
PATCH /redfish/v1/AccountService/Accounts/{accountId}
```

```json Body
{
    "RoleId": "Administrator",
    "Oem": {
        "Hpe": {
            "Privileges": {
                "SystemRecoveryConfigPriv": true
            }
        }
    }
}
```

#### Privileges granted on Local Account Creation by RoleId

|RoleId|Privileges|
|---|---|
|Administrator|HostBIOSConfigPriv, HostNICConfigPriv, HostStorageConfigPriv, LoginPriv, RemoteConsolePriv, UserConfigPriv, VirtualMediaPriv, VirtualPowerAndResetPriv, iLOConfigPriv|
|Operator|HostBIOSConfigPriv, HostNICConfigPriv, HostStorageConfigPriv, LoginPriv, RemoteConsolePriv, VirtualMediaPriv, VirtualPowerAndResetPriv|
|ReadOnly|LoginPriv|

#### RoleId shown on an existing Local User Account by Privilege

The `RoleId` reported is the smallest superset of assigned privileges.

|Privileges|RoleId|
|----|----|
|LoginPriv only|ReadOnly|
|iLOConfigPriv or UserConfigPriv or SystemRecoveryConfigPriv and anything else|Administrator|
|any other combination|Operator|

### Creating a new Local User Account

The simplest possible new local user account create operation is to POST to the Accounts collection, as shown in the example below.

The following example creates a user account `jsmith` with the default `ReadOnly` RoleId and only the iLO Login privilege. Notice that `Oem/Hpe/LoginName` defaults to the provided `UserName` unless it is specifically specified.

```text User creation
PATCH /redfish/v1/AccountService/Accounts/
```

```json Body
{
    "UserName": "jsmith",
    "Password": "passwordexample"
}
```

:::info NOTE
Each local user account must have a unique `UserName`.
:::

```text Get account properties
GET /redfish/v1/AccountService/Accounts/{accountId}
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ManagerAccount.ManagerAccount",
    "@odata.etag": "W/\"B103601C\"",
    "@odata.id": "/redfish/v1/AccountService/Accounts/12/",
    "@odata.type": "#ManagerAccount.v1_1_3.ManagerAccount",
    "Id": "12",
    "Description": "iLO User Account",
    "Links": {
        "Role": {
            "@odata.id": "/redfish/v1/AccountService/Roles/ReadOnly/"
        }
    },
    "Name": "User Account",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOAccount.HpeiLOAccount",
            "@odata.type": "#HpeiLOAccount.v2_2_0.HpeiLOAccount",
            "LoginName": "jsmith",
            "Privileges": {
                "HostBIOSConfigPriv": false,
                "HostNICConfigPriv": false,
                "HostStorageConfigPriv": false,
                "LoginPriv": true,
                "RemoteConsolePriv": false,
                "SystemRecoveryConfigPriv": false,
                "UserConfigPriv": false,
                "VirtualMediaPriv": false,
                "VirtualPowerAndResetPriv": false,
                "iLOConfigPriv": false
            },
            "ServiceAccount": false
        }
    },
    "Password": null,
    "RoleId": "ReadOnly",
    "UserName": "jsmith"
}
```

### Creating a new Account using a RoleId

You may specify a `RoleId` with a new user account, as shown in the following example.

```text Account creation with RoleId
POST /redfish/v1/AccountService/Accounts/
```

```json Body
{
    "UserName": "jsmith",
    "Password": "passwordexample",
    "RoleId": "Operator"
}
```

To retrieve the just created account, perform a GET operation like in the following example.

```text Retrieve account properties
GET /redfish/v1/AccountService/Accounts/{accountId}
```

```json Body
{
    "@odata.context": "/redfish/v1/$metadata#ManagerAccount.ManagerAccount",
    "@odata.etag": "W/\"6C16FDE3\"",
    "@odata.id": "/redfish/v1/AccountService/Accounts/14/",
    "@odata.type": "#ManagerAccount.v1_1_3.ManagerAccount",
    "Id": "14",
    "Description": "iLO User Account",
    "Links": {
        "Role": {
            "@odata.id": "/redfish/v1/AccountService/Roles/Operator/"
        }
    },
    "Name": "User Account",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOAccount.HpeiLOAccount",
            "@odata.type": "#HpeiLOAccount.v2_2_0.HpeiLOAccount",
            "LoginName": "jsmith",
            "Privileges": {
                "HostBIOSConfigPriv": true,
                "HostNICConfigPriv": true,
                "HostStorageConfigPriv": true,
                "LoginPriv": true,
                "RemoteConsolePriv": true,
                "SystemRecoveryConfigPriv": false,
                "UserConfigPriv": false,
                "VirtualMediaPriv": true,
                "VirtualPowerAndResetPriv": true,
                "iLOConfigPriv": false
            },
            "ServiceAccount": false
        }
    },
    "Password": null,
    "RoleId": "Operator",
    "UserName": "jsmith"
}
```

### Creating a new Account with specific Privileges

You may also create a local user with specific privileges.

```text Create user with specific privileges
POST /redfish/v1/AccountService/Accounts/
```

```json Body
{
    "UserName": "jsmith",
    "Password": "passwordexample",
    "Oem": {
        "Hpe": {
            "LoginName": "Director of IT",
            "Privileges": {
            "LoginPriv": true,
            "VirtualMediaPriv": true,
            "VirtualPowerAndResetPriv": true
            }
        }
    }
}
```

This results in the following new local user account:

```text Retrieve account properties
GET /redfish/v1/AccountService/Accounts/{accountId}
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ManagerAccount.ManagerAccount",
    "@odata.etag": "W/\"E8037663\"",
    "@odata.id": "/redfish/v1/AccountService/Accounts/15/",
    "@odata.type": "#ManagerAccount.v1_1_3.ManagerAccount",
    "Id": "15",
    "Description": "iLO User Account",
    "Links": {
        "Role": {
            "@odata.id": "/redfish/v1/AccountService/Roles/Operator/"
        }
    },
    "Name": "User Account",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOAccount.HpeiLOAccount",
            "@odata.type": "#HpeiLOAccount.v2_2_0.HpeiLOAccount",
            "LoginName": "Director of IT",
            "Privileges": {
                "HostBIOSConfigPriv": false,
                "HostNICConfigPriv": false,
                "HostStorageConfigPriv": false,
                "LoginPriv": true,
                "RemoteConsolePriv": false,
                "SystemRecoveryConfigPriv": false,
                "UserConfigPriv": false,
                "VirtualMediaPriv": true,
                "VirtualPowerAndResetPriv": true,
                "iLOConfigPriv": false
            },
            "ServiceAccount": false
        }
    },
    "Password": null,
    "RoleId": "Operator",
    "UserName": "jsmith"
}
```

:::success Info
Several Python examples have been posted in the GitHub repository of the HPE Redfish library.

* <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/add_user_account.py" target="_blank">Add user account</a>
* <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/modify_user_account.py" target="_blank">Modify user account</a>
* <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/remove_account.py" target="_blank">Remove user account</a>

:::

### Modifying a Local User Account

The following properties are modifiable on an existing local user account:

* `UserName`
* `Password` - this is always returned as null, but you may PATCH it with a value to change the password
* `RoleId` - PATCHing `RoleId` on an existing local user account will reset it’s existing privileges with those mapped to the RoleId.
* `Oem/Hpe/LoginName`
* `Oem/Hpe/Privileges/*` - any of the privileges may be modified with true or false

### Adding and Removing Privileges

Local user account privileges may be modified with a PATCH to the URI of the desired `ManagerAccount` resource, as shown in the example below.

```text PATCH user account
PATCH /redfish/v1/AccountService/Accounts/{accountId}/
```

```json Body
{
    "Oem": {
        "Hpe": {
            "Privileges": {
                "VirtualMediaPriv": true,
                "VirtualPowerAndResetPriv": true
            }
        }
    }
}
```

### Changing Roles

```text PATCH roles
PATCH /redfish/v1/AccountService/Accounts/{accountId}/
```

```json Body
{
    "RoleId": "Operator"
}
```

```json Successfull response body 
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.0.AccountModified"
            }
        ]
    }
}
```

### Changing Password

Local user account passwords may be modified with a PATCH to the URI of the desired `ManagerAccount` resource, as shown in the example below.

```text User password modification
PATCH /redfish/v1/AccountService/Accounts/{accountId}/
```

```json Body
{
    "Password": "newpassword"
}
```

### Removing a Local User Account

A local user account can be removed with a DELETE to the URI of desired `ManagerAccount` resource, as shown in the example below.

```text User removal
 DELETE /redfish/v1/AccountService/Accounts/{accountId}/
```

## Directory Authentication

### Enabling or Disabling Local User Accounts

See the examples below for more information.

```text Enable/Disable user
PATCH /redfish/v1/AccountService/
```

```json Body for disabling a user
{
    "LocalAccountAuth": "Disabled"
}
```

```json Body for enabling a user
{
    "LocalAccountAuth": "Enabled"
}
```

:::info NOTE
Disabling local user accounts is not allowed if both Directory Authentication and Kerberos Authentication are disabled.
:::

### Configuring Active Directory Authentication

```text Active Directory configuration.
PATCH /redfish/v1/AccountService/
```

```json Body for default Active Directory server port (636)
{
    "LDAP": {
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<Active Directory Server host name>"
        ]
    }
}
```

```json Body for custom Active Directory server port
{
    "LDAP": {
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<Active Directory Server host name>:4646"
        ]
    }
}
```

### Configuring LDAP Authentication

```text LDAP configuration
PATCH /redfish/v1/AccountService/
```

```json Body for default LDAP server port (636)
{
    "LDAP": {
        "AccountProviderType": "LDAPService",
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<LDAP Server host name>"
        ]
    }
}
```

```json Body for custom LDAP server port
{
    "LDAP": {
        "AccountProviderType": "LDAPService",
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<LDAP Server host name>:4646"
        ]
    }
}
```

### Disable Active Directory and LDAP Authentication (Generic LDAP)

```text Disabling Active Directory and LDAP
PATCH /redfish/v1/AccountService/
```

```json Body
{
    "LDAP": {
        "AccountProviderType": "ActiveDirectoryService",
        "ServiceEnabled": false,
    }
}
```

### Enable and Configure HPE Extended Schema Authentication (for Active Directory only)

```text HPE extended Schema authentication (AD only)
PATCH /redfish/v1/AccountService/
```

```json Body
{
    "LDAP": {
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<Active Directory Server host name>"
        ],
        "Authentication": {
            "Username": "CN=testdevice,CN=Users,DC=ilotest2,DC=com"
        }
    },
    "Oem": {
        "Hpe": {
            "DirectorySettings": {
                "LdapAuthenticationMode": "ExtendedSchema"
            }
        }
    }
}
```

### Add User Search Contexts

The following example shows two possibilities to add user search contexts. The first one (Body 1) adds two new User Search Contexts, with no already existing User Search Context present. The second one (Body 2) adds a new User Search Context, with two existing User Search Contexts present.

```text Add User Search contexts
PATCH /redfish/v1/AccountService/
```


```json Body 1
{
    "LDAP": {
        "LDAPService": {
            "SearchSettings": {
                "BaseDistinguishedNames": [
                    "CN=Users,DC=domain,DC=com",
                    "DC=domain,DC=com"
                ]
            }
        }
    }
}
```

```json Body 2
{
    "LDAP": {
        "LDAPService": {
            "SearchSettings": {
                "BaseDistinguishedNames": [
                    "CN=Users,DC=domain,DC=com",
                    "DC=domain,DC=com",
                    "DC=testdomain,DC=com"
                ]
            }
        }
    }
}
```

### Delete User Search Contexts

The following example shows two possibilities to delete User Search Contexts. The first one (Body 1) deletes one/multiple User Search Contexts: Assume you have three existing User Search Contexts, e.g. "CN=Users,DC=domain,DC=com", "DC=domain,DC=com" and "DC=testdomain,DC=com". To delete one, exclude it from the payload and keep the ones to be retained.

The second one (Body 2) deletes all User Search Contexts.

```text Delate User Search Contexts
PATCH /redfish/v1/AccountService/
```

```json Body 1
{
    "LDAP": {
        "LDAPService": {
            "SearchSettings": {
                "BaseDistinguishedNames": [
                    "CN=Users,DC=domain,DC=com",
                    "DC=domain,DC=com"
                ]
            }
        }
    }
}
```

```json Body 2
{
    "LDAP": {
        "LDAPService": {
            "SearchSettings": {
                "BaseDistinguishedNames": [
                    ""
                ]
            }
        }
    }
}
```

### Import LDAP Server CA Certificate

```text Import LDAP Server CA certificate
POST /redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/
```

```json Body
{
    "CertificateString": "-----BEGIN CERTIFICATE-----\nMIIEHTCCAwWgAwIBAgIQe8LmWgF5edKw01/avJg69DANBgkqhkiG9w0BAQsFADCB
…………………………………………………………………………………………………………………………………
…………………………………………………………………………………………………………………………………
Ow==\n-----END CERTIFICATE-----\n"
}
```

### View LDAP Server CA Certificate Status

```text LDAP Server CA Certificate Status
GET /redfish/v1/AccountService/?$select=Oem/Hpe/DirectorySettings/LdapCaCertificateLoaded`
```

```json Response Body
{
    "@odata.context": "/redfish/v1/$metadata#AccountService.AccountService",
    "@odata.etag": "W/\"8F1B1B4B\"",
    "@odata.id": "/redfish/v1/AccountService/",
    "@odata.type": "#AccountService.v1_5_0.AccountService",
    "Oem": {
        "Hpe": {
            "DirectorySettings": {
                "LdapCaCertificateLoaded": false
            }
        }
    }
}
```

### View LDAP Server CA Certificate Details

:::info NOTE
The LDAP provider supports a single certificate
:::

```text LDAP Server CA certificate details
GET /redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{certId}/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#Certificate.Certificate",
    "@odata.etag": "W/\"A1110A63\"",
    "@odata.id": "/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/1/",
    "@odata.type": "#Certificate.v0_9_0.Certificate",
    "Id": "1",
    "Issuer": "/C=US/O=Hewlett Packard Enterprise Company/OU=Infrastructure Services/CN=Hewlett Packard Enterprise Private Root CA",
    "Name": "LDAP Certificate",
    "SerialNumber": "7BC2E65A017979D2B0D35FDABC983AF4",
    "Subject": "/C=US/O=Hewlett Packard Enterprise Company/OU=Infrastructure Services/CN=Hewlett Packard Enterprise Private Root CA",
    "ValidNotAfter": "2025-03-16T23:59:59Z",
    "ValidNotBefore": "2015-03-17T00:00:00Z"
}
```

### Add new Directory Groups (No Existing Groups)

:::info NOTE
"Administrator" and "Operator" are predefined Redfish RoleIds. "LDAP" can also be used instead of "ActiveDirectory".
:::

```text Add new directory Groups
PATCH /redfish/v1/AccountService/
```

```json Body
{
    "ActiveDirectory": {
        "RemoteRoleMapping": [
            {
                "LocalRole": "Administrator",
                "RemoteGroup": "TestGroup1"
            },
            {
                "LocalRole": "Operator",
                "RemoteGroup": "TestGroup2"
            }
        ]
    }
}
```

### View Directory Groups

```text View Directory Groups
GET /redfish/v1/AccountService/?$select=LDAP/RemoteRoleMapping, ActiveDirectory/RemoteRoleMapping`
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#AccountService.AccountService",
    "@odata.etag": "W/\"8F1B1B4B\"",
    "@odata.id": "/redfish/v1/AccountService/",
    "@odata.type": "#AccountService.v1_5_0.AccountService",
    "ActiveDirectory": {
        "RemoteRoleMapping": [
            {
                "LocalRole": "dirgroupb3d8954f6ebbe735764e9f7c",
                "RemoteGroup": "Administrators"
            },
            {
                "LocalRole": "dirgroup9d4546a03a03bb977c03086a",
                "RemoteGroup": "Authenticated Users:S-1-5-11"
            }
        ]
    },
    "LDAP": {
        "RemoteRoleMapping": [
            {
                "LocalRole": "dirgroupb3d8954f6ebbe735764e9f7c",
                "RemoteGroup": "Administrators"
            },
            {
                "LocalRole": "dirgroup9d4546a03a03bb977c03086a",
                "RemoteGroup": "Authenticated Users:S-1-5-11"
            }
        ]
    }
}
```

### Add New Directory Groups to Existing Groups

In the following example, assume that two directory groups are already present (TestGroup1 and TestGroup2. Use the `LocaleRole` and `RemoteGroup` values for the existing directory groups in the payload. Add an additional group "TestGroup3" with "ReadOnly" Redfish Role. "LDAP can also be used instead of "ActiveDirectory".

```text Add New Directory groups to existing groups
PATCH /redfish/v1/AccountService/
```

```json Body
{
    "ActiveDirectory": {
        "RemoteRoleMapping": [
            {
                "LocalRole": "dirgroup4c6c827762dd20dc530c52ef",
                "RemoteGroup": "TestGroup1"
            },
            {
                "LocalRole": "dirgroupeb9a3afc9cd9d126249c3aed",
                "RemoteGroup": "TestGroup2"
            },
            {
                "LocalRole": "ReadOnly",
                "RemoteGroup": "TestGroup3"
            }
        ]
    }
}
```

### Delete Directory Groups

In the following example, assume you have three existing directory groups, e.g. "TestGroup1", "TestGroup2" and "TestGroup3". To delete "TestGroup3", exclude it from the payload and keep the ones to be retained. "LDAP" can also be used instead of "ActiveDirectory". It shows how to delete one/multiple Directory Groups (Body 1) or all Directory Groups (Body 2).

:::info NOTE
"LDAP" can also be used instead of "ActiveDirectory"
:::

```text Delete Directory Groups
PATCH /redfish/v1/AccountService/
```

```json Body 1
{
    "ActiveDirectory": {
        "RemoteRoleMapping": [
            {
                "LocalRole": "dirgroup4c6c827762dd20dc530c52ef",
                "RemoteGroup": "TestGroup1"
            },
            {
                "LocalRole": "dirgroupeb9a3afc9cd9d126249c3aed",
                "RemoteGroup": "TestGroup2"
            }
        ]
    }
}
```

```json Body 2
{
    "ActiveDirectory": {
        "RemoteRoleMapping": [
            {}
        ]
    }
}
```

### View Directory Group Privileges

```text Retrieve Roles collection
GET /redfish/v1/AccountService/Roles/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#RoleCollection.RoleCollection",
    "@odata.etag": "W/\"08A22FCA\"",
    "@odata.id": "/redfish/v1/AccountService/Roles/",
    "@odata.type": "#RoleCollection.RoleCollection",
    "Description": "iLO Roles Collection",
    "Name": "Roles",
    "Members": [
        {
            "@odata.id": "/redfish/v1/AccountService/Roles/Administrator/"
        },
        {
            "@odata.id": "/redfish/v1/AccountService/Roles/Operator/"
        },
        {
            "@odata.id": "/redfish/v1/AccountService/Roles/ReadOnly/"
        },
        {
            "@odata.id": "/redfish/v1/AccountService/Roles/dirgroup4c6c827762dd20dc530c52ef/"
        },
        {
            "@odata.id": "/redfish/v1/AccountService/Roles/dirgroupeb9a3afc9cd9d126249c3aed/"
        }
    ],
    "Members@odata.count": 5
}
```

```text GET specific Directory Group privileges
GET /redfish/v1/AccountService/Roles/{directoryGroupId}/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#Role.Role",
    "@odata.etag": "W/\"D17157B3\"",
    "@odata.id": "/redfish/v1/AccountService/Roles/dirgroup4c6c827762dd20dc530c52ef/",
    "@odata.type": "#Role.v1_2_1.Role",
    "Id": "dirgroup4c6c827762dd20dc530c52ef",
    "AssignedPrivileges": [
        "Login",
        "ConfigureSelf",
        "ConfigureManager",
        "ConfigureUsers"
    ],
    "Description": "iLO Directory Group Role",
    "IsPredefined": false,
    "Name": "Group Role",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeDirectoryGroup.HpeDirectoryGroup",
            "@odata.type": "#HpeDirectoryGroup.v1_0_0.HpeDirectoryGroup",
            "GroupDn": "TestGroup1",
            "GroupSid": ""
        }
    },
    "OemPrivileges": [
        "RemoteConsolePriv",
        "VirtualMediaPriv",
        "VirtualPowerAndResetPriv",
        "HostBIOSConfigPriv",
        "HostNICConfigPriv",
        "HostStorageConfigPriv"
    ],
    "RoleId": "dirgroup4c6c827762dd20dc530c52ef"
}
```

### Modify Directory Group Privileges

Sample Body 1 (Update AssignedPrivileges): Add/Remove the privileges in the AssignedPrivileges[] array.
Sample Body 2 (Update OemPrivileges): Add/Remove the privileges in the OemPrivileges[] array.

```text Add/Remove privileges
PATCH /redfish/v1/AccountService/Roles/{directoryGroupId}/
```

```json Body 1
{
    "AssignedPrivileges": [
        "Login",
        "ConfigureSelf",
        "ConfigureUsers"
    ]
}
```

```json Body 2
{
    "OemPrivileges": [
        "RemoteConsolePriv",
        "VirtualPowerAndResetPriv",
        "HostNICConfigPriv",
        "HostStorageConfigPriv"
    ]
}
```

### Enable, Configure, Disable Kerberos Authentication

```text Configure Kerberos
PATCH /redfish/v1/AccountService/
```

```json Body for Disable
{
    "ActiveDirectory": {
        "ServiceEnabled": false
    }
}
```

```json Body for Enable realm
{
    "ActiveDirectory": {
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "testkdc.hpe.com@TESTKDCREALM.COM"
        ]
    }
}
```

```json Body with custom KDC server port
{
    "ActiveDirectory": {
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "testkdc.hpe.com:8888@TESTKDCREALM.COM"
        ]
    }
}
```

### Import Kerberos Keytab File

```text Import Keytab file
POST /redfish/v1/AccountService/Actions/Oem/Hpe/HpeiLOAccountService.ImportKerberosKeytab/
```

```json Body
{
    "ImportUri": "http://<URI of keytab file>"
}
```

## Start Directory Test

```text Directory test
POST on /redfish/v1/AccountService/DirectoryTest/Actions/HpeDirectoryTest.StartTest/
```

```json Body 1
{
}
```

```json Body 2
{
    "TestUserName": "TestUser1",
    "TestUserPassword": "TestPassword1"
}
```

```json Body 3
{
    "TestUserName": "TestUser1",
    "TestUserPassword": "TestPassword1",
    "DirectoryAdminDn": "CN=Administrator,CN=Users,DC=ilotest2,DC=com",
    "DirectoryAdminPassword": "AdminPassword"
}
```

### Stop Directory Test

```text Stop tests
POST /redfish/v1/AccountService/DirectoryTest/Actions/HpeDirectoryTest.StopTest/
```

```json Body
{
}
```

### View Directory Test Result

```text View test results
GET /redfish/v1/AccountService/DirectoryTest/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeDirectoryTest.HpeDirectoryTest",
    "@odata.etag": "W/\"6B3F28F1\"",
    "@odata.id": "/redfish/v1/AccountService/DirectoryTest/",
    "@odata.type": "#HpeDirectoryTest.v1_0_0.HpeDirectoryTest",
    "Id": "DirectoryTest",
    "Actions": {
        "#HpeDirectoryTest.StartTest": {
            "target": "/redfish/v1/AccountService/DirectoryTest/Actions/HpeDirectoryTest.StartTest/"
        },
        "#HpeDirectoryTest.StopTest": {
            "target": "/redfish/v1/AccountService/DirectoryTest/Actions/HpeDirectoryTest.StopTest/"
        }
    },
    "OverallStatus": "NotRun",
    "TestResults": [
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "Directory Server DNS Name"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "Ping Directory Server"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "Connect to Directory Server"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "Connect using SSL"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "Bind to Directory Server"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "Directory Administrator login"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "User Authentication"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "User Authorization"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "Directory User Contexts"
        },
        {
            "Notes": "",
            "Status": "NotRun",
            "TestName": "LOM Object exists"
        }
    ]
}
```
