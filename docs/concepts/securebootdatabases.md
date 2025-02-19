---
seo:
  title: Secure Boot Databases
toc:
  enable: false
  maxDepth: 2
disableLastModified: false
---

## Secure Boot Databases

<a href="https://uefi.org/specs/UEFI/2.10/" target="_blank">Secure Boot</a>
is a protocol from the UEFI Forum. It is defined to secure the boot process
by preventing the loading of UEFI drivers or OS boot loaders that are not
signed with an acceptable digital signature.

`SecureBootDatabaseCollection` is a standard collection of databases which
are named based on the functionality of keys stored in the database.

UEFI/BIOS enrolls certificates and signatures to default secure boot databases
and communicates these to the Management Controller. Apart from default, user
can enroll certificates/signatures under each secure boot database.

Following databases are defined by UEFI:

* Platform Key (PK): The platform key establishes a trust relationship
    between the platform owner and the platform firmware.

* Key Exchange Key (KEK): Key exchange keys establish a trust relationship
    between the operating system and the platform firmware. Protects the
    signature database from unauthorized modifications. No changes can be
    made to the signature database without the private portion of this key.

* Authorized Signature Database (db): Maintains a secure boot allowed
    signature database of signatures that are authorized to run
    on the platform.

* Forbidden Signature Database (dbx): Maintains a secure boot blacklist
    signature database of signatures that are not authorized
    to run on the platform.

* Timestamp Signature Database (dbt): Maintains signatures of
    codes in the timestamp signatures database.

Each of these databases have default secure boot databases
associated which are `read-only`:

* `PKDefault`: Default Platform Key
* `KEKDefault`: Default Key Exchange Key Database
* `dbDefault`: Default Authorized Signature Database
* `dbxDefault`: Default Forbidden Signature Database
* `dbtDefault`: Default Authorized Timestamp Signature Database
* `dbrDefault`: Default Authorized Recovery Signature Database

Defaults contain OEM's or platform defined default keys
(certificates/signatures). Defaults are not used at runtime but is provided
in order to allow the OS to recover the OEM's default key setup.
Defaults are `read-only`.

User can view certificates and signatures present in UEFI Secure Boot
databases. And user is allowed to add or one or more certificate/signature
to non-default UEFI Secure Boot databases.

| Database Name | Description | Notes
|:---|:---|:---|
| PK | Platform Key | Must contain a max of 1 certificate, and no signatures. When no certificate is enrolled, SecureBoot cannot be enabled.|
| KEK | Key Exchange Key Database |	Can contain any number of Certificates (no signatures) |
| Db | Authorized Signature Database | Can contain any number of Certificates and/or signatures |
| Dbx | Forbidden Signature Database | Can contain any number of Certificates and/or signatures |
| Dbt | Authorized Timestamp Signature Database | Can contain any number of Certificates and/or signatures |
| Dbr | Authorized Recovery Signature Database | Can contain any number of Certificates and/or signatures |
| PKDefault | Default Platform Key | Read Only. Must contain a max of 1 certificate, and no signatures |
| KEKDefault | Default Key Exchange Key Database | Read Only. Can contain any number of Certificates (no signatures) |
| dbDefault | Default Authorized Signature Database | Read Only. Can contain any number of Certificates and/or signatures |
| dbxDefault | Default Forbidden Signature Database | Read Only. Can contain any number of Certificates and/or signatures |
| dbtDefault | Default Authorized Timestamp Signature Database | Read Only. Can contain any number of Certificates and/or signatures |
| dbrDefault | Default Authorized Recovery Signature Database | Read Only. Can contain any number of Certificates and/or signatures |

For information related to Secure Databases in HPE iLO, see
[Managing HPE BIOS resources](/docs/redfishservices/ilos/supplementdocuments/biosdoc/)

## Accessing Secure Boot Databases from Redfish

To access Secure Boot database resource from Redfish, perform a `GET` of the
`SecureBootDatabaseCollection` URI. This resource includes links to the members
of the collection, default & non-default as shown in the following example.

```text Generic GET request
GET /redfish/v1/Systems/{item}/SecureBoot/SecureBootDatabases/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#SecureBootDatabaseCollection.SecureBootDatabaseCollection",
    "@odata.etag": "W/\"C4D3BA70\"",
    "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases",
    "@odata.type": "#SecureBootDatabaseCollection.SecureBootDatabaseCollection",
    "Description": "SecureBoot Databases View",
    "Name": "SecureBoot Databases Collection",
    "Members": [
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/PKDefault"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/KEKDefault"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbDefault"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbxDefault"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbtDefault"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbrDefault"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/PK"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/KEK"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/db"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbx"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbt"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbr"
        }
    ],
    "Members@odata.count": 12
}
```

Individual databases can be accessed using `GET` of their respective URIs.
A `GET` on
`/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/{@SecureBootDatabaseId}`
lists the certificates and signatures present under the respective
database as shown in the next example:

```text Generic GET request
GET /redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbDefault/
```

```json Response body
{
            "@odata.context": "/redfish/v1/$metadata#SecureBootDatabase.SecureBootDatabase",
            "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbDefault/",
            "@odata.type": "#SecureBootDatabase.v1_0_0.SecureBootDatabase",
            "Id": "dbDefault",
            "Certificates": {
                "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbDefault/Certificates/"
            },
            "DatabaseId": "dbDefault",
            "Description": "SecureBoot Database",
            "Name": "Default Authorized Signature Database",
            "Signatures": {
                "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/dbDefault/Signatures/"
            }
        },

```

