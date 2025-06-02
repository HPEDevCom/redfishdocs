---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
seo:
  title: HPE iLO security service
---

## HPE security service

{% admonition type="info" name="NOTE" %}
It is possible that some properties or resources described
in this section are not implemented in HPE iLO 4 and iLO 5.
{% /admonition %}

The `HpeSecurityService`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpesecurityservice") %} subsystem {% /link-internal %}
is the main entry point to the different security mechanisms protecting
the iLO and the platform (chassis and components).

The integrity of components (i.e. add-on cards, adapters) is discussed in the
[iLO and the SPDM](/docs/redfishservices/ilos/supplementdocuments/spdm/)
section.

Operating system protection is described in the
[HTTPS Boot TLS configuration](/docs/redfishservices/ilos/supplementdocuments/biostlsconf/)
and the [Secure Boot Databases](/docs/concepts/securebootdatabases/) sections.

## iLO Security State

Starting with HPE iLO 5, the `SecurityState`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#securitystate") %} property {% /link-internal %}
can be modified. The following example retrieves the possible values
from an HPE iLO 5 or 6 and an HPE iLO 7, using
[HPE iLOrest](/docs/redfishclients/ilorest-userguide) and cURL Redfish clients.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest select HpeSecurityService.
ilorest info SecurityState
ilorest logout
```
  
  {% /tab %}
{% tab label="iLOrest output (iLO 5 or 6)" %}

```text iLOrest output (iLO 5 or 6)
NAME
    SecurityState

DESCRIPTION
    The operational security level of this Manager.

TYPE
    string

READ-ONLY
    False

POSSIBLE VALUES
    Wipe
    Production
    HighSecurity
    FIPS
    CNSA
    SuiteB
    SynergySecurityMode
```
  
  {% /tab %}
{% tab label="iLOrest output (iLO 7)" %}

```text iLOrest output (iLO 7)
NAME
    SecurityState

DESCRIPTION
    The operational security level of this Manager.

TYPE
    string

READ-ONLY
    False

POSSIBLE VALUES
    Wipe
    SecureStandard
    FIPS
    CNSA
    SuiteB
    SynergySecurityMode
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
# Need to specify "--compressed" since schema files are compressed.
 curl --silent --insecure -u ilo-user:password  --compressed \
      "https://ilo-ip/redfish/v1/SchemaStore/en/HpeSecurityService.json/" | \
      jq '.properties.SecurityState'
```
  
  {% /tab %}
{% tab label="cURL output (iLO 5 or 6)" %}

```json cURL output (iLO 5 or 6)
{
  "description": "The operational security level of this Manager.",
  "enum": [
    "Wipe",
    "Production",
    "HighSecurity",
    "FIPS",
    "CNSA",
    "SuiteB",
    "SynergySecurityMode"
  ],
  "enumDescriptions": {
    "CNSA": "Same as FIPS. Additionally meets the criteria for NSA Commercial National Security Algorithm suite.  Must be in FIPS mode to transition to CNSA.",
    "FIPS": "Similar to High Security. This mode is intended to meet the FIPS 140-2 level 1 and Common Criteria security requirements. A reset to defaults is required to exit this mode.",
    "HighSecurity": "Manager is operating in high security mode, requiring extra authentication on host interface(s), and stronger encryption on network interfaces.",
    "Production": "Manager is operating in a normal security mode.  Default state for new systems.",
    "SuiteB": "Same as FIPS. Additionally meets the criteria for NSA SuiteB Top Secret installations.  Must be in FIPS mode to transition to SuiteB.",
    "SynergySecurityMode": "Synergy Security Mode is the mode supported by the Synergy Composer.",
    "Wipe": "Manager is currently wiping security related content and returning to a lower security mode.  This state will transition automatically when finished."
  },
  "etag": true,
  "longDescription": "The operational security level of this Manager. The valid values for this property are specified through the Redfish.AllowableValues annotation.",
  "readonly": false,
  "type": "string"
}
```
  
  {% /tab %}
{% tab label="cURL output (iLO 7)" %}

```json cURL output (iLO 7)
{
  "description": "The operational security level of this Manager.",
  "enum": [
    "Wipe",
    "SecureStandard",
    "FIPS",
    "CNSA",
    "SuiteB",
    "SynergySecurityMode"
  ],
  "enumDescriptions": {
    "CNSA": "Same as FIPS. Additionally meets the criteria for NSA Commercial National Security Algorithm suite.  Must be in FIPS mode to transition to CNSA.",
    "FIPS": "Similar to High Security. This mode is intended to meet the FIPS 140-2 level 1 and Common Criteria security requirements. A reset to defaults is required to exit this mode.",
    "SecureStandard": "Manager is operating in SecureStandard mode, requiring extra authentication on host interface(s), and stronger encryption on network interfaces - Default Security State ",
    "SuiteB": "Same as FIPS. Additionally meets the criteria for NSA SuiteB Top Secret installations.  Must be in FIPS mode to transition to SuiteB.",
    "SynergySecurityMode": "Synergy Security Mode is the mode supported by the Synergy Composer.",
    "Wipe": "Manager is currently wiping security related content and returning to a lower security mode.  This state will transition automatically when finished."
  },
  "etag": true,
  "longDescription": "The operational security level of this Manager. The valid values for this property are specified through the Redfish.AllowableValues annotation.",
  "readonly": false,
  "type": "string"
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTES" %}

- You may PATCH the `SecurityState`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#securitystate") %} property {% /link-internal %},
  but HPE iLO
  enforces strict limitations on how security states can transition.
  Any unsupported transition results in an error. Refer to the next
  paragraph for allowed transitions
- `SynergySecurityMode` only concerns Synergy Composers.
- `Wipe` is a transition state that cannot be set.

{% /admonition %}

The following example retrieves the current security state using
HPE iLOrest and cURL.
  
  {% tabs %}
  {% tab label="iLOrest" %}

  ```shell Example
  ilorest login ilo-ip -u ilo-user -p password
  ilorest select HpeSecurityService.
  ilorest get SecurityState --json
  ilorest logout
  ```
  
  {% /tab %}
  {% tab label="cURL" %}

  ```shell Example
   curl --insecure --silent --user ilo-user:password \
        'https://ilo-ip/redfish/v1/Managers/1/SecurityService/'  \
        | jq  '{SecurityState}'
  ```
  
  {% /tab %}
  {% tab label="Response" %}

  ```json Example
  {
    "SecurityState": "Production"
  }
  ```
  
  {% /tab %}
  {% /tabs %}

The following example transitions from `Production` to `HighSecurity`

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest select HpeSecurityService.
ilorest set SecurityState="HighSecurity"
ilorest commit
ilorest logout
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --user ilo-user:password \
     --header 'Content-Type: application/json'      \
     --request PATCH --location 'https://ilo-ip/redfish/v1/Managers/1/SecurityService/' \
     --data '{"SecurityState": "HighSecurity"}'
```
  
  {% /tab %}
{% tab label="Response" %}

```json Response
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.21.ResetInProgress"
            }
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
<!-- 

TBD
Update FIPS blog from Kocurek (<a href="https://developer.hpe.com/blog/creating-a-python-version-that-enforces-fips"
target="_blank">this article</a>)
and insert a TIP here, pointing to it.

-->

### Allowed Transitions

<!--
Need to make research about the following: 
|FIPS <-- > SuiteB|You may transition freely between FIPS and High
Security modes, subject to authentication and privileges.|
|FIPS <-- > CNSA|TBD|
-->

#### HPE iLO 5 and 6

|Transition|Notes|
|---|---|
|Production <--> HighSecurity|You may transition freely between Production and High Security states, subject to authentication and privileges.|
|Production or HighSecurity --> FIPS|You may transition into FIPS mode. Transitions out of FIPS mode are complex and beyond the scope of the RESTful API.|

#### HPE iLO 7

|Transition|Notes|
|---|---|
|Secure Standard --> FIPS|You may transition into FIPS mode. Transitions out of FIPS mode are complex and beyond the scope of the RESTful API.|

### In-band management of iLO 5 and 6

