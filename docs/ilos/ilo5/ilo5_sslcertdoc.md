---
title: SSL certificates
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# SSL certificates

The Secure Socket Layer (SSL) protocol is a standard for encrypting data so that it cannot be viewed or modified while in transit on
the network. This protocol uses a key to encrypt and decrypt the data. Generally, the longer the key, the
better the encryption.

A certificate is a small data file that connects an SSL key to a server. The certificate contains the server
name and the server public key. Only the server has the corresponding private key, and this is how it is
authenticated.

A certificate must be signed to be valid. If it is signed by a Certificate Authority (CA), and that CA is
trusted, all certificates signed by the CA are also trusted. A self-signed certificate is one in which the
owner of the certificate acts as its own CA.
By default, iLO creates a self-signed certificate for use in SSL connections. This certificate enables iLO to
work without additional configuration steps.

:::info IMPORTANT
Using a self-signed certificate is less secure than importing a trusted certificate. Hewlett Packard
Enterprise recommends importing a trusted certificate to protect the security of the iLO processor.
:::

## Obtaining and importing an SSL certificate

iLO allows you to create a Certificate Signing Request (CSR) that you can send to a Certificate Authority to
obtain a trusted SSL certificate to import into iLO.

An SSL certificate works only with the keys generated with its corresponding CSR. If iLO is reset to the
factory default settings, or another CSR is generated before the certificate that corresponds to the
previous CSR is imported, the certificate does not work. In that case, a new CSR must be generated and
used to obtain a new certificate from a CA.

:::info Prerequisites
The `iLO Settings` privilege is required to manage certificates.
:::

Resource Location: `/redfish/v1/managers/{item}/securityservice/httpscert/`

### Create a CSR

Enter the following details when you create a CSR:

* **City or Locality (L)**—The city or locality where the company or organization that owns this iLO subsystem is located.
* **Common Name (CN)**—The FQDN of this iLO subsystem.
* **Country (C)**—The two-character country code that identifies the country where the company or
organization that owns this iLO subsystem is located. Enter the two-letter abbreviation in capital
letters.
* **Organization Name (O)**—The name of the company or organization that owns this iLO subsystem.
* **Organizational Unit (OU)**—(Optional) The unit within the company or organization that owns this iLO
subsystem.
* **State (ST)**—The state where the company or organization that owns this iLO subsystem is located.

```text POST action
POST {{iloURI}}/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpHttpsCert.GenerateCSR
```

```json Body
{
    "City": "<string>", 
    "CommonName": "<string>", 
    "Country": "<string>", 
    "OrgName": "<string>", 
    "OrgUnit": "<string>", 
    "State": "<string>", 
    "IncludeIP": true
}
```

### Retrieve the CSR and send it to a third party CA

```shell cURL
curl --location --insecure  --silent \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: a230b7d050f14de38f2fb3fbd678abf2' \
     --request GET \
     https://${iLO}/redfish/v1/Managers/1/SecurityService/HttpsCert/ | \
jq '.CertificateSigningRequest' > iLOCsr.csr
```

### Importing a trusted certificate

```text POST action
POST {{iloURI}}/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpHttpsCert.ImportCertificate
```

```json Body
{
    "Certificate": "<text>"
}
```
