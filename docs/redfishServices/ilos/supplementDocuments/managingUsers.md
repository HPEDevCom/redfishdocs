---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: false
seo:
  title: Managing iLO users
breadcrumbs:
  hide: true
---

## Managing iLO Users

{% admonition type="info" name="NOTE" %}
It is possible that some properties or resources described in this section
are not implemented in HPE iLO 4 and iLO 5.
{% /admonition %}

HPE iLO supports:

* Local user authentication
* Directory authentication
* Role based local user administration via Redfish
* Directory Authentication configuration via Redfish

User account modifications require Redfish clients to be
authenticated with the "Administer User Accounts" privilege
(`UserConfigPriv` in the Redfish `ManagerAccount`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.privileges") %} resource type {% /link-internal %}

{% admonition type="success" name="TIP:" %}
Managing iLO users with iLOrest is described in this
[documentation section](/docs/redfishclients/ilorest-userguide/ilocommands#iloaccounts-command).
{% /admonition %}

## The Account Service

The iLO user management service is described in the `AccountService`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#accountservice") %} subsystem {% /link-internal %}.
This subsystem contains the capabilities of the service (i.e. Active Directory, LDAP) as well the
URIs of various resources like the entry point of the local account database.

The following example retrieves the local user account and
application accounts URIs from the `AccountService`.

{% admonition type="info" name="NOTE" %}
Application accounts have been introduced with
[HPE iLO 7](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7).
{% /admonition %}

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest list Accounts Oem/Hpe/AppAccounts --select AccountService. --json
{
  "Accounts": {
    "@odata.id": "/redfish/v1/AccountService/Accounts/"
  },
  "Oem": {
    "Hpe": {
      "AppAccounts": {
        "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/"
      }
    }
  }
}

ilorest logout
```
  
  {% /tab %}
{% tab label="cURL(1)" %}

```shell cURL(1)
curl --insecure --silent --location -u ilo-user:password   \
     https://ilo-ip/redfish/v1/AccountService     | \
     jq '.Accounts, .Oem.Hpe.AppAccounts'
{
  "@odata.id": "/redfish/v1/AccountService/Accounts"
}
{
  "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts"
}
```
  
  {% /tab %}
{% tab label="cURL(2)" %}

```json cURL(2)
curl --insecure --silent --location -u ilo-user:password   \
     'https://ilo-ip/redfish/v1/AccountService/?%24select=Accounts%2C%20Oem/Hpe/AppAccounts' | \
     jq '.'
{
  "@odata.context": "/redfish/v1/$metadata#AccountService.AccountService",
  "@odata.etag": "W/\"985003737\"",
  "@odata.id": "/redfish/v1/AccountService/",
  "@odata.type": "#AccountService.v1_15_0.AccountService",
  "Accounts": {
    "@odata.id": "/redfish/v1/AccountService/Accounts/"
  },
  "Oem": {
    "Hpe": {
      "AppAccounts": {
        "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/"    
      }
    }
  }
}
```
  
  {% /tab %}
  {% /tabs %}

## Local user administration

HPE iLO holds a local user database enabling consistent user management
for all interfaces including the Web interface (GUI) as well as the
Redfish API. Refer to the example of the
[previous paragraph](#the-account-service) to retrieve
the URIs of the local user accounts.

{% admonition type="success" name="TIP:" %}
Refer to this
[documentation section](/docs/redfishclients/ilorest-userguide/ilocommands#iloaccounts-command)
of iLO user management with iLOrest.
{% /admonition %}

The following example lists the URIs of local iLO users and application accounts.

  {% tabs %}
{% tab label="Generic GET requests" %}

```text Generic GET requests
GET /redfish/v1/AccountService/Accounts/
and
GET /redfish/v1/AccountService/Oem/Hpe/AppAccounts
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest list Members --select ManagerAccountCollection --json
[
  {
    "Members": [
      {
        "@odata.id": "/redfish/v1/AccountService/Accounts/65536/"
      },
      {
        "@odata.id": "/redfish/v1/AccountService/Accounts/65544/"
      },
      {
        "@odata.id": "/redfish/v1/AccountService/Accounts/65545/"
      },
      {
        "@odata.id": "/redfish/v1/AccountService/Accounts/65546/"
      },
      {
        "@odata.id": "/redfish/v1/AccountService/Accounts/65547/"
      }
    ]
  },
  {
    "Members": [
      {
        "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65605/"
      },
      {
        "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606/"
      }
    ]
  }
]


ilorest logout
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --location -u ilo-user:password   \
     https://ilo-ip/redfish/v1/AccountService/Accounts     | \
     jq '.'
{
  "@odata.context": "/redfish/v1/$metadata#ManagerAccountCollection.ManagerAccountCollection",
  "@odata.etag": "W/\"144846794\"",
  "@odata.id": "/redfish/v1/AccountService/Accounts",
  "@odata.type": "#ManagerAccountCollection.ManagerAccountCollection",
  "Description": "iLO User Accounts",
  "Name": "Accounts",
  "Members": [
    {
      "@odata.id": "/redfish/v1/AccountService/Accounts/65536"
    },
    {
      "@odata.id": "/redfish/v1/AccountService/Accounts/65544"
    },
    {
      "@odata.id": "/redfish/v1/AccountService/Accounts/65545"
    },
    {
      "@odata.id": "/redfish/v1/AccountService/Accounts/65546"
    },
    {
      "@odata.id": "/redfish/v1/AccountService/Accounts/65547"
    }
  ],
  "Members@odata.count": 5
}

curl --insecure --silent --location -u ilo-user:password   \
     https://ilo-ip/redfish/v1/AccountService/Oem/Hpe/AppAccounts     | \
     jq '.'
{
  "@odata.context": "/redfish/v1/$metadata#ManagerAccountCollection.ManagerAccountCollection",
  "@odata.etag": "W/\"1459770610\"",
  "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts",
  "@odata.type": "#ManagerAccountCollection.ManagerAccountCollection",
  "Description": "iLO Application Accounts",
  "Name": "Application Accounts",
  "Members": [
    {
      "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65605"
    },
    {
      "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606"
    }
  ],
  "Members@odata.count": 2
}

```
  
  {% /tab %}
  {% /tabs %}
A local user account consists of a user name, password, and a set
of privileges. The `RoleId`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#roleid") %} property {% /link-internal %}
describes one of three defined Redfish
roles based upon assigned privileges. The `Oem/Hpe/LoginName`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#roleid") %} property {% /link-internal %}
is a description of the account.

{% admonition type="info" name="NOTE" %}
Due to a terminology mismatch between the Redfish standard and historical
iLO products, the properties for `UserName` and `LoginName` are reversed
in Redfish vs. the HPE iLO Web interface. The following table provides
a detailed description of each property in the different contexts.

|Redfish Property|GUI Term|Description|Example|
|---|---|---|---|
|`UserName`|Login Name|The user identity string used with a password to log into iLO|jsmith|
|`Oem/Hpe/LoginName`|User Name|The descriptive name of the user|Jane Smith - Director of IT|

{% /admonition %}

The following example retrieves the properties of iLO user
with `UserName` equal to `jsmith`.

  {% tabs %}
{% tab label="GET account properties" %}

```text GET account properties
GET /redfish/v1/AccountService/Accounts/?$filter=UserName eq 'jsmith'
```
  
  {% /tab %}
{% tab label="ilOrest" %}

```shell ilOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest list --select ManagerAccount. --filter UserName=jsmith --json
ilorest logout
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --location -u ilo-user:password \
     https://ilo-ip/redfish/v1/AccountService/Accounts/?%24filter=UserName%20eq%20'jsmith' | \
     jq '.' 
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
  "@odata.context": "/redfish/v1/$metadata#ManagerAccountCollection.ManagerAccountCollection",
  "@odata.etag": "W/\"2314145909\"",
  "@odata.id": "/redfish/v1/AccountService/Accounts/",
  "@odata.type": "#ManagerAccountCollection.ManagerAccountCollection",
  "Description": "iLO User Accounts",
  "Name": "Accounts",
  "Members": [
    {
      "@odata.context": "/redfish/v1/$metadata#ManagerAccount.ManagerAccount",
      "@odata.id": "/redfish/v1/AccountService/Accounts/65543/",
      "@odata.type": "#ManagerAccount.v1_12_1.ManagerAccount",
      "Id": "65543",
      "AccountTypes": [
        "WebUI"
      ],
      "Description": "iLO User Account",
      "Enabled": true,
      "Keys": {
        "@odata.id": "/redfish/v1/AccountService/Accounts/65543/Keys/"
      },
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
          "LoginName": "Jane Smith - Director of IT",
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
      "PasswordChangeRequired": false,
      "RoleId": "Operator",
      "UserName": "jsmith"
    }
  ],
  "Members@odata.count": 1
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
`Password` is always shown as `null` even though it is a
PATCHable property.
{% /admonition %}

### Roles and privileges

HPE iLO uses a
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.privileges") %} set {% /link-internal %}
of `Privileges` assigned to each user account to grant and
restrict access to features. HPE iLO privileges are:

|Redfish|iLO Web Interface (GUI)|
|---|---|
|LoginPriv|Login|
|RemoteConsolePriv|Remote Console|
|VirtualPowerAndResetPriv|Virtual Power and Reset|
|VirtualMediaPriv|Virtual Media|
|HostBIOSConfigPriv|Host BIOS|
|iLOConfigPriv|Configure iLO Settings|
|UserConfigPriv|Administer User Accounts|
|HostNICConfigPriv|Host NIC|
|HostStorageConfigPriv|Host Storage|
|SystemRecoveryConfigPriv|Recovery Set|

#### Application accounts

Application accounts have been introduced with HPE Gen12 servers including an iLO 7.
These accounts and associated application token allow host based applications
(i.e. AMS, iSUT, SUM, iLOrest) to get authenticated for in-band communication,
by the iLO Redfish service
without requiring any human being intervention for supplying iLO credentials.

Refer to the
[Transitioning to HPE iLO 7](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7)
section for more detail on those specific accounts.

#### Roles

You can use `RoleId`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#roleid") %} property {% /link-internal %}
to create users with specific starting privileges.

On a GET of the local user account, `RoleId` is synthesized based upon
the enabled privileges. iLO does not store a separate `RoleId` value.
For this reason, modifications to raw privileges may or may not result
in a changed `RoleId` based upon iLO's mapping.

If the PATCH includes both `RoleID` and individual privileges, the
privileges corresponding to the RoleId are assigned to the local
user account first, and then the explicit privileges are assigned.

The following example sets all iLO privileges as long as the account
performing the operation already has sufficient privileges to grant
these privileges.

  {% tabs %}
{% tab label="Account role configuration" %}

```text Account role configuration
PATCH /redfish/v1/AccountService/Accounts/{accountId}
```
  
  {% /tab %}
{% tab label="Body" %}

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
  
  {% /tab %}
  {% /tabs %}
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

The simplest possible new local user account create operation is to `POST`
to the Accounts collection, as shown in the example below.

The following example creates a user account `jsmith` with the default
`ReadOnly` RoleId and only the iLO Login privilege. Notice that
`Oem/Hpe/LoginName` defaults to the provided `UserName` unless it
is specifically specified.

  {% tabs %}
{% tab label="User creation" %}

```text User creation
POST /redfish/v1/AccountService/Accounts/
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
    "UserName": "jsmith",
    "Password": "passwordexample"
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
Each local user account must have a unique `UserName`.
{% /admonition %}

  {% tabs %}
{% tab label="Get account properties" %}

```text Get account properties
GET /redfish/v1/AccountService/Accounts/{accountId}
```
  
  {% /tab %}
{% tab label="Response body" %}

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
  
  {% /tab %}
  {% /tabs %}
### Creating a new Account using a RoleId

You may specify a `RoleId` with a new user account, as shown in
the following example.

  {% tabs %}
{% tab label="Account creation with RoleId" %}

```text Account creation with RoleId
POST /redfish/v1/AccountService/Accounts/
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
    "UserName": "jsmith",
    "Password": "passwordexample",
    "RoleId": "Operator"
}
```
  
  {% /tab %}
  {% /tabs %}
To retrieve the just created account, perform a GET operation
like in the following example.

  {% tabs %}
{% tab label="Retrieve account properties" %}

```text Retrieve account properties
GET /redfish/v1/AccountService/Accounts/{accountId}
```
  
  {% /tab %}
{% tab label="Body" %}

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
  
  {% /tab %}
  {% /tabs %}
### Creating a new account with specific privileges

You may also create a local user with specific privileges.

  {% tabs %}
{% tab label="Create user with specific privileges" %}

```text Create user with specific privileges
POST /redfish/v1/AccountService/Accounts/

Payload:
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
  
  {% /tab %}
{% tab label="iLOrest" %}

```json iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest iloaccounts add jsmith "Jane Smit - Director of IT" passwordexample --addprivs 1,5,6
ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
This results in the following new local user account:

  {% tabs %}
{% tab label="Retrieve account properties" %}

```text Retrieve account properties
GET /redfish/v1/AccountService/Accounts/{accountId}
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest list --select ManagerAccount. --filter UserName=jsmith --json
ilorest logout
```
  
  {% /tab %}
{% tab label="Response body" %}

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
            "LoginName": "Jane Smith - Director of IT",
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
  
  {% /tab %}
  {% /tabs %}
{% admonition type="success" name="Info" %}
Several Python examples have been posted in the GitHub repository
of the HPE Redfish library.

* <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/add_user_account.py"
    target="_blank">Add user account</a>
* <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/modify_user_account.py"
    target="_blank">Modify user account</a>
* <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/remove_account.py"
    target="_blank">Remove user account</a>

{% /admonition %}

### Modifying a Local User Account

The following properties are modifiable on an existing local user account:

* `UserName`
* `Password` - this is always returned as null, but you may PATCH it with
    a value to change the password
* `RoleId` - PATCHing `RoleId` on an existing local user account will reset
    it’s existing privileges with those mapped to the RoleId.
* `Oem/Hpe/LoginName`
* `Oem/Hpe/Privileges/*` - any of the privileges may be modified with true
    or false

### Adding and Removing Privileges

Local user account privileges may be modified with a PATCH to the URI of the
desired `ManagerAccount` resource, as shown in the example below.

  {% tabs %}
{% tab label="PATCH user account" %}

```text PATCH user account
PATCH /redfish/v1/AccountService/Accounts/{accountId}/
```
  
  {% /tab %}
{% tab label="Body" %}

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
  
  {% /tab %}
  {% /tabs %}
### Changing Roles

  {% tabs %}
{% tab label="PATCH roles" %}

```text PATCH roles
PATCH /redfish/v1/AccountService/Accounts/{accountId}/
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
    "RoleId": "Operator"
}
```
  
  {% /tab %}
{% tab label="Successfull response body " %}

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
  
  {% /tab %}
  {% /tabs %}
### Changing Password

Local user account passwords may be modified with a PATCH to the URI of the
desired `ManagerAccount` resource, as shown in the example below.

  {% tabs %}
{% tab label="User password modification" %}

```text User password modification
PATCH /redfish/v1/AccountService/Accounts/{accountId}/
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
    "Password": "newpassword"
}
```
  
  {% /tab %}
  {% /tabs %}
### Enabling and Disabling User Accounts

The property `Enabled`, listed under the URI
`redfish/v1/AccountService/Accounts/{AccountId}` allows an account with
administrator privileges to enable or disable other iLO Accounts.
Enabled admin accounts are able to perform `GET` and `PATCH` operations on
the URI. Accounts that are not enabled cannot perform `GET` and `PATCH`
operations. If the `Enabled` property is set to `True`, you are able to
login and access HPE iLO. If the `Enabled` property is set to `False`,
you will not be able to login and access iLO.

Perform `GET`on the URI `redfish/v1/AccountService/Accounts/{AccountId}`

  {% tabs %}
{% tab label="GET view enabled account" %}

```text GET view enabled account
GET redfish/v1/AccountService/Accounts/{AccountId}
```
  
  {% /tab %}
{% tab label="GET response" %}

```json GET response
{
    "@odata.context": "/redfish/v1/$metadata#ManagerAccount.ManagerAccount",
    "@odata.etag": "W/\"9DE38055\"",
    "@odata.id": "/redfish/v1/AccountService/Accounts/14",
    "@odata.type": "#ManagerAccount.v1_3_0.ManagerAccount",
    "Id": "14",
    "Description": "iLO User Account",
    "Enabled": true,
    "Links": {
        "Role": {
            "@odata.id": "/redfish/v1/AccountService/Roles/Administrator"
        }
    },
    "Name": "User Account",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOAccount.HpeiLOAccount",
            "@odata.type": "#HpeiLOAccount.v2_2_0.HpeiLOAccount",
            "LoginName": "admin",
            "Privileges": {
                "HostBIOSConfigPriv": true,
                "HostNICConfigPriv": true,
                "HostStorageConfigPriv": true,
                "LoginPriv": true,
                "RemoteConsolePriv": true,
                "SystemRecoveryConfigPriv": false,
                "UserConfigPriv": true,
                "VirtualMediaPriv": true,
                "VirtualPowerAndResetPriv": true,
                "iLOConfigPriv": true
            },
            "ServiceAccount": false
        }
    },
    "Password": null,
    "PasswordChangeRequired": false,
    "RoleId": "Administrator",
    "UserName": "admin"
} 
```
  
  {% /tab %}
  {% /tabs %}
A local user account can be enabled or disabled with a PATCH to the URI
of desired `ManagerAccount` resource, as shown in the example below.

  {% tabs %}
{% tab label="setting Enabled property" %}

```text setting Enabled property
PATCH redfish/v1/AccountService/Accounts/{AccountId}
```
  
  {% /tab %}
{% tab label="PATCH Payload" %}

```json PATCH Payload
{
    "Enabled": true
}
```
  
  {% /tab %}
{% tab label="PATCH Response" %}

```json PATCH Response
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.17.AccountModified"
            }
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### Default iLO factory account

When HPE iLO is reset to factory defaults using
[iLOrest](https://servermanagementportal.ext.hpe.com/docs/redfishclients/ilorest-userguide/ilocommands/#factorydefaults-command)`factorydefaults`, the
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#actions") %} Redfish action {% /link-internal %}
or using the System Utilities/iLO Configuration Utility menu, all user
setting data are erased. Default credentials are required to access
HPE iLO after a factory reset.

The following example sets default HPE iLO
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.defaultusername") %} username {% /link-internal %}
and
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.defaultpassword") %} password {% /link-internal %}
after an iLO factory reset
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#actions") %} action {% /link-internal %}.

  {% tabs %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --user <ilo-user>:password \
     --header 'Content-Type: application/json'      \
     --request PATCH 'https://<ilo-ip>/redfish/v1/AccountService' \
     --data '{
    "Oem": {
        "Hpe": {
            "DefaultUserName": "administrator",
            "DefaultPassword": "DefaultFactoryPassword" }}
                }'
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select AccountService.
ilorest set Oem/Hpe/DefaultUserName="administrator"
ilorest set Oem/Hpe/DefaultPassword="DefaultFactoryPassword"
ilorest commit
ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
### Removing a Local User Account

A local user account can be removed with a DELETE to the URI of desired
`ManagerAccount` resource, as shown in the example below.

  {% tabs %}
{% tab label="User removal" %}

```text User removal
 DELETE /redfish/v1/AccountService/Accounts/{accountId}/
```
  
  {% /tab %}
  {% /tabs %}
## Directory Authentication

### Local users authentication

The following example disables local users authentication.

{% admonition type="info" name="NOTE" %}
Disabling local user authentication is not allowed when both Directory
Authentication AND Kerberos Authentication are disabled.
{% /admonition %}

  {% tabs %}
{% tab label="Generic request" %}

```text Generic request
PATCH /redfish/v1/AccountService/

Payload:
{
    "LocalAccountAuth": "Disabled"
}
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```json iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest set LocalAccountAuth=Disabled --select AccountService. --commit
ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="success" name="TIP" %}
Use the `Enabled` value in the above example
to enable local users authentication.
{% /admonition %}

### Configuring Active Directory Authentication

The following example enables authentication by a Microsoft Active Directory
service using default standard port `636`.

  {% tabs %}
{% tab label="Generic Request" %}

```text Generic Request
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Active Directory authentication " %}

```json Active Directory authentication - Default port
{
    "LDAP": {
        "AccountProviderType": "ActiveDirectoryService",
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<Active Directory FQDN>"
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
The following example enables authentication by a Microsoft Active Directory
using a custom TCP/UDP port.

{% admonition type="success" name="NOTE" %}
In order to use a custom port for directory authentication,
you need first to send a PATCH request with the custom
port mentioned in the `ServiceAddresses[]` array, as
shown in step 1 of the below example.

Then, you have to remove the custom port and send the PATCH
request again as mentioned in step 2 below.

The first step populates the `Oem.Hpe.DirectorySettings.LdapServerPort` read-only property,
but keeps the port number in the `ServiceAddresses[]` array, which makes it redundant.

The second step removes the redundant port number in the
`ServiceAddresses[]` array.
{% /admonition %}

  {% tabs %}
{% tab label="Generic Request" %}

```text Generic Request
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Step 1" %}

```json Step 1
{
    "LDAP": {
        "AccountProviderType": "ActiveDirectoryService",
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<Active Directory FQDN>:4646"
        ]
    }
}
```
  
  {% /tab %}
{% tab label="Step 2" %}

```json Step 2
{
    "LDAP": {
        "AccountProviderType": "ActiveDirectoryService",
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<Active Directory FQDN>"
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### Configuring generic LDAP Authentication

The following example enables authentication by a generic LDAP
service using the default TCP/UDP port `636`.

  {% tabs %}
{% tab label="Generic LDAP configuration request" %}

```text Generic LDAP configuration request
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Default LDAP server port 636" %}

```json Default LDAP server port 636
{
    "LDAP": {
        "AccountProviderType": "LDAPService",
        "ServiceEnabled": true,
        "ServiceAddresses": [
            "<LDAP FQDN>"
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
The following example enables authentication by a generic LDAP service
using a custom TCP/UDP port.

{% admonition type="success" name="NOTE" %}
In order to use a custom port for directory authentication,
you need first to send a PATCH request with the custom
port mentioned in the `ServiceAddresses[]` array, as
shown in step 1 of the below example.

Then, you have to remove the custom port and send the
request again as mentioned in step 2 below.

The first step populates the `Oem.Hpe.DirectorySettings.LdapServerPort` read-only property,
but keeps this port number in the `ServiceAddresses[]` array.

The second step removes the redundant port number in the
`ServiceAddresses[]` array.
{% /admonition %}

  {% tabs %}
{% tab label="Generic LDAP configuration request" %}

```text Generic LDAP configuration request
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Step 1" %}

```json Step 1: custom generic LDAP port
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
  
  {% /tab %}
{% tab label="Step 2" %}

```json Step 2: custom generic LDAP port
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
  
  {% /tab %}
  {% /tabs %}
### Disable Active Directory and generic LDAP Authentication

  {% tabs %}
{% tab label="Disabling Active Directory and LDAP" %}

```text Disabling Active Directory and LDAP
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Body 1" %}

```json Body 1
{
    "LDAP": {
        "AccountProviderType": "ActiveDirectoryService",
        "ServiceEnabled": false,
    }
}
```
  
  {% /tab %}
{% tab label="Body 2" %}

```json Body 2
{
    "LDAP": {
        "AccountProviderType": "LDAPService",
        "ServiceEnabled": false,
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### Enable and configure HPE Extended Schema Authentication (Active Directory only)

  {% tabs %}
{% tab label="HPE extended Schema authentication (AD only)" %}

```text HPE extended Schema authentication (AD only)
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Body" %}

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
  
  {% /tab %}
  {% /tabs %}
### Add User Search Contexts

The following example shows two possibilities to add user search contexts
The first one (Body 1) adds two new User Search Contexts, with no already
existing User Search Context present. The second one (Body 2) adds a new
User Search Context, with two existing User Search Contexts present.

  {% tabs %}
{% tab label="Add User Search contexts" %}

```text Add User Search contexts
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Body 1" %}

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
  
  {% /tab %}
{% tab label="Body 2" %}

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
  
  {% /tab %}
  {% /tabs %}
### Delete User Search Contexts

The following example shows two possibilities to delete User Search Contexts.
The first one (Body 1) deletes one/multiple User Search Contexts: Assume
you have three existing User Search Contexts,
e.g. "CN=Users,DC=domain,DC=com", "DC=domain,DC=com" and
"DC=testdomain,DC=com". To delete one, exclude it from the payload
and keep the ones to be retained.

The second one (Body 2) deletes all User Search Contexts.

  {% tabs %}
{% tab label="Delate User Search Contexts" %}

```text Delate User Search Contexts
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Body 1" %}

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
  
  {% /tab %}
{% tab label="Body 2" %}

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
  
  {% /tab %}
  {% /tabs %}
### Import LDAP Server CA Certificate

  {% tabs %}
{% tab label="Import LDAP Server CA certificate" %}

```text Import LDAP Server CA certificate
POST /redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
    "CertificateString": "-----BEGIN CERTIFICATE-----\nMIIEHTCCAwWgAwIBAgIQe8LmWgF5edKw01/avJg69DANBgkqhkiG9w0BAQsFADCB
…………………………………………………………………………………………………………………………………
…………………………………………………………………………………………………………………………………
Ow==\n-----END CERTIFICATE-----\n"
}
```
  
  {% /tab %}
  {% /tabs %}
### View LDAP Server CA Certificate Status

  {% tabs %}
{% tab label="LDAP Server CA Certificate Status" %}

```text LDAP Server CA Certificate Status
GET /redfish/v1/AccountService/?$select=Oem/Hpe/DirectorySettings/LdapCaCertificateLoaded`
```
  
  {% /tab %}
{% tab label="Response Body" %}

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
  
  {% /tab %}
  {% /tabs %}
### View LDAP Server CA Certificate Details

{% admonition type="info" name="NOTE" %}
The LDAP provider supports a single certificate
{% /admonition %}

  {% tabs %}
{% tab label="LDAP Server CA certificate details" %}

```text LDAP Server CA certificate details
GET /redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/{certId}/
```
  
  {% /tab %}
{% tab label="Response body" %}

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
  
  {% /tab %}
  {% /tabs %}
### Add new Directory Groups (No Existing Groups)

{% admonition type="info" name="NOTE" %}
"Administrator" and "Operator" are predefined Redfish RoleIds. "LDAP" can
also be used instead of "ActiveDirectory".
{% /admonition %}

  {% tabs %}
{% tab label="Add new directory Groups" %}

```text Add new directory Groups
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Body" %}

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
  
  {% /tab %}
  {% /tabs %}
### View Directory Groups

  {% tabs %}
{% tab label="View Directory Groups" %}

```text View Directory Groups
GET /redfish/v1/AccountService/?$select=LDAP/RemoteRoleMapping, ActiveDirectory/RemoteRoleMapping`
```
  
  {% /tab %}
{% tab label="Response body" %}

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
  
  {% /tab %}
  {% /tabs %}
### Add New Directory Groups to Existing Groups

In the following example, assume that two directory groups are already
present (TestGroup1 and TestGroup2). Use the `LocaleRole` and `RemoteGroup`
values for the existing directory groups in the payload. Add an additional
group "TestGroup3" with "ReadOnly" Redfish Role. "LDAP can also be used
instead of "ActiveDirectory".

  {% tabs %}
{% tab label="Add New Directory groups to existing groups" %}

```text Add New Directory groups to existing groups
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Body" %}

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
  
  {% /tab %}
  {% /tabs %}
### Delete Directory Groups

In the following example, assume you have three existing directory groups,
e.g. "TestGroup1", "TestGroup2" and "TestGroup3". To delete "TestGroup3",
exclude it from the payload and keep the ones to be retained. "LDAP" can
also be used instead of "ActiveDirectory". It shows how to delete
one/multiple Directory Groups (Body 1) or all Directory Groups (Body 2).

{% admonition type="info" name="NOTE" %}
"LDAP" can also be used instead of "ActiveDirectory"
{% /admonition %}

  {% tabs %}
{% tab label="Delete Directory Groups" %}

```text Delete Directory Groups
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Body 1" %}

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
  
  {% /tab %}
{% tab label="Body 2" %}

```json Body 2
{
    "ActiveDirectory": {
        "RemoteRoleMapping": [
            {}
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### View Directory Group Privileges

  {% tabs %}
{% tab label="Retrieve Roles collection" %}

```text Retrieve Roles collection
GET /redfish/v1/AccountService/Roles/
```
  
  {% /tab %}
{% tab label="Response body" %}

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
  
  {% /tab %}
{% tab label="GET specific Directory Group privileges" %}

```text GET specific Directory Group privileges
GET /redfish/v1/AccountService/Roles/{directoryGroupId}/
```
  
  {% /tab %}
{% tab label="Response body" %}

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
  
  {% /tab %}
  {% /tabs %}
### Modify Directory Group Privileges

Sample Body 1 (Update AssignedPrivileges):
    Add/Remove the privileges in the AssignedPrivileges[] array.
Sample Body 2 (Update OemPrivileges):
    Add/Remove the privileges in the OemPrivileges[] array.

  {% tabs %}
{% tab label="Add" %}

```text Add/Remove privileges
PATCH /redfish/v1/AccountService/Roles/{directoryGroupId}/
```
  
  {% /tab %}
{% tab label="Body 1" %}

```json Body 1
{
    "AssignedPrivileges": [
        "Login",
        "ConfigureSelf",
        "ConfigureUsers"
    ]
}
```
  
  {% /tab %}
{% tab label="Body 2" %}

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
  
  {% /tab %}
  {% /tabs %}
### Enable, Configure, Disable Kerberos Authentication

  {% tabs %}
{% tab label="Configure Kerberos" %}

```text Configure Kerberos
PATCH /redfish/v1/AccountService/
```
  
  {% /tab %}
{% tab label="Body for Disable" %}

```json Body for Disable
{
    "ActiveDirectory": {
        "ServiceEnabled": false
    }
}
```
  
  {% /tab %}
{% tab label="Body for Enable realm" %}

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
  
  {% /tab %}
{% tab label="Body with custom KDC server port" %}

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
  
  {% /tab %}
  {% /tabs %}
### Import Kerberos Keytab File

  {% tabs %}
{% tab label="Import Keytab file" %}

```text Import Keytab file
POST /redfish/v1/AccountService/Actions/Oem/Hpe/HpeiLOAccountService.ImportKerberosKeytab/
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
    "ImportUri": "http://<URI of keytab file>"
}
```
  
  {% /tab %}
  {% /tabs %}
## Start Directory Test

  {% tabs %}
{% tab label="Directory test" %}

```text Directory test
POST on /redfish/v1/AccountService/DirectoryTest/Actions/HpeDirectoryTest.StartTest/
```
  
  {% /tab %}
{% tab label="Body 1" %}

```json Body 1
{
}
```
  
  {% /tab %}
{% tab label="Body 2" %}

```json Body 2
{
    "TestUserName": "TestUser1",
    "TestUserPassword": "TestPassword1"
}
```
  
  {% /tab %}
{% tab label="Body 3" %}

```json Body 3
{
    "TestUserName": "TestUser1",
    "TestUserPassword": "TestPassword1",
    "DirectoryAdminDn": "CN=Administrator,CN=Users,DC=ilotest2,DC=com",
    "DirectoryAdminPassword": "AdminPassword"
}
```
  
  {% /tab %}
  {% /tabs %}
### Stop Directory Test

  {% tabs %}
{% tab label="Stop tests" %}

```text Stop tests
POST /redfish/v1/AccountService/DirectoryTest/Actions/HpeDirectoryTest.StopTest/
```
  
  {% /tab %}
{% tab label="Body" %}

```json Body
{
}
```
  
  {% /tab %}
  {% /tabs %}
### View Directory Test Result

  {% tabs %}
{% tab label="View test results" %}

```text View test results
GET /redfish/v1/AccountService/DirectoryTest/
```
  
  {% /tab %}
{% tab label="Response body" %}

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
  
  {% /tab %}
  {% /tabs %}
