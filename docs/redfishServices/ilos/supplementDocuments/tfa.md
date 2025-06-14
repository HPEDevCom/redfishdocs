---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: false
seo:
  title: Two factor authentication
breadcrumbs:
  hide: true
---

## Two Factor Authentication

Two Factor Authentication (TFA) is a security feature that enhances security
while logging in and creating a user session. TFA uses a One Time
Password (OTP) token along with the username and password credentials.
When a Microsoft Active Directory user logs into an HPE iLO via the
Graphical User Interface or via Redfish, the user needs to provide the six
digit token OTP received in an email sent by iLO toward the user's mailbox
defined in its Microsoft Active Directory properties.

TFA is implemented in the HPE iLO Redfish service as an OEM extension in the
`AccountService` schema. When enabled, it is applicable for
Microsoft Active Directory users.

## Two Factor Authentication pre-requisites

Prior to the TFA enablement the following pre-requisites are mandatory:

- Microsoft Active Directory must be configured in iLO and working properly.
    Eligible Microsoft Active Directory users must be able to login with
    simple (non-TFA) authentication. Refer to the
    [Directory Authentication section](/docs/redfishservices/ilos/supplementdocuments/managingusers/#directory-authentication) for more detail.
- Microsoft Active Directory users eligible for logging in via TFA must
    have a valid email address configured within Microsoft Active Directory.
- HPE iLO must be properly configured for sending mails via the SMTP
  configured server. Refer to the
  {% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.alertmailenabled") %} Manager Network Protocol {% /link-internal %}
  section for the different properties related to the mail
  and alert configuration.

The following example shows a typical iLO Microsoft Active Directory
configuration suitable for TFA.

{% tabs %}
{% tab label="Generic request" %}

```text Generic request
GET /redfish/v1/AccountService/?$select=LDAP/LDAPService,
LDAP/ServiceAddresses, LDAP/ServiceEnabled, Oem/Hpe/DirectorySettings,
ActiveDirectory
```
  
{% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select AccountService. 
ilorest get LDAP/LDAPService LDAP/ServiceAddresses LDAP/ServiceEnabled Oem/Hpe/DirectorySettings ActiveDirectory --json
ilorest logout
```
  
{% /tab %}
{% tab label="Body response" %}

```json Body response
{
    "@odata.context": "/redfish/v1/$metadata#AccountService.AccountService",
    "@odata.etag": "W/\"B28F2C21\"",
    "@odata.id": "/redfish/v1/AccountService/",
    "@odata.type": "#AccountService.v1_5_0.AccountService",
    "ActiveDirectory": {
        "AccountProviderType": "ActiveDirectoryService",
        "Authentication": {
            "AuthenticationType": "UsernameAndPassword",
            "Password": null,
            "Username": ""
        },
        "RemoteRoleMapping": [
            {
                "LocalRole": "dirgroupb3d8954f6ebbe735764e9f7c",
                "RemoteGroup": "Administrators"
            },
            {
                "LocalRole": "dirgroup9d4546a03a03bb977c03086a",
                "RemoteGroup": "Authenticated Users:S-1-5-11"
            }
        ],
        "ServiceAddresses": [
            ""
        ],
        "ServiceEnabled": false
    },
    "LDAP": {
        "LDAPService": {
            "SearchSettings": {
                "BaseDistinguishedNames": [
                    "CN=ilo Admins,CN=Users,DC=lj,DC=lab"
                ]
            }
        },
        "ServiceAddresses": [
            "dc.lj.lab"
        ],
        "ServiceEnabled": true
    },
    "Oem": {
        "Hpe": {
            "DirectorySettings": {
                "LdapAuthenticationMode": "DefaultSchema",
                "LdapCaCertificateLoaded": false,
                "LdapCaCertificates": {
                    "@odata.id": "/redfish/v1/AccountService/ExternalAccountProviders/LDAP/Certificates/"
                },
                "LdapServerPort": 636
            }
        }
    }
}
```

{% /tab %}
{% /tabs %}

The following example shows a typical iLO mail subsystem configuration
suitable for TFA.

{% admonition type="success" name="TIP" %}
The `AlertMailEmail` property is only related to the Alert Mail subsystem;
the email it contains may not be part of any user configuration in the
Microsoft Active Directory server needed for TFA. However, it can be used
to test and validate the connectivity to the SMTP server.
{% /admonition %}

{% tabs %}
{% tab label="Generic request" %}

```text Generic request
GET 
/redfish/v1/Managers/1/NetworkProtocol/?$select=Oem/Hpe/AlertMailSenderDomain,
Oem/Hpe/AlertMailSMTPServer, Oem/Hpe/AlertMailEmail, Oem/Hpe/AlertMailEnabled,
Oem/Hpe/AlertMailSMTPAuthEnabled, Oem/Hpe/AlertMailSMTPAuthPw,
Oem/Hpe/AlertMailSMTPSecureEnabled, Oem/Hpe/AlertMailSMTPPort,
Oem/Hpe/AlertMailSMTPAuthUser
```
  
{% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select NetworkProtocol.
ilorest get Oem/Hpe/AlertMailSenderDomain Oem/Hpe/AlertMailSMTPServer Oem/Hpe/AlertMailEmail Oem/Hpe/AlertMailEnabled Oem/Hpe/AlertMailSMTPAuthEnabled Oem/Hpe/AlertMailSMTPAuthPw Oem/Hpe/AlertMailSMTPSecureEnabled Oem/Hpe/AlertMailSMTPPort Oem/Hpe/AlertMailSMTPAuthUser --json
ilorest logout
```
  
{% /tab %}
{% tab label="Body response" %}

```json Body response
{
    "@odata.context": "/redfish/v1/$metadata#ManagerNetworkProtocol.ManagerNetworkProtocol",
    "@odata.etag": "W/\"99DE5E88\"",
    "@odata.id": "/redfish/v1/Managers/1/NetworkProtocol/",
    "@odata.type": "#ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol",
    "Oem": {
        "Hpe": {
            "AlertMailEmail": "francois@hpelabs.ddnsfree.com",
            "AlertMailEnabled": true,
            "AlertMailSMTPAuthEnabled": false,
            "AlertMailSMTPAuthPw": null,
            "AlertMailSMTPAuthUser": "",
            "AlertMailSMTPPort": 25,
            "AlertMailSMTPSecureEnabled": true,
            "AlertMailSMTPServer": "postfix.lj.lab",
            "AlertMailSenderDomain": "lj.lab"
        }
    }
}
```

{% /tab %}
{% /tabs %}

The following example verifies that a Microsoft Active Directory user
is properly configured (with a valid e-mail address) for TFA.

{% tabs %}
{% tab label="PowerShell request" %}

```PowerShell PowerShell request
PS C:> Get-ADUser -Filter "Name -eq 'ilo_admin'" -SearchBase "DC=lj,DC=lab"
-Properties "mail" -Server dc.lj.lab -Credential lj\francois
```
  
{% /tab %}
{% tab label="Body response" %}

```PowerShell Body response

DistinguishedName : CN=iLO_Admin,OU=Developers,DC=lj,DC=lab
Enabled           : True
GivenName         : iLO_Admin
mail              : ilo_admin@hpelabs.ddnsfree.com
Name              : iLO_Admin
ObjectClass       : user
ObjectGUID        : f60f6413-c92d-47ab-b179-d1651bcb2fd8
SamAccountName    : ilo_admin
SID               : S-1-5-21-348893910-328035306-4278668119-1450
Surname           :
UserPrincipalName : ilo_admin@lj.lab
```
  
{% /tab %}
{% /tabs %}

{% admonition type="info" name="NOTE" %}
If the `mail` property of a Microsoft Active Directory user is empty,
trying to log into iLO with this username, returns a `409 Conflict` status
error with a "MailNotConfigured"
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_msgregs", $env.PUBLIC_LATEST_FW_VERSION) %} error response {% /link-internal %}.
{% /admonition %}

## Enabling Two Factor Authentication

To enable TFA in an HPE iLO management controller, the above pre-requisites
must be met and the following actions must be performed in that order:

1. Set
   {% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.smtpfortfaenabled") %} SMTPForTFAEnabled {% /link-internal %}
   to `true`
2. Set
   {% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.twofactorauth") %} TwoFactorAuth {% /link-internal %}
   to `Enabled`

The following example configures `SMTPForTFAEnabled` for TFA:

{% tabs %}
{% tab label="Generic request" %}

```text Generic request
PATCH redfish/v1/Managers/1/NetworkProtocol
```
  
{% /tab %}
{% tab label="Body request" %}

```json Body request
{
    "Oem": {
        "Hpe": {
            "SMTPForTFAEnabled": "true"
        }
    }
}
```
  
{% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select NetworkProtocol.
ilorest set Oem/Hpe/SMTPForTFAEnabled=true --commit
ilorest logout
```
  
{% /tab %}
{% tab label="Body response" %}

```json Body response
{
    "error":{
        "code": "iLO.0.10ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information",
        "@Message.ExtendedInfo": {
            "MessageId": "Base.1.4.Success"
        }
    }
}
```
  
{% /tab %}
{% /tabs %}

The following example configures `TwoFactorAuth` for TFA:

{% tabs %}
{% tab label="Generic request" %}

```text Generic request
PATCH /redfish/v1/AccountService
```
  
{% /tab %}
{% tab label="Body request" %}

```json Body request
{
    "Oem": {
        "Hpe": {
            "TwoFactorAuth": "Enabled"
        }
    }
}
```
  
{% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select AccountService.
ilorest set Oem/Hpe/TwoFactorAuth=Enabled --commit
ilorest logout
```
  
{% /tab %}
{% tab label="Body response" %}

```json Body response
{
    "error":{
        "code": "iLO.0.10ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information",
        "@Message.ExtendedInfo": {
            "MessageId": "Base.1.4.Success"
        }
    }
}
```
  
{% /tab %}
{% /tabs %}

{% admonition type="info" name="NOTE" %}

- Attempting to authenticate a Microsoft Active Directory user
    using `Basic-Auth` when TFA is `enabled` results in a
    `401` Unauthorized `No Valid Session` response.
- If you configure `SMTPForTFAEnabled` to `false` when `TwoFactorAuth`
    is enabled, then `TwoFactorAuth` is automatically disabled.
- You receive a `PropertyValueIncompatible` response message
 when you:
  - enable `TwoFactorAuth` when `SMTPForTFAEnabled` is set to `false`
  - enable `TwoFactorAuth` when `LDAPAuthenticationMode` is not
    properly configured
  - enable `TwoFactorAuth` when `LDAPService` is not properly configured

{% /admonition %}

Using cURL and the basic user authentication mechanism, the following example
performs a GET toward the `AccountService` URI. The request is successful with
a local account (Administrator), but fails with a Microsoft
Active Directory username.

{% tabs %}
{% tab label="Basic auth. request of local user" %}

```shell Basic auth. request of local user
curl  -ksu Administrator:"AdminPassword"  -X GET  https://ilo-ip/redfish/v1/AccountService/ | jq  '.Oem.Hpe.TwoFactorAuth'
"Enabled"
```
  
{% /tab %}
{% tab label="Basic auth. request of a Directory user" %}

```shell Basic auth. request of a Directory user
curl  -kisu ilo_admin:"ilo_adminPassword"  -X GET  https://ilo-ip/redfish/v1/AccountService/

HTTP/1.1 401 Unauthorized
Cache-Control: no-cache
Content-type: application/json; charset=utf-8
Date: Fri, 25 Aug 2023 17:13:05 GMT
ETag: W/"02C2D1BB"
OData-Version: 4.0
Transfer-Encoding: chunked
X-Content-Type-Options: nosniff
X-Frame-Options: sameorigin
X-XSS-Protection: 1; mode=block

{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.17.NoValidSession"
            }
        ]
}
```
  
{% /tab %}
{% /tabs %}

## Creating a User Session with TFA

When TFA is enabled and the Microsoft Active Directory user credentials
are provided in the body of a
[session creation](/docs/concepts/redfishauthentication/#session-authentication)
request, a `OneTimePasscodeSent`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_msgregs", $env.PUBLIC_LATEST_FW_VERSION, "/#base.1.18.onetimepasscodesent") %} response message {% /link-internal %}
is returned and an One Time Password (OTP) is sent to the configured
Microsoft Active Directory user email.

{% tabs %}
{% tab label="Generic Session creation" %}

```text Generic Session creation
POST /redfish/v1/Sessions
```
  
{% /tab %}
{% tab label="Body request" %}

```json Body request
{
    "UserName": "jason",
    "Password": "words123"
}
```
  
{% /tab %}
{% tab label="Body response" %}

```json Body response
{
    "error":{
        "code": "iLO.0.10ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information",
        "@Message.ExtendedInfo": [
            {
                "MessageArgs": [
                    "configured mail"
                ],
                "MessageId": "Base.1.17.OneTimePasscodeSent"
            }
        ]
    }
}
```
  
{% /tab %}
{% /tabs %}

To perform the TFA the Redfish client needs to get the OTP from the mail
sent to the Microsoft Active Directory user and provide it in the payload
of a second POST request toward `/redfish/v1/Sessions` as a `Token` property,
along with the Microsoft Active Directory user credentials. The Token is a
six digit positive non-zero integer value.

{% tabs %}
{% tab label="Generic POST request" %}

```text Generic POST request
POST /redfish/v1/Sessions
```
  
{% /tab %}
{% tab label="Body request" %}

```json Body request
{
    "UserName": "ilo_admin",
    "Password": "ilo_adminPassword",
    "Token": "123456"
}
```
  
{% /tab %}
{% tab label="Body response" %}

```json Body response
{
    "@odata.context": "/redfish/v1/$metadata#Session.Session",
    "@odata.etag": "W/\"8ED90176\"",
    "@odata.id": "/redfish/v1/SessionService/Sessions/ilo_admin0000000064e8e858a464eea/",
    "@odata.type": "#Session.v1_0_0.Session",
    "Id": "ilo_admin0000000064e8e858a464eea",
    "Description": "Manager User Session",
    "Name": "User Session",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOSession.HpeiLOSession",
            "@odata.type": "#HpeiLOSession.v2_1_0.HpeiLOSession",
            "AccessTime": "2023-08-25T17:43:52Z",
            "LoginTime": "2023-08-25T17:43:52Z",
            "MySession": false,
            "UserExpires": "2023-08-25T18:13:52Z",
            "UserIP": "10.101.1.2",
            "UserTag": "REST",
            "UserType": "Directory"
        }
    },
    "UserName": "ilo_admin"
}
```
  
{% /tab %}
{% /tabs %}
