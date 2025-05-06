---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
seo:
  title: Concepts | Performing actions
---

# Performing actions

Redfish resources usually support HTTP GET requests to retrieve the
current state. Modifications and deletions can be performed against
eligible resources with HTTP POST, PUT, PATCH, or DELETE.

The exhaustive list of permitted requests on a given resource is in the
`Allow` header of the GET response. The following example retrieves the
possible actions on the BIOS **current** attributes.

  {% tabs %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --head --user ilo-user:password \
     'https://ilo-ip/redfish/v1/Systems/1/Bios'  | grep Allow
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u user -p password
ilorest select Bios.
ilorest rawhead '/redfish/v1/Systems/1/Bios'  | grep Allow
ilorest logout
```
  
  {% /tab %}
{% tab label="Response body" %}

```text Response body
Allow: GET, HEAD
```
  
  {% /tab %}
  {% /tabs %}
The following example retrieves the possible actions on the
BIOS **pending** attributes URI.

  {% tabs %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --silent --head --user ilo-user:password \
     'https://ilo-ip/redfish/v1/Systems/1/Bios/Settings'  | grep Allow
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u user -p password
ilorest select Bios.
ilorest rawhead '/redfish/v1/Systems/1/Bios/Settings'  | grep Allow
ilorest logout
```
  
  {% /tab %}
{% tab label="Response body" %}

```text Response body
Allow: GET, HEAD, POST, PUT, PATCH
```
  
  {% /tab %}
  {% /tabs %}
However, there are some resources that support other types of operations not
easily mapped to HTTP operations. For example, a power button is not readable
so you cannot `GET` its status. In this case, pressing the power button
is an action.

For this reason the
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.13.0.pdf" target="_blank">Redfish specification</a>
defines `Actions`. `Actions` are HTTP `POST` operations with a specifically
formatted JSON request including the operation to perform and potentially
parameters.  For instance, it is not enough to simply tell a server to reset,
but it is also necessary to specify the type of `reset`:
cold boot, warm boot, PCI reset, etc. Actions are often used when the
operation causes Management Controllers not just to update a value,
but to change system state.

In Redfish, the available actions that can be invoked are identified by a
`target` property in the resource's `Actions` object definitions.
Potential parameters with possible supported values are listed
with the annotation `Parameter@Redfish.AllowableValues`.

## Redfish standard action examples

The following example retrieves the list of possible actions from the PK
Secure Boot Database resource of an HPE iLO 6 based server.

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/PK/?$select=Actions
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure -u iloUser:password \
     --header "Content-Type: application/json" \
     --request POST --data '{"ResetKeysType": "ResetAllKeysToDefault"}' \
     https://ilo-ip//redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/PK/Actions/SecureBootDatabase.ResetKeys/  
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#SecureBootDatabase.SecureBootDatabase",
    "@odata.etag": "W/\"A80232AC\"",
    "@odata.id": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/PK/",
    "@odata.type": "#SecureBootDatabase.v1_0_0.SecureBootDatabase",
    "Actions": {
        "#SecureBootDatabase.ResetKeys": {
            "ResetKeysType@Redfish.AllowableValues": [
                "ResetAllKeysToDefault",
                "DeleteAllKeys"
            ],
            "target": "/redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/PK/Actions/SecureBootDatabase.ResetKeys/"
        }
    }
}
```
  
  {% /tab %}
  {% /tabs %}
The following example retrieves the possible actions of a
[PLDM for RDE](/docs/redfishservices/ilos/supplementdocuments/rdesupport/)
storage controller.

  {% tabs %}
{% tab label="cURL" %}

```text cURL
curl --insecure --silent --location \
     'https://ilo-ip/redfish/v1/Systems/1/Storage/DE00D000/?$select=Actions'  \
     --user demopaq:password | jq
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
  "@odata.etag": "\"17FB1ABA\"",
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE00D000",
  "@odata.type": "#Storage.v1_15_0.Storage",
  "Actions": {
    "#Storage.ResetToDefaults": {
      "ResetType@Redfish.AllowableValues": [
        "ResetAll",
        "PreserveVolumes"
      ],
      "target": "/redfish/v1/Systems/1/Storage/DE00D000/Actions/Storage.ResetToDefaults"
    }
  }
}
```
  
  {% /tab %}
  {% /tabs %}
## OEM Action extensions

The
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.13.0.pdf" target="_blank">Redfish specification</a>
allows OEMs to specify `Actions` objects under
their respective `Oem` sections. Those actions are invoked the same
way as standard actions with a POST request to the `target` URI
with allowable parameter values.

### Computer system standard and HPE OEM actions

The following example retrieves the list of standard and HPE specific actions
available in the `ComputerSystem` resource of an iLO based server.

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
/redfish/v1/Systems/1/?$select=Actions, Oem/Hpe/Actions/
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest

ilorest login <ip-ilo> -u <ilo-user> -p password
ilorest select ComputerSystem.
ilorest get Actions Oem/Hpe/Actions --json
ilorest logout

```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
    "@odata.etag": "W/\"390820E4\"",
    "@odata.id": "/redfish/v1/Systems/1/",
    "@odata.type": "#ComputerSystem.v1_17_0.ComputerSystem",
    "Actions": {
        "#ComputerSystem.Reset": {
            "ResetType@Redfish.AllowableValues": [
                "On",
                "ForceOff",
                "GracefulShutdown",
                "ForceRestart",
                "Nmi",
                "PushPowerButton",
                "GracefulRestart"
            ],
            "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/"
        }
    },
    "Oem": {
        "Hpe": {
            "Actions": {
                "#HpeComputerSystemExt.PowerButton": {
                    "PushType@Redfish.AllowableValues": [
                        "Press",
                        "PressAndHold"
                    ],
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.PowerButton/"
                },
                "#HpeComputerSystemExt.RestoreManufacturingDefaults": {
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.RestoreManufacturingDefaults/"
                },
                "#HpeComputerSystemExt.RestoreSystemDefaults": {
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.RestoreSystemDefaults/"
                },
                "#HpeComputerSystemExt.SecureSystemErase": {
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SecureSystemErase/"
                },
                "#HpeComputerSystemExt.ServerIntelligentDiagnosticsMode": {
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.ServerIntelligentDiagnosticsMode/"
                },
                "#HpeComputerSystemExt.ServerSafeMode": {
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.ServerSafeMode/"
                },
                "#HpeComputerSystemExt.SystemReset": {
                    "ResetType@Redfish.AllowableValues": [
                        "ColdBoot",
                        "AuxCycle"
                    ],
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SystemReset/"
                }
            }
        }
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### All HPE OEM actions

The following example retrieves all the HPE specific actions available
in an HPE iLO based server using the iLOrest Redfish client.

  {% tabs %}
{% tab label="iLOrest script" %}

```Bash iLOrest script
#!/usr/bin/bash

bmcIp="ilo-ip"
bmcUser="ilo-user"
bmcPassword="password"

ilorest="ilorest --nologo"
$ilorest logout &>/dev/null # Cleanup iLOrest cache, just in case

$ilorest login $bmcIp -u $bmcUser -p $bmcPassword
Types=$($ilorest types | awk '!/Collection/ && !/Type options:/ {print $0}' | tr -d '\r')

for t in $Types ; do
        echo "Processing ${t}"
        $ilorest select ${t}
        $ilorest get --json Oem/Hpe/Actions 2>/dev/null
        echo -e "Done\n"
done

$ilorest logout

```
  
  {% /tab %}
{% tab label="Output (Truncated)" %}

```text Output (Truncated)
Discovering data...Done
Processing AccountService.v1_5_0
{
  "Oem": {
    "Hpe": {
      "Actions": {
        "#HpeiLOAccountService.ImportKerberosKeytab": {
          "target": "/redfish/v1/AccountService/Actions/Oem/Hpe/HpeiLOAccountService.ImportKerberosKe
ytab/"
        }
      }
    }
  }
}
Done

Processing Bios.v1_0_0
Done

...

Processing VirtualMedia.v1_3_0
{
  "Oem": {
    "Hpe": {
      "Actions": {
        "#HpeiLOVirtualMedia.EjectVirtualMedia": {
          "target": "/redfish/v1/Managers/1/VirtualMedia/2/Actions/Oem/Hpe/HpeiLOVirtualMedia.EjectVi
rtualMedia/"
        },
        "#HpeiLOVirtualMedia.InsertVirtualMedia": {
          "target": "/redfish/v1/Managers/1/VirtualMedia/2/Actions/Oem/Hpe/HpeiLOVirtualMedia.InsertV
irtualMedia/"
        }
      }
    }
  }
}
Done

Processing Volume.v1_6_2
Done

Logging session out.

```
  
  {% /tab %}
  {% /tabs %}
### Manager HPE OEM actions

The following example lists the possible HPE OEM actions against an HPE iLO 5
(or later) management controller.

  {% tabs %}
{% tab label="Generic request" %}

```text Generic request
GET /redfish/v1/Managers/{{ManagerId}}/?$select=Oem/Hpe/Actions
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --silent --insecure --user ilo-user:password \
     'https://ilo-ip/redfish/v1/Managers/1/?$select=Oem/Hpe/Actions' | jq .
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get Oem/Hpe/Actions --json --selector Manager.
ilorest logout
```
  
  {% /tab %}
{% tab label="Body response" %}

```json Body response
{
  "@odata.context": "/redfish/v1/$metadata#Manager.Manager",
  "@odata.etag": "W/\"6BF85E52\"",
  "@odata.id": "/redfish/v1/Managers/1/",
  "@odata.type": "#Manager.v1_5_1.Manager",
  "Oem": {
    "Hpe": {
      "Actions": {
        "#HpeiLO.ClearHotKeys": {
          "target": "/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.ClearHotKeys/"
        },
        "#HpeiLO.ClearNVRAM": {
          "target": "/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.ClearNVRAM/"
        },
        "#HpeiLO.ClearRestApiState": {
          "target": "/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.ClearRestApiState/"
        },
        "#HpeiLO.DisableCloudConnect": {
          "target": "/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.DisableCloudConnect/"
        },
        "#HpeiLO.DisableiLOFunctionality": {
          "target": "/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.DisableiLOFunctionality/"
        },
        "#HpeiLO.EnableCloudConnect": {
          "target": "/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.EnableCloudConnect/"
        },
        "#HpeiLO.RequestFirmwareAndOsRecovery": {
          "target": "/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.RequestFirmwareAndOsRecovery/"
        },
        "#HpeiLO.ResetToFactoryDefaults": {
          "ResetType@Redfish.AllowableValues": [
            "Default"
          ],
          "target": "/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.ResetToFactoryDefaults/"
        }
      }
    }
  }
}

```
  
  {% /tab %}
  {% /tabs %}
### HPE iLO ClearRestApiState action

The following example clears the Redfish state of an HPE iLO 5 (or later)
management controller using its OEM specific action. An iLO reset is required.

{% admonition type="info" name="NOTE" %}
Refer to the
[Session authentication paragraph](/docs/concepts/redfishauthentication/#session-authentication)
to learn how to create a session token with cURL as used for the reset
action in the following example.
{% /admonition %}

  {% tabs %}
{% tab label="Generic ClearRestApiState request" %}

```text Generic ClearRestApiState request
POST /redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.ClearRestApiState/

Body: 
{} or 
none
```
  
  {% /tab %}
{% tab label="cURL" %}

```shell cURL
curl --insecure --location --user ilo-user:password \
     -X POST 'https://ilo-ip/redfish/v1/Managers/1/Actions/Oem/Hpe/HpeiLO.ClearRestApiState/'

curl --insecure --location 'ilo-ip/redfish/v1/Managers/1/Actions/Manager.Reset/' \
--header 'Content-Type: application/json' \
--header 'X-Auth-Token: 68757cb469035cf601d01968bbed8597' \
--data '{
    "ResetType": "ForceRestart"
}'
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login <ilo-ip> -u ilo-user -p password
ilorest clearrestapistate
ilorest iloreset
ilorest logout
```
  
  {% /tab %}
{% tab label="Clear API State body response" %}

```json Clear API State body response
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.21.SystemResetRequired"
            }
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
### PressAndHold HPE specific action

The following example performs a **PressAndHold** HPE specific action
on an HPE iLO based system using cURL and then iLOrest.

{% admonition type="info" name="NOTE" %}

As explained in the
[Redfish error responses and messages](/docs/concepts/errorresponses/)
section, successful responses are part of an `error` JSON object.

{% /admonition %}

  {% tabs %}
{% tab label="cURL" %}

```shell cURL
iloIP="ilo-ip"
iloUser="ilo-user"
iloPassword="password"
curl --insecure -u ${iloUser}:${iloPassword} \
     --header "Content-Type: application/json" \
     --request POST --data '{"PushType": "PressAndHold"}' \
     https://${iloIP}/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.PowerButton/  
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body

{
    "error":{
        "code":"iLO.0.10.ExtendedInfo",
        "message":"See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo":[{"MessageId":"Base.1.12.Success"}]
    }
}

```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest reboot PressAndHold
ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
### Auxiliary Power Cycle HPE specific action

The following example performs an HPE specific action that simulates
the removal of the physical power cables of an HPE ProLiant or Synergy server.
This action is sometime called **efuse**, **e-fuse** or
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_computersystem_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#actions") %} Auxiliary Power Cycle {% /link-internal %}.

{% admonition type="info" name="NOTE" %}

If the e-fuse action is sent while the server is off, iLO starts
immediately a reset. Otherwise, a server power off is needed to
trigger the e-fuse action.

{% /admonition %}

  {% tabs %}
{% tab label="Generic POST request" %}

```text Generic POST request

POST: /redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SystemReset/

```
  
  {% /tab %}
{% tab label="Request body" %}

```json Request body:

{
 "ResetType": "AuxCycle"
}

```
  
  {% /tab %}
{% tab label="Response when power is off" %}

```json Response when power is off
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.15.ResetInProgress"
            }
        ]
    }
}
```
  
  {% /tab %}
{% tab label="Response when power is On" %}

```json Response when power is On
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.15.SystemPowerOffRequired"
            }
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}

A standard computer reset example is presented in the
[Redfish examples](/docs/examples/redfishexamples/#server-reset)
section of this document.

{% /admonition %}

### User defined temperature threshold creation

The following example creates a user defined
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#actions-7") %} temperature threshold {% /link-internal %}
in the inlet ambient sensor object part of the `Chassis/Thermal/Oem/Hpe`
subtree. It is also present in the
[Examples](/docs/examples/redfishexamples/#configuring-user-defined-temperature-threshold)
section.

  {% tabs %}
{% tab label="Generic POST request" %}

```text Generic POST request
POST: /redfish/v1/Chassis/1/Thermal/Actions/Oem/Hpe/HpeThermalExt.SetUserTempThreshold/
```
  
  {% /tab %}
{% tab label="Request body" %}

```json Request body
{
    "SensorNumber": 1,
    "ThresholdValue": 40,
    "AlertType": "Warning"
}
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
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
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTES" %}

1. An iLO reset is required to take this action into account.
2. A `WarningUsertTempThreshold=40` property is created under
`/redfish/v1/Chassis/1/Thermal/Oem/Hpe`. If `AlerType` is `Critical`,
the created property is `CriticalUsertTempThreshold`.
3. An IML log record is created when the threshold is exceeded.

{% /admonition %}
