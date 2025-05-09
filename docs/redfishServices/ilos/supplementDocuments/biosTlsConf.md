---
seo:
  title: BIOS TLS configuration
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

## HTTPS Boot TLS Configuration

This section describes the HPE Transport Layer Security (TLS) configuration
of the UEFI/BIOS
[OEM extension](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpetlsconfig).
This configuration is required if you want to boot an operating system from
remote using the HTTPS protocol.

:::info NOTE
The iLO TLS configuration is presented in the
[Security Service](/docs/redfishservices/ilos/supplementdocuments/securityservice/)
section.
:::

 In iLO 6, the HPE OEM `#HpeTlsConfig` extension
[URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpetlsconfig)
is `/redfish/v1/Systems/{id}/bios/oem/hpe/tlsconfig/`. In iLO 5 the
[URI](/docs/redfishservices/ilos/ilo5/ilo5_{{process.env.LATEST_ILO5_FW_VERSION}}/ilo5_hpe_resourcedefns{{process.env.LATEST_ILO5_FW_VERSION}}/#hpetlsconfig)
is `/redfish/v1/Systems/{id}/bios/tlsconfig/`. It is used for
reading and setting properties. It has three resources:

- **Current Settings Resource (read-only)** :
  `/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/`
  - Contains current TLS certificates resource configuration data active
    in the system.

- **Pending Settings Resource (read/write)** :
    `/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/settings/`
  - Writable resources
    - `"Ciphers"` - Set the desired supported ciphers
    - `"HostnameCheck"` - Enable/Disable host name checking
    - `"ProtocolVersion"` - Set the desired protocol version
    - `"VerifyMode"` - Set the verification method (PEER/NONE)
    - `"NewCertificates"` - An array of the certificates to be installed
    - `"DeleteCertificates"` - An array of the fingerprints of the
      certificates to be deleted
  
  - Read Only properties that gets modified internally:
    - `"Certificates"` - An array of all the installed certificates
    - `"TlsCaCertificateCount"` - The number of the installed certificates

- **TLS Default Settings Resource (read-only)** :
  `/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/baseconfigs/`
  - Holds the default values of the resource. Refer to the
    [example below](#resetting-the-tls-resource-to-its-default-settings)
    to perform the reset.

## Installing Certificates

The certificates are X509 keys. In PEM format, the certificates are encoded
in a series of strings with LF or CR-LF invisible characters in their
ASCII representation (\n or \r\n):

The following is an example of a CR-LF certificate in a PEM format:

```Text
    -----BEGIN CERTIFICATE-----
    MIIEHTCCAwWgAwIBAgIQe8LmWgF5edKw01/avJg69DANBgkqhkiG9w0BAQsFADCB
    kTELMAkGA1UEBhMCVVMxKzApBgNVBAoTIkhld2xldHQgUGFja2FyZCBFbnRlcnBy
    aXNlIENvbXBhbnkxIDAeBgNVBAsTF0luZnJhc3RydWN0dXJlIFNlcnZpY2VzMTMw
    ...
    -----END CERTIFICATE-----
```

It should be modified to replace the CR-LF characters with their ASCII
representation:

```Text
    -----BEGIN CERTIFICATE-----\r\nMIIGxDCCBaygAwIBAgIQUkL9757013wOQ2heZMCLizANBgkqhkiG9w0BAQsFADCB\r\nkTELMAkGA1UEBhMCVVMxKzApBgNVBAo
    TIkhld2xldHQgUGFja2FyZCBFbnRlcnBy\r\naXNlIENvbXBhbnkxIDAeBgNVBAsTF0luZnJhc3RydWN0dXJlIFNlcnZpY2VzMTMw\r\n
    ...\r\n
    -----END CERTIFICATE-----
```

:::success Tip
On Linux systems, you can use the following `sed` or `awk` commands to
replace the CR-LF or LF invisible characters in a `file` with their
ASCII representation:

`dos2unix file`<br>
`sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' file`

or

`dos2unix file`<br>
`awk '{printf "%s\\n", $0}' file`
:::

Finally, the certificate needs to be PUT (only a PUT request will
be successful) through the API:

```text PUT request
PUT /redfish/v1/Systems/{item}/bios/oem/hpe/tlsconfig/settings/
```

```json Body
{
  "NewCertificates": [
    {
      "X509Certificate":"-----BEGIN CERTIFICATE-----\r\nMIIGxDCCBaygAwIBAgIQUkL9757013wOQ2heZMCLizANBg......kSH4nvx8CQ==\r\n-----END CERTIFICATE-----\r\n"
    }
  ]
}
```

```json Current Settings after SystemReset
{
  "@Redfish.Settings": {
        "@odata.type": "#Settings.v1_0_0.Settings",
        "ETag": "88960B16",
        "Messages": [
            {
                "MessageId": "Base.1.0.Success"
            }
        ],
        "SettingsObject": {
            "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/settings"
        },
        "Time": "2022-11-07T15:18:07+06:00"
    },
  "@odata.context": "/redfish/v1/$metadata#HpeTlsConfig.HpeTlsConfig",
  "@odata.etag": "W/\"DAE5B73CD430CFCFCF7E180C05FE6C9E\"",
  "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/",
  "@odata.type": "#HpeTlsConfig.v1_0_0.HpeTlsConfig",
  "Certificates": [
    {
        "FingerPrint": "54:8C:8B:45:55:30:47:8D:43:8D:44:BF:33:E0:C5:A5:44:1E:E9:5E:B2:0A:AC:A6:CA:59:B6:D9:7B:FC:83:A9",
        "Issuer": "C=US, O=Whatever, OU=Infrastructure Services, CN=Whatever Private Root CA",
        "SerialNumber": "5242FDEF9EF4D77CE43685E64C08B8B",
        "Subject": "O=Whatever, CN=John Smith, OU=XXX-WEB-H, OU=Computer Name - Smith.John, OU=Employment Status - Employees, OU=SmartCard, emailAddress=John.Smith@whatever.com",
        "ValidNotAfter": "07/11/2017  23:59",
        "ValidNotBefore": "07/11/2016  00:00"
    }
  ],
  "Ciphers": "AES128-SHA:AES256-SHA:AES128-SHA256:AES256-SHA256:AES128-GCM-SHA256:AES256-GCM-SHA384",
  "DeleteCertificates": [],
  "HostnameCheck": "Enabled",
  "Id": "tlsconfig",
  "Name": "TLS Current Settings",
  "NewCertificates": [],
  "ProtocolVersion": "AUTO",
  "TlsCaCertificateCount": 1,
  "VerifyMode": "PEER"
}
```

## Deleting Certificates

When a certificate is installed, a new field is created with the Fingerprint
of that certificate (SHA256). To remove a certificate, PUT the fingerprint
to remove in the settings environment.

```text PUT request
PUT /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```

```json Body
{
  "DeleteCertificates": [
    {
      "FingerPrint": "54:8C:8B:45:55:30:47:8D:43:8D:44:BF:33:E0:C5:A5:44:1E:E9:5E:B2:0A:AC:A6:CA:59:B6:D9:7B:FC:83:A9"
    }
  ]
}
```

:::success Tip:
You can delete more than one certificate at a time.
:::

## Resetting the TLS resource to its default settings

```text PUT request
PUT /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```

```json Body
{
  "BaseConfig": "Default"
}
```

```json Result after reboot
{
  "@odata.context": "/redfish/v1/$metadata#HpeTlsConfig.HpeTlsConfig",
  "@odata.etag": "W/\"F5B8B30487AB151515845B0C2CC520E0\"",
  "@odata.id": "/redfish/v1/systems/1/bios/tlsconfig/settings/",
  "@odata.type": "#HpeTlsConfig.v1_0_0.HpeTlsConfig",
  "Certificates": [],
  "Ciphers": "AES128-SHA:AES256-SHA:AES128-SHA256:AES256-SHA256:AES128-GCM-SHA256:AES256-GCM-SHA384",
  "DeleteCertificates": [],
  "HostnameCheck": "Disabled",
  "Id": "settings",
  "Name": "TLS Current Settings",
  "NewCertificates": [],
  "ProtocolVersion": "AUTO",
  "TlsCaCertificateCount": 0,
  "VerifyMode": "PEER"
}
```

## Examples of other changes

- **Modifying Ciphers**

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/ 
```

```json Body
{
  "Ciphers": "AES128-SHA:AES256-SHA"
}
```

- **Modifying VerifyMode**
Possible values: PEER or NONE.

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```

```json Body
{
  "VerifyMode": "PEER"
}    
```

- **Modifying HostnameCheck**
Cannot be changed if `VerifyMode` is set to NONE.

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```

```json Body
{
  "HostnameCheck": "Enabled"
}    
```

- **Modifying ProtocolVersion**
Possible values: "AUTO", "1.0", "1.1" or "1.2".

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```

```json Body
{
  "ProtocolVersion": "1.1"
}    
```
