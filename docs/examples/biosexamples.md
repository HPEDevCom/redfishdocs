---
title: BIOS examples
toc:
  enable: true
  maxDepth: 2
disableLastModified: true
---

# BIOS Redfish examples

:::info NOTE
Some examples in this section use a pseudo-code syntax for clarity. JSON pointer syntax is used to indicate specific properties.
:::

:::warning Warning
The [DMTF Redfish Python library](https://github.com/HewlettPackard/python-ilorest-library) and the [HPE Redfish Python library](https://github.com/HewlettPackard/python-ilorest-library) cannot co-exist in the same Python environment. You should uninstall one before installing the other one.
:::

Before accessing Redfish resources and properties, you must create an instance of `RedfishObject`. The class constructor takes the Redfish service hostname/IP address, login username, and password or valid certificate as arguments. The class also initializes a login session, gets systems resources, and message registries as shown in this simple [example](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_redfish.py).

## Reading BIOS current settings

GET the current BIOS configuration:

```shell cURL
curl --insecure -u username:password --location \
     https://{iLO}/redfish/v1/systems/1/bios/settings/ 
```

```python HPE python-ilorest-library
import sys
import json
from redfish import RedfishClient

# When running remotely, connect using the iLO address, iLO account name,
# and password to send https requests.
SYSTEM_URL = "https://{BMC}"
LOGIN_ACCOUNT = "username"
LOGIN_PASSWORD = "password"
ca_cert_data = {}

# Create a REST object
REDFISHOBJ = RedfishClient(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT, \
             password=LOGIN_PASSWORD, ca_cert_data=ca_cert_data)

# Login 
REDFISHOBJ.login()

# Get the resource you need.
response = REDFISHOBJ.get("/redfish/v1/systems/1/bios/")
print('Response: '+json.dumps(response.dict, indent=4, sort_keys=True))
```

```python DMTF redfish library
import sys
import json
from redfish import redfish_client

# When running remotely, connect using the iLO address, iLO account name,
# and password to send https requests.
SYSTEM_URL = "https://{BMC}"
LOGIN_ACCOUNT = "username"
LOGIN_PASSWORD = "password"

# Create a REST object
REDFISHOBJ = redfish_client(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT, \
             password=LOGIN_PASSWORD)

# Login
REDFISHOBJ.login()

# Get the resource you need.
response = REDFISHOBJ.get("/redfish/v1/systems/1/bios/")
print('Response: '+json.dumps(response.dict, indent=4, sort_keys=True))
```

```json Response (truncated)
 {
    "@Redfish.Settings": {
        "@odata.type": "#Settings.v1_0_0.Settings",
        "ETag": "AEE57FAE",
        "Messages": [
            {
                "MessageId": "Base.1.0.Success"
            }
        ],
        "SettingsObject": {
            "@odata.id": "/redfish/v1/systems/1/bios/settings/"
        },
        "Time": "2020-01-22T10:29:06+00:00"
    },
    "@odata.context": "/redfish/v1/$metadata#Bios.Bios",
    "@odata.etag": "W/\"1AEA5439DBE5E2E2E2C47B455D14D344\"",
    "@odata.id": "/redfish/v1/systems/1/bios/",
    "@odata.type": "#Bios.v1_0_0.Bios",
    "Actions": {
        "#Bios.ChangePassword": {
            "target": "/redfish/v1/systems/1/bios/settings/Actions/Bios.ChangePasswords/"
        },
        "#Bios.ResetBios": {
            "target": "/redfish/v1/systems/1/bios/settings/Actions/Bios.ResetBios/"
        }
    },
    "AttributeRegistry": "BiosAttributeRegistryU32.v1_2_36",
    "Attributes": {
        "AcpiHpet": "Enabled",
        "AcpiRootBridgePxm": "Enabled",
...
...
        "XptPrefetcher": "Auto",
        "iSCSIPolicy": "SoftwareInitiator"
    },
    "Id": "bios",
    "Name": "BIOS Current Settings",
    "Oem": {
        "Hpe": {
            "@odata.type": "#HpeBiosExt.v2_0_0.HpeBiosExt",
            "Links": {
                "BaseConfigs": {
                    "@odata.id": "/redfish/v1/systems/1/bios/baseconfigs/"
                },
                "Boot": {
                    "@odata.id": "/redfish/v1/systems/1/bios/boot/"
                },
                "KmsConfig": {
                    "@odata.id": "/redfish/v1/systems/1/bios/kmsconfig/"
                },
                "Mappings": {
                    "@odata.id": "/redfish/v1/systems/1/bios/mappings/"
                },
                "ServerConfigLock": {
                    "@odata.id": "/redfish/v1/systems/1/bios/serverconfiglock/"
                },
                "TlsConfig": {
                    "@odata.id": "/redfish/v1/systems/1/bios/tlsconfig/"
                },
                "iScsi": {
                    "@odata.id": "/redfish/v1/systems/1/bios/iscsi/"
                }
            },
            "SettingsObject": {
                "UnmodifiedETag": "W/\"214C50FBDC7DF1F1F137AF157AA42258\""
            }
        }
    }
}
```

## Changing pending settings and understanding @Redfish.Settings

The iLO RESTful API enables UEFI BIOS configuration.

The current settings configuration object for BIOS is read-only. This object contains a link to a `SettingsObject` resource that you can perform a PATCH operation on. This is the "pending settings". If you GET the `Settings`  resource, the returned information shows that you can perform PATCH operations. You can change properties and then perform a PATCH operation using the `Settings` URI. Changes to pending settings do not take effect until the server is reset. Before the server is reset, the current and pending settings are independently available. After the server is reset, the pending settings are applied and you can view any errors in the `@Redfish.Settings` property on the main object.

There are benefits to handling BIOS settings in this way:

* Enables offline components (for example, BIOS) to process changes to settings in a deferred
manner.
* Allows current and pending values to remain available for review until the offline component
processes the pending settings.
* Avoids the need for complex job queues.

### Updating the BIOS settings example

The minimum required session ID privileges is `Configure.`

```shell cURL
curl --insecure -u username:password  \
     --header "Content-Type: application/json" -X PATCH \
     --data "@data.json" \
     https://{iLO}/redfish/v1/Systems/1/bios/settings/ 
```

```json Content of data.json
{"Attributes":{"AdminName": "NewName"}}
```

Full <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/change_bios_setting.py" target="_blank">Redfish example</a>

## Reading BIOS Defaults example

The BIOS current configuration object contains a link to a separate read-only object, `BaseConfigs`, which lists the BIOS default settings. To get the BIOS `BaseConfigs` resource:

```shell
curl --include --insecure -u username:password --location \
      https://{iLO}/redfish/v1/systems/1/bios/BaseConfigs/ 
```

```json >Response (truncated)
{
    "@odata.context": "/redfish/v1/$metadata#HpeBaseConfigs.HpeBaseConfigs",
    "@odata.etag": "W/\"1BAB2532EC201D1D1DFED6F112252823\"",
    "@odata.id": "/redfish/v1/systems/1/bios/baseconfigs/",
    "@odata.type": "#HpeBaseConfigs.v2_0_0.HpeBaseConfigs",
    "BaseConfigs": [
        {
            "default": {
                "AcpiHpet": "Enabled",
                "AcpiRootBridgePxm": "Enabled",
                "AcpiSlit": "Enabled",
     ...
     ...
                "XptPrefetcher": "Auto",
                "iSCSIPolicy": "SoftwareInitiator"
            }
        }
    ],
    "Capabilities": {
        "BaseConfig": true,
        "BaseConfigs": false
    },
    "Id": "baseconfigs",
    "Name": "BIOS Default Settings"
}
```

Notice that `BaseConfigs` contains an array of default sets (or base configuration sets). Each base config set contains a list of BIOS properties and their default values. The default base config set contains the BIOS manufacturing defaults. It is possible for `BaseConfigs` to contain other sets, like `default.user` for user custom defaults.

### BIOS resources and attribute registry overview

The BIOS resources are formatted differently than most other resources. BIOS resources do conform to a schema type as all objects do. However, BIOS settings vary widely across server types and BIOS revisions, so it is  extremely difficult to publish a standard schema defining all the possible BIOS setting properties. Furthermore, it is not possible to communicate some of the advanced settings such as inter-setting dependencies, and menu structure in json-schema. Therefore, BIOS uses an **Attribute Registry.**

### Attribute registry

The BIOS Current Configuration resource has a property called `AttributeRegistry`. This property indicates the name and version of a registry file that defines the properties in the BIOS configuration.  It also includes information about interdependencies between settings.

Due to their size, BIOS Attribute Registries are compressed JSON resources (gzip), so the returned HTTP headers indicate a content-encoding of `gzip.` The REST client will need to decompress the resource. This is done automatically in many web clients (like the Postman
plugin).

### BIOS attribute registry structure

The BIOS attribute registries contains three top-level arrays:

* **Menus:** Array containing the BIOS attributes menus and their hierarchy. This can be used
(for instance) to build a user interface that resembles the local BIOS Setup, or to group
properties that are related such as `ProcessorOptions` and `UsbOptions.`
* **Attributes:** Array containing BIOS attributes and information about the attributes such as type, values, etc.
* **Dependencies:** Array containing a list of dependencies of BIOS attributes on this server.
This includes inter-setting dependencies that might cause one BIOS setting to change its
value or its `ReadOnly` property based on the value of another BIOS setting.
* **BaseConfigs:** Array containing a list of default manufacturing settings of BIOS attributes.
This is equivalent to reading the BaseConfigs resource and parsing the object named
`default.`

### BIOS attributes

Each BIOS attribute in the attribute registry includes:

* Type of each BIOS attribute (enum, string, numeric, or Boolean).
* Possible values for enum type attributes.
* Display strings (localized to the registry language) for the attributes and their possible values.
* Help text and warning text (localized).
* Location and display order information, including menu hierarchy for an attribute.
BIOS 25
* Value limits, including maximum, minimum, and step values for numeric attributes, and
minimum and maximum character lengths, as well as regular expressions for string attributes.
* And other meta-data.

## Example to reset all BIOS and boot order settings to factory defaults

1. Iterate through `/redfish/v1/Systems/` and choose a member `ComputerSystem.` Find the BIOS settings resource by following the `Bios` property link.
      * BiosSettingsURI = `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`
2. Obtain the BIOS and boot order pending settings.
      * GET @ `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`
3. Create a new JSON object with the `RestoreManufacturingDefaults` property and change the value to `Yes`. Be sure to include the top level JSON `Attributes` property.
      * JSON = {"Attributes":{"RestoreManufacturingDefaults":"Yes"}}
4. Make a PATCH request with the new JSON to the `BiosSettingsUri`. You only need to send the updated `RestoreManufacturingDefaults`
property in the request body.
      * `PATCH {"Attributes":{"RestoreManufacturingDefaults":"Yes"}} @ {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`

### Reverting BIOS UEFI settings to default example

```shell cURL
curl --insecure -u username:password  \
     --header "Content-Type: application/json" \
     -X POST --data "@data.json" \
     https://{iLO}/redfish/v1/Systems/1/bios/settings/ 
```

```json Content of data.json
{"Attributes":{"BaseConfig": "default"}}
```

For a full Redfish example click <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/bios_revert_default.py" target="_blank">here</a>

The BIOS Settings resource supports a special feature that allows you to revert BIOS settings
to default for the selected resource. This is accomplished by performing the PATCH or PUT
operation on a special property in the BIOS settings object: {"BaseConfig": "default"}.
This can be combined with other property sets to first set default values and then set specific
settings all in one operation.

:::info NOTE
The `BaseConfig` property might not already exist in the BIOS or BIOS Settings
resources. To determine if the BIOS resource supports reverting the settings to default, `GET` the
BIOS `BaseConfigs` resource, and view the `Capabilities` property.
:::

1. Iterate through `/redfish/v1/Systems/` and choose a member `ComputerSystem`. Find the BIOS settings resource by following the `Bios` property link.
      * BiosSettingsURI = `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`
2. Obtain the BIOS pending settings.
      * GET @ `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`
3. Create a new JSON object with the `BaseConfig` property and change the value to `default`. Be sure to include the top level JSON `Attributes` property.
      * JSON = {"Attributes":{"BaseConfig":"default"}}
4. Make a PUT request with the new JSON to the `BiosSettingsUri`. You only need to send the updated `BaseConfig`
property in the request body.
      * `PUT {"Attributes":{"BaseConfig":"default"}} @ {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`

When the sever is reset, the BIOS UEFI settings are reverted to default.

:::info NOTE

* You might also view the default values for BIOS settings by finding the resource type `HpeBaseConfigs.`
* `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/BaseConfigs`
* `BaseConfig` can be combined with other property values to first reset everything to default
and then apply some specific settings in one operation.
:::

## Enabling BIOS UEFI Secure Boot example

The minimum required session ID privileges is `Configure.`

```shell cURL
curl --insecure -u username:password  \
     --header "Content-Type: application/json" \
     -X PATCH --data "@data.json" \
     https://{iLO}/redfish/v1/Systems/1/SecureBoot/ 
```

```json Contents of data.json
    {"SecureBootEnable":true}
```

For a full Redfish example click here: <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/enable_secure_boot.py" target="_blank">enable_secure_boot.py</a>

1. Iterate through `/redfish/v1/Systems/` and choose a member ComputerSystem. Find a child
resource of type `HpSecureBoot` that allows `PATCH` operations (there might be more than
one, but for this exercise, choose the first one).

* `{ilo-ip-address}/redfish/v1/Systems/1/SecureBoot/`

2. Obtain the secure boot settings.

* `GET {ilo-ip-address}/redfish/v1/Systems/1/SecureBoot/`

3. Create a new JSON object with the `SecureBootEnable` property changed to `{"SecureBootEnable":true}.`

4. Update the secure boot settings. Send the updated `SecureBootEnable`
property in the request body.

* `PATCH {ilo-ip-address}/redfish/v1/Systems/1/SecureBoot/`

When the sever is reset, the boot settings are validated and adopted.