Individual certificates and signatures can be accessed by performing `GET`
respectively of
`/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/{@SecureBootDatabaseId}/Certificates/{@CertificateId}`
and
`/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/{@SecureBootDatabaseId}/Signatures/{@SignatureId}`.

To ENROLL a certificate in a non-default database, perform `POST`
onto the certificate collection URI:
`/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/{@SecureBootDatabaseId}/Certificates/`

The following example enrolls a certificate in the Authorized signature
database (db) of an iLO 6 based server.

:::success TIP
Refer to this
[TIP](/docs/redfishservices/ilos/supplementdocuments/securityservice/#importing-a-signed-certificate-into-ilo)
to convert a CRLF terminated file into a string.
:::

```text Generic POST request
POST /redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/{@SecureBootDatabaseId}/Certificates/
```

```json
{
    "CertificateString": "-----BEGIN CERTIFICATE-----\nMIIEXTCCA0WgAwIBAgIUILNZIX8LjJ/AMdsrsUl5eiGWY5kwDQYJKoZIhvcNAQEL\nBQAwgb0xCzAJBgNVBAYTAkZSMSMwIQYDVQQIDBpQcm92ZW5jZS1BbHBlcy1Db3Rl\nFooIs\n HappyjEZMBcGA1UEBwwQU29waGlhLUFudGlwb2xpczEMMAoGA1UECgwDSFBF\nMRAwDgYDVQQLDAdDb21wdXRlMScwJQYDVQQDDB50b3lib3guZXRjLmZyLmNvbW0u\naHBlY29ycC5uZXQxJTAjBgkqhkiG9w0BCQEWFmZyYW5jb2lzLmRvbnplQGhwZS5j\nb20wHhcNMjEwNDE0MTQxMzQxWhcNMzEwNDEyMTQxMzQxWjCBvTELMAkGA1UEBhMC\nRlIxIzAhBgNVBAgMGlByb3ZlbmNlLUFscGVzLUNvdGUgZCdBenVyMRkwFwYDVQQH\nDBBTb3BoaWEtQW50aXBvbGlzMQwwCgYDVQQKDANIUEUxEDAOBgNVBAsMB0NvbXB1\ndGUxJzAlBgNVBAMMHnRveWJveC5ldGMuZnIuY29tbS5ocGVjb3JwLm5ldDElMCMG\nCSqGSIb3DQEJARYWZnJhbmNvaXMuZG9uemVAaHBlLmNvbTCCASIwDQYJKoZIhvcN\nAQEBBQADggEPADCCAQoCggEBAMhZynGPIBE4VhIqjka9RoGJ1gSrYMceHOcj7Qzz\nGqbBoPwD3H0QZYgVczrAkwrLM229oRzpPfjc4OAZXP8ZE6mgkFAtqEPyf1V8G2/L\nKqIIIWoW8Pk158FgN/+IJAgTx3HkKg3Fg8r/7gaFItCuf9isvOqvcX7F3jur+g52\njKVqWGNlfKWVHZ5EEUQm6Yubt0kmflZ1FAgFMYYWZDVfTY63yrndgHIXDhGeqI00\nTz4KLIXltWEjXQHICzl14GOv1flTAJsjaH+Psryd0hFinJMyu6qtF8NCzVhbJCVn\nFtrIDOzU1cjTXrNt4sVyzRImYjAdB3nIEnY1DBS+pFbuTQ8CAwEAAaNTMFEwHQYD\nVR0OBBYEFB98Krx8h49jHuNMb5NNQTgRfwfZMB8GA1UdIwQYMBaAFB98Krx8h49j\nHuNMb5NNQTgRfwfZMA8GA1UdEwEB/wQFMAMBAf8wDQYJKoZIhvcNAQELBQADggEB\nAE1YqMXR1VemcmFSsYWzjQEo37Os1YtkpJcuEQALAYeRWCpyWjiDnId7ThxP8GJ+\nryTbv1AtHf32QKXvNr/h6zGpKfvGb45ukMJeSDOH4ftI+f9bgRMbTuS5what3Db6\nYCH0/iAyelL3wA+sT86jsp+AqMoxgdOeCEM093sLtFTBvymm+yoqH6aFmz1l7ZwT\nJci63n1K9flpt9qlHifdlJkdZ2TVAbspoULvmlA1yeqG9j6OgPLBvB/fr+cz4p/b\nB6ct0HDuXtSoWPAiRALXF5S50Zvp5Y4Z8H+6Z02akGE68xYCE1WeNC85LuqflifD\nSXPaDWGLb9dFM2VkSjo9P7c=\n-----END CERTIFICATE-----\n",
"CertificateType": "PEM"
}
```

To REMOVE a certificate/signature in the non-default database,
perform `DELETE` on the particular member from
Certificate/Signature collection URI –
`/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/{@SecureBootDatabaseId}/Certificates/{@CertificateId}`
Or
`/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/{@SecureBootDatabaseId}/Signatures/{@SignatureId}`