This paragraph concerns only HPE iLO 5 and iLO 6. Refer to the
[next paragraph](#transitioning-to-hpe-ilo-7) for [in-band management](vnic/#in-band-management) of HPE iLO 7 and later.

With iLO 5 and 6 in `Production`
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "/", "ilo6_hpe_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "/#securitystate") %} security state {% /link-internal %},
privileged OS users (i.e. root, Administrator)
can communicate with their local iLO ([in-band management](vnic/#in-band-management)) via the
[Channel Interface (CHIF)](/docs/etc/glossaryterms/)
without supplying any credential, only
when the `RequireHostAuthentication`
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "ilo6_manager_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "#oem.hpe.requirehostauthentication") %} property {% /link-internal %}
is set to `False` (default value).

With iLO 5 and 6 in `HighSecurity`
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "ilo6_hpe_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "#securitystate") %} state {% /link-internal %},
privileged OS users
(i.e. root, Administrator) can communicate with their local iLO via [CHIF](/docs/etc/glossaryterms/)
without supplying any credential when the `RequireHostAuthentication`
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "ilo6_manager_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "#oem.hpe.requirehostauthentication") %} property {% /link-internal %}
is set to `False`.

With iLO 5 and 6 in `FIPS`
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "ilo6_hpe_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "#securitystate") %} security state {% /link-internal %}
 and higher, all OS users must provide
valid credentials when willing to communicate with local iLO (in-band) via
[CHIF](/docs/etc/glossaryterms/)

{% admonition type="info" name="NOTES" %}

- In `FIPS` security state, the `RequireHostAuthentication`
 
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "ilo6_manager_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "#oem.hpe.requirehostauthentication") %} property {% /link-internal %}
  is set to `true` and cannot be modified.
- The HPE OEM `RequireHostAuthentication`
 
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#securitystate") %} property {% /link-internal %}
has been removed in HPE iLO 7.
  Refer to the [next paragraph](#transitioning-to-hpe-ilo-7) for more info concerning HPE iLO 7.

{% /admonition %}

In iLO 5 and 6 based servers, regardless the value of the
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "ilo6_hpe_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "#securitystate") %} security state {% /link-internal %}, OS users must
supply valid credentials when willing to communicate with local iLO (in-band) via
the [Virtual NIC](vnic).

{% admonition type="success" name="TIP" %}

Use `ilorest login --force_vnic -u ilo-user -p ilo-password`
to open an in-band Redfish session to the local iLO.

{% /admonition %}

The following example retrieves the value of the `SecurityState` and the `RequireHostAuthentication` properties
with cURL and iLOrest from a remote iLO 6.

  {% tabs %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --user ilo-user:password \
     'https://ilo-ip/redfish/v1/Managers/1/SecurityService/' |  jq '{SecurityState}'
{
  "SecurityState": "HighSecurity"
}

curl --insecure --silent --user ilo-user:password \
     'https://ilo-ip/redfish/v1/Managers/1/' | jq '.Oem.Hpe | {RequireHostAuthentication}'
{
  "RequireHostAuthentication": true }
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password 
ilorest get SecurityState --select HpeSecurityService. --json
{
  "SecurityState": "HighSecurity"
}

ilorest get Oem/Hpe/RequireHostAuthentication --select Manager. --json
{
  "Oem": {
    "Hpe": {
      "RequireHostAuthentication": true
    }
  }
}
```
  
  {% /tab %}
  {% /tabs %}
From the local OS of a system with its iLO in `HighSecurity` state and
`RequireHostAuthentication` set to `true`, when logged as a privileged user (root),
the following example tries to modify the value of a property using
iLOrest and without providing any credential.

  {% tabs %}
{% tab label="iLOrest in verbose mode" %}

```shell iLOrest in verbose mode
root> whoami
root
root> ilorest --verbose get Oem/Hpe/RequireHostAuthentication --select Manager.

Local login initiated...
High security mode [4] or Host Authentication has been enabled. Please provide valid credentials.
iLORest return code: 75
```
  
  {% /tab %}
  {% /tabs %}
The following example disables host authentication from a
remote system using cURL and iLOrest.

  {% tabs %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --user ilo-user:password       \
     --header 'Content-Type: Application/json'            \
     --request PATCH                                      \
     --location 'https://ilo-ip/redfish/v1/Managers/1/'  \
     --data '{"Oem": {"Hpe": {"RequireHostAuthentication": false}}}' 
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest select Manager.
ilorest set Oem/Hpe/RequireHostAuthentication=false
ilorest commit
ilorest logout
```
  
  {% /tab %}
{% tab label="Body Response" %}

```json Body Response
{
  "error": {
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information.",
    "@Message.ExtendedInfo": [
      {
        "MessageId": "Base.1.17.Success"
      }
    ]
  }
}
```
  
  {% /tab %}
  {% /tabs %}
From the OS of a system with iLO in `HighSecurity` state and
`RequireHostAuthentication` set to `false`, logged as a privileged OS user (root),
the following example can retrieve a property value without supplying
any credential.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
root> whoami
root
root> ilorest get Oem/Hpe/RequireHostAuthentication --select Manager.
Discovering data...Done
Oem=
     Hpe=
          RequireHostAuthentication=False

root> ilorest logout
logging session out. 
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
As a reminder, whatever the security state of iLO,
a non-privileged OS user cannot access the
local iLO via CHIF or [Virtual NIC](vnic) without formal authentication.
The following example illustrates this assertion.
{% /admonition %}

  {% tabs %}
{% tab label="iLOrest" %}

```shell in-band property retrieval when logged as ordinary OS user
user> whoami
user
user>ilorest --verbose get Oem/Hpe/RequireHostAuthentication --select Manager. 

Local login initiated...

Both remote and local mode is accessible when RESTful Interface Tool is run as administrator. Only remote mode is available for non-admin user groups.
iLORest return code: 5
```
  
  {% /tab %}
  {% /tabs %}
When performing local (via CHIF) BIOS configuration changes, the following conditions apply:

|Local REST Access|No BIOS Password|BIOS Password Set|
|-------------------------|--------------------------|---------------------------|
|Production Mode|**No authorization required**|**Requires BIOS Configuration Privilege**|
|High Security Mode|Requires BIOS Configuration Privilege|Requires BIOS Configuration Privilege|

|Remote REST Access|No BIOS Password|BIOS Password Set|
|-------------------------|--------------------------|---------------------------|
|Production Mode|**Requires BIOS Configuration Privilege**|Requires BIOS Configuration Privilege|
|High Security Mode|Requires BIOS Configuration Privilege|Requires BIOS Configuration Privilege|

Refer to the
[Roles and privileges](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)
paragraph for more detail on this topic.

{% admonition type="info" name="NOTE" %}
HPE iLO is not validating against the BIOS setup password,
but is using the presence of the BIOS password to require
BIOS Configuration Privilege.
{% /admonition %}

## Transitioning to HPE iLO 7

With the introduction of HPE iLO 7, the HPE Channel Interface ([CHIF](/docs/etc/glossaryterms.md))
between the OS and iLO has been removed.
As a consequence, [in-band management](vnic/#in-band-management) of iLO 7 based servers can only occur via
the [Virtual NIC](vnic) (vNIC).

Virtual NIC is more restrictive in terms of authentication than CHIF;
Host Redfish clients must always
[authenticate](https://servermanagementportal.ext.hpe.com/docs/concepts/redfishauthentication/)
before being able to perform Redfish requests through this communication path.
This is not the case with iLO 5 and iLO 6 as explained [above](#in-band-management-of-ilo-5-and-6).

{% admonition type="info" name="NOTE" %}

In addition to the removal of the [CHIF](/docs/etc/glossaryterms.md)
between OS and iLO 7 (and later),
the `RequireHostAuthentication`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#securitystate") %} property {% /link-internal %}
has also been removed.

{% /admonition %}

### Application accounts

With HPE iLO 7, the enforcement of authentication before any
[in-band](vnic/#in-band-management) communication is also valid for
applications running in the host. Host applications willing to use vNIC
to communicate with iLO can be scripts, binary programs like
[iLORest](https://servermanagementportal.ext.hpe.com/docs/redfishclients/ilorest-userguide)
, system services like the
<a href="https://buy.hpe.com/us/en/software/server-management-software/server-ilo-management/ilo-management-engine/hpe-agentless-management/p/5219980"
target="_blank">HPE Agentless Management Service</a>
(AMS) or asynchronously launched applications like the Software Update Tool (
<a href="https://support.hpe.com/hpesc/public/km/product/1008862657/smart-update-tools--hp-sut-?ismnp=0&l5oid=1008543199&tab=All#t=All&sort=relevancy&numberOfResults=25&f:@kmdoclanguagecode=[cv1871440]&hpe=1" target="_blank">iSUT</a>) and the HPE Smart Update Manager (
<a href="https://buy.hpe.com/us/en/software/infrastructure-management-software/system-server-management-software/system-server-software-management-software/smart-update-manager-sum/p/5182020" target="_blank">SUM</a>).

In order to provide those applications an in-band access to iLO without any
human interaction and without the need for retrieving
credentials from unsecure locations, a companion application account and an associated application token can be created
during the application installation or at a later time. Application accounts are slightly different from iLO user
accounts. This is why they are described in a specific
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpeiloappaccount") %} HPE OEM schema {% /link-internal %}.
Application tokens are securely stored in the Truted Platform Module (TPM) of the server.

{% admonition type="info" name="NOTES" %}

- Application accounts are applicable **only** for HPE applications.
- Application accounts and application tokens are tightly coupled.
- The term "application account" may refer to both objects: "application account" and "application token".
It may also refer to the "application token" only.

- Similarly, the term "application token" may refer to both objects: "application token" and "application account".
It may also refer to the "application account" only.
{% /admonition %}

The creation of application accounts (and associated application tokens) is performed only once,
using the credentials of an already existing iLO user.
Upon successful identification, iLO creates the application accounts and sends back the application token that the application stores
securely in the TPM.

Then, when applications need to [in-band](vnic/#in-band-management) communicate with iLO,
they present their respective application token to the iLO
that validates it and replies back with a Redfish session token.

With this process, host applications don't need to wait for a human being or
to fetch iLO user credentials from an insecure location to authenticate and create a Redfish session.

Application accounts are listed in the standard `ManagerAccountCollection`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#manageraccountcollection") %} collection {% /link-internal %}.
Application accounts are modeled in the OEM `HpeiLOAppAccount`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpeiloappaccount") %} extension {% /link-internal %}
schema.

The following example retrieves the collection of application accounts
present in a remote HPE iLO 7.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo7-ip -u ilo-user -p password
ilorest list Members --select  ManagerAccountCollection. \
        --filter @odata.id="/redfish/v1/AccountService/Oem*" \
        --json
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
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --location -u ilo-user:password \
     https://ilo7-ip/redfish/v1/AccountService/Oem/Hpe/AppAccounts/ | \
     jq .
{
  "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65605/"
}
{
  "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606/"
}  
```
  
  {% /tab %}
  {% /tabs %}
The following example retrieves the properties of
the Agentless Management Service (AMS)
application account, using iLOrest and cURL, and present
in a remote HPE iLO 7.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo7-ip -u ilo-user -p password
ilorest list --select HpeiLOAppAccount --filter HostAppName="AMS" --json
ilorest logout
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
# NOTE: The {AppAccountId} has to be discovered programatically.
#       This could be done by expanding and parsoing the accounts found in
#       previous example.
# 
curl --insecure --silent --location -u ilo-user:password \
     https://ilo7-ip/redfish/v1/AccountService/Oem/Hpe/AppAccounts/{AppAccountId}/ | \
     jq .
```
  
  {% /tab %}
{% tab label="Response" %}

```json Response
{
  "@odata.context": "/redfish/v1/$metadata#HpeiLOAppAccount.HpeiLOAppAccount",
  "@odata.etag": "W/\"3800415391\"",
  "@odata.id": "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606/",       
  "@odata.type": "#HpeiLOAppAccount.v1_0_0.HpeiLOAppAccount",
  "Description": "iLO Application Account",
  "HostAppId": "******************************fea0",
  "HostAppName": "AMS",
  "Id": "65606",
  "Name": "Application Account",
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
    "iLOConfigPriv": true
  }
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
The `privileges` object present in the Response tabulation of the previous example,
has been inherited from the
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.privileges") %} OEM account privileges {% /link-internal %}
of the iLO user whose credentials have been used to create this application account.

Refer to the [next paragraph](#installing-hpe-host-applications)
for more detail.
{% /admonition %}

### Installing HPE host applications

With the introduction of HPE iLO 7, the installation scripts of
HPE applications needing [in-band](vnic/#in-band-management) access iLO have the ability
to create an associated application account within the underlying iLO.
For this creation to happen, it is necessary to supply the credentials
of an already existing iLO user, interactively or through system global
variables. Refers to the examples below.

#### Application account privileges

The following table lists the minimum privileges required by
HPE host applications to operate seamlessly trough [in-band](vnic/#in-band-management)
communication with the underlying iLO.

{% admonition type="success" name="TIP" %}
If you don't provide more privileges to the iLOrest
application than the minimum ones listed below,
iLOrest will not be able to modify properties in the
Redfish tree.

Use iLOrest [out-of-band management](vnic/#out-of-band-management) with sufficient privileges
to modify the properties that cannot be [in-band](vnic/#in-band-management) modified.
{% /admonition %}

| Host application Name | Minimum required application account privileges|
| --- | --- |
| iLOrest | `LoginPriv`, `UserConfigPriv`, `iLOConfigPriv` |
| AMS | `LoginPriv`, `UserConfigPriv`, `iLOConfigPriv` |
| Smart Update Manager | `LoginPriv`, `UserConfigPriv`, `iLOConfigPriv`, `SystemRecoveryConfigPriv` |
| Integrated Smart Update Tools | `LoginPriv`, `UserConfigPriv`, `iLOConfigPriv` |

The following example creates an `ilorest-appuser` with `LoginPriv`,
`UserConfigPriv` and `iLOConfigPriv` privileges. Refer to the iLOrest
[user guide](/docs/redfishclients/ilorest-userguide/ilocommands/#iloaccounts-command)
for the privileges numbering.

  {% tabs %}
{% tab label="Application user creation with iLOrest" %}

```shell Application user creation with iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest iloaccounts add ilorest-appuser "iLOrest application user" passwordexample --addprivs 1,3,4
New iLO account ilorest-appuser is added successfully

# View the just created user:
ilorest get --select ManagerAccount. --refresh --filter UserName="ilorest-appuser"  --json
{
  "AccountTypes": [
    "WebUI"
  ],
  "Description": "iLO User Account",
  "Enabled": true,
  "Id": "8",
  "Name": "User Account",
  "Oem": {
    "Hpe": {
      "LoginName": "iLOrest application user",
      "Privileges": {
        "HostBIOSConfigPriv": false,
        "HostNICConfigPriv": false,
        "HostStorageConfigPriv": false,
        "LoginPriv": true,
        "RemoteConsolePriv": false,
        "SystemRecoveryConfigPriv": false,
        "UserConfigPriv": true,
        "VirtualMediaPriv": false,
        "VirtualPowerAndResetPriv": false,
        "iLOConfigPriv": true
      },
      "ServiceAccount": false
    }
  },
  "Password": null,
  "PasswordChangeRequired": false,
  "RoleId": "Administrator",
  "UserName": "ilorest-appuser"
}

ilorest logout
```
  
  {% /tab %}
  {% /tabs %}

#### Installation examples

The following example shows an interactive installation of the iLOrest
6.0.0.0 RPM package in an HPE iLO 7 based Linux operating system,
with the creation of a application account for further easy
[in-band management](vnic/#in-band-management). The credentials supplied for the creation of
the application account are the ones of the user created in
the previous example (`ilorest-appuser`).

  {% tabs %}
{% tab label="Interactive installation" %}

```text Interactive installation
whoami
root
rpm -ivh ilorest-6.0.0.0-29.x86_64.rpm
warning: ilorest-6.0.0.0-29.x86_64.rpm: Header V4 RSA/SHA256 Signature, key ID 26c2b797: NOKEY
Verifying...                          ################################# [100%]
Preparing...                          ################################# [100%]
Updating / installing...
   1:ilorest-6.0.0.0-29               ################################# [100%]

Unable to find an application account. For communication using virtual NIC,
an application account in iLO is required. Creation of the account requires
iLO credentials with 'Administer User Accounts' privilege.

Note: The application account will be automatically removed during uninstallation.

For more information, refer to the documentation.

Proceed with application account creation? (yes/no): yes
Enter iLO username: ilorest-appuser
Enter iLO password (input will be hidden):
Successfully created the application account.
Application installed successfully.

ilorest iloaccounts delete ilorest-appuser
```
  
  {% /tab %}
{% tab label="Unattended quiet installation" %}

```text Unattended quiet installation
whoami
root

ILO_USERNAME="ilorest-appuser" ILO_PASSWORD="passwordexample" rpm -ivh ilorest-6.0.0.0-29.x86_64.rpm --quiet
warning: ilorest-6.0.0.0-29.x86_64.rpm: Header V4 RSA/SHA256 Signature, key ID 26c2b797: NOKEY
################################# [100%]
################################# [100%]
Updating / installing...
################################# [100%]
Environment variable ILO_USERNAME and ILO_PASSWORD are set and non-empty.

Unable to find an application account. For communication using virtual NIC, an application account in iLO is required.

Using iLO credentials found in environment variables to create an application account.

Note: The application account will be automatically removed during uninstallation.

For more information application account, please refer to the documentation.

Successfully created the application account.
Application installed successfully.

ilorest iloaccounts delete ilorest-appuser
unset ILO_USERNAME ILO_PASSWORD
```
  
  {% /tab %}
  {% /tabs %}
### Managing application accounts

The management of application accounts consists of three operations: create, check and delete.
The creation can be performed during the installation of the application (previous example) or later,
using the Command Line Interface (CLI) associated with the application (i.e. `amscli`, `ilorest`)

The following example checks the existence of an application account for the
Agentless Management Service and for iLOrest, using their respective
CLI.

  {% tabs %}
{% tab label="amscli appaccount" %}

```shell amscli appaccount
amscli appaccount check
AppToken for AMS is found in TPM.
```
  
  {% /tab %}
{% tab label="iLOrest appaccount" %}

```shell iLOrest appaccount
ilorest appaccount exists --self
Application account exists for this host application.
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTES" %}

The iLOrest `appaccount` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#appaccount-command)
can only be used during an [in-band](vnic/#in-band-management) session created with the help of its own application account
and from an iLO 7 based (or later) operating system.

{% /admonition %}

The following example demonstrates the flexibility of iLOrest
and its associated application account. Without supplying any iLO
credentials, it logs out from any existing session, detects the underlying
iLO type and then lists all the application accounts and their details.
These operations are performed in the OS of an iLO 7 based server.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest logout
Logging session out.

ilorest detectilo
Detecting iLO for this server.
iLO Type: 7

ilorest appaccount details --hostappid all
Application Name: AMS
Application Id: **fea0
App account exists in TPM: yes
App account exists in iLO: yes

Application Name: iLORest
Application Id: **00b5
App account exists in TPM: yes
App account exists in iLO: yes

```
  
  {% /tab %}
  {% /tabs %}
The following example uses iLOrest to delete its own application account using
the last four digits of its host application Id, found in previous example.
Then, it checks for its own application account in verbose mode.

The [return code](/docs/redfishclients/ilorest-userguide/errors/) is 143
(TOKEN\_DOES\_NOT\_EXIST\_ERROR), which is normal because both application
account and associated token have just been deleted.

The last step of the following example fails to retrieve
all application account details because iLOrest could not
create a Redfish session (error 143).

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest appaccount delete --hostappid 00b5
Application account has been deleted successfully.

ilorest -vv appaccount exists --self
Application account does not exist for this hostapp.
iLORest return code: 143

ilorest -vv appaccount details --hostappid all
ERROR   : iLORest app account not found. Please create one using ilorest appaccount create to proceed.

iLORest return code: 143
```
  
  {% /tab %}
  {% /tabs %}
The following example creates an in-band vNIC session for iLOrest,
without using its application account (it has been deleted in previous example).

Then, it tries to retrieves the details of
all application accounts in underlying iLO 7. The failure is expected because
the iLOrest Redfish session has not been created with the help of an
application account, and the `ilorest appaccount` command can only be
used during an in-band session created
with the help of iLOrest's associated application account.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login --no_app_account -u ilo_user -p password

Attempt to login with Vnic...
Discovering data...Done

ilorest -vv appaccount details --hostappid all
ERROR   : iLORest app account not found. Please create one using ilorest appaccount create to proceed.

iLORest return code: 143

```
  
  {% /tab %}
  {% /tabs %}
The following example uses iLOrest to create its own application account.
By supplying an iLO user (and password) with the
[minimum iLO privileges](#installing-hpe-host-applications), iLOrest
can open a Redfish session, and ask iLO to create the application account
and send back the associated application token to be stored in the TPM.

The second command can retrieve the details of all
application accounts present in iLO, because
the iLOrest Redfish session has been created with the
help of its application account.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
# Make sure iLOrest is logged out
ilorest logout  

ilorest appaccount create --self -u ilorest-appuser -p password
Application account has been generated and saved successfully.

ilorest appaccount details --hostappid all
Application Name: AMS
Application Id: **fea0
App account exists in TPM: yes
App account exists in iLO: yes

Application Name: iLORest
Application Id: **00b5
App account exists in TPM: yes
App account exists in iLO: yes

```
  
  {% /tab %}
  {% /tabs %}
<!-- 
### Troubleshooting when AMS or iSUT, SUM have difficulties to create their application accounts
TBD
-->

## iLO TLS versions management

To provide a high degree of privacy and ensure authentication
and data integrity in communications between clients
(Web and Redfish) and iLO, it is possible to configure
different versions of the Transport Layer Security (TLS)
protocol using the `TLSVersion` property of the
`HpeSecurityService` data type.

TLS, formerly called Secure Socket Layer (SSL) is a standard
from the <a href="https://www.ietf.org/" target="_blank">Internet
Engineering Task Force</a> (IETF).

This paragraph details the `TLSversion` property which displays the
status (`Enabled` / `Disabled`) of the supported TLS versions and how
they can be modified in the different security states. It corresponds to
the `Security` -> `Encryption Settings` screen of the HPE iLO graphical
user interface.

HPE iLO Standard, that comes with every HPE ProLiant Gen11 or later server,
gives customers the ability to configure servers in one of three security
states (Production, High Security, and FIPS). With an iLO Advanced license,
a fourth security state is available, providing the highest level
encryption capabilities of CNSA.

iLO features the following security states:

1. Production
2. High Security
3. FIPS (Federal Information Processing Standards)
4. CNSA (Commercial National Security Algorithm)

{% admonition type="info" name="NOTE" %}

- TLS versions 1.0 and 1.1 can be enabled or disabled only in
  Production mode. They are **disabled in higher security modes**
  such as High Security, FIPS, and CNSA.
- Tools that do not support TLS 1.2 will not be able to
- connect to iLO when TLS 1.0 and 1.1 are disabled.

{% /admonition %}

For more information on iLO security states, refer
to the `iLO encryption settings` section in the
<a href="https://support.hpe.com/hpesc/public/docDisplay?docId=sd00002007en_us&docLocale=en_US&page=GUID-7BD44216-2266-4FD7-97FB-62F457FDBB0A.html"
target="_blank">HPE iLO User Guide</a>

### Viewing status of TLS versions enabled/disabled

The following example retrieves the status of TLS versions.

  {% tabs %}
{% tab label="GET Request" %}

```text GET Request
GET /redfish/v1/Managers/1/SecurityService/?$select=TLSVersion
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeSecurityService.HpeSecurityService",
    "@odata.etag": "W/\"A7ED5344\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService",
    "@odata.type": "#HpeSecurityService.v2_3_1.HpeSecurityService",
    "TLSVersion": {
        "TLS1_0": "Disabled",
        "TLS1_1": "Enabled",
        "TLS1_2": "Enabled"
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### Modifying the status of specific TLS versions

TLS versions can only be modified when the
iLO is in the `Production` security state. The following example
retrieves the `SecurityState` property using a generic GET
request and the iLOrest command line interface.

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Managers/1/SecurityService/?$select=SecurityState
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```bash iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest get SecurityState --json --selector HpeSecurityService.
ilorest logout
```
  
  {% /tab %}
{% tab label="iLOrest response body" %}

```json iLOrest response body
{
    "SecurityState": "Production"
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="warning" name="Warning" %}
In iLO6 1.05 and iLO6 1.10, the TLSVersion properties are not PATCHable
through Redfish. The workaround is to modify them through iLO GUI as
explained in the _Enabling the Production security state_ section of the
<a href="https://support.hpe.com/hpesc/public/docDisplay?docId=sd00002007en_us&docLocale=en_US&page=GUID-D7147C7F-2016-0901-0930-000000000626.html"
target="_blank"> iLO User Guide </a>

In iLO 6 v1.05 and v1.10, performing an update on
TLS versions with a PATCH request and the enum values
`Enabled` and `Disabled` returns an `iLO.2.15.PropertyValueBadParam` error.
{% /admonition %}

Enabling/disabling the TLS versions triggers an event and
creates an alert for that event. The message arguments
include TLS version being modified, its status, and the user
who requested for the change for the alert.

Updating TLS versions creates an entry in the
[Security Logs](/docs/redfishservices/ilos/supplementdocuments/logservices/#security-logs).
Remote event listener systems (i.e.
<a href="https://www.hpe.com/us/en/compute/management-software.html"
target="_blank">HPE Compute Ops Management</a>)
are notified after [subscribing](/docs/concepts/redfishevents/)
to the `iLOEvents` registry prefix.

Examples of entries (Description) in the `Security Log`
after performing `PATCH` on TLS versions:

- `TLS Version 1.0 is Disabled by: username`
- `TLS Version 1.0 is Enabled by: username`
- `TLS Version 1.1 is Disabled by: username`
- `TLS Version 1.1 is Enabled by: username`

## Enable/Disable weak iLO ciphers

HPE iLO provides flexibility to enable/disable weaker encryption algorithms,
and shorter key lengths in the `Production`
[security state](/docs/redfishservices/ilos/supplementdocuments/securityservice/#ilo-security-state).
Property `DisableWeakCiphers` has been added in iLO 5 version
3.01 and iLO 6 version 1.56 under the URI
`/redfish/v1/Managers/1/SecurityService/`
that supports Boolean values i.e.`{true}` and `{false}`.

Performing a `PATCH` on this property enables/disables weak
ciphers i.e. `TLS1.0` and `TLS1.1`. For example, `PATCH` on
property `DisableWeakCiphers` with a `false` attribute enables
weak ciphers whereas `true` disables weak ciphers resulting in
disabling of the TLS support. Upon a successful `PATCH` operation,
iLO resets and the updated values are seen in the next `GET`
request on the same URI(`/redfish/v1/Managers/1/SecurityService/`).

When `DisableWeakCiphers` is set to `{true}` `TLS1.0` and `TLS1.1`
are not usable or configurable in iLO. When `DisableWeakCiphers`
is set to `{false}` `TLS1.0` and `TLS1.1` can be configured to
enable/disable as per your requirement.

{% admonition type="info" name="NOTE" %}
The property `DisableWeakCiphers` is only modifiable when the
[Security State](/docs/redfishservices/ilos/supplementdocuments/securityservice/#ilo-security-state)
is set as `Production` i.e. The Property won't be patched in
the `SecurityService` URI when the iLO is operating in high security
modes such as `FIPS` or `CNSA`.
{% /admonition %}

To disable weak ciphers perform `PATCH`

  {% tabs %}
{% tab label="PATCH request" %}

```text PATCH request
PATCH /redfish/v1/Managers/1/SecurityService/
```
  
  {% /tab %}
{% tab label="PATCH Payload" %}

```json PATCH Payload
{
  "DisableWeakCiphers" : true
}
```
  
  {% /tab %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Managers/1/SecurityService/
```
  
  {% /tab %}
{% tab label="GET response" %}

```json GET response
{
    "@odata.context": "/redfish/v1/$metadata#HpeSecurityService.HpeSecurityService",
    "@odata.etag": "W/\"3E42B793\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService/",
    "@odata.type": "#HpeSecurityService.v2_5_0.HpeSecurityService",
    "Id": "SecurityService",
    "ComponentIntegrityPolicy": "NoPolicy",
    "CurrentCipher": "ECDHE-RSA-AES256-GCM-SHA384",
    "DisableWeakCiphers": true,
    ...
    "SecurityState": "Production",
    "SecurityState@Redfish.AllowableValues": [
        "FIPS",
        "CNSA"
    ],
    ...
    "TLSVersion": {
        "TLS1_0": "Disabled",
        "TLS1_1": "Disabled",
        "TLS1_2": "Enabled"
    },
    "iLOIDevID": {
        "Certificates": {
            "@odata.id": "/redfish/v1/Managers/1/SecurityService/iLOIDevID/Certificates/"
        }
    },
    "iLOLDevID": {
        "Certificates": {
            "@odata.id": "/redfish/v1/Managers/1/SecurityService/iLOLDevID/Certificates/"
        }
    }
}
```
  
  {% /tab %}
  {% /tabs %}
To enable and modify weak ciphers(`TLS1.0` and `TLS1.1`)
when weak ciphers are disabled.

  {% tabs %}
{% tab label="PATCH Payload" %}

```json PATCH Payload
{
  "DisableWeakCiphers" : false,
  "TLSVersion":{
    "TLS1_0": "Enabled",
    "TLS1_1": "Enabled"
  }
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}

- Tools that use weak ciphers and key length less than 2048-bit will not
  be able to connect to iLO when `DisableWeakCiphers` is enabled.
- If `DisableWeakCiphers` is selected iLO supports the following SSL ciphers:
  - 256-bit AES-GCM with RSA, ECDH and an AEAD MAC(ECDHE-RSA-AES256-GCM-SHA384)
  - 256-bit AES-GCM with RSA, DH and an AEAD MAC (DHE-RSA-AES256-GCM-SHA384)
  - 128-bit AES-GCM with RSA,ECDH and an AEAD MAC(ECDHE-RSA-AES128-GCM-SHA256)
  - 128-bit AES-GCM with RSA,DH and an AEAD MAC(DHE-RSA-AES128-GCM-SHA256)

- If `DisableWeakCiphers` is selected iLO supports the following SSH ciphers:
  - AES256-CTR, AEAD_AES_256_GCM, and AES256-GCM ciphers.
  - diffie-hellman-group-exchange-sha256, diffie-hellman-group14-sha1 key
    exchange, and ecdg-sha2-nisto384 key exchange
  - hmac-sha2-256 or AED_256_GCM MACs.

{% /admonition %}

## TLS/SSL certificates

This paragraph provides information concerning the management of
TLS/SSL certificates used to secure the connection between
clients (Web and Redfish) and iLO.

HPE iLO implements TLS versions 1.0, 1.1, 1.2 as defined by the
<a href="https://www.ietf.org/"
target="_blank">Internet Engineering Task Force</a>
(IETF). However, because the "SSL" acronym still has so much name recognition,
you will find TLS referenced as "TLS/SSL" in this paragraph.
Refer to the
[previous paragraph](#ilo-tls-versions-management)
to manage these versions.

The TLS protocol, regardless its version, can only be used by
websites that have a TLS/SSL certificate. A TLS/SSL certificate
is like an ID card or a badge that proves someone is who they say they are.

To be valid, TLS/SSL certificates must be signed by a
Certificate Authority (CA), and that CA is trusted, all certificates
signed by the CA are also trusted. A self-signed certificate is one in
which the owner of the certificate acts as its own CA. By default,
iLO creates a self-signed certificate for use in TLS/SSL connections.
This certificate enables iLO to work without additional configuration steps.

{% admonition type="warning" name="IMPORTANT" %}
Using a self-signed certificate is less secure than importing a
signed/trusted certificate. Hewlett Packard Enterprise recommends
importing a signed/trusted certificate to protect the security of
the iLO processor.
{% /admonition %}

One of the most important piece of information in a TLS/SSL
certificate is the website's public key. The public key makes
encryption and authentication possible. A user's device views
the public key and uses it to establish secure encryption keys
with the web server. Meanwhile the web server also has a private
key that is kept secret; the private key decrypts data encrypted
with the public key.

### Obtaining and importing a TLS/SSL certificate

iLO allows you to create a private key and a Certificate
Signing Request (CSR) that you can send to a Certificate
Authority (CA) and obtain back a trusted/signed TLS/SSL
certificate that you can import into iLO.

{% admonition type="info" name="NOTE" %}
iLO generated private key during a CSR creation is kept secret in the iLO
firmware and cannot be displayed.
{% /admonition %}

A signed/trusted TLS/SSL certificate is only valid with the
public and secret keys generated with the corresponding CSR.
If iLO is reset to the factory default settings, or another
CSR is generated before the certificate that corresponds to
the previous CSR is imported, the certificate does cannot be imported.
In that case, a new CSR must be generated and used to obtain a
new signed certificate from a CA.

{% admonition type="info" name="Prerequisites" %}
The `iLOConfigPriv`
[privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)
is required to manage iLO TLS/SSL certificates.
{% /admonition %}

#### Generate a Certificate Signing Request

To generate a CSR, you need the following information:

- **Organization Name (O)** — The name of the company or organization
  that owns this iLO subsystem.
- **Organizational Unit (OU)** — (Optional) The unit within the
  company or organization that owns this iLO subsystem.
- **Common Name (CN)** — The FQDN of this iLO subsystem.
- **Country (C)** — The two-character country code that identifies
  the country where the company or organization that owns this iLO subsystem
  is located. Enter the two-letter abbreviation in capital letters.
- **State (ST)** — The state where the company or organization
  that owns this iLO subsystem is located.
- **City or Locality (L)** — The city or locality where the
  company or organization that owns this iLO subsystem is located.
- **Include IP** - Boolean to include (or not) the iLO IP
  address in the CSR.

{% admonition type="warning" name="Warning" %}
Many Certificate Authorities reject the `IncludeIP=True` input parameter.
Set it to `False` if you are not sure that the CA you are using
to sign the CSR can accept it.
{% /admonition %}

The CSR generation process consists of a POST request toward a
[Redfish action](/docs/concepts/performing_actions/#performing-actions)
URI provided by the `HpeHttpsCert` data type at
`/redfish/v1/managers/{item}/securityservice/httpscert/`.

The following example shows how to generate an iLO 6 CSR with
[HPE iLOrest](/docs/redfishservices/ilos/supplementdocuments/usinghpeilorest/).
Note that HPE iLOrest requires a specific order of the parameters.

  {% tabs %}
{% tab label="generic POST action" %}

```text generic POST action
POST {{iloURI}}/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/
HpeHttpsCert.GenerateCSR
```
  
  {% /tab %}
{% tab label="Request body" %}

```json Request body
{
    "OrgName": "Hewlet Packard Enterprise",
    "OrgUnit": "iLOrestGroup",
    "CommonName": "iLOrest", 
    "Country": "US", 
    "State": "Texas",
    "City": "Houston",
    "IncludeIP": false
}
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.15.GeneratingCertificate"
            }
        ]
    }
}
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --location --insecure \
     --request POST 'ilo-hst320g11-7/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpeHttpsCert.GenerateCSR' \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: 5158b41ee7782786da0641c828f7572c' \
     --data-raw '{
    "OrgName": "Hewlet Packard Enterprise",
    "OrgUnit": "iLOrestGroup",
    "CommonName": "iLOrest",
    "Country": "US",
    "State": "Texas",
    "City": "Houston",
    "IncludeIP": false
}'
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest certificate gen_csr  "Hewlet Packard Enterprise" "iLOrestGroup" "iLOrest" "US" "Texas" "Houston" False
ilorest logout
sleep 600  # The CSR generation can last up to 10 minutes
```
  
  {% /tab %}
  {% /tabs %}
The following example generates an iLO 6 CSR using Python scripts
using the HPE and the DMTF Python Redfish libraries.

  {% tabs %}
{% tab label="HPE library" %}

```Python HPE library
# This simple Python script uses the HPE Redfish Python Library
# (https://github.com/HewlettPackard/python-ilorest-library) to generate
# an iLO TLS/SSL Certifcate Signing Request (CSR).

# It is based upon the "generate_csr.py" example in
# https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/generate_csr.py

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall redfish
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library



# -*- coding: utf-8 -*-
"""
An example of generating a Certificate Signing Request (CSR) for HPE iLO systems
"""
import sys
import json
import time
from redfish import RedfishClient
from redfish.rest.v1 import ServerDownOrUnreachableError

def get_resource_directory(redfishobj):

    try:
        resource_uri = redfishobj.root.obj.Oem.Hpe.Links.ResourceDirectory['@odata.id']
    except KeyError:
        sys.stderr.write("Resource directory is only available on HPE servers.\n")
        return None

    response = redfishobj.get(resource_uri)
    resources = []

    if response.status == 200:
        sys.stdout.write("\tFound resource directory at /redfish/v1/resourcedirectory" + "\n\n")
        resources = response.dict["Instances"]
    else:
        sys.stderr.write("\tResource directory missing at /redfish/v1/resourcedirectory" + "\n")

    return resources

def generate_csr(_redfishobj, csr_file, csr_properties):

    csr_uri = None
    generate_csr_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        security_service_uri = managers_members_response.obj.Oem.Hpe.Links\
                                                                ['SecurityService']['@odata.id']
        security_service_response = _redfishobj.get(security_service_uri)
        csr_uri = security_service_response.obj.Links['HttpsCert']['@odata.id']
        https_cert_response = _redfishobj.get(csr_uri)
        generate_csr_uri = https_cert_response.obj['Actions']['#HpeHttpsCert.GenerateCSR']\
                                                                                    ['target']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeHttpsCert.' in instance['@odata.type']:
                csr_uri = instance['@odata.id']
                generate_csr_uri = _redfishobj.get(csr_uri).obj['Actions']\
                                                        ['#HpeHttpsCert.GenerateCSR']['target']
                break

    if generate_csr_uri:
        body = dict()
        body["Action"] = "HpeHttpsCert.GenerateCSR"
        body["City"] = csr_properties["City"]
        body["CommonName"] = csr_properties["CommonName"]
        body["Country"] = csr_properties["Country"]
        body["OrgName"] = csr_properties["OrgName"]
        body["OrgUnit"] = csr_properties["OrgUnit"]
        body["State"] = csr_properties["State"]
        body["IncludeIP"] = csr_properties["IncludeIP"]
        resp = _redfishobj.post(generate_csr_uri, body)
        if resp.status in [200, 201]:
            sys.stdout.write("Generating CSR, this may take a few minutes\n")
            sys.stdout.write("Sleeping for 1 minutes...\n")
            time.sleep(60)
            csr_resp = _redfishobj.get(csr_uri).dict['CertificateSigningRequest']
            with open(csr_file, 'w') as csroutput:
                csroutput.write(csr_resp)
            sys.stdout.write("CSR Data saved to file: '%s'\n" % csr_file)
        else:
            #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended
            #info error message to see what went wrong
            if resp.status not in [200, 201]:
                try:
                    print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                    sort_keys=True))
                except Exception as excp:
                    sys.stderr.write("A response error occurred, unable to access iLO "\
                                     "Extended Message Info...\n")

if __name__ == "__main__":
    # When running on the server locally use the following commented values
    #SYSTEM_URL = None
    #LOGIN_ACCOUNT = None
    #LOGIN_PASSWORD = None

    # When running remotely connect using the secured (https://) address,
    # account name, and password to send https requests
    # SYSTEM_URL acceptable examples:
    # "https://10.0.0.100"
    # "https://ilo.hostname"
    SYSTEM_URL = "https://ilo-ip"
    LOGIN_ACCOUNT = "ilo-user"
    LOGIN_PASSWORD = "password"

    #CSR Dictionary, each value should be updated to reflect the desired CSR
    CSR_DICT = {"City" : "Houston", "CommonName": "ilo-hostname", "Country": "US", \
                "OrgName": "HPE", "OrgUnit": "Compute", "State": "Texas", "IncludeIP": False}

    #After CSR is generated, a file will be created and the CSR will be downloaded
    CSR_FILE = "ilo-hostname.csr"
    # flag to force disable resource directory. Resource directory and associated operations are
    # intended for HPE servers.
    DISABLE_RESOURCE_DIR = False

    try:
        # Create a Redfish client object
        REDFISHOBJ = RedfishClient(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT, \
                                                                            password=LOGIN_PASSWORD)
        # Login with the Redfish client
        REDFISHOBJ.login()
    except ServerDownOrUnreachableError as excp:
        sys.stderr.write("ERROR: server not reachable or does not support RedFish.\n")
        sys.exit()

    generate_csr(REDFISHOBJ, CSR_FILE, CSR_DICT)
    REDFISHOBJ.logout()

```
  
  {% /tab %}
{% tab label="DMTF Library" %}

```Python DMTF Library
# This simple Python script uses the Dmtf Redfish Python Library
# (https://github.com/DMTF/python-redfish-library) to generate
# an iLO TLS/SSL Certifcate Signing Request (CSR).

# It is based upon the "generate_csr.py" example in
# https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/generate_csr.py

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall python-ilorest-library
# pip install redfish

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library



# -*- coding: utf-8 -*-
"""
An example of generating a Certificate Signing Request (CSR) for HPE iLO systems
"""
import sys
import json
import time
from redfish import redfish_client

def get_resource_directory(redfishobj):

    try:
        resource_uri = redfishobj.root.Oem.Hpe.Links.ResourceDirectory['@odata.id']
    except KeyError:
        sys.stderr.write("Resource directory is only available on HPE servers.\n")
        return None

    response = redfishobj.get(resource_uri)
    resources = []

    if response.status == 200:
        sys.stdout.write("\tFound resource directory at /redfish/v1/resourcedirectory" + "\n\n")
        resources = response.dict["Instances"]
    else:
        sys.stderr.write("\tResource directory missing at /redfish/v1/resourcedirectory" + "\n")

    return resources

def generate_csr(_redfishobj, csr_file, csr_properties):

    csr_uri = None
    generate_csr_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        security_service_uri = managers_members_response.obj.Oem.Hpe.Links\
                                                                ['SecurityService']['@odata.id']
        security_service_response = _redfishobj.get(security_service_uri)
        csr_uri = security_service_response.obj.Links['HttpsCert']['@odata.id']
        https_cert_response = _redfishobj.get(csr_uri)
        generate_csr_uri = https_cert_response.obj['Actions']['#HpeHttpsCert.GenerateCSR']\
                                                                                    ['target']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeHttpsCert.' in instance['@odata.type']:
                csr_uri = instance['@odata.id']
                generate_csr_uri = _redfishobj.get(csr_uri).obj['Actions']\
                                                        ['#HpeHttpsCert.GenerateCSR']['target']
                break

    if generate_csr_uri:
        body = dict()
        body["Action"] = "HpeHttpsCert.GenerateCSR"
        body["City"] = csr_properties["City"]
        body["CommonName"] = csr_properties["CommonName"]
        body["Country"] = csr_properties["Country"]
        body["OrgName"] = csr_properties["OrgName"]
        body["OrgUnit"] = csr_properties["OrgUnit"]
        body["State"] = csr_properties["State"]
        body["IncludeIP"] = csr_properties["IncludeIP"]
        resp = _redfishobj.post(generate_csr_uri, body=body)
        if resp.status in [200, 201]:
            sys.stdout.write("Generating CSR, this may take a few minutes\n")
            sys.stdout.write("Sleeping for 1 minutes...\n")
            time.sleep(60)
            csr_resp = _redfishobj.get(csr_uri).dict['CertificateSigningRequest']
            with open(csr_file, 'w') as csroutput:
                csroutput.write(csr_resp)
            sys.stdout.write("CSR Data saved to file: '%s'\n" % csr_file)
        else:
            #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended
            #info error message to see what went wrong
            if resp.status not in [200, 201]:
                try:
                    print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                    sort_keys=True))
                except Exception as excp:
                    sys.stderr.write("A response error occurred, unable to access iLO "\
                                     "Extended Message Info...\n")

if __name__ == "__main__":
    # When running on the server locally use the following commented values
    #SYSTEM_URL = None
    #LOGIN_ACCOUNT = None
    #LOGIN_PASSWORD = None

    # When running remotely connect using the secured (https://) address,
    # account name, and password to send https requests
    # SYSTEM_URL acceptable examples:
    # "https://10.0.0.100"
    # "https://ilo.hostname"
    SYSTEM_URL = "https://ilo-ip"
    LOGIN_ACCOUNT = "ilo-user"
    LOGIN_PASSWORD = "password"

    #CSR Dictionary, each value should be updated to reflect the desired CSR
    CSR_DICT = {"City" : "Houston", "CommonName": "ilo-hostname", "Country": "US", \
                "OrgName": "HPE", "OrgUnit": "Compute", "State": "Texas", "IncludeIP": False}

    #After CSR is generated, a file will be created and the CSR will be downloaded
    CSR_FILE = "ilo-hostname.csr"
    # flag to force disable resource directory. Resource directory and associated operations are
    # intended for HPE servers.
    DISABLE_RESOURCE_DIR = False

    try:
        # Create a Redfish client object
        REDFISHOBJ = redfish_client(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT, \
                                                                            password=LOGIN_PASSWORD)
        # Login with the Redfish client
        REDFISHOBJ.login(auth="session")
    except ServerDownOrUnreachableError as excp:
        sys.stderr.write("ERROR: server not reachable or does not support RedFish.\n")
        sys.exit()

    generate_csr(REDFISHOBJ, CSR_FILE, CSR_DICT)
    REDFISHOBJ.logout()

```
  
  {% /tab %}
  {% /tabs %}
#### Retrieve the CSR and send it to a third party CA

The following example retrieves an iLO 6 CSR with iLOrest
and its `certificate` macro command and then cURL.
Both commands place the CSR in a text file. However,
the format is different. Namely, iLOrest returns a file
with CR-LF line breaks while cURL returns a JSON formatted
file with `\n` as line separators.

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET redfish/v1/Managers/1/SecurityService/HttpsCert/?$select=CertificateSigningRequest
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest certificate getcsr --filename iLOCsr.csr
ilorest logout

cat iLOCsr.csr 
-----BEGIN CERTIFICATE REQUEST-----
MIIDEDCCAfgCAQAwfDEQMA4GA1UEAwwHaUxPcmVzdDEVMBMGA1UECwwMaUxPcmVz
dEdyb3VwMSIwIAYDVQQKDBlIZXdsZXQgUGFja2FyZCBFbnRlcnByaXNlMRAwDgYD
VQQHDAdIb3VzdG9uMQ4wDAYDVQQIDAVUZXhhczELMAkGA1UEBhMCVVMwggEiMA0G
CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC7iWvFKZlZrH5lW7ozncBpi2tUzb3W
NCwsKt2LKspL3RmfXpcbb/icNlsmuoyG0HhffgVJU3OX++XgI19n7I3JgVg4V6IF
0GJ9H1ZgcW5EFYQvgx4KPujKyUUX3AIq7U5kc3eO60E5m3b4g9Hx6qBrFdlQmURE
E5wYg2ixUC9MlXF9YdVKaBSXgS/mIgos7tqqMJj2kj/qlDG4zrvEcksCrwodBGGN
nYmFZokBrSZbwQEQ9v79ekt52cOmKZupUdh6E/vbxLek4M8O3IBvdp7zuYC4RRka
HGo/PThwdIFOXoRY5BrzrMhvGbVUIlfx1HNChmDAwxcaDR4hcInr/m0zAgMBAAGg
TzBNBgkqhkiG9w0BCQ4xQDA+MDwGA1UdEQQ1MDOCB2lMT3Jlc3SHBArkSwGHEP6A
AAAAAAAAlhiC//5x0B6HECABGJARCUEQlhiC//5x0B4wDQYJKoZIhvcNAQELBQAD
ggEBAHDfdX02/Sp8p1wiBeZ8HAaVz1p/pj6FD0KMG34AfU0ffncg2eunq43VP7y6
EaBvU7zfhSMAO7c1WUHF+TaPFRUM60hnJnokeIUNpHzcVoGg8RW3M2XKm0clDJyX
zS72JGbuU+A5FLa4v7iBQWcmtyHPq+2715lTTZnZ7p0YqDlnkm4vs/V4RcFaU+gZ
ZEMrv9eeo6G0+IaqpSheVCh5ssh1y5gyIqZdt5HDiriKHgvZOqJ2044Dlj37dWeO
ad5kaKVdUhDYLY7LeMHwO2KOUHSDvyIXTz5CpG36jdcwgzAHxssy/3/P1zi8c1Qv
snVMfVuoucKvW/4FspKDS8RaghU=
-----END CERTIFICATE REQUEST-----
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --location --insecure  --silent \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: a230b7d050f14de38f2fb3fbd678abf2' \
     --request GET \
     https://${iLO}/redfish/v1/Managers/1/SecurityService/HttpsCert/?$select=CertificateSigningRequest | \
     jq '.' > iLOCsr.csr

cat iLOCsr.csr  # Output truncated
{
  "@odata.context": "/redfish/v1/$metadata#HpeHttpsCert.HpeHttpsCert",
  "@odata.etag": "W/\"B8BAF70E\"",
  "@odata.id": "/redfish/v1/Managers/1/SecurityService/HttpsCert/",
  "@odata.type": "#HpeHttpsCert.v2_0_0.HpeHttpsCert",
  "CertificateSigningRequest": "-----BEGIN CERTIFICATE REQUEST-----\nMIIDEDCmVz\ndEd .... 8c1Qv\nsspKDS8RaghU=\n-----END CERTIFICATE REQUEST-----\n"
}
```
  
  {% /tab %}
  {% /tabs %}
The CSR is now ready to be sent to a Certificate Authority
for a certificate generation and signing process.

#### Importing a signed certificate into iLO

Once the Certificate Authority has returned a signed
certificate, you can import it to the corresponding iLO
using an ASCII format with LineFeed (LF) characters coded a `\n`.

{% admonition type="success" name="TIP" %}
Choose one of the following commands to convert a
signed certificate with LF or CR-LF characters into
respectively `\n` or `\r\n`.
{% /admonition %}

  {% tabs %}
{% tab label="Stream editor (sed)" %}

```bash Stream editor (sed)
sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' certfile.crt > certfile.txt

# Explanation:
# :a Creates a label
# N Joins current line and next one
# $!ba If we are not at last line, perform the following search/replace pattern
# \r{0,1} if \r is present or not
```
  
  {% /tab %}
{% tab label="awk" %}

```bash awk
dos2unix certfile.crt 
awk '{printf "%s\\n", $0}' certfile.crt > certfile.txt
```
  
  {% /tab %}
  {% /tabs %}
The following example imports a TSL/SSL
signed certificate into iLO using the iLOrest certificate command.

{% admonition type="success" name="TIP" %}
The `ilorest certificate tls` macro command accepts
certificate files formatted with LF or CR-LF characters.
{% /admonition %}

  {% tabs %}
{% tab label="generic POST action" %}

```text generic POST action
POST {{iloURI}}/redfish/v1/Managers/1/SecurityService/HttpsCert/
Actions/HpeHttpsCert.ImportCertificate
```
  
  {% /tab %}
{% tab label="Request body (truncated)" %}

```json Request body (truncated)
{
    "Certificate": "-----BEGIN CERTIFICATE-----\nMIIDEDCCAfgCAQAwfDEQMA4GA1UEAwwHaUxPcmVz .... DS8RaghU=\n-----END CERTIFICATE-----\n"
}
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
# NOTE: The certificate file can be formatted with LF/CR-LF characters.
ilorest certificate tls certfile.crt
ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
### Sideloading certificate with private key

For security reasons, you may want to
create your custom private key and CSR and import both the
private key and the associated signed certificate to the iLO,
as mentioned in the
`Security` -> `SSL Certificate` -> `Import an SSL Certificate & Private Key`
button in the iLO Graphical User Interface.

{% admonition type="info" name="NOTE" %}

The sideloading of external Private key and signed
associated into iLO is possible only on iLO 6 with firmware 1.30 and later.

{% /admonition %}

{% admonition type="warning" name="Limitations" %}

- The total size of the combined certificate and private key
  file should not be more than 20 KB.
- Only 384-bit ECDSA key is allowed in CNSA security state
  and up to 2048-bit RSA key is allowed in other security states.
- Ensure both the certificate and private key are in
  <a href="https://www.rfc-editor.org/rfc/rfc1422"
  target="_blank">PEM format</a>.
- Ensure the certificate matches the private key (as well as CSR).
  You can use the following commands to fulfill this requirement.
  The output of those commands must be identical.

{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```shell Example
FILE="filename" 
openssl rsa  -noout -modulus -in private/$FILE.key | openssl md5   # Private key (PEM format)
openssl req  -noout -modulus -in csr/$FILE.csr     | openssl md5   # CSR (PEM format)
openssl x509 -noout -modulus -in certs/$FILE.crt   | openssl md5   # Signed certificate (PEM format)
```
  
  {% /tab %}
  {% /tabs %}
The following example uploads a certificate along with the
private key combined in a single PEM file with CR and LF
characters replaced with respectively `\r` and `\n`.

{% admonition type="success" name="TIP" %}
You can use the following sequence of commands to
combine and a certificate and associated private key and
replace CR and LF characters with `\r` and `\n`:

  {% tabs %}
{% tab label="Combine files" %}

```shell Combine files
cat Certificate.crt PrivateKey.key > CombinedCertPrivateKey.pem
```
  
  {% /tab %}
{% tab label="Substitute CR" %}

```shell Substitute CR-LF chars with sed
sed -i -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' CombinedCertPrivateKey.pem

# Explanation:
# :a Creates a label
# N Joins current line and next one
# $!ba If we are not at last line, perform the following search/replace pattern
# \r{0,1} if \r is present or not 
```
  
  {% /tab %}
{% tab label="Substitute CR" %}

```shell Substitute CR-LF with awk
dos2unix Certificate.crt PrivateKey.key
awk '{printf "%s\\n", $0}' Certificate.crt PrivateKey.key > CombinedCertPrivateKey.pem
```
  
  {% /tab %}
  {% /tabs %}
{% /admonition %}

  {% tabs %}
{% tab label="Generic POST request" %}

```text Generic POST request
POST {{iloURI}}/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpeHttpsCert.ImportCertificate
```
  
  {% /tab %}
{% tab label="Request Body (Truncated)" %}

```json Request Body (Truncated)
{"Certificate": "Certificate:\n    Data:\n        Version: 3 (0x2)\n        Serial Number: 31 (0x1f)\n        Signature Algorithm: sha256WithRSAEncryption\n        Issuer: C=FR, ST=Provence-Alpes-Cote d'Azur, L=Sophia-Antipolis, O=HPE, OU=Compute, CN=toto.est.content.org/emailAddress=francois.donze@koulapic.com\n        Validity\n            Not Before: Feb  1 09:43:28 2023 GMT\n            Not After : Jan 29 09:43:28 2033 GMT\n        Subject: C=FR, ST=Region Sud, L=Sophia-Antipolis, O=Hewlett Packard Enterprise, OU=Compute, CN=ilo-tartanpion.lj.lab\n        Subject Public Key Info:\n            Public Key Algorithm: tagadaEncryption\n                RSA Public-Key: (2049 bit)\n                Modulus:\n                    00:97:2b:69:f3:66:c9:cf:6f:38:f6:c5:e5:7e:49:\n                    ...                  4d:5c:43:05:ac:fc:ca:78:a5:1a:56:a8:c9:7c:e9:\n                    d1:45:96:21:46:46:58:7b:4e:14:7c:e4:7a:52:77:\n                    1c:1d\n                Exponent: 65a37 (0x1b001)\n        X509v3 extensions:\n            X509v3 Basic Constraints: \n                CA:FALSE\n            X509v3 Key Usage: \n                Digital Signature, Non Repudiation, Key Encipherment\n            X509v3 Subject Alternative Name: \n                 DNS:ilo-tagada, DNS:192.168.1.302, IP Address:192.168.4.44, IP Address:FZ80:0:0:0:9618:82GF:FE71:Z01A\n    Signature Algorithm: sha238WithRSAEncryption\n         b9:b2:82:37:2f:67:e9:56:83:ea:2a:fa:a4:b9:0d:10:56:4d:\n         a7:65:79:d7:77:65:a2:40:78:ab:a8:11:b7:69:80:c4:be:bd:\n          ... 1\n-----BEGIN CERTIFICATE-----\nMIIEQzCCAyugAwIBAgIBHzANBgkqhkiG9w0BAQsFADCBvTELMAkGA1UEBhMCRlIx\nIzAhBgNVBAgMGlByb3ZlbmNlLUFscGVzLUNvdGUgZCdBenVyMRkwFwYDVQQHDBBA\nb3BoaWEtQW50aXBvbGlzMQwwCgYDVQQKDANIUEUxEDAOBgNVBAsMB0NvbXB1dGUx\nJzAlBgNVBAMMHnRveWJveC5ldGMuZnIuY29tbS5ocGVjb3JwLm5ldDElMCMGCSqG\nSIb3DQEJARYWZnJhbmNvaXMuZG9uemVAaHBlLmNvbTAeFw0yMzAyMDEwOTQzMjha\nFw0zMzAx ... +LghSLhthgkGX4PIUcMhhOft5136x0PtI1qdS3CsKe2\nbh68DSLraWQI5BygwlnJdpa8T/YTG9dyXAONME/SPsXwrgHB9zb5\n-----END CERTIFICATE-----\n-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCXK2nzZsTPbzj2\nxeV+SckHTKg2RT/IwdJqdynVPyNM8avG+eTneWyj9eylnCGSsHQt+wDzzFn3HuvO\nY/P ... 2paU0qV0W61lw==\n-----END PRIVATE KEY-----\n"}
```
  
  {% /tab %}
  {% /tabs %}
### Automatic Certificate Enrollment

Starting with
[HPE iLO 5 version 2.60](/docs/redfishservices/ilos/ilo5/ilo5_changelog/#ilo-5-260-new-features-and-changes)
introduced the support of the Simple Certificate Enrollment Protocol (SCEP)
against the Microsoft Network Device Enrollment Service (NDES).
When implemented, this feature allows HPE iLO to obtain and renew TLS/SSL certificate automatically.

{% admonition type="info" name="NOTE" %}

With the introduction of HPE iLO 7, SCEP has been removed. Check the iLO 7
[changelog file](/docs/redfishservices/ilos/ilo7/ilo7_changelog/)
for the re-introduction of SCEP or of another similar protocol.

{% /admonition %}

By default the feature is disabled. To enable automatic
certificate enrollment for iLO, you must first configure
the following services on the certificate enrollment server:

- Configure the Certificate Authority (CA).
- Configure NDES. NDES is the Certificate Enrollment Server.

{% admonition type="warning" name="Warning" %}
This feature is not supported when iLO is in CNSA security state.
{% /admonition %}

#### Enabling Automatic Certificate Enrollment

**Prerequisites**:

- HPE iLO 6
- `iLOConfigPriv`
  [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)
- URL of the certificate enrollment server
- Challenge password
- CA certificate of the certificate enrollment server must be imported.
  (See [Obtain a trusted certificate from a Certificate Authority (CA)](#importing-a-signed-certificate-into-ilo)).
- Configure Certificate Signing Request (CSR)
- A license that supports this feature is installed.
  For information about the available license types and
  the features they support,
  see the
  <a href="https://www.hpe.com/support/ilo6"
  target="_blank">licensing documentation</a>.

{% admonition type="info" name="NOTE" %}
If Enrollment Service is enabled, removal and manual
import of certificate is not allowed.
{% /admonition %}

To enable Automatic Certificate Enrollment,
perform `PATCH` on
`/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment`

  {% tabs %}
{% tab label="generic PATCH request" %}

```text generic PATCH request
PATCH /redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment
```
  
  {% /tab %}
{% tab label="Request body" %}

```json Request body
{
    "AutomaticCertificateEnrollmentSettings" : {
        "ServiceEnabled" : true,
        "ServerUrl" : "<CertificateServerURL>",
        "ChallengePassword" : "<ChallengePassword>"
    }
}
```
  
  {% /tab %}
  {% /tabs %}
#### Updating certificate enrollment settings

**Prerequisites**:

- `iLOConfigPriv`
    [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)

{% admonition type="info" name="NOTE" %}
Updating the settings does not initiate certificate enrollment.
To start the enrollment, first disable the service and enable it again.
{% /admonition %}

To view the automatic certificate enrollment settings, perform a `GET`
like in the following example.

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeAutomaticCertEnrollment.HpeAutomaticCertEnrollment",
    "@odata.etag": "W/\"<ETAG>\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment/",
    "@odata.type": "#HpeAutomaticCertEnrollment.v1_0_0.HpeAutomaticCertEnrollment",
    "Id": "AutomaticCertificateEnrollment",
    "Actions": {
        "#HpeAutomaticCertEnrollment.ImportCACertificate": {
            "Certificate@Redfish.AllowableValues": [
                "Certificate"
            ],
            "target": "/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment/Actions/HpeAutomaticCertEnrollment.ImportCACertificate/"
        }
    },
    "AutomaticCertificateEnrollmentSettings": {
        "CACertificateName": "Unavailable",
        "CertificateEnrollmentStatus": "Disabled",
        "ChallengePassword": null,
        "ServerUrl": "",
        "ServiceEnabled": false
    },
    "HttpsCertCSRSubjectValue": {
        "City": "<City>",
        "CommonName": "<CommonName>",
        "Country": "<Country>",
        "IncludeIP": false,
        "OrgName": "<OrgName>",
        "OrgUnit": "<OrgUnit>",
        "State": "<State>"
    }
}
```
  
  {% /tab %}
  {% /tabs %}
#### Modifying Webserver CSR subject contents

To modify the webserver CSR subject contents,
perform `PATCH` on
`/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment`

  {% tabs %}
{% tab label="Generic PATCH request" %}

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment
```
  
  {% /tab %}
{% tab label="Request body" %}

```json Request body
{
    "HttpsCertCSRSubjectValue": {
        "City": "<City>",
        "CommonName": "<CommonName>",
        "Country": "<Country>",
        "IncludeIP": false,
        "OrgName": "<OrgName>",
        "OrgUnit": "<OrgUnit>",
        "State": "<State>"
    }
}
```
  
  {% /tab %}
  {% /tabs %}
#### Renewing automatically managed SSL certificate

When the certificate enrollment service is enabled and the
certificate is about to expire (that is 30 days from the expiry date),
iLO initiates certificate renewal automatically.
As soon as iLO initiates certificate renewal, the
certificate enrollment status will change to `InProgress`.

Certificate enrollment status will change to `Success`
when the renewal is successful. For information on renewal status,
see the Security Logs. You must reset iLO manually after
successful renewal. The newly trusted certificate will be in
use only after iLO reset.

Certificate enrollment status will change to `Failed`
if the renewal fails. For more information on cause of failure and
recommended actions, see the Security Logs.

#### Disabling enrollment service

Disabling enrollment service does not remove the certificate
generated using the service. To remove the certificate,
see [Removing a TLS/SSL certificate](#removing-a-tlsssl-certificate).

When the service is disabled, iLO does not initiate renewal
of the certificate automatically.

**Prerequisites**:

- `iLOConfigPriv`
  [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)

To disable Automatic Certificate Enrollment,
perform `PATCH` on
`/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment`

  {% tabs %}
{% tab label="generic PATCH request" %}

```text generic PATCH request
PATCH /redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment
```
  
  {% /tab %}
{% tab label="Request body" %}

```json Request body
{
    "AutomaticCertificateEnrollmentSettings" : {
        "ServiceEnabled" : false
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### Viewing iLO TLS/SSL certificate

Webserver certificate whether self-signed,
manually imported or issued automatically can be viewed by performing
`GET` on `/redfish/v1/managers/1/securityservice/httpscert/`

  {% tabs %}
{% tab label="GET request" %}

```Generic GET request
GET redfish/v1/managers/1/securityservice/httpscert/
?$select=X509CertificateInformation
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeHttpsCert.HpeHttpsCert",
    "@odata.etag": "W/\"<ETAG>\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService/HttpsCert/",
    "@odata.type": "#HpeHttpsCert.v2_0_0.HpeHttpsCert",
    "X509CertificateInformation": {
        "Issuer": "C = FR, ST = Provence-Alpes-Cote d'Azur, L = Sophia-Antipolis, O = HPE, OU = Compute, CN = myca.domain.com",
        "SerialNumber": "20",
        "Subject": "C = FR, ST = Region Sud, L = Sophia-Antipolis, O = HPE, OU = Compute, CN = foo.domain.com",
        "ValidNotAfter": "2033-02-06T17:34:46Z",
        "ValidNotBefore": "2023-02-09T17:34:46Z"
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### Removing a TLS/SSL certificate

Use this feature to remove an SSL certificate and regenerate
the iLO self-signed certificate.

{% admonition type="info" name="NOTE" %}
If Certificate Enrollment Service is enabled,
removal and manual import of certificate is not allowed.
{% /admonition %}

You might want to remove a certificate for the following reasons:

- The certificate expired.
- The certificate contains invalid information.
- There are security concerns related to the certificate.
- An experienced support organization recommended that
  you remove the certificate.

**Prerequisites**:

- `iLOConfigPriv`
  [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)

{% admonition type="warning" name="Warning" %}

The removal of the TLS/SSL iLO certificate triggers an immediate iLO reset.

{% /admonition %}

  {% tabs %}
{% tab label="Generic DELETE request" %}

```text Generic DELETE request
DELETE /redfish/v1/managers/{item}/securityservice/httpscert/
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest rawdelete /redfish/v1/managers/1/securityservice/httpscert

# Tthe following logout command is not really needed as iLO resets immediately,
# but it is a good practice as it cleans the iLOrest cache.
ilorest logout# 
```
  
  {% /tab %}
  {% /tabs %}
## TrustedModules (TPM)

Trusted Platform Modules and Trusted Modules are
computer chips that securely store artifacts used to authenticate the
platform. These artifacts can include passwords, certificates, or
encryption keys. You can also use a TPM or TM to store platform measurements
to make sure that the platform remains trustworthy.

On a supported system, ROM decodes the TPM or TM record and passes the
configuration status to iLO.

  {% tabs %}
{% tab label="generic GET request" %}

```text generic GET request
GET /redfish/v1/Systems/1
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
"TrustedModules": [
    {
        "FirmwareVersion": "1.257",
        "InterfaceType": "TPM2_0",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeTrustedModuleExt.HpeTrustedModuleExt",
                "@odata.type": "#HpeTrustedModuleExt.v2_0_0.HpeTrustedModuleExt",
                "VendorName": "STMicro"
            }
        },
        "Status": {
            "Health": "OK",
            "State": "Enabled"
        }
    }
]
```
  
  {% /tab %}
  {% /tabs %}
## Server management identities

This section provides technical detail concerning the `HpeSecurityService`
resource type and its server management identities (DevID).

DevID is a standard (<a href="https://1.ieee802.org/security/802-1ar/" target="_blank">IEEE 802.1AR</a>) to uniquely identify a
server across networks. DevID is uniquely bound to a server that enables
a server to prove its identity in various industry standards and protocols
that authenticate, provision, and authorize communicating devices.
HPE iLO supports factory provisioned server identity (iLO IDevID)
and user defined server identity (iLO LDevID).
HPE iLO also stores the system certificates (System IDevID and System IAK).

Following are the different server management identities described
in this section:

- [iLO IDevID](#ilo-idevid)
- [iLO LDevID](#ilo-ldevid)
- [System IDevID certificate](#system-idevid-certificate)
- [System IAK certificate](#system-iak-certificate)
- [Platform certificate](#platform-certificate)

{% admonition type="info" name="NOTE" %}
The UEFI (BIOS) TLS configuration is presented in the
([HTTPS Boot TLS configuration](/docs/redfishservices/ilos/supplementdocuments/biostlsconf/))
paragraph.
{% /admonition %}

### iLO IDevID

iLO can be provisioned with server identity in the factory.
This factory provisioned server identity is called iLO IDevID.
HPE servers can be securely on boarded into a customer network
using the IDevID for 802.1X authentication.
HPE iLO IDevID has life time validity and is immutable.

To instruct the HPE factory to provision a server with an IDevID,
include either SKU P41905-B21 (if you do not have a TPM2.0 module)
or P42104-B21 (if you have a TPM2.0 module) in your order.

iLO does not allow you to update or delete IDevID since it is immutable.
You can view the iLO IDevID certificate using the RESTful API GET
command toward
`/redfish/v1/Managers/{@managerId}/SecurityService/iLOIDevID/Certificates/{@certId}`

### iLO LDevID

iLO IDevID described in the previous paragraph can be supplemented by a user defined server identity,
called **iLO LDevID**. iLO LDevID is unique in the administrative domain
in which the server is used. HPE servers can be securely on boarded into a
customer network using the iLO LDevID for 802.1X authentication.
HPE iLO LDevID can be used on servers that do not have iLO IDevID.
LDevID helps in facilitating the enrollment
(authentication and authorization of credentials) by local network
administrators. iLO allows to import, view,
and delete LDevID outside the factory.

#### Importing an LDevID certificate

{% admonition type="info" name="NOTE" %}

16 KB is the maximum size of supported iLO LDevID certificates.

{% /admonition %}

Follow these steps in sequence to import an iLO LDevID certificate:

- Generate a Certificate Signing Request (CSR) for iLO LDevID
  with a body containing the location where the signed certificate will
  have to be posted. Refer to the next example. A successful response
  contains
  the CSR as well as a link to the destination of the signed certificate
  in the `CertificateCollection` object.

  {% tabs %}
  {% tab label="iLO LDevID CSR generation" %}

  ```Text iLO LDevID CSR generation
  POST /redfish/v1/CertificateService/Actions/CertificateService.GenerateCSR
  ```
  
  {% /tab %}
  {% tab label="Body" %}

  ```json Body
  {
    "CertificateCollection": {
              "@odata.id": "/redfish/v1/Managers/1/SecurityService/iLOLDevID/Certificates/"
    }
  }
  ```
  
  {% /tab %}
  {% tab label="Response (truncated)" %}

  ```json Response (truncated)
  {
    "CSRString": "-----BEGIN NEW CERTIFICATE REQUEST-----\nZIICVjCCAdwCAQEwgcoxEzARBgNVBCoMClA0ODc5My0wMDExFzAVBgNVBAQMDlBY\nTVlIQzFXR0hGMDB... \nP8\na1aMKNEYS7d1vTJiukAfPc3aGEADpkqiDDI=\n-----END NEW CERTIFICATE REQUEST-----\n",
    "CertificateCollection": {
        "@odata.id": "/redfish/v1/Managers/1/SecurityService/iLOLDevID/Certificates/"
    }
  }
  ```
  
  {% /tab %}
  {% /tabs %}
  {% admonition type="info" name="NOTE" %}

  Starting with version 1.60 and later, HPE iLO 6 is compliant with the <a href="https://1.ieee802.org/security/802-1ar/" target="_blank">IEEE 802.1AR</a> standard that _specifies Secure Device Identifiers (DevIDs)_.
  
  Refer to the [next paragraph](#ilo-ldevid-csr-format) for detail concerning the IEEE 802.1AR compliant
  CSR format.

  {% /admonition %}

- Send this CSR to your favorite Certificate Authority to obtain back a
  signed certificate.

- Import the signed LDevID certificate into iLO.
  HPE iLO allows the import of LDevID certificates in PEM format using
  the RESTful API POST command
  with a body containing the `CertificateType` and `CertificateString`
  properties, as shown in the next example.

  {% admonition type="info" name="NOTE" %}
  Replace non ASCII characters like CRLF or CR with
  literally "\n" in the `CertificateString` property.

  Refer to the
  [Installing certificate](/docs/redfishservices/ilos/supplementdocuments/biostlsconf/#installing-certificates)
  section for examples to achieve this task.

  {% /admonition %}

  {% tabs %}
  {% tab label="Import signed LDevID certificate" %}

  ```Text Import signed LDevID certificate
  POST /redfish/v1/Managers/1/SecurityService/iLOLDevID/Certificates/
  ```
  
  {% /tab %}
  {% tab label="Body" %}

  ```json Body
  {
    "CertificateType": "PEM",
    "CertificateString": "-----BEGIN CERTIFICATE-----\n<Contents of the signed and trusted certificate>\n-----END CERTIFICATE-----\n"
  }
  ```
  
  {% /tab %}
  {% tab label="Response" %}

  ```json Response
  {
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.18.Created"
            }
        ]
    }
  }
  ```
  
  {% /tab %}
  {% /tabs %}
  {% admonition type="info" name="NOTE" %}
  
  Before importing, iLO validates the input certificate with the following
  parameters:

  - The public key in the certificate matches the one generated with its
    corresponding CSR.
  - The signing and hashing algorithms used in the certificate are FIPS
    compliant.

  {% /admonition %}

##### iLO LDevID CSR format

As already mentioned, starting with version 1.60 and later, HPE iLO 6 is compliant with the <a href="https://1.ieee802.org/security/802-1ar/" target="_blank">IEEE 802.1AR</a> standard.

The following table explains how the X509 `Subject` field attributes are
used in iLO LDevID CSRs when iLO 6 firmware is 1.60 or above.
Empty `Example` cells mean that value of the corresponding attribute is
fixed and mentioned in the `Value` cell.

{% admonition type="success" name="TIP" %}

iLO LDevID CSRs generated with iLO 6 version 1.60 and later use
ASN.1 encoded values.

In order to fully decode such CSRs, you should use a dedicated
<a href="https://asn1js.eu/" targert="_blank">decoder</a>.

{% /admonition %}

Acronyms are explained in the [glossary](/docs/etc/glossaryterms/).

|X509 field|RDN attribute|Description|Value|Example|
|---|---|---|---|---|
| Subject |     |                 |       |     |
|         | GN | Given Name | PCA part number | P12345-001 |
|         | SN | SurName | PCA Serial number | PYNXHC2ZGIE11U |
|         | CN  | Common Name | System SKU | P98765-B21 |
|         | serialNumber | Entity serial number | System serial number | CZJ3199GDZ |
|         |  O  | Organization    | Hewlett Packard Enterprise Development | |
|         | ST  | State or Province | Texas | |
|         | OU  | Organization Unit | Servers | |
|         |  L  | Location        | Houston | |
|         |  C  | Country Name    | US    | |

The following table explains how the X509 `Subject Alternative Name` extension is
formated when iLO 6 firmware is 1.60 or later.

| X509 Extension | Name | OID | Content | Value / Example |
|   ---   | ---  | --- |  ---  | --- |
| Subject Alternative Name |  | 2.5.29.17 | | |
|          | directoryName (DirName) attributes | 2.23.133.5.1.1 | tcg-at-platformManufacturerStr| HPE |
|                          |                          | 2.23.133.5.1.4 | tcg-at-platformModel representing the platform SKU or model name   | P98765-B21 |
|                          |                          | 2.23.133.5.1.6 | tcg-at-platformSerial representing the platform (i.e. assembly/chassis) serial number | CZJ3199GDZ |
|                          | otherName: hardwareModuleName | 1.3.6.1.5.5.7.8.4 | iLO 6 LDevID hwType (fixed value:1.3.6.1.4.1.47196.6.3.2.2) and hwSerialNumber (value of PCA Serial Number) | PYNXHC2ZGIE11U |

Acronyms are explained in the [glossary](/docs/etc/glossaryterms/).

|X509 field|RDN attribute|Description|Value|Example|
|---|---|---|---|---|
| Subject |     |                 |       |     |
|         | GN | Given Name | PCA part number | P12345-001 |
|         | SN | SurName | PCA Serial number | PYNXHC2ZGIE11U |
|         | CN  | Common Name | System SKU | P98765-B21 |
|         | serialNumber | Entity serial number | System serial number | CZJ3199GDZ |
|         |  O  | Organization    | Hewlett Packard Enterprise Development | |
|         | ST  | State or Province | Texas | |
|         | OU  | Organization Unit | Servers | |
|         |  L  | Location        | Houston | |
|         |  C  | Country Name    | US    | |

The following table explains how the X509 `Subject Alternative Name` extension is
formated when iLO 6 firmware is 1.60 or later.

| X509 Extension | Name | OID | Content | Value / Example |
|   ---   | ---  | --- |  ---  | --- |
| Subject Alternative Name |  | 2.5.29.17 | | |
|          | directoryName (DirName) attributes | 2.23.133.5.1.1 | tcg-at-platformManufacturerStr| HPE |
|                          |                          | 2.23.133.5.1.4 | tcg-at-platformModel representing the platform SKU or model name   | P98765-B21 |
|                          |                          | 2.23.133.5.1.6 | tcg-at-platformSerial representing the platform (i.e. assembly/chassis) serial number | CZJ3199GDZ |
|                          | otherName: hardwareModuleName | 1.3.6.1.5.5.7.8.4 | iLO 6 LDevID hwType (fixed value:1.3.6.1.4.1.47196.6.3.2.2) and hwSerialNumber (value of PCA Serial Number) | PYNXHC2ZGIE11U |

#### Viewing the imported LDevID certificate

To view the imported LDevID certificate, use the following
RESTful API GET command toward
`/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates/{@certId}`

#### Deleting the imported LDevID certificate

To delete the imported LDevID certificate,
use the following RESTful API DELETE command toward
`/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates/{@certId}`

#### Updating an LDevID certificate

You cannot update a LDevID certificate. To replace a certificate,
you must delete the existing LDevID certificate and generate a
new certificate.
See [Importing an LDevID certificate](#importing-an-ldevid-certificate).

{% admonition type="info" name="NOTE" %}
In case LDevID certificate is lost due to secure erase,
you can restore it using the Backup and Restore feature or replace it.
{% /admonition %}

### System IDevID certificate

HPE iLO can be provisioned with the server host identity,
available for use by the operating system.
This factory provisioned system identity is called System IDevID,
whose corresponding private key is stored in TPM.
System IDevID follows the TCG proposal for TPM2.0
implementation of an IDevID. You have to order a
specific server SKU (P42104-B21) for obtaining System IDevID.

HPE iLO does not allow you to update or delete the certificate.
You can only view the certificate using the RESTful API GET command toward
`/redfish/v1/Managers/{@managerId}/SecurityService/SystemIDevID/Certificates/{@certId}`

### System IAK certificate

HPE iLO can be provisioned with the System Initial Attestation Key
(IAK) certificate in the factory. This is similar to System IDevID but
used for TPM-based attestation. The corresponding private key is stored in
TPM. System IAK follows the TCG proposal for TPM2.0 implementation of
an IDevID. You have to order a specific server SKU (P42104-B21) for
obtaining System IAK certificate.

HPE iLO does not allow you to update or delete the certificate.
You can only view the certificate using the RESTful API GET command toward
`/redfish/v1/Managers/{@managerId}/SecurityService/SystemIAK/Certificates/{@certId}`

{% admonition type="info" name="NOTE" %}
HPE iLO IDevID, iLO LDevID, System IDevID, and System IAK are preserved
across iLO security state transitions, reset to factory defaults.
{% /admonition %}

### Platform certificate

HPE iLO can be provisioned with the platform certificate which is an
attribute certificate that functions as a signed manifest for the
hardware chassis or configuration used to detect supply chain tampering.
This certificate is TCG compliant. You have to order a specific
server SKU (P42104-B21) for obtaining Platform certificate.

iLO does not allow you to update or delete the platform certificate.
You can only view the certificate using the RESTful API GET command
toward
`/redfish/v1/Managers/{@managerId}/SecurityService/PlatformCert/Certificates/{@certId}`
