---
seo:
  title: Concepts | Performing actions
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Performing actions

Redfish resources usually support HTTP GET to retrieve the current state. Modifications and deletions can be performed against eligible resources with HTTP POST, PUT, PATCH, or DELETE.

However, there are some resources that support other types of operations not easily mapped to HTTP operations. For example, a power button is not readable, so you cannot `GET` its status. In this case, pressing the power button is an action.

For this reason the <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.13.0.pdf" target="_blank">Redfish specification</a> defines `Actions`. `Actions` are HTTP POST operations with a specifically formatted JSON request including the operation to perform and potentially parameters.  For instance, it is not enough to simply tell a server to reset, but it is also necessary to specify the type of reset: cold boot, warm boot, PCI reset, etc. Actions are often used when the operation causes Management Controllers not just to update a value, but to change system state.

In Redfish, the available actions that can be invoked are identified by a `target` property in the resource's `Actions` object definitions. Potential parameters with possible supported values are listed with the annotation `Parameter@Redfish.AllowableValues`.

The following example retrieves the list of possible actions from the PK Secure Boot Database resource of an HPE iLO 6 based server.

```text Generic GET request
GET /redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/PK/?$select=Actions
```

```shell cURL
curl --insecure -u iloUser:password \
     --header "Content-Type: application/json" \
     --request POST --data '{"ResetKeysType": "ResetAllKeysToDefault"}' \
     https://ilo-ip//redfish/v1/Systems/1/SecureBoot/SecureBootDatabases/PK/Actions/SecureBootDatabase.ResetKeys/  
```

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

## OEM Action extensions

The <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.13.0.pdf" target="_blank">Redfish specification</a> allows OEMs to specify  `Actions` objects under their respective `Oem` sections. Those actions are invoked the same way as standard actions with a POST request to the `target` URI with desired parameters.

### Example 1

The following example retrieves the list of standard and HPE specific actions available in the `ComputerSystem` resource of an iLO based server.

```text Generic GET request
/redfish/v1/Systems/1/?$select=Actions, Oem/Hpe/Actions/
```

```shell iLOrest

ilorest login <ip-ilo> -u <ilo-user> -p password
ilorest select ComputerSystem.
ilorest get Actions Oem/Hpe/Actions --json
ilorest logout

```

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

### Example 2

The following example retrieves all the HPE specific actions available in an HPE iLO based server using the iLOrest Redfish client.

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

### Example 3

The following example performs a **PressAndHold** HPE specific action on an HPE iLO based system using cURL and then iLOrest.

:::info NOTE

As explained in the [Redfish error responses and messages](/docs/concepts/errorresponses/) section, successful responses are part of an `error` JSON object.

:::

```shell cURL
iloIP="ilo-ip"
iloUser="ilo-user"
iloPassword="password"
curl --insecure -u ${iloUser}:${iloPassword} \
     --header "Content-Type: application/json" \
     --request POST --data '{"PushType": "PressAndHold"}' \
     https://${iloIP}/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.PowerButton/  
```

```json Response body

{
    "error":{
        "code":"iLO.0.10.ExtendedInfo",
        "message":"See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo":[{"MessageId":"Base.1.12.Success"}]
    }
}

```

```shell iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest reboot PressAndHold
ilorest logout
```

### Example 4

The following example performs an HPE specific action that simulates the removal of the physical power cables of an HPE ProLiant or Synergy server. This action is sometime called **efuse**, **e-fuse** or [Auxiliary Power Cycle](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_computersystem_resourcedefns{{process.env.LATEST_FW_VERSION}}/#actions).

:::info NOTE

If the e-fuse action is sent while the server is off, iLO starts immediately a reset. Otherwise, a server power off is needed to trigger the e-fuse action.

:::

```text Generic POST request

POST: /redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SystemReset/

```

```json Request body:

{
 "ResetType": "AuxCycle"
}

```

```json Response when power is off)
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

```json Response when power is on
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

:::info NOTE

A standard computer reset example is presented in the [Redfish examples](/docs/examples/redfishexamples/#server-reset) section of this document.

:::

### Example 5

The following example creates a user defined [temperature threshold](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#actions-7) in the inlet ambient sensor object part of the `Chassis/Thermal/Oem/Hpe` subtree. It is also present in the [Examples](/docs/examples/redfishexamples/#configuring-user-defined-temperature-threshold) section.

```text Generic POST request
POST: /redfish/v1/Chassis/1/Thermal/Actions/Oem/Hpe/HpeThermalExt.SetUserTempThreshold/
```

```json Request body
{
    "SensorNumber": 1,
    "ThresholdValue": 40,
    "AlertType": "Warning"
}
```

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

:::info NOTES

1. An iLO reset is required to take this action into account
2. A `WarningUsertTempThreshold=40` property is created under `/redfish/v1/Chassis/1/Thermal/Oem/Hpe`. If `AlerType` is `Critical`, the created property is `CriticalUsertTempThreshold`.
3. An IML log record is created when the threshold is exceeded.

:::
