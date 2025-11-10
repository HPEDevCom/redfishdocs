---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
seo:
  title: BIOS TLS configuration
---

## HTTPS Boot TLS Configuration

This section describes the HPE Transport Layer Security (TLS) configuration
of the UEFI/BIOS
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpetlsconfig") %} OEM extension {% /link-internal %}.
This configuration is required if you want to boot an operating system from
remote using the HTTPS protocol.

{% admonition type="success" name="Tip" %}

Several other Redfish subsystems use certificates to secure their use.
Refer to the following documentation sections for their management:

- [iLO TLS certificates](/docs/redfishservices/ilos/supplementdocuments/securityservice#ilo-tls-certificates)
- [Server management identities](/docs/redfishservices/ilos/supplementdocuments/securityservice#server-management-identities)
- [Secure boot databases](/docs/concepts/securebootdatabases#accessing-secure-boot-databases-from-redfish)
- [Directory administration](/docs/redfishservices/ilos/supplementdocuments/managingusers#directory-administration)

{% /admonition %}

 In iLO 6, the HPE OEM `#HpeTlsConfig` extension
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpetlsconfig") %} URI {% /link-internal %}
is `/redfish/v1/Systems/{id}/bios/oem/hpe/tlsconfig/`. In iLO 5 the
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpetlsconfig") %} URI {% /link-internal %}
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

## Installing Certificates in the HPE TLS Boot subsystem

The HPE TLS Boot subsystem accepts X509 keys. In PEM format, the certificates are encoded
in a series of strings with LF or CR-LF invisible characters in their
ASCII representation (`\n` or `\r\n`):

The following is an example of a CR-LF certificate in a PEM format:

{% tabs %}
{% tab label="Example" %}

```Text Example
    -----BEGIN CERTIFICATE-----
    MIIEHTCCAwWgAwIBAgIQe8LmWgF5edKw01/avJg69DANBgkqhkiG9w0BAQsFADCB
    kTELMAkGA1UEBhMCVVMxKzApBgNVBAoTIkhld2xldHQgUGFja2FyZCBFbnRlcnBy
    aXNlIENvbXBhbnkxIDAeBgNVBAsTF0luZnJhc3RydWN0dXJlIFNlcnZpY2VzMTMw
    ...
    -----END CERTIFICATE-----
```
  
{% /tab %}
{% /tabs %}

In order to upload such a common PEM certificate to the HPE TLS Boot subsystem, you need to replace the CR-LF characters with their ASCII
representation as shown in the next example.

{% tabs %}
{% tab label="Example" %}

```Text Example
    -----BEGIN CERTIFICATE-----\nMIIGxDCCBaygAwIBAgIQUkL9757013wOQ2heZMCLizANBgkqhkiG9w0BAQsFADCB\nkTELMAkGA1UEBhMCVVMxKzApBgNVBAo
    TIkhld2xldHQgUGFja2FyZCBFbnRlcnBy\naXNlIENvbXBhbnkxIDAeBgNVBAsTF0luZnJhc3RydWN0dXJlIFNlcnZpY2VzMTMw\n
    ...\n
    -----END CERTIFICATE-----
```
  
{% /tab %}
{% /tabs %}

{% admonition type="success" name="Tip" %}
On Linux systems, you can use the following `sed` or `awk` commands to
replace the CR-LF or LF invisible characters in a `file` with their
ASCII representation:

`dos2unix file`<br>
`sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' file`

or

`dos2unix file`<br>
`awk '{printf "%s\\n", $0}' file`
{% /admonition %}

Finally, the certificate needs to be PUT (only a PUT request will
be successful) through the API:

{% tabs %}
{% tab label="PUT request" %}

```text PUT request
PUT /redfish/v1/Systems/{item}/bios/oem/hpe/tlsconfig/settings/
```
  
{% /tab %}
{% tab label="Body" %}

```json Body
{
  "NewCertificates": [
    {
      "X509Certificate":"-----BEGIN CERTIFICATE-----
      \nMIIGxDCCBaygAwIBAgIQUkL9757013wOQ2heZMCLizANBg......kSH4nvx8CQ==
      \n-----END CERTIFICATE-----
      \n"
    }
  ]
}
```
  
{% /tab %}
{% tab label="Current Settings after SystemReset" %}

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
  
{% /tab %}
{% /tabs %}

## Deleting Certificates

When a certificate is installed, a new field is created with the Fingerprint
of that certificate (SHA256). To remove a certificate, PUT the fingerprint
to remove in the settings environment.

{% tabs %}
{% tab label="PUT request" %}

```text PUT request
PUT /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```
  
{% /tab %}
{% tab label="Body" %}

```json Body
{
  "DeleteCertificates": [
    {
      "FingerPrint": "54:8C:8B:45:55:30:47:8D:43:8D:44:BF:33:E0:C5:A5:44:1E:E9:5E:B2:0A:AC:A6:CA:59:B6:D9:7B:FC:83:A9"
    }
  ]
}
```
  
{% /tab %}
{% /tabs %}

{% admonition type="success" name="Tip:" %}
You can delete more than one certificate at a time.
{% /admonition %}

## Resetting the TLS resource to its default settings

{% tabs %}
{% tab label="PUT request" %}

```text PUT request
PUT /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```
  
{% /tab %}
{% tab label="Body" %}

```json Body
{
  "BaseConfig": "Default"
}
```
  
{% /tab %}
{% tab label="Result after reboot" %}

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
  
{% /tab %}
{% /tabs %}

## Examples of other changes

- **Modifying Ciphers**

{% tabs %}
{% tab label="PATCH request" %}

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/ 
```
  
{% /tab %}
{% tab label="Body" %}

```json Body
{
  "Ciphers": "AES128-SHA:AES256-SHA"
}
```
  
{% /tab %}
{% /tabs %}

- **Modifying VerifyMode**
Possible values: PEER or NONE.

{% tabs %}
{% tab label="PATCH request" %}

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```
  
{% /tab %}
{% tab label="Body" %}

```json Body
{
  "VerifyMode": "PEER"
}    
```
  
{% /tab %}
{% /tabs %}

- **Modifying HostnameCheck**
Cannot be changed if `VerifyMode` is set to NONE.

{% tabs %}
{% tab label="PATCH request" %}

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```
  
{% /tab %}
{% tab label="Body" %}

```json Body
{
  "HostnameCheck": "Enabled"
}    
```
  
{% /tab %}
{% /tabs %}

- **Modifying ProtocolVersion**
Possible values: "AUTO", "1.0", "1.1" or "1.2".

{% tabs %}
{% tab label="PATCH request" %}

```text PATCH request
PATCH /redfish/v1/Systems/1/bios/oem/hpe/tlsconfig/settings/
```
  
{% /tab %}
{% tab label="Body" %}

```json Body
{
  "ProtocolVersion": "1.1"
}    
```
  
{% /tab %}
{% /tabs %}
