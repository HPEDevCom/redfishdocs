---
seo:
  title: RDE support
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Redfish Device Enablement (RDE) support

:::info NOTES

It is possible that some properties or resources described in
this section are not implemented in HPE iLO 4 and iLO 5.

:::

HPE iLO implements the
<a href="https://developer.hpe.com/blog/overview-of-the-platform-level-data-model-for-redfish%C2%AE-device-enablement-standard/"
target="_blank">Platform Level Data Model for Redfish Device Enablement</a>
(PLDM for RDE)
<a href="https://www.dmtf.org/dsp/DSP0218" target="_blank">DMTF standard</a>.
In this section the term **RDE** is a shortcut for **PLDM for RDE**.
The term **RDE capable device** refers to a physical device
(i.e. storage controller) implementing PLDM for RDE.

RDE enables management controllers (i.e. iLO) to present a Redfish-conformant
data model, without the need of embedding specific code related to the
vendor, family or model device. When PLDM for RDE is implemented in both
the management controller and the device, the former acts as a request
forwarder (pass-through) between the Redfish client and the device.

:::success TIP

As `GET` responses from RDE capable devices come from the device, they
don't contain any HPE `Oem/Hpe` section. However, they may contain OEM
sections specific to the device maker (`Oem/DeviceMaker`).

