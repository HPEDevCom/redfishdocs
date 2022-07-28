---
seo:
  title: HTTPS Boot TLS configuration
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# HTTPS Boot TLS Configuration

 TLS Certificates Resource has three resources within the RESTful API tree:

* **Current Settings Resource (read-only) : redfish/v1/systems/1/bios/tlsconfig/**
  * Contains current TLS certificates resource configuration data present in the system
* **Pending Settings Resource (read/write) : redfish/v1/systems/1/bios/tlsconfig/settings/**
  * Writable resource used to configure TLS certificates settings
  * Modifiable properties:

    * `"Ciphers"` - Set the desired supported ciphers
    * `"HostnameCheck"` - Enable/Disable host name checking
    * `"ProtocolVersion"` - Set the desired protocol version
    * `"VerifyMode"` - Set the verification method (PEER/NONE)
    * `"NewCertificates"` - An array of the certificates to be installed
    * `"DeleteCertificates"` - An array of the fingerprints of the certificates to be deleted
    * Read Only properties that gets modified internally:
    * `"Certificates"` - An array of all the installed certificates
    * `"TlsCaCertificateCount"` - The number of the installed certificates

* **TLS Default Settings Resource (read-only) : redfish/v1/systems/1/bios/tlsconfig/baseconfigs/**
   Holds the default values of the resource

## Installing Certificates

  The certificates are X509 keys. In PEM format, the certificates are encoded in a series of strings with new line characters between
  them:

  This an example of a certificate in a PEM format:

    -----BEGIN CERTIFICATE-----
    MIIEHTCCAwWgAwIBAgIQe8LmWgF5edKw01/avJg69DANBgkqhkiG9w0BAQsFADCB
    kTELMAkGA1UEBhMCVVMxKzApBgNVBAoTIkhld2xldHQgUGFja2FyZCBFbnRlcnBy
    aXNlIENvbXBhbnkxIDAeBgNVBAsTF0luZnJhc3RydWN0dXJlIFNlcnZpY2VzMTMw

  It should be modified to add the new line characters:

    -----BEGIN CERTIFICATE-----\r\nMIIGxDCCBaygAwIBAgIQUkL9757013wOQ2heZMCLizANBgkqhkiG9w0BAQsFADCB\r\nkTELMAkGA1UEBhMCVVMxKzApBgNVBAo
    TIkhld2xldHQgUGFja2FyZCBFbnRlcnBy\r\naXNlIENvbXBhbnkxIDAeBgNVBAsTF0luZnJhc3RydWN0dXJlIFNlcnZpY2VzMTMw\r\n

  Notice the "\r\n" added at the beginning of the certificate and at end of each line in the certificate body.
  Finally, the certificate needs to be PUT (only a PUT would work) through the API (Postman,..), as many as needed to be installed. See the examples in the right pane for more information:

```text PUT request
PUT /redfish/v1/Systems/{item}/bios/tlsconfig/settings/
```

```Shell iLOrest
ilorest rawput body.json
```

```json Body
{
  "NewCertificates": [
    {
      "X509Certificate":"-----BEGIN CERTIFICATE-----\r\nMIIGxDCCBaygAwIBAgIQUkL9757013wOQ2heZMCLizANBg......"
    }
  ]
}
```

```json Result after reboot
{
  "@odata.context": "/redfish/v1/$metadata#HpeTlsConfig.HpeTlsConfig",
  "@odata.etag": "W/\"DAE5B73CD430CFCFCF7E180C05FE6C9E\"",
  "@odata.id": "/redfish/v1/systems/1/bios/tlsconfig/settings/",
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
  "Id": "settings",
  "Name": "TLS Pending Settings",
  "NewCertificates": [],
  "ProtocolVersion": "AUTO",
  "TlsCaCertificateCount": 1,
  "VerifyMode": "NONE"
}
```

## Deleting Certificates

When a certificate is installed, a new field is created with the Fingerprint of that certificate (SHA256).  To remove a certificate, PUT the fingerprint to remove.

```text PUT request
PUT /redfish/v1/Systems/1/bios/tlsconfig/settings/
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
PUT /redfish/v1/Systems/1/bios/tlsconfig/settings/
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

* **Modifying Ciphers**

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/tlsconfig/settings/
```

```json Body
{
  "Ciphers": "AES128-SHA:AES256-SHA"
}
```

* **Modifying VerifyMode**
Possible values: PEER or NONE.

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/tlsconfig/settings/
```

```json Body
{
  "VerifyMode": "PEER"
}    
```

* **Modifying HostnameCheck**
Cannot be changed if VerifyMode is set to NONE.

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/tlsconfig/settings/
```

```json Body
{
  "HostnameCheck": "Enabled"
}    
```

* **Modifying ProtocolVersion**
Possible values: "AUTO", "1.0", "1.1" or "1.2".

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/tlsconfig/settings/
```

```json Body
{
  "ProtocolVersion": "1.1"
}    
```
