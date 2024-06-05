---
seo:
  title: BIOS data model
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# The standard Redfish BIOS data model

This section presents the standard Redfish UEFI/BIOS data model.
Refer to the [HPE Bios](/docs/redfishservices/ilos/supplementdocuments/biosdoc/)
section for detail on BIOS/UEFI resources in HPE iLO based servers.

UEFI/BIOS resources are formatted differently than most other resources.
BIOS resources do conform to a schema type as all Redfish objects do (<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.4_0.pdf" target="_blank">Redfish data model specification</a>).

However, BIOS settings vary widely across server types and BIOS revisions,
so it is extremely difficult to publish a standard schema defining all the
possible BIOS setting properties. Furthermore, it is not possible to
communicate some advanced settings such as inter-setting dependencies,
and menu structure in json-schema. Therefore, BIOS resources are defined
in specific schemas called **Registries**.

## BIOS attribute registry overview

### Attribute registry

The BIOS URI entry point (`/redfish/v1/Systems/{ComputerSystemId}/`)
has a property called `AttributeRegistry`. This property indicates the name
and version of a registry file that defines the properties in the BIOS
configuration. It also includes information about interdependencies between settings.

Registry file links are listed in the `MessageRegistryFileCollection` which
standard [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#messageregistryfilecollection)
is `/redfish/v1/registries/`. In order to provide an easy reading to human beings,
registry files can be localized in several languages. Links contained in
the `MessageRegistryFileCollection` point to a location holding pointers
to the localized registry files. See example below.

Due to their size, BIOS Attribute Registries are compressed JSON resources(gzip), so the returned HTTP headers indicate a `Content-Encoding` of `gzip`. Redfish clients need to decompress the resource. This is done automatically in many clients, like
the <a href="https://www.postman.com/downloads/" target="_blank">Postman API platform</a>.

The following example follows the different steps to retrieve the
BIOS Attribute Registry of an HPE Gen11 server. The first step
retrieves the value of the `AttributeRegistry` filename property.

```text GET AttributeRegistry
GET /redfish/v1/systems/1/bios/?$select=AttributeRegistry
```

```json Response body
{
    "AttributeRegistry": "BiosAttributeRegistryA56.v1_1_10"
}
```

The second step retrieves the corresponding link provided by the
`MessageRegistryFileCollection`. The response body provides the list
of available languages for this file as well as their location.

```text GET request
GET /redfish/v1/Registries/BiosAttributeRegistryA56.v1_1_10
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#MessageRegistryFile.MessageRegistryFile",
    "@odata.etag": "W/\"8DC519F4\"",
    "@odata.id": "/redfish/v1/Registries/BiosAttributeRegistryA56.v1_1_10",
    "@odata.type": "#MessageRegistryFile.v1_0_4.MessageRegistryFile",
    "Id": "BiosAttributeRegistryA56.v1_1_10",
    "Description": "Registry Definition File for BiosAttributeRegistryA56.v1_1_10",
    "Languages": [
        "en",
        "ja",
        "zh"
    ],
    "Location": [
        {
            "Language": "en",
            "Uri": "/redfish/v1/registrystore/registries/en/biosattributeregistrya56.v1_1_10"
        },
        {
            "Language": "ja",
            "Uri": "/redfish/v1/registrystore/registries/ja/biosattributeregistrya56.v1_1_10"
        },
        {
            "Language": "zh",
            "Uri": "/redfish/v1/registrystore/registries/zh/biosattributeregistrya56.v1_1_10"
        }
    ],
    "Name": "BiosAttributeRegistryA56.v1_1_10 Message Registry File",
    "Registry": "BiosAttributeRegistryA56.v1_1_10"
}
```

The last step consists of following the link to the desired language.
The following example retrieves the English version of the Bios Attribute
registry and prints the response headers including the `Content-Encoding`
header. The response body of this example is in the next paragraph.

```text GET english attribute registry
GET /redfish/v1/registrystore/registries/en/biosattributeregistrya56.v1_1_10
```

```text Response header
HTTP/1.1 200 OK
Allow: GET, HEAD
Cache-Control: no-cache
Content-Encoding: gzip
Content-type: application/json; charset=utf-8
Date: Thu, 15 Dec 2022 18:09:54 GMT
ETag: W/"49B2C84485480B0B0BF5B97395B586E1"
OData-Version: 4.0
Transfer-Encoding: chunked
X-Content-Type-Options: nosniff
X-Frame-Options: sameorigin
X-XSS-Protection: 1; mode=block
```

### BIOS attribute registry structure

The BIOS attribute registry contains four top-level arrays
(see example below):

- **Menus:** Array containing the BIOS attributes menus and their hierarchy.
- This can be used to build a user interface that resembles the local BIOS
- Setup, or to group
properties that are related (i.e. `ProcessorOptions` and `UsbOptions`).
- **Attributes:** Array containing BIOS attributes and information about the
- attributes such as type, values, etc.
- **Dependencies:** Array containing a list of dependencies of BIOS attributes.
  This includes inter-setting dependencies that might cause one BIOS setting to
  change its value or its `ReadOnly` property based on the value of another BIOS setting.
- **SupportedSystems** array containing a list of systems that this
attribute registry supports.
<!-- Need to move the following item elsewhere!
 - **BaseConfigs:** Array containing a list of default manufacturing settings of BIOS attributes. This is equivalent to reading the BaseConfigs resource and parsing the object named `default.`
-->

Each BIOS attribute in the attribute registry includes:

- a type (enum, string, numeric, or Boolean).
- possible values for enum type attributes.
- display strings (localized to the registry
  language) for the attributes and their possible values.
- help and warning text (localized).
- a location and a display order information,
  including menu hierarchy for an attribute.
- value limits, including maximum, minimum, and step values
  for numeric attributes, and minimum and maximum character
  lengths, as well as regular expressions for string attributes.
- other meta-data.

:::info NOTE
Attribute names/enum values cannot start with digits, per OData requirements.

```json
{
"AsrTimeoutMinutes": "TimeOut10",
"SerialConsoleBaudRate": "Baud115200",
}
```

:::

The following example retrieves the English version of the BIOS
registry of an HPE ProLiant Gen11 system (response body truncated).

```text Generic request
GET /redfish/v1/registrystore/registries/en/biosattributeregistrya56.v1_1_20
```

```json Response (truncated)
{
    "@odata.type": "#AttributeRegistry.v1_2_1.AttributeRegistry",
    "Id": "BiosAttributeRegistryA56.v1_1_10",
    "Name": "A56 BIOS Attribute Registry",
    "Language": "en",
    "OwningEntity": "HPE",
    "RegistryVersion": "v1_1_10",
    "Description": "This registry defines a representation of BIOS Attribute instances",
    "RegistryEntries": {
        "Menus": [
            {
                "MenuName": "BiosMainMenu",
                "DisplayName": "BIOS/Platform Configuration (RBSU)",
                "DisplayOrder": 1,
                "ReadOnly": false,
                "GrayOut": false,
                "MenuPath": "./"
            },
            {
                "MenuName": "SystemOptions",
                "DisplayName": "System Options",
                "DisplayOrder": 2,
                "ReadOnly": false,
                "GrayOut": false,
                "MenuPath": "./SystemOptions"
            },
            .......
        ],
        "Attributes": [
            ....
            {
                "AttributeName": "AdminName",
                "DisplayName": "Administrator Name",
                "HelpText": "Enter the server administrator's name text.",
                "ReadOnly": false,
                "GrayOut": false,
                "MaxLength": 28,
                "MinLength": 0,
                "Type": "String",
                "MenuPath": "./SystemOptions/ServerAssetText/AdminInfo",
                "DisplayOrder": 29,
                "ValueExpression": "^[\\ -\\~]*$",
                "DefaultValue": ""
            },
                    ........
        ],
        "Dependencies": [
            {
                "DependencyFor": "MicrosoftSecuredCoreSupport",
                "Type": "Map",
                "Dependency": {
                    "MapFrom": [
                        {
                            "MapFromAttribute": "TpmState",
                            "MapFromProperty": "CurrentValue",
                            "MapFromCondition": "EQU",
                            "MapFromValue": "NotPresent"
                        }
                    ],
                    "MapToAttribute": "MicrosoftSecuredCoreSupport",
                    "MapToProperty": "GrayOut",
                    "MapToValue": true
                }
            },
            .......
        ],
        "SupportedSystems": [
        {
            "ProductName": "ProLiant DL345 Gen11",
            "SystemId": "A56",
            "FirmwareVersion": "A56 v1.10"
        }
    ]
}
```

## BIOS current and pending areas

BIOS resources are located under the
[BIOS entry point](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_bios_resourcedefns{{process.env.LATEST_FW_VERSION}}/),
part of the `ComputerSystem` data type as per the
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.4_0.pdf" target="_blank">DMTF specification</a>.

The following example retrieves the BIOS end point using cURL and iLOrest from an HPE iLO 6 management controller.

```text cURL request
curl --insecure --location --silent \
     --user <ilo-user>:<password>        \
     'https://ilo-ip/redfish/v1/Systems/1/?$select=Bios' | \
     jq .
```

```bash iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get --json Bios --select ComputerSystem.
ilorest logout
```

```json Response body
{
  "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
  "@odata.etag": "W/\"8470AEE1\"",
  "@odata.id": "/redfish/v1/Systems/1/",
  "@odata.type": "#ComputerSystem.v1_17_0.ComputerSystem",
  "Bios": {
    "@odata.id": "/redfish/v1/systems/1/bios/"
  }
}
```

This BIOS entry point is also called the _current settings area_ or just
the _current area_ because it contains the BIOS attribute values in the
running system. All BIOS attributes name/value pairs that are referenced
in the [Attribute Registry](#attribute-registry) are grouped under
an `Attributes` Redfish object under the BIOS end point.

The next example retrieves the current `AdminName` BIOS attribute
of an HPE Gen11 server.

```text Generic request
GET /redfish/v1/systems/1/bios/?$select=Attributes/AdminName
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#Bios.Bios",
    "@odata.etag": "W/\"7D4F1B0E2903D1D1D138C05A3D0806B2\"",
    "@odata.id": "/redfish/v1/systems/1/bios/",
    "@odata.type": "#Bios.v1_0_4.Bios",
    "Attributes": {
        "AdminName": "John Deuf"
    }
}
```

The BIOS entry point contains a `SettingsObject}{}` resource containing a
link to a location called the BIOS _Pending settings area_ or
just _pending area_. In an HPE Gen11 server, this link points
to `/redfish/v1/Systems/1/Bios/Settings`. In an HPE CrayXD 255v
it points toward `/redfish/v1/Systems/Self/Bios/SD`.
This _pending area_ is used to change BIOS attributes
and described in the next paragraph.

### Changing BIOS attributes and understanding "@Redfish.Settings"

The BIOS [current settings](/docs/examples/redfishexamples/#reading-bios-current-settings)
area is read-only. However, the BIOS _pending area_ described
in the previous paragraph is read-write. The `Allow` response
header of a GET request to the the BIOS pending settings area
mentions that PATCH requests are valid against this link. PATCHes
to pending settings do not take effect until the server is reset.
Before the server is reset, the current and pending settings
are independently available.

During the server reset process, pending BIOS attributes are
verified and applied to the current settings only if they are valid.

After the server is reset, you can view any errors in
the `@Redfish.Settings` property of the current BIOS configuration object.

The following example retrieves the `@Redfish.Settings` object after a
**successful** transfer of the BIOS settings area to the current area.

:::attention Attention
After system reset, a **successful** transfer of BIOS
settings from the pending area to the current area results in a
**single** element in the `Messages` array of the `@Redfish.Settings`
containing the "Success" string.

This single `MessageId` element means that the global transfer process
succeeded.
:::

```text Generic GET request
GET /redfish/v1/systems/1/bios/?$select=@Redfish.Settings/Messages
```

```json Response body
{
    "@Redfish.Settings": {
        "Messages": [
            {
                "MessageId": "Base.1.0.Success"
            }
        ]
    },
    "@odata.context": "/redfish/v1/$metadata#Bios.Bios",
    "@odata.etag": "W/\"507C68EC90206D6D6D1F37F655EA55D6\"",
    "@odata.id": "/redfish/v1/systems/1/bios/",
    "@odata.type": "#Bios.v1_0_4.Bios"
}
```

The following example retrieves the `@Redfish.Settings` object after an
**unsuccessful** transfer of the BIOS settings area to the current area.

:::attention Attention
After a server reset, an **unsuccessful** transfer of BIOS setting
returns **several** elements in the `Messages` array of the `@Redfish.Settings`
object, containing the faulty attributes and the reason why they
generated an error.

You should note a "Success" `MessageId` element mentioning
that the global transfer went through although errors
occurred for some attributes.
:::

```text Generic request
GET /redfish/v1/systems/1/bios/?$select=@Redfish.Settings/Messages
```

```json Response body
{
    "@Redfish.Settings": {
        "Messages": [
            {
                "MessageId": "Base.1.0.Success"
            },
            {
                "MessageArgs": [
                    "UefiOptimizedBoot"
                ],
                "MessageId": "Base.1.0.PropertyUnknown",
                "RelatedProperties": [
                    "#/UefiOptimizedBoot"
                ]
            }
        ]
    },
    "@odata.context": "/redfish/v1/$metadata#Bios.Bios",
    "@odata.etag": "W/\"7D4F1B0E2903D1D1D138C05A3D0806B2\"",
    "@odata.id": "/redfish/v1/systems/1/bios/",
    "@odata.type": "#Bios.v1_0_4.Bios"
}
```

There are benefits to handling BIOS settings in this way:

- Enables offline components (for example, BIOS) to process
  changes to settings in a deferred manner.
- Allows current and pending values to remain available
  for review until the offline component processes the pending settings.
- Avoids the need for complex job queues.

Refer to the [BIOS Redfish examples](/docs/examples/redfishexamples/#bios-redfish-examples)
section for more examples.

## BIOS defaults and password

In addition to providing a method for modifying individual BIOS
attributes, the <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.4_0.pdf" target="_blank">Redfish specification</a>
allows a quick return to a default and well known BIOS
configuration (i.e. factory defaults). This operation
cannot be performed with the above method.

Moreover, for security reasons, the BIOS password is an
attribute that requires as well, a specific method to be modified.

Both the return to a default BIOS configuration and the change of the
BIOS password use special POST operations called _Redfish actions_.

:::info NOTE
Redfish services may implement both BIOS Redfish actions or only one or
zero. HPE Gen11 servers implement both.
:::

### Reset Bios settings action

The following example resets BIOS attributes to their defaults on an
HPE Superdome Flex 280 and an HPE iLO based server using the
`Bios.ResetBios` standard [Redfish action](/docs/concepts/performing_actions.md).

```text HPE Superdome Flex 280 BIOS reset
POST /redfish/v1/Systems/Partition0/Bios/Actions/Bios.ResetBios
````

```text iLO 6 based server BIOS reset
POST /redfish/v1/Systems/1/Bios/Actions/Bios.ResetBios/
```

```json Request body
{
}
```

:::info NOTE
The above example does not reset attributes and properties of
HPE OEM BIOS related resources (i.e. `TlsConfig`, `iScsi`, `Boot`, etc.).
Refer to the [HPE BIOS](/docs/redfishservices/ilos/supplementdocuments/biosdoc/#reset-bios-attributes-and-hpe-bios-resources)
section for a method to reset all BIOS related properties, including HPE OEM BIOS properties.
:::

### Change BIOS password  

The following example shows how to modify the UEFI/BIOS password on
systems implementing this action.

```text Generic BIOS password change
POST {Base URI of Bios resource}/Actions/Bios.ChangePassword
```

```json iLO 6 BIOS password change
POST /redfish/v1/Systems/1/Bios/Actions/Bios.ChangePassword
```

```json Request body
{
  "PasswordName": "Administrator | User",
  "OldPassword" : "OldPasswordText",
  "NewPassword" : "NewPasswordText"
}
```

## UEFI / BIOS Boot Settings

<!-- Need an introduction to Boot Settings to better
understand why it is important and how it related to
legacy BIOS boot, which is not supported anymore in Gen11 -->

### UEFI boot structured name string

<!-- Need an introduction with a reliable reference pointer
to the source of this "Structured Name String" in order to
understand why it is important -->

This UEFI boot structured name string is unique and represents
each UEFI boot option in the system. Software can identify and
manipulate devices using the string’s fixed format as defined
in this specification. Software can assume that the string unique
for each boot device in the UEFI BootOrder.

The UEFI boot structured name string is divided into sections
separated by ‘.’ characters, using the following format:

`<DeviceType>.<Location>.<Instance>.<Sub-instance>.<Qualifier>`

- **DeviceType**: The first section describes the device type
  (For example, `HD,` `CD,` `NIC,` and `PCI.`).
- **Location:** The second and the third section together
  describes the location of the device (For example, `Slot.7` or `Emb.4`).
- **Instance:** The third section is used with the `Location`
  section to describe the device location (for example, the slot
  number or embedded instance number).
- **Sub-instance:** The fourth section is optional,
  and is used as a sub-instance number in case of multiple
  boot options using the same instance. For example, this can
  be the port number for a multi-port NIC.
- **Qualifier:** The fifth section is optional,
  and describes the logical protocol (for example, IPv4, IPv6, and iSCSI).

### UEFI boot structured name string examples

<!-- Need to explain how the following table can be leveraged -->
Table 1 Examples

Name | Description
------------ | -------------
**HD.Emb.4.2** | The second instance of a hard drive in embedded SA controller bay 4
**NIC.Slot.7.2.IPv4** | Port 2 of a NIC in PCIe slot 7, which is enabled for PXE IPv4
**NIC.FlexLOM.1.1.IPv6** | Port 1 of an embedded NIC FlexLOM, which is enabled for PXE IPv6
**PCI.Slot.6.1** | PCIe card in slot 6
**HD.FrontUSB.2.2** | Second partition of a flash drive in front USB port 2

Table 2 Examples of currently supported Structured Boot Strings

Device Type | Location | Instance | Sub instance | Qualifier | Structure Boot String Examples
------------ | ------------- | ------------- | ------------- | ------------- | -------------
Smart Array Hard Drive | Embedded | Bay number | Incremental by LUN |  | HD.Emb.1.1
| | Slot | Slot number | Incremental by LUN |  | HD.Slot.1.1
Smart Array Controller | Embedded | Controller Instance | 1 |  | RAID.Emb.1.1
| | Slot | Slot number | 1 |  | RAID.Slot.1.1
Dynamic Smart Array Controller (Software RAID) | Embedded | 1 | 1 |  | Storage.Emb.1.1
| | Slot | Controller Instance | 1 |  | Storage.Slot.1.1
SATA Hard Drive | Embedded | SATA port # 1 |  |  | HD.Emb.1.1
SATA Controller | Embedded | Controller Instance | 1 |  | SATA.Emb.1.1
All other storage controllers (FC, SAS, etc.) | Embedded | 1 | 1 |  | Storage.Emb.1.1
| | Slot | Slot # | 1 |  | Storage.Slot.1.1
Network Adapter | LOM | NIC number, 1 for 1st NIC, 2 for 2nd NIC | Port number | IPv4 or IPv6 or iSCSI or FCoE | NIC.LOM.1.2.IPv4, NIC.LOM.1.2.IPv6
| | FlexibleLOM | FlexibleLOM number, 1 for 1st FlexLOM, 2 for 2nd FlexLOM | Port Number | IPv4 or IPv6 or iSCSI or FCoE | NIC.FlexLOM.2.1.IPv4, NIC.FlexLOM.2.1.IPv6
| | Slot | Slot Number | Port number | IPv4 or IPv6 or iSCSI or FCoE | NIC.Slot.3.2.Ipv4
Fiber Channel Adapter | Slot | Slot number | Port number | IPv4 or IPv6 or iSCSI or FCoE | PCI.Slot.3.1
OS Boot entry (such as Embedded HD.Slot.1.2 “Windows Boot Manager”) | Slot  | Embedded |  | Incremental | HD.Emb.1.2, HD.Slot.1.2
USB Key | Front USB | USB Port # | Incremental by LUN |  | HD.FrontUSB.1.1
| | Rear USB | USB Port # | Incremental by LUN |  | HD.RearUSB.1.1
| | Internal USB | USB Port # |  |  | HD.InternalUSB.1.1
| | iLO virtual media |  |  |  | HD.Virtual.1.1
ISO image | iLO virtual media |  |  |  | CD.Virtual.2.1
Virtual Install Disk (VID) | Embedded store | USB Port # |  |  | HD.VirtualUSB.1.1
Embedded User Partition | Embedded store | USB Port # |  |  | HD.VirtualUSB.2.1
USB CD/DVD | Front USB | USB Port # |  |  | CD.FrontUSB.1.1
| | Rear USB | USB Port # |  |  | CD.RearUSB.1.1
| | Internal USB | USB Port # |  |  | xxxxxxxx
SD card | SD slot | USB Port # |  |  | HD.SD.1.1
Floppy | Front USB, Rear USB | USB Port # |  |  | FD.FrontUSB.1.1, FD.RearUSB.1.1
Embedded UEFI Shell | Embedded | 1 | 1 |  | Shell.Emb.1.1
UEFI applications (embedded in the ROM firmware) (Diag, System Utility, etc..) | Embedded | 1 | Incremental |  | App.Emb.1.1, App.Emb.1.2, App.Emb.1.3
File | URL | Different URL Increased by 1 | 1 |  | File.URL.1.1
HPE RAM Disk Device | RAM Memory | 1 | Port number |  | RAMDisk.Emb.1.1
Special USB device class with Device Path: UsbClass(0xFFFF, 0xFFFF, 0xFF, 0xFF, 0xFF) | Any USB device in the system | 1 |  |  | Generic.USB.1.1
Empty slot, no device | Slot | Slot number | 1 |  | PCI.Slot.2.1
Unknown device | Embedded Slot Unknown location | Slot number or 1 | Incremental |  | Unknown.Slot.1.1, Unknown.Unknown.1.1
NVMe | Slot | Slot number | NVMe drive number (the number is based on bus enumeration sequence). |  | NVMe.Slot.1.1
NVMe | Embedded | Bay number | 1 (Each drive bay has 1 NVMe drive.) |  | NVMe.Emb.1.1