Refer to this [paragraph](#ilo-rde-uris-and-corresponding-http-methods)
for the Redfish URIs enabled by iLO for RDE capable devices.

:::

In the detail, RDE capable management controllers and devices may use the
<a href="https://www.dmtf.org/documents/pmci/mctp-base-specification-130"
target="_blank">Management Component Transfer Protocol</a>
(MCTP) to exchange Redfish encoded messages. By default, HPE iLO enables
MCTP globally as well as on all possible device slots. Refer to the
<a href="https://www.hpe.com/support/ilo6" target="_blank">iLO user guide</a>
for managing MCTP from the GUI
(`System Information` --> `Device Inventory` --> `Discovery`).

:::warning Warning
When MCTP is [globally disabled](#disable-the-mctp-globally) or if a
[device slot](/docs/redfishservices/ilos/supplementdocuments/rdesupport/#disable-the-mctp-on-a-specific-slot)
(PCIe, M.2, OCP...) is MCTP disabled, RDE capable devices may not be
accessible via Redfish anymore.
:::

:::info NOTE
It is not possible to enable MCTP on a specific device slot. A global MCTP
factory reset is required. This action enables MCTP globally and on all
device slots. Refer to the examples below to manage the MCTP with Redfish.
:::

## MCTP management with Redfish

For troubleshooting or other reasons, you may want to disable or factory
reset the MCTP.

### Retrieve MCTP status

The following example retrieves the MCTP global status and the
status of slot 5.

```text MCTP global status
GET /redfish/v1/Chassis/1/?$select=Oem/Hpe/MCTPEnabledOnServer
```

```text MCTP Specific slot status
GET /redfish/v1/Chassis/1/devices/5/?$select=MCTPProtocolDisabled
```

### Disable the MCTP globally

```text Disable the MCTP
POST /redfish/v1/Chassis/1/Actions/Oem/Hpe/HpeServerChassis.DisableMCTPOnServer/
```

```json Request body
{}
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

### Disable the MCTP on a specific slot

```text Generic PATCH request
PATCH: /redfish/v1/Chassis/{{ChassisId}}/devices/{{slotId}}/
```

```json Request body
{
    "MCTPProtocolDisabled": true
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

### MCTP factory reset

In order to globally re-enable the MCTP and all the specific slots,
a MCTP factory reset is required.

```text MCTP factory reset
POST /redfish/v1/Chassis/1/Actions/Oem/Hpe/HpeServerChassis.FactoryResetMCTP
```

```json Request body
{}
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

:::success TIP

If an MCTP factory reset returns an error (i.e. `ActionNotSupported`)
and, the `System Information` --> `Device Inventory` --> `Recovery`
button in the iLO graphical user interface is greyed out, it is possible
to recover with an
[Auxiliary Power Cycle](/docs/concepts/performing_actions/#auxiliary-power-cycle-hpe-specific-action)
(**efuse**) action.

:::

## iLO RDE URIs and corresponding HTTP methods

The following table lists the Redfish URIs enabled by iLO for RDE capable
devices. Cells contain the list of iLO generations supporting operations,
or a dash character ("-") if the operation is not applicable or not
supported. Refer to the
[iLO 5 changelog](/docs/redfishservices/ilos/ilo5/ilo5_changelog/#rde-support-changes)
file and look for string `RDE support changes` to get the first
firmware version implementing RDE operations. iLO 6 implements all
mentioned operations since version 1.05.

:::info NOTE

- iLO returns `400 Bad Request` when RDE devices take a long time to
    process and respond to `POST` requests.
- Enabled operations by iLO listed in the following table does not imply
    that all RDE capable devices supports those operations as well.
    For example, if RDE capable storage devices supports storage volumes
    then iLO supports `POST` and `DELETE` operations.

:::

| URI | GET | HEAD | PATCH | POST | DELETE |
|---|---|---|---|---|---|
|`/redfish/v1/Systems/{@systemsId}/NetworkInterfaces`| 5, 6 | - | - | - | - |
|`/redfish/v1/Systems/{@systemsId}/NetworkInterfaces/{@nicId}`| 5, 6 | 5, 6 | - | - | - |
|`/redfish/v1/Systems/{@systemId}/EthernetInterfaces`| 5, 6 | - | - | - | - |
|`/redfish/v1/Systems/{@systemId}/EthernetInterfaces/{@nicId}`| 5, 6 | 5, 6 | 5, 6 | 5, 6 | - |
|`/redfish/v1/Chassis/{@chassisId}/PCIeDevices`| 5, 6 | - | - | - | - |
|`/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}`| 5, 6 | 5, 6 | - | - | - |
|`/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions`| 5, 6 | - | - | - | - |
|`/redfish/v1/Chassis/{@chassisId}/PCIeDevices/{@PCIeDeviceId}/PCIeFunctions/{@PCIeFunctionId}`| 5, 6 | 5, 6 | - | - | - |
|`/redfish/v1/Chassis/{@chassisId}/NetworkAdapters`| 5, 6 | - | - | - | - |
|`/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}`| 5, 6 | 5, 6 | 5, 6 | 5, 6 | - |
|`/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkPorts`| 5, 6 | - | - | - | - |
|`/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkPorts/{@portId}`| 5, 6 | 5, 6 | 5, 6 | 5, 6 | - |
|`/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/Ports`| 5, 6 | - | - | - | - |
|`/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/Ports/{@portId}`| 5, 6 | 5, 6 | 5, 6 | 5, 6 | - |
|`/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkDeviceFunctions`| 5, 6 | - | - | - | - |
|`/redfish/v1/Chassis/{@chassisId}/NetworkAdapters/{@nicId}/NetworkDeviceFunctions/{@pfId}`| 5, 6 | 5, 6 | 5, 6 | 5, 6 | - |
|`/redfish/v1/Systems/{@systemId}/Storage`| 5, 6 | - | - | - | - |
|`/redfish/v1/Systems/{@systemId}/Storage/{@storageId}`| 5, 6 | 5, 6 | 5, 6 | 5, 6| - |
|`/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Drives/{@driveId}`| 5, 6 | 5, 6 | 5, 6 | 5, 6 | - |
|`/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/`| 5, 6 | - | - | - | - |
|`/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@controllerId}`| 5, 6 | 5, 6 | 5, 6 | - | - |
|`/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Controllers/{@ControllerId}/Ports/{@portId}`| 5, 6 | 5, 6 | 5, 6 | - | -|
|`/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes`| 5, 6 | - | - | 5, 6 | - |
|`/redfish/v1/Systems/{@systemId}/Storage/{@storageId}/Volumes/{@volumeId}`| 5, 6 | 5, 6 | 5, 6 | 5, 6 | 5, 6 |

## RDE capable device schema file locations

Redfish responses from RDE enabled devices depend on the schema versions
that are supported by each device. They may vary across device vendors,
families and models. The schema files describing RDE capable devices are
not stored in iLO and usually not in the device. However, their location
is in the `Link` response header property of HEAD requests.

These schema files can be obtained using
<a href="https://github.com/HewlettPackard/python-redfish-utility/releases/latest"
target="_blank"> iLOrest tool</a>.

### Controller schema file location of an RDE capable storage controller

```shell iLOrest command
ilorest rawhead /redfish/v1/Systems/1/Storage/DE07C000 2>/dev/null | jq '.Link'
```

```Shell Response
https://redfish.dmtf.org/schemas/Storage.v1_13_0.json
```

### Volume schema file location of an RDE capable logical volumes

```shell iLOrest command
ilorest rawhead /redfish/v1/Systems/1/Storage/DE07C000/Volumes 2>/dev/null | jq -r '.Link'
```

```Shell Response
https://redfish.dmtf.org/schemas/VolumeCollection.json
```

### Network port schema file location of an RDE capable network adapter

```shell iLOrest command
ilorest rawhead /redfish/v1/Chassis/1/NetworkAdapters/DE080000/NetworkPorts 2>/dev/null | jq '.Link'
```

```Shell Response
http://redfish.dmtf.org/schemas/v1/NetworkPortCollection.json
```

For more detail concerning PLDM for RDE, refer to the
<a href="https://www.dmtf.org/content/dmtf-releases-update-pldm-redfish-device-enablement-specification" target="_blank"> DMTF RDE specification</a>.
