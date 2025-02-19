---
seo:
  title: iLO License service
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

## iLO License service

The iLO License service is an OEM Redfish
[data type](/docs/concepts/datatypesandcollections/#data-types)
composed of the
[collection service](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilolicensecollection)
and the
[service](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilolicense) itself.

Refer to the
<a href="https://www.hpe.com/support/ilo6">iLO Licensing Guide</a>
for more information on iLO licenses.

This section provides examples for managing the iLO license featuring cURL
and iLOrest with its built-in `ilolicense`
[macro command](/docs/redfishclients/ilorest-userguide/ilocommands/#ilolicense-command).

:::info NOTE
By default (i.e. factory defaults), iLO contains a license with empty
properties. Hence the number of members in the `HpeiLOLicenseCollection`
is one. This number never increments.
:::

## View iLO license properties

The following example retrieves the license properties of an
iLO 6 based server.

:::success TIP
The iLO license collection can have only one license. Hence, you can use the
`?only`
[query parameter](/docs/redfishservices/ilos/supplementdocuments/odataqueryoptions/)
to expand the only member of the collection
:::

```text Generic GET request
GET {{iloURI}}/redfish/v1/Managers/1/LicenseService/?only
```

```shell cURL
curl --silent --location                                                          \
     --header 'X-Auth-Token: d33984801d271623d9b3bcf31eed2ebc'                    \
     --request GET https://${bmc_ip}/redfish/v1/Managers/1/LicenseService/?only | \
     jq .
```

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

iLOrest features the macro `ilolicense` command for managing the iLO license.

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest ilolicense
ilorest logout
```

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

## Installing an iLO license

To install a license for the first time or to renew/upgrade/downgrade a
license, use a POST request to the `HpeiLOLicense` service
[URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_resmap{{process.env.LATEST_FW_VERSION}}/).
This operation overrides the currently installed license.

:::info NOTE
A successful iLO license installation returns a 201 HTTP code as well as the
OpenData `error` object containing the successful `Base.*.Created` Message Id.
Although receiving the `error` object may be confusing for a successful
operation, it is fully compliant with the Redfish specification.
:::

```text Generic request and body
POST /redfish/v1/Managers/1/LicenseService/

Body: 
{"LicenseKey": "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"}
```

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

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest ilolicense --install xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
ilorest logout
```

:::success TIP
A Python example using the HPE Python Redfish library is available in the
<a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_license_key.py" target="_blank">HPE GitHub repository</a>.
:::

## Uninstalling an iLO license

When you uninstall the iLO license, the `HpeiLOLicenseCollection` data type
still contains one member, but this only member has mostly empty fields.

```text Generic request
DELETE  /redfish/v1/Managers/1/LicenseService/1/
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest ilolicense uninstall
ilorest logout
```

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
