---
seo:
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

Before accessing Redfish resources and properties, you must create an instance of a "Redfish Client Object". In a Python environment, the class constructor name used to create that object depends on the library you use: `redfish_client` in the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="blank"> DMTF Redfish Python library </a>, `RedfishClient` in the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> HPE Redfish Python library </a>...

The class constructor takes the Redfish service hostname/IP address, login username, and password or valid certificate as arguments. The class also initializes a login session, gets systems resources, and message registries as shown in the simple example below derived from <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_redfish.py" target="_blank"> this one </a>.

:::warning Warning
The DMTF Redfish Python library and the HPE Redfish Python library cannot co-exist in the same Python environment. You should uninstall one before installing the other one.
:::

## Reading BIOS current settings

GET the current BIOS configuration:

```shell cURL
curl --insecure -u username:password --location \
     https://{iLO}/redfish/v1/systems/1/bios/settings/ 
```

```python HPE python-ilorest-library
# Make sure the DMTF redfish library is not loaded before loading
# the HPE python-ilorest-library:
# pip uninstall redfish
# pip install python-ilorest-library

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
# Make sure the HPE python-ilorest-library library is not loaded before loading
# the DMTF library:
# pip uninstall python-ilorest-library
# pip install redfish

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

### Updating the BIOS settings example

The minimum required session ID privileges is `Configure`.

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

## Reset BIOS Settings

UEFI BIOS Supports a POST action to reset settings.

```json
"Actions": {
  "#Bios.ResetBios": {
    "target": "/redfish/v1/Systems/1/Bios/Settings/Actions/Bios.ResetBios"
  }
}
```

> The body of the POST should contain

```json
{
  "ResetType" : "default"      
}
```
> or

```json
{  
  "ResetType" : "default.user"
} 
```

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
