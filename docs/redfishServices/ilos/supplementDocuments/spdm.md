---
seo:
  title: iLO and the SPDM
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## iLO and the Security Protocol and Data Model (SPDM)

:::info NOTE
The Security Protocol and Data Model (SPDM) has been implemented in
iLO 6 version 1.10 and later. Previous versions of HPE iLO don't implement
this standard.
:::

The Security Protocol and Data Model (SPDM) enables zero trust between the
server management controller and option cards. It uses the
<a href="https://www.dmtf.org/standards/spdm"
target="_blank">DMTF standard specification</a>
to verify and authenticate option cads.

SPDM provides message exchange between the management controller and internal
server components, sequence diagrams, message formats, and other relevant
semantics for authentication and measurements of components and options cards.

Redfish defines the Component Integrity service which allows redfish clients
to view SPDM details. In HPE iLO 6 version 1.10 and later, the
`ComponentIntegrityCollection` URI is at `/redfish/v1/ComponentIntegrity/`.

HPE iLO uses SPDM to authenticate and verify the integrity of the following
component types within HPE servers:

- PCIe Option Cards (PCIe, OCP, Mezz slots)
- NVMe Drives attached directly to CPU

The authentication results are reported through:

- Integrate Management Log
    ([IML](/docs/redfishservices/ilos/supplementdocuments/logservices/#integrated-management-log))
- Security Log
    ([SL](/docs/redfishservices/ilos/supplementdocuments/logservices/#security-logs))
- [Redfish Alerts](/docs/concepts/redfishevents/#the-redfish-event-service)
- [SNMP](/docs/redfishservices/ilos/supplementdocuments/networkprotocols/#simple-network-management-protocol)
    traps
- iLO GUI (System Information-->Device Inventory)
- Redfish API (see next paragraph)

You can control the SPDM functionality through the iLO GUI
(Security-->Access Settings-->iLO) and the Redfish API of
the following resources:

- [Global Component Integrity](#global-component-integrity-property)
- [Component Integrity Policy](#component-integrity-policy)
- [Security Dashboard Security Parameter](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilosecuritydashboard)
- Device
    [Component Integrity Enablement](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#componentintegrityenabled) (Boolean)
- Device Component Integrity policy
- [Certificate Management](/docs/redfishservices/ilos/supplementdocuments/securityservice/)
    (`Import`, `Revoke`, `Delete` and `View`) <!-- It would be nice to explain which iLO certificate URIs are related to Component Integrity. The problem is that iLO does not provide the /redfish/v1/Managers/1/SecurityPolicy/SPDM mentioned in DSP2046 ! -->
- Measurements
    [control and monitor](#fetching-component-integrity-measurements)

Refer the HPE iLO 6 1.10 (or later)
<a href="https://www.hpe.com/support/ilo6" target="_blank">User Guide</a>
for detail on accessing the above resources via the iLO
Graphical User Interface.

## Global Component Integrity property

The `GlobalComponentIntegrity` from the `HpeSecurityService`
[resource](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpesecurityservice)
defaults to `disabled` as not all components are expected to support
SPDM. If you enable `GlobalComponentIntegrity`, HPE iLO authenticates
all applicable components in the server using SPDM. Every applicable
component will be reported to the security logs as verified successfully
or verified unsuccessfully.

<!-- Noticed: Shortly after an iLO reset, the `ComponentIntegrityCollection`
and the `ComponentIntegrity.v` types/instances 
are not available. It is required wait long enough for those instances to
appear in the `/redfish/v1/resourcedirectory` URI

It would be good to have the `types` command with a --refresh argument. 
See
https://github.hpe.com/intelligent-provisioning/python-restful-interface-tool/issues/834
-->

:::info NOTE

- When `GlobalComponentIntegrity` is set to `Disabled`
    the `ComponentIntegrityCollection` contains `0` members.
- When `GlobalComponentIntegrity` is set to `Enabled`, the
    `ComponentIntegrityCollection` contains a member for each
    applicable component (i.e. PCI slots, NVMe, etc).

:::

<!-- In the following sentence, it would be nice to provide a link with all
possible reasons why a verification is unsuccessful -->

Components which verified unsuccessfully contain additional details
explaining why (such as unsupported, missing root CA, unsupported algorithm,
etc). Any component type that is non-authentic or unsupported changes the
`OverallSecurityStatus` to `Risk` (property of the `HpeiLOSecurityDashboard`
[data type](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpeilosecuritydashboard)).

### Examples

The following example retrieves the `GlobalComponentIntegrity`
and the `ComponentIntegrityPolicy` properties. The response body
shows respective values as `Enabled` and `HaltBootOnSPDMFailure`.

```text generic GET request
GET /redfish/v1/Managers/1/SecurityService/?$select=GlobalComponentIntegrity,
ComponentIntegrityPolicy
```

```bash iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select HpeSecurityService.
ilorest get --json GlobalComponentIntegrity ComponentIntegrityPolicy
ilorest logout
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeSecurityService.HpeSecurityService",
    "@odata.etag": "W/\"EA306B0D\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService/",
    "@odata.type": "#HpeSecurityService.v2_4_0.HpeSecurityService",
    "ComponentIntegrityPolicy": "HaltBootOnSPDMFailure",
    "GlobalComponentIntegrity": "Enabled"
}
```

A system with the `GlobalComponentIntegrity` enabled and the
`ComponentIntegrityPolicy` set to `HaltBootOnSPDMFailure` returns a
`ComponentIntegrity` collection similar to one in the following example.

```Shell Generic GET request
GET /redfish/v1/ComponentIntegrity/
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select ComponentIntegrityCollection
ilorest get --json 
ilorest logout
```

```json Body response
{
    "@odata.context": "/redfish/v1/$metadata#ComponentIntegrityCollection.ComponentIntegrityCollection",
    "@odata.etag": "W/\"E589C4BF\"",
    "@odata.id": "/redfish/v1/ComponentIntegrity/",
    "@odata.type": "#ComponentIntegrityCollection.ComponentIntegrityCollection",
    "Description": "Collection of Component Integrity Resource Instances",
    "Name": "Component Integrity Collection",
    "Members": [
        {
            "@odata.id": "/redfish/v1/ComponentIntegrity/0/"
        },
        {
            "@odata.id": "/redfish/v1/ComponentIntegrity/TPM-1/"
        },
        {
            "@odata.id": "/redfish/v1/ComponentIntegrity/TPM-0/"
        }
    ],
    "Members@odata.count": 3
}

```

## Component Integrity Policy

The `ComponentIntegrityPolicy` property, part of the `HpeSecurityService`
[resource](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpesecurityservice),
controls the system boot policy based on the SPDM authentication
results of the devices in the server. The two policies are:

- `HaltBootOnSPDMFailure`: Select this option to halt the system boot
    during SPDM Authentication failure.
- `NoPolicy`: Select this option to boot the system in normal mode.

### Component Integrity Policy Examples

The following example changes the `ComponentIntegrityPolicy`
property to `HaltBootOnSPDMFailure`.

:::info NOTE
A system reset is required to fully validate the modification.
:::

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/SecurityService/
```

```json Body request
{
  "ComponentIntegrityPolicy": "HaltBootOnSPDMFailure"
}
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select HpeSecurityService.
ilorest set ComponentIntegrityPolicy="HaltBootOnSPDMFailure" --commit
ilorest logout
```

```json Body response
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.19.SystemResetRequired"
            }
        ]
    }
}
```

The following example retrieves the collection of SPDM capable devices.

```text Generic GET request
GET /redfish/v1/ComponentIntegrity/
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get --json --select ComponentIntegrityCollection
ilorest logout
```

```json Body response
{
  "Description": "Collection of Component Integrity Resource Instances",
  "Members": [
    {
      "@odata.id": "/redfish/v1/ComponentIntegrity/0/"
    },
    {
      "@odata.id": "/redfish/v1/ComponentIntegrity/TPM-1/"
    },
    {
      "@odata.id": "/redfish/v1/ComponentIntegrity/TPM-0/"
    }
  ],
  "Name": "Component Integrity Collection"
}
````

The following example retrieves the details of a storage controller
successfully verified by the SPDM protocol.

:::info NOTE
The response body contains a hash (measurement) of the four subcomponents
of this device.
:::

```text Generic GET request
GET /redfish/v1/ComponentIntegrity/0/
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select ComponentIntegrity.
ilorest get --json
ilorest logout
```

```json Body response
{
  "Actions": {
    "#ComponentIntegrity.SPDMGetSignedMeasurements": {
      "target": "/redfish/v1/ComponentIntegrity/0/Actions/ComponentIntegrity.SPDMGetSignedMeasurements/"
    }
  },
  "ComponentIntegrityType": "SPDM",
  "ComponentIntegrityTypeVersion": "1.0.0",
  "Id": "0",
  "Name": "Component Integrity",
  "SPDM": {
    "IdentityAuthentication": {
      "ResponderAuthentication": {
        "VerificationStatus": "Success"
      }
    },
    "MeasurementSet": {
      "MeasurementSpecification": "DMTF",
      "Measurements": [
        {
          "Measurement": "bFAugwVpDsvI+nIzLR5UKhFVcvsdtoDJCUMqmFrcZ7ZXVH7mLutuddwTJjIobW1d",
          "MeasurementHashAlgorithm": "SHA384",
          "MeasurementIndex": 0,
          "MeasurementType": "ImmutableROM"
        },
        {
          "Measurement": "bra/OePokl5gv+6GPL5xQEmtZbZdtiLjw5m8uLsoBU01UQ1Aa/cNV3LVR6hPSbU9",
          "MeasurementHashAlgorithm": "SHA384",
          "MeasurementIndex": 1,
          "MeasurementType": "ImmutableROM"
        },
        {
          "Measurement": "8xtzMjhnPMl26otluWiABFTALiLw4TXYWc1xFouXL1BV8Q+2/NvhX4Ol3uPuY+oe",
          "MeasurementHashAlgorithm": "SHA384",
          "MeasurementIndex": 2,
          "MeasurementType": "ImmutableROM"
        },
        {
          "Measurement": "KOOMyQvFKj5thv6mMMs89Z1GyZSpKz8/y8zv6E4nGWuy1UvAGukD/i9FuLLCIOrx",
          "MeasurementHashAlgorithm": "SHA384",
          "MeasurementIndex": 3,
          "MeasurementType": "ImmutableROM"
        }
      ]
    }
  },
  "TargetComponentURI": "/redfish/v1/Systems/1/Storage/DE040000"
}
```

:::success TIP
You can map the component URI (i.e. `/redfish/v1/ComponentIntegrity/0`)
with its device URI using the `TargetComponentURI`
(i.e. `/redfish/v1/Systems/1/Storage/DE040000` )
:::

## Fetching component integrity measurements

HPE iLO 6 and later supports fetching component integrity measurements
from devices, including the embedded Trusted Platform Module (TPM) and
the operating system. This operation can be performed regularly by Redfish
clients to verify the integrity of the components of a system.

A component integrity measurement is a technique to ensure the component of
a system has not been altered before its use or during run time.The
verification of the integrity Trusted Platform Modules (TPMs) is explained
in the [following paragraph](#fetching-tpm-measurements).

The fetch of such measurements is performed by POSTing an action to a
location specified in the `Actions` Redfish object of the members of
the `ComponentIntegrity` collection.

The following example fetches the component integrity measurements of
the storage controller used in the previous example. The optional
`Nonce` parameter is not provided in this example.

:::success Tip
The `SignedMeasurements` value in the body response of the next example,
corresponds to the concatenation of the four measurements mentioned in
the previous example.
:::

```text Generic request
POST /redfish/v1/ComponentIntegrity/0/Actions/
ComponentIntegrity.SPDMGetSignedMeasurements/
```

```json Body request
{}
```

```shell iLOrest
cat FetchComponentIntegrityMeasurements.json
{
        "/redfish/v1/ComponentIntegrity/0/Actions/ComponentIntegrity.SPDMGetSignedMeasurements/":
        {}
}


ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawpost FetchComponentIntegrityMeasurements.json  --response --silent | jq
ilorest logout
```

```json Body response
{
    "HashingAlgorithm": "SHA384",
    "SignedMeasurements": "bFAugwVpDsvI+nIzLR5UKhFVcvsdtoDJCUMqmFrcZ7ZXVH7mLutuddwTJjIobW1dbra/OePokl5gv+6GPL5xQEmtZbZdtiLjw5m8uLsoBU01UQ1Aa/cNV3LVR6hPSbU98xtzMjhnPMl26otluWiABFTALiLw4TXYWc1xFouXL1BV8Q+2/NvhX4Ol3uPuY+oeKOOMyQvFKj5thv6mMMs89Z1GyZSpKz8/y8zv6E4nGWuy1UvAGukD/i9FuLLCIOrx",
    "SigningAlgorithm": "ECDSA_ECC_NIST_P384",
    "Version": "1.0"
}
```

The following example specifies a valid 64 hexadecimal digits
`Nonce` parameter in the body of the action POST request.

```text Generic request
POST /redfish/v1/ComponentIntegrity/0/Actions/
ComponentIntegrity.SPDMGetSignedMeasurements/
```

```json Body request
{
    "Nonce": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadddddddddddddddddddddd"
}
```

```shell iLOrest
cat FetchComponentIntegrityMeasurements.json
{
        "/redfish/v1/ComponentIntegrity/0/Actions/ComponentIntegrity.SPDMGetSignedMeasurements/":
        {
            "Nonce": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaadddddddddddddddddddddd"
        }
}


ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawpost FetchComponentIntegrityMeasurements.json  --response --silent | jq
ilorest logout
```

```json Body response
{
    "HashingAlgorithm": "SHA384",
    "SignedMeasurements": "bFAugwVpDsvI+nIzLR5UKhFVcvsdtoDJCUMqmFrcZ7ZXVH7mLutuddwTJjIobW1dbra/OePokl5gv+6GPL5xQEmtZbZdtiLjw5m8uLsoBU01UQ1Aa/cNV3LVR6hPSbU98xtzMjhnPMl26otluWiABFTALiLw4TXYWc1xFouXL1BV8Q+2/NvhX4Ol3uPuY+oeKOOMyQvFKj5thv6mMMs89Z1GyZSpKz8/y8zv6E4nGWuy1UvAGukD/i9FuLLCIOrx",
    "SigningAlgorithm": "ECDSA_ECC_NIST_P384",
    "Version": "1.0"
}
```

The following example specifies an invalid `Nonce` parameter with 32
characters in the body of the POST action to retrieve the measurements.

:::success TIP
The `Nonce` property is an hexadecimal encoded set of bytes
(^[0-9a-fA-F]{64}$). As such, 64 characters are needed to obtain a
32 byte string. Providing less characters (i.e. 32) triggers the error
returned in the next example.
:::

```text Generic request
POST /redfish/v1/ComponentIntegrity/0/Actions/
ComponentIntegrity.SPDMGetSignedMeasurements/
```

```json Body request
{
    "Nonce": "0123456789abcdef0123456789abcdef"
}
```

```json Body response
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageArgs": [
                    "Invalid Length. Nonce should be 32 Bytes"
                ],
                "MessageId": "iLO.2.19.PropertyValueBadParam"
            }
        ]
    }
}
```

### Fetching TPM measurements

HPE iLO represents a TPM with two members (TPM-0, TPM-1)
in the `ComponentIntegrityCollection`.

`TPM-0` contains the Operating System Platform Component
Registers (PCRs) also called measurements. Each PCR corresponds
to an Operating System component. `TPM-1` contains iLO firmware PCRs.

<!--  The inclusion of a better description of PCRs are in these issue:
     https://github.hpe.com/HPE-iLO-Redfish-API/ilo5-rest-api-docs/issues/266
     https://github.com/HewlettPackard/hpe-ilo-redocly/issues/153

Reference docs:
- https://trustedcomputinggroup.org/resource/pc-client-specific-platform-firmware-profile-specification/
- https://trustedcomputinggroup.org/wp-content/uploads/TCG_PCClient_PFP_r1p05_v23_pub.pdf
-->

The following prerequisites must be satisfied to retrieve TPM-0 (OS)
and TPM-1 (iLO) PCRs:

<!-- The following is an attempt to map the BIOS prerequisites
with BIOS Redfish attributes.
     It MUST be reviewed and acknowledged by
     SME (i.e. mailto:sunilkbhagat@hpe.com) -->

- An Operating System (OS) must be installed on the server.
    No specific action required in the OS configuration.
- BIOS firmware needs to support TPM measurements. For information
    on "Configuring Trusted Platform Module (TPM) options", refer to
    <a href="https://support.hpe.com/hpesc/public/docDisplay?docId=sd00002648en_us"
    target="_blank">UEFI System Utilities User Guide for HPE ProLiant Gen11
    Servers, and HPE Synergy</a>.
  - `TPM Visibility` must be set to `Visible`
        (`TpmVisibility` Bios attribute)
  - `TPM UEFI Option ROM Measurement` must be set to `Enabled`
        (`TpmUefiOpromMeasuring` Bios attribute)
            <!-- SME need to validate this assertion -->
  - `Current TPM State` must be set to `Present and Enabled`
        (`TpmState` Bios attribute).
  - In the `Current TPM 2.0 Active PCRs` field select
        `SHA256 and SHA384` (`TpmActivePcrs` Bios attribute).

:::info NOTE
Inability to meet any of the above prerequisites results in the
[error message](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_ILO6_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_msgregs{{process.env.LATEST_ILO6_FW_VERSION}}/) `HashAlgNotSupported`
:::

The following example retrieves the required Bios attribute values.
Refer to this [section](/docs/examples/redfishexamples/#update-of-a-bios-attribute)
to modify a BIOS Redfish attribute.

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get TpmState TpmActivePcrs TpmUefiOpromMeasuring TpmVisibility  --json
ilorest 
```

```json Body response
{
  "TpmActivePcrs": "Sha256Sha384",
  "TpmState": "PresentEnabled",
  "TpmUefiOpromMeasuring": "Enabled",
  "TpmVisibility": "Visible"
}

```

The following example retrieves the properties of the TPM-0
(OS) component, including each PCR measurements.

```text Generic request
GET /redfish/v1/ComponentIntegrity/TPM-0
```

```shell iLOrest
ilorest rawget /redfish/v1/ComponentIntegrity/TPM-0
```

```json Body response
{
    "@odata.context": "/redfish/v1/$metadata#ComponentIntegrity.ComponentIntegrity",
    "@odata.etag": "W/\"C5CDEEF4\"",
    "@odata.id": "/redfish/v1/ComponentIntegrity/TPM-0/",
    "@odata.type": "#ComponentIntegrity.v1_2_0.ComponentIntegrity",
    "Id": "TPM-0",
    "Actions": {
        "#ComponentIntegrity.TPMGetSignedMeasurements": {
            "PCRSelection@Redfish.AllowableValues": [
                "PCR0",
                "PCR1",
                "PCR2",
                "PCR3",
                "PCR4",
                "PCR5",
                "PCR6",
                "PCR7",
                "PCR8",
                "PCR9",
                "PCR10",
                "PCR11",
                "PCR12",
                "PCR13",
                "PCR14",
                "PCR15",
                "PCR16",
                "PCR17",
                "PCR18",
                "PCR19",
                "PCR20",
                "PCR21",
                "PCR22",
                "PCR23"
            ],
            "target": "/redfish/v1/ComponentIntegrity/TPM-0/Actions/ComponentIntegrity.TPMGetSignedMeasurements/"
        }
    },
    "ComponentIntegrityEnabled": true,
    "ComponentIntegrityType": "TPM",
    "ComponentIntegrityTypeVersion": "2.0",
    "TPM": {
        "ComponentCommunication": {
            "Sessions": [
                {
                    "SessionType": "EncryptedAuthenticated"
                }
            ]
        },
        "MeasurementSet": {
            "Measurements": [
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "naZhFWfEeZaQ0F0WikEQSjp7bUnb49i6CiQvWFy0il+JcYOhK+DP9T17JAX19FXx",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 0
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "PfpLqGQQ8aBkDZl4e+C1Eup85Q1sOhmpM3ndfAVkunnw05Ju0feG0cI/clWBZVnw",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 1
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "XSZHiC3Bk/A5O86xVULBxqKYHSGxO833C0qSZwocA3JXmIiYTndQEr5xc1dzdzP9",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 2
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "UYkjsPlV0I2gd8lqq6Uiud7O3mHFmc6mxBiJz76krk1QUp2W/k0a/a+2Xn+VvyPE",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 3
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "4TZfOQ1OtgCR1TJafd3ZiIslw2/Bwv6PCCwXsgZCxCqMmNw2PND5N++M7RBxqKcO",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 4
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "jzhoOoFg9+A6MZtcWIajVRtGUMnMM8ga1AuTjUzp+uwIbwXo0I4alCvxPJZOeN8t",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 5
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "vlWselqExOMmioP1Okfd5Y7FHhr4aCKc+bPbK55wAcqM3siqLm2Ao1hdFx3MEU6W",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 6
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "mNRpANLuXO/Q2AbQzWXC5eHgSCz0TBOK83kBNztIywl2khyR8FuH869eRixLTUG8",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 7
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "1EUxH/Y6ED8eYVakuoKMl7tx6leNZlcLTzjNnowp6/ceOYqDl0+I5BgCTY/Wa+i8",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 8
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "m/upsy99EnJlVkpw/A3zcmUhdpUO4CGVUNtX34U0aNYeSSHui+noFJnC30Se0cxi",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 9
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 10
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 11
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 12
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 13
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "dpTC7siOfKIkERMxQYPK2Uoy6ZfrRkcyfWqCTU10jSrl52M6uU0BZcwJNJRUtyDZ",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 14
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 15
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 16
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "////////////////////////////////////////////////////////////////",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 17
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "////////////////////////////////////////////////////////////////",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 18
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "////////////////////////////////////////////////////////////////",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 19
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "////////////////////////////////////////////////////////////////",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 20
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "////////////////////////////////////////////////////////////////",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 21
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "////////////////////////////////////////////////////////////////",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 22
                },
                {
                    "LastUpdated": "2041-02-03T12:04:56Z",
                    "Measurement": "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 23
                }
            ]
        },
        "NonceSizeBytesMaximum": 4
    },
    "TargetComponentURI": "/redfish/v1/Managers/1"
}
```

The following example retrieves the properties of the TPM-1 (iLO firmware)
component, including each PCR measurements.

```text Generic request
GET redfish/v1/ComponentIntegrity/TPM-1
```

```json Body response
{
    "@odata.context": "/redfish/v1/$metadata#ComponentIntegrity.ComponentIntegrity",
    "@odata.etag": "W/\"88734FBA\"",
    "@odata.id": "/redfish/v1/ComponentIntegrity/TPM-1/",
    "@odata.type": "#ComponentIntegrity.v1_2_0.ComponentIntegrity",
    "Id": "TPM-1",
    "Actions": {
        "#ComponentIntegrity.TPMGetSignedMeasurements": {
            "PCRSelection@Redfish.AllowableValues": [
                "PCR0",
                "PCR8"
            ],
            "target": "/redfish/v1/ComponentIntegrity/TPM-1/Actions/ComponentIntegrity.TPMGetSignedMeasurements/"
        }
    },
    "ComponentIntegrityEnabled": true,
    "ComponentIntegrityType": "TPM",
    "ComponentIntegrityTypeVersion": "iLO6 1.45",
    "TPM": {
        "ComponentCommunication": {
            "Sessions": [
                {
                    "SessionType": "EncryptedAuthenticated"
                }
            ]
        },
        "MeasurementSet": {
            "Measurements": [
                {
                    "LastUpdated": "2023-06-21T14:44:07Z",
                    "Measurement": "ILROSYZBAd6EH3Oa9WXNQq/eaS+1k0E2EQHOQ0Ricr1lp8c0y9Siauh4idcNrHUY",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 0
                },
                {
                    "LastUpdated": "2023-06-21T14:44:07Z",
                    "Measurement": "AGpDpkZ8nmBEaPARBWZw8Z79G9Dt00kNm168n91YSlz6Asybevx9ra0IVOx08bx4",
                    "MeasurementHashAlgorithm": "SHA384",
                    "PCR": 8
                }
            ]
        },
        "NonceSizeBytesMaximum": 32
    },
    "TargetComponentURI": "/redfish/v1/Managers/1"
}
```

The following example fetches the PCR measurements from the `TPM-1`
component member. The payload of this request is described in
the following table:

| Property | Type | Description |
| --- | --- | --- |
| PCRSelection | string | Indicates the targeted PCR. Mandatory parameter with possible values: `PCR0` or `PCR8` |
| Nonce | string | A set of bytes as a hex-encoded string that is signed with the measurements. Length of the Nonce should be between 1 and 32 characters and is an optional parameter. |

<!-- The above Nonce definition says "that is signed with the measurements"
while the NOTE below says: "uses the provided nonce to sign the PCR"
     Which definition is right ??
 -->

:::info NOTE
HPE iLO uses the provided nonce to sign the PCR. If the nonce value is not
provided, HPE iLO creates the nonce internally.
:::

<!-- Need to explain the Body response of the following example and how to
use it: Sending multiple POST requests don't retrieve same measurement !
bug or feature ? -->

```text Generic request
POST /redfish/v1/ComponentIntegrity/TPM-1/Actions/
ComponentIntegrity.TPMGetSignedMeasurements
```

```json Body request
{
    "PCRSelection": "PCR0",
    "Nonce": "0123456789abcdef0123456789abcdef"
}
```

```json Body response
{
    "SignedMeasurements": "AAABAD9vDO/oGeWW6RJPCRxmLBkpJ767v1amDy1Ut0OLxTR7ILROSYZBAd6EH3Oa9WXNQq/eaS+1k0E2EQHOQ0Ricr1lp8c0y9Siauh4idcNrHUYMGQCMEjJtIdUlD7nNVf1cmsrBEIOGYGxBrv1mABReI6NsqFsU9r2MEvqD4C4CnMEessuTgIwIr13AuMDKXojzdKtc/eLa1RiQ+huggaYnt9Kz66Ke7aOMQpYsc2qKARy/Vx5C7r/"
}
```

Same example using iLOrest:

```shell iLOrest
cat GetTPM-1-Measurements.json
    {
        "/redfish/v1/ComponentIntegrity/TPM-1/Actions/ComponentIntegrity.TPMGetSignedMeasurements": {
            "PCRSelection": "PCR0",
            "Nonce": "0123456789abcdef0123456789abcdef"
    }


ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawpost --silent --response GetTPM-1-Measurements.json | jq
ilorest logout
```

```json Body response
{
    "SignedMeasurements": "AAABAD9vDO/oGeWW6RJPCRxmLBkpJ767v1amDy1Ut0OLxTR7ILROSYZBAd6EH3Oa9WXNQq/eaS+1k0E2EQHOQ0Ricr1lp8c0y9Siauh4idcNrHUYMGQCMEjJtIdUlD7nNVf1cmsrBEIOGYGxBrv1mABReI6NsqFsU9r2MEvqD4C4CnMEessuTgIwIr13AuMDKXojzdKtc/eLa1RiQ+huggaYnt9Kz66Ke7aOMQpYsc2qKARy/Vx5C7r/"
}
```
