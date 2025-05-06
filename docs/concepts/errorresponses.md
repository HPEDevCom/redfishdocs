---
seo:
  title: Redfish error responses and messages
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## Redfish error responses and messages

Redfish error responses and messages appear in
several places in the Redfish RESTful API:

* Immediate responses to an HTTP operation.
* Within `@Redfish.Settings` objects when external providers,
  such as
  [BIOS](/docs/concepts/biosdatamodel/#changing-bios-attributes-and-understanding-redfishsettings),
  processed the settings (i.e. during reboot) and
  want to communicate the status in the model.

## Response messages to HTTP operations

As mentioned in the <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.6.0.pdf" target="_blank">Error responses paragraph</a>
of the Redfish specification:

_HTTP status codes often do not provide enough information to enable
deterministic error semantics. .... Redfish services may provide
multiple error responses in the HTTP response. .... Error responses are
defined by an extended error resource, represented as a single JSON
object with a property named `error` ...._

:::info NOTE
The `error` JSON object may contain the description of a successful
response code (HTTP 200, OK). A `Success` string in an `error` object
may seem antinomic. However, this is an OpenData requirement.

The following successful PATCH request against an iLO based server
returns an HTTP 200 code and an `error` JSON object with a single
explicit `MessageId` containing the `Success` string.
:::

```text Generic PATCH request
PATCH: /redfish/v1/Chassis/1

body: {"LocationIndicatorActive": true}
```

```shell cURL
curl --location --include \
     --request PATCH 'ilo-ip/redfish/v1/Chassis/1' \
     --header 'OData-Version: 4.0' \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: 8e512f98d9323bee69b6cb9535e1cc4d' \
     --data-raw '{"LocationIndicatorActive": true}'
```

```text Return code and response body
HTTP/1.1 200 OK

{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.12.Success"
            }
        ]
    }
}
```

### Message responses and registries

In case of an unsuccessful request (HTTP 400), Redfish returns valuable
information in the `error` object to troubleshoot the problem. This paragraph
uses a faulty attempt to set the location indicator LED of an iLO based
chassis to the `Lit` value although this
[property](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_computersystem_resourcedefns{{process.env.LATEST_FW_VERSION}}/#locationindicatoractive)
is a Boolean, not a string.

```shell cURL
curl --location --request PATCH 'ilo-ip/redfish/v1/Chassis/1' \
--header 'OData-Version: 4.0' \
--header 'Content-Type: application/json' \
--header 'X-Auth-Token: 8e512f98d9323bee69b6cb9535e1cc4d' \
--data-raw '{"LocationIndicatorActive": "Lit"}'
```

```text Return code and response body
HTTP/1.1 400 Bad Request

{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageArgs": [
                    "\"Lit\"",
                    "LocationIndicatorActive"
                ],
                "MessageId": "Base.1.12.PropertyValueTypeError"
            }
        ]
    }
}
```

The `error` object contains a `code` property that can be interpreted using the
[error messages](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_msgregs{{process.env.LATEST_FW_VERSION}}/)
section of this documentation. The `extendedIfo` message invites you
to look at the `@Message.ExtendedInfo` array property.

This array contains at least one `MessageId` property which can be interpreted,
again, using the [error message](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_msgregs{{process.env.LATEST_FW_VERSION}}/)
definitions. In this particular example the array contains only one element
with the following message : `The value %1 for the property %2 is not valid`.
You need to replace `%1` and `%2` in this message with the two members of the
`MessageArgs` array of the original `error` object: `Lit` and
`LocationIndicatorActive`. With this substitution, the final error
message becomes:

`The value "Lit" for the property "LocationIndicatorActive" is not valid`

This flow can be performed programmatically using the Redfish message
registries. For that purpose, you need first to parse the
`"MessageId": "Base.1.12.PropertyValueTypeError"` property
value into the following three fields:

* _RegistryName_ (`Base`)
* _MajorVersion.MinorVersion_ (`1.12`)
* _RegistryKey_ (`PropertyValueTypeError`)

The `/redfish/v1/Registries` standard resource URI contains a member
pointing to the _RegistryName_ value: `/redfish/v1/Registries/Base/`.
This link contains the URI of the registry file:
`/redfish/v1/RegistryStore/registries/en/Base.json`. This file contains
the list of all possible messages, and thus it contains one entry
describing the `PropertyValueTypeError` message.

:::info NOTE
In order to minimize the volume of message registry files
embedded in the management controller, as well as on the network,
these files are compressed. Your Redfish client need to be
able to decompress it on the fly if needed.
:::

The following example retrieves the `Base.json` registry file,
decompresses it and extracts the `PropertyValueTypeError` entry.

```shell cURL
curl --silent --location --output -  --compressed \
     --request GET 'ilo-ip/redfish/v1/RegistryStore/registries/en/Base.json' \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: 915913b46e32121630341150a1550625' | \
     jq '.Messages.PropertyValueTypeError'
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest  rawget '/redfish/v1/RegistryStore/registries/en/Base.json' 2>/dev/null \
         | jq '.Messages.PropertyValueTypeError'
ilorest logout
```

```json Output
{
  "Description": "The property value contains an incorrect property type. For example, a number value for a string property type.",
  "Message": "The value %1 for the property %2 is the incorrect property type.",
  "MessageSeverity": "Warning",
  "NumberOfArgs": 2,
  "ParamTypes": [
    "string",
    "string"
  ],
  "Resolution": "If the operation did not complete, correct the property value in the request body and resubmit the request.",
  "Severity": "Warning"
}
```

### Interpreting the "@Redfish.Settings" object

Some external Redfish providers like the BIOS subsystem require a two
step process to modify their settings:

1. A POST, PATCH or PUT request toward a **settings area**, also known as
   **_pending area_**.
2. A reset of the server during which the content of the settings area
  is analyzed, validated (or not) and transferred into
  the **current settings** area.

Refer to the
[BIOS data model](/docs/concepts/biosdatamodel/#bios-current-and-pending-areas)
section for more information.

The following paragraphs depict first, a successful modification of
BIOS settings and then an unsuccessful example.

#### Successful example

The following example sends a PATCH request to the settings area of the BIOS
subsystem of an HPE iLO based server. It prints the response body of the
request, resets the server and fetches the `@Redfish.Settings` object from
the current BIOS area after the reset.

The analysis of the PATCH request response body of the pending settings
area is similar to what has been explained in the previous paragraph:
A `@Message.ExtendedInfo` object containing a `SystemResetRequired`
value is returned with the following description from the
[message registry](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_msgregs{{process.env.LATEST_FW_VERSION}}):
_"One or more properties were changed and will not take effect until
system is reset."_

```shell cURL
curl --location --request PATCH 'ilo-ip/redfish/v1/Systems/1/Bios/Settings/' \
--header 'Content-Type: application/json' \
--header 'X-Auth-Token: d63cb1348656f7e7909d0bbd939a42d5' \
--data-raw '{
    "Attributes": {
        "AdminName": "John Deuf",
        "AdminEmail": "john.deuf@koulapic.com",
        "AdminPhone": "+3367890123"
    }
}'
```

```json Response body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.15.SystemResetRequired"
            }
        ]
    }
}
```

Then, the required system reset can be easily performed with the
iLOrest command line tool.

```text Generic request
POST: /redfish/v1/Systems/1/Actions/ComputerSystem.Reset/

Body: 
{
    "ResetType": "ForceRestart"
}
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest reboot ForceRestart
ilorest logout
```

After system reset is performed, a GET of the current BIOS area
returns an `@Redfish.Settings` object containing a single `MessageId`
property with value: `Success`. This message means that all the
properties of the PATCH request have been successfully verified and
applied to the current settings.

```shell Generic GET request
GET /redfish/v1/Systems/1/Bios/ | select "@Redfish.Settings"
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
iilorest rawget '/redfish/v1/Systems/1/bios'  | \
         jq -r '{"@Redfish.Settings": ."@Redfish.Settings"}'
ilorest logout
```

```json Response body
{
  "@Redfish.Settings": {
    "@odata.type": "#Settings.v1_0_0.Settings",
    "ETag": "E8C57FBC",
    "Messages": [
      {
        "MessageId": "Base.1.0.Success"
      }
    ],
    "SettingsObject": {
      "@odata.id": "/redfish/v1/systems/1/bios/settings/"
    },
    "Time": "2023-01-23T13:18:35+00:00"
  }
}
```

#### Unsuccessful example

The following example performs a PATCH request with three properties
against the BIOS subsystem of an HPE iLO based server, and containing
two errors among the last two properties:

* The `AdminName` property has no error.
* The `Dhcpv8` property does not exist.
* The `Ipv8SubnetMask` does not exists.

Similarly to the previous successful example, the response body contains a
`SystemResetRequired` message stating that all the modifications have
successfully patched the BIOS pending area.

```shell Generic PATCH request
PATCH /redfish/v1/Systems/1/Bios/

Body:
{
    "Attributes": {
        "AdminName": "Foo Bar",
        "Dhcpv8": "Enabled",
        "Ipv8SubnetMask": "255.255.252.0"
    }
}
```

```json Response body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.15.SystemResetRequired"
            }
        ]
    }
}
```

Following the required system reset a GET request of the current BIOS area
returns a `@Redfish.Settings` object containing several items in
the `Messages` array.

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
iilorest rawget '/redfish/v1/Systems/1/bios'  | \
         jq -r '{"@Redfish.Settings": ."@Redfish.Settings", AdminName: .Attributes.AdminName}'
ilorest logout
```

```json Response body
{
  "@Redfish.Settings": {
    "@odata.type": "#Settings.v1_0_0.Settings",
    "ETag": "99BA0F74",
    "Messages": [
      {
        "MessageId": "Base.1.0.Success"
      },
      {
        "MessageArgs": [
          "Dhcpv8"
        ],
        "MessageId": "Base.1.0.PropertyUnknown",
        "RelatedProperties": [
          "#/Dhcpv8"
        ]
      },
      {
        "MessageArgs": [
          "Ipv8SubnetMask"
        ],
        "MessageId": "Base.1.0.PropertyUnknown",
        "RelatedProperties": [
          "#/Ipv8SubnetMask"
        ]
      }
    ],
    "SettingsObject": {
      "@odata.id": "/redfish/v1/systems/1/bios/settings/"
    },
    "Time": "2023-01-23T14:05:50+00:00"
  },
  "AdminName": "Foo Bar"
}
```

The first `MessageId` contains a `Success` value informing that the analysis
of the settings area has completed successfully. However, this does not mean
that all the attributes in the list were valid.

The next two `Messages` elements explain clearly that
`Dhcpv8` and `Ipv8SubnetMask` are unknown properties. Hence they cannot be
transferred in the BIOS current area.

However, the `AdminName` property is not mentioned in the `@Redfish.Settings`
object and has been successfully in the current BIOS area.
