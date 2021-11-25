---
title: Concepts | Performing actions
toc:
  enable: false
  maxDepth: 2
disableLastModified: true
---

# Performing actions

REST resources usually support HTTP GET to read the current state, and some support modification and removal with HTTP POST, PUT, PATCH, or DELETE.

There are some resources that support other types of operations not easily mapped to HTTP operations.  For this reason the Redfish specification defines "Actions".  Actions are HTTP POST operations with a specifically formatted JSON request including the operation to perform and any parameters.  For instance, it is not enough to simply tell a server to reset, but it is also necessary to specify the type of reset:  cold boot, warm boot, PCI reset, etc.  Actions are often used when the operation causes BMCs not just to update a value, but to change system state.

In Redfish, the available actions that can be invoked are identified by a `target` property in the resource's `Actions` object definitions.  The parameters identify the supported values with the annotation `@Redfish.AllowableValues`.

```json
  {
    "Actions": {
        "#ComputerSystem.Reset": {
            "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset",
            "ResetType@Redfish.AllowableValues": [
                "On",
                "ForceOff",
                "ForceRestart",
                "Nmi",
                "PushPowerButton"
            ]
        }
    }
  }
```

This above action may be invoked by performing:

```shell cURL
curl --insecure -u username:password \
     --header "Content-Type: application/json" \
     --request POST --data '{"ResetType": "ForceRestart"}' \
     https://{iLO}/redfish/v1/Systems/1/Actions/ComputerSystem.Reset  
```

## Actions on HPE-specific Extensions

Actions on HPE-specific extensions are invoked in the same way.  Find the `target` URI of the action and POST a JSON request with parameters.

```shell cURL
curl --insecure -u username:password \
    --header "Content-Type: application/json" \
    --request POST --data '{"PushType": "PressAndHold"}' \
    https://{iLO}//redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.PowerButton/  
```

The embedded extensions may also have Actions not specified by the Redfish standard.  They are invoked in a similar way.  The POST URI may indicate the HPE specific nature of the action.

:::warning NOTE
The older pre-Redfish form of the Action invocation requires you to specify `"Target": "/Oem/Hp"` as one of the properties in the body of the request.

It is recommended that you use the Redfish version of the action invocation, like shown in the above example.
:::
