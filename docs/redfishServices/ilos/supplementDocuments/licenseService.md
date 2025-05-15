---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: true
seo:
  title: iLO License service
---

## iLO License service

The iLO License service is an OEM Redfish
[data type](/docs/concepts/datatypesandcollections/#data-types)
composed of the
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpeilolicensecollection") %} collection service {% /link-internal %}
and the
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpeilolicense") %} service {% /link-internal %}
itself.

Refer to the
<a href="https://www.hpe.com/support/ilo6">iLO Licensing Guide</a>
for more information on iLO licenses.

This section provides examples for managing the iLO license featuring cURL
and iLOrest with its built-in `ilolicense`
[macro command](/docs/redfishclients/ilorest-userguide/ilocommands/#ilolicense-command).

{% admonition type="info" name="NOTE" %}
By default (i.e. factory defaults), iLO contains a license with empty
properties. Hence the number of members in the `HpeiLOLicenseCollection`
is one. This number never increments.
{% /admonition %}

## View iLO license properties

The following example retrieves the license properties of an
iLO 6 based server.

{% admonition type="success" name="TIP" %}
The iLO license collection can have only one license. Hence, you can use the
`?only`
[query parameter](/docs/redfishservices/ilos/supplementdocuments/odataqueryoptions/)
to expand the only member of the collection
{% /admonition %}

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET {{iloURI}}/redfish/v1/Managers/1/LicenseService/?only
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --silent --location                                                          \
     --header 'X-Auth-Token: d33984801d271623d9b3bcf31eed2ebc'                    \
     --request GET https://${bmc_ip}/redfish/v1/Managers/1/LicenseService/?only | \
     jq .
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeiLOLicense.HpeiLOLicense",
    "@odata.etag": "W/\"1C16D36C\"",
    "@odata.id": "/redfish/v1/Managers/1/LicenseService/1/",
    "@odata.type": "#HpeiLOLicense.v2_3_0.HpeiLOLicense",
    "Id": "1",
    "Confirmation": {
        "Code": "",
        "Message": "",
        "Service": "www.hpe.com/glis",
        "Status": false
    },
    "ConfirmationRequest": {
        "EON": {
            "License": "iLO Advanced limited-distribution test",
            "LicenseKey": "32Q2R-Y1C7V-YTTCZ-TLY5N-KL562",
            "Quantity": 1,
            "State": "nfr"
        },
        "Signer": "iLO",
        "System": {
            "ChipId": "7D0827D1778B287C",
            "Product": "ProLiant DL345 Gen11",
            "SerialNumber": "TWA10545B2"
        }
    },
    "Description": "iLO License View",
    "License": "iLO Advanced limited-distribution test",
    "LicenseClass": "BETA",
    "LicenseErr": "LIC01: License key is invalid.",
    "LicenseExpire": "Activated until 31 Jan 2024",
    "LicenseFeatures": {
        "AutoCertEnroll": true,
        "DirectoryAuth": true,
        "DowngradePolicy": true,
        "EmailAlert": true,
        "FWScan": true,
        "Federation": true,
        "Jitter": true,
        "KD": true,
        "KeyMgr": true,
        "MURC": true,
        "ODIM": false,
        "PowerReg": true,
        "RC": true,
        "Recovery": true,
        "RemoteSyslog": true,
        "Scrncap": true,
        "SecureErase": true,
        "SmartCard": true,
        "SuiteB": true,
        "TextCons": true,
        "VM": true,
        "VMScript": true,
        "VSPLogging": true
    },
    "LicenseInstallDate": "2 Jan 2023",
    "LicenseKey": "XXXXX-XXXXX-XXXXX-XXXXX-KL562",
    "LicenseSeats": 1,
    "LicenseTier": "ADV",
    "LicenseType": "Internal",
    "Name": "iLO License"
}
```
  
  {% /tab %}
  {% /tabs %}
iLOrest features the macro `ilolicense` command for managing the iLO license.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest ilolicense
ilorest logout
```
  
  {% /tab %}
{% tab label="Output" %}

```shell Output
Id:1
Code:
Message:
Service:www.hpe.com/glis
Status:False
License:iLO Advanced limited-distribution test
LicenseKey:32Q2R-Y1C7V-YTTCZ-TLY5N-KL562
Quantity:1
State:nfr
Signer:iLO
ChipId:7D0827D1778B287C
Product:ProLiant DL345 Gen11
SerialNumber:TWA10545B2
Description:iLO License View
License:iLO Advanced limited-distribution test
LicenseClass:BETA
LicenseErr:LIC01: License key is invalid.
LicenseExpire:Activated until 31 Jan 2024
AutoCertEnroll:True
DirectoryAuth:True
DowngradePolicy:True
EmailAlert:True
FWScan:True
Federation:True
Jitter:True
KD:True
KeyMgr:True
MURC:True
ODIM:False
PowerReg:True
RC:True
Recovery:True
RemoteSyslog:True
Scrncap:True
SecureErase:True
SmartCard:True
SuiteB:True
TextCons:True
VM:True
VMScript:True
VSPLogging:True
LicenseInstallDate:2 Jan 2023
LicenseKey:XXXXX-XXXXX-XXXXX-XXXXX-KL562
LicenseSeats:1
LicenseTier:ADV
LicenseType:Internal
Name:iLO License
```
  
  {% /tab %}
  {% /tabs %}
## Installing an iLO license

To install a license for the first time or to renew/upgrade/downgrade a
license, use a POST request to the `HpeiLOLicense` service
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_resmap", $env.PUBLIC_LATEST_FW_VERSION) %} URI {% /link-internal %}.
This operation overrides the currently installed license.

{% admonition type="info" name="NOTE" %}
A successful iLO license installation returns a 201 HTTP code as well as the
OpenData `error` object containing the successful `Base.*.Created` Message Id.
Although receiving the `error` object may be confusing for a successful
operation, it is fully compliant with the Redfish specification.
{% /admonition %}

  {% tabs %}
{% tab label="Generic request and body" %}

```text Generic request and body
POST /redfish/v1/Managers/1/LicenseService/

Body: 
{"LicenseKey": "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"}
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
bmc_ip="ilo-ip"
curl --silent --location --include                                    \
     --header "Content-Type: application/json"                        \
     --header 'X-Auth-Token: d33984801d271623d9b3bcf31eed2ebc'        \
     -X POST --data '{"LicenseKey": "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"}' \
     https://${bmc_ip}/redfish/v1/Managers/1/LicenseService/ |        \
     jq .

HTTP/1.1 201 Created
Cache-Control: no-cache
Content-type: application/json; charset=utf-8
Date: Thu, 19 Jan 2023 16:20:39 GMT
ETag: W/"02C2D1BB"
Link: </redfish/v1/Managers/1/LicenseService/1/>; rel=self
Location: https://ilo-ip/redfish/v1/Managers/1/LicenseService/1/
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
        "MessageId": "Base.1.12.Created"
      }
    ]
}
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest ilolicense --install xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="success" name="TIP" %}
A Python example using the HPE Python Redfish library is available in the
<a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_license_key.py" target="_blank">HPE GitHub repository</a>.
{% /admonition %}

## Uninstalling an iLO license

When you uninstall the iLO license, the `HpeiLOLicenseCollection` data type
still contains one member, but this only member has mostly empty fields.

  {% tabs %}
{% tab label="Generic request" %}

```text Generic request
DELETE  /redfish/v1/Managers/1/LicenseService/1/
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest ilolicense uninstall
ilorest logout
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --silent --location --header 'X-Auth-Token: 460eba169821e0ab389705269b3cb441' --request DELETE https://ilo-hst345g11-9/redfish/v1/Managers/1/LicenseService/1/ | jq .

{
  "error": {
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information.",
    "@Message.ExtendedInfo": 
    [
      {
        "MessageId": "Base.1.12.Success"
      }
    ]
}
```
  
  {% /tab %}
  {% /tabs %}
