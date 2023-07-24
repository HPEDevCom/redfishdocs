---
seo:
  title: Managing HPE BIOS
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Managing HPE BIOS resources

:::info NOTE

It is possible that some properties or resources described in this section are not implemented in iLO 4 and ilo 5.

:::

This section presents the HPE OEM BIOS related resources of iLO based servers. Refer to the [BIOS data model](/docs/concepts/biosdatamodel/) section for an overview of the BIOS standard Redfish data model.

[Links](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_bios_resourcedefns{{process.env.LATEST_FW_VERSION}}/#links-to-other-resources) to the HPE OEM BIOS related resources can be retrieved from the `Oem/Hpe` section of the standard BIOS [URIs](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_bios_resourcedefns{{process.env.LATEST_FW_VERSION}}/#resource-instances).

The following example retrieves this list from an HPE Gen11 server:

```text Generic request
GET /redfish/v1/systems/1/bios/?$select=Oem/Hpe/Links
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#Bios.Bios",
    "@odata.etag": "W/\"EC5F3AB13F6FBEBEBEDF0E7FD5BB86C3\"",
    "@odata.id": "/redfish/v1/systems/1/bios/",
    "@odata.type": "#Bios.v1_0_4.Bios",
    "Oem": {
        "Hpe": {
            "Links": {
                "BaseConfigs": {
                    "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/baseconfigs/"
                },
                "Boot": {
                    "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/boot/"
                },
                "KmsConfig": {
                    "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/kmsconfig/"
                },
                "Mappings": {
                    "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/mappings/"
                },
                "ServerConfigLock": {
                    "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/serverconfiglock/"
                },
                "TlsConfig": {
                    "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/"
                },
                "iScsi": {
                    "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/iscsi/"
                }
            }
        }
    }
}
```

## Reading BIOS defaults

The BIOS [current configuration](/docs/concepts/biosdatamodel/#bios-current-and-pending-areas) object contains a link to a separate read-only object, [`BaseConfigs`](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpebaseconfigs), located in the `Bios/Oem/Hpe` sub-tree. The `BaseConfigs` object contains the list the HPE BIOS default settings/attributes. The data type of the `BaseConfigs` link is `HpeBaseConfigs`.

<!-- the following NOTE needs to be rewritten for a better understanding. Need as well an example/link to create a `default.user` custom defaults attributes -->
:::info Note:
The `HpeBaseConfigs` data type contains an array of default sets (or base configuration sets). Each base configuration set contains a list of BIOS properties and their default values. The default base configuration set contains the BIOS manufacturing defaults. It is possible for `HpeBaseConfigs` to contain other sets, like `default.user` for user custom defaults.
:::

The following examples retrieves the `HpeBaseConfigs` resources.

```shell cURL
curl --include --insecure -u username:password --location \
      https://{iLO}/redfish/v1/systems/1/bios/BaseConfigs/ 
```

```json Response (truncated)
{
    "@odata.context": "/redfish/v1/$metadata#HpeBaseConfigs.HpeBaseConfigs",
    "@odata.etag": "W/\"0321F44EC68BD0D0D0DF1B7DD1D98483\"",
    "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/baseconfigs/",
    "@odata.type": "#HpeBaseConfigs.v2_0_0.HpeBaseConfigs",
    "BaseConfigs": [
        {
            "default": {
                "AMDPerformanceWorkloadProfile": "Disabled",
                "AccessControlService": "Enabled",
                "AcpiHpet": "Enabled",
                "AcpiRootBridgePxm": "Enabled",
                "AcpiSlit": "Enabled",
                "AdminEmail": "",
                "AdminName": "",
                "AdminOtherInfo": "",
                "AdminPhone": "",
                ......
                ......
                "VlanPriority": 0,
                "WakeOnLan": "Enabled",
                "WorkloadProfile": "GeneralPowerEfficientCompute",
                "XGMIForceLinkWidth": "Auto",
                "XGMIMaxLinkWidth": "Auto",
                "iSCSISoftwareInitiator": "Enabled"
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

## HPE BIOS related resources

Each of the HPE BIOS related resources retrieved in the above example belong to a specific data type. The following example retrieves their respective data type from an HPE Gen11 server.

```bash script
ilorest login <ilo-ip> -u <ilo-user> -p password
Resources=$(ilorest rawget '/redfish/v1/systems/1/bios/?$select=Oem/Hpe/Links' 2>/dev/null  | \
          jq '.Oem.Hpe.Links' | \
          awk -F: '/ {$/ {print $1}' | \
          tr -d '"' )

for r in $Resources ; do
    echo -n -e "Resource type of ${r}:\t\t"
    ilorest rawget "/redfish/v1/systems/1/bios/oem/hpe/${r}" 2>/dev/null | \
            jq '."@odata.type"'   | \
            awk -F. '{print $NF}' | \
            tr -d '"'
done

```

```text Result
Resource type of BaseConfigs:           HpeBaseConfigs
Resource type of Boot:                  HpeServerBootSettings
Resource type of KmsConfig:             HpeKmsConfig
Resource type of Mappings:              HpeBiosMapping
Resource type of ServerConfigLock:      HpeServerConfigLock
Resource type of TlsConfig:             HpeTlsConfig
Resource type of iScsi:                 HpeiSCSISoftwareInitiator
```

All of the HPE BIOS related resources (except the `HpeMappings` resource) contain a link to a `BaseConfigs` object of type `HpeBaseConfigs`. This object contains the default configuration of the related resource. For example, the `TlsConfig` base configuration is at `/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/baseconfigs/`:

```text iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select HpeTlsConfig.
ilorest get --json Oem/Hpe/Links/Baseconfigs
ilorest logout
```

```json Response body
{
  "Oem": {
    "Hpe": {
      "Links": {
        "BaseConfigs": {
          "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/baseconfigs/"
        }
      }
    }
  }
}
```

Refer to the following sections for additional information concerning HPE OEM related resources:

- [HTTPS Boot TLS Configuration](/docs/redfishservices/ilos/supplementdocuments/biostlsconf/#https-boot-tls-configuration)
- [iSCSI Software Initiator Configuration](/docs/redfishservices/ilos/supplementdocuments/iscsiconf/)
- [Secureboot databases](/docs/concepts/securebootdatabases/)

## Reset all BIOS and HPE BIOS related resource settings

The generic [concepts/BIOS data model](/docs/concepts/biosdatamodel/#reset-bios-settings-action) section contains an example to reset BIOS attributes to their default values, using the `Bios.ResetBios` standard Redfish [action](/docs/concepts/performing_actions/).  

In addition, iLO offers the possibility to reset BIOS attributes, boot order settings iscsi and TLS to factory defaults using the Oem/Hpe property `RestoreManufacturingDefaults` :

 From the `BiosSettingsUri`. You only need to send the `RestoreManufacturingDefaults`
property in the request body. `PATCH {"Attributes":{"RestoreManufacturingDefaults":"Yes"}} @ {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/` and then reset the server.

## Reverting BIOS UEFI settings to the BaseConfig defaults

<!-- TBD Need to investigate and test this paragraph on Gen11 ! it seems that it is not relevant anymore because of the resetbios action ?-->

The iLO BIOS Settings resource supports a special feature that allows you to revert BIOS settings to default for the selected resource. This is accomplished by performing the PATCH or PUT operation on a special property in the BIOS settings object: `HpeBaseConfig`.

:::info NOTE
The `BaseConfig` property might not already exist in the BIOS or BIOS Settings resources. To determine if the BIOS resource supports reverting the settings to default, `GET` the BIOS `BaseConfigs` resource, and view the `Capabilities` property.
:::

<!-- {"Attributes":{"BaseConfig":"default"}} seems to work with BIOS attributes. Need to be verified with Boot settings, TLS config, KMS config, iSCCI config... (Does not work with Boot settings!) -->
This can be combined with other property sets to first set default values and then set specific
settings all in one operation.

From the Pending settings area:

- Create a new JSON object with the `BaseConfig` property and change the value to `default`. Be sure to include the top level JSON `Attributes` property.
      - JSON = {"Attributes":{"BaseConfig":"default"}}
- Make a PUT request with the new JSON to the `BiosSettingsUri`. You only need to send the updated `BaseConfig`
property in the request body.
      * `PUT {"Attributes":{"BaseConfig":"default"}} @ {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`

When the sever is reset, the BIOS UEFI settings are reverted to default.

:::info NOTE

- You might also view the default values for BIOS settings by finding the resource type `HpeBaseConfigs.`
- `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/BaseConfigs`
- `BaseConfig` can be combined with other property values to first reset everything to default and then apply some specific settings in one operation.
:::

```shell cURL
curl --insecure -u username:password  \
     --header "Content-Type: application/json" \
     -X POST --data "@data.json" \
     https://{iLO}/redfish/v1/Systems/1/bios/settings/ 
```

```json Content of data.json
{"Attributes":{"BaseConfig": "default"}}
```
<!-- Need to verify the content of the following link -->
For a full Redfish example click <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/bios_revert_default.py" target="_blank">here</a>

## HPE BIOS specific examples

This paragraph presents examples dealing with the HPE BIOS Redfish extension.

### Disable IPMI interrupt support

Disabling the IPMI Interrupt Support in the HPE BIOS OEM extension of iLO 6 version 1.10 and later, followed by a reboot of the server helps to run the IPMI in-band operation in Windows operating system. Refer to the <a href= "https://support.hpe.com/hpesc/public/docDisplay?docId=sd00002205en_us&page=GUID-744240B9-5370-4085-86D0-891C581E2700.html" target="_blank">IPMI in-band operation fails to work in Windows OS</a> release notes paragraph for more information.

The following example disables the `KcsIpmiInterrupt` attribute in the Bios/Oem/Hpe subsystem. Then it performs a graceful restart of the server.

```text Generic PATCH request
PATCH /redfish/v1/systems/1/bios/oem/hpe/service/Settings

Body:
{
    "Attributes": {
    "KcsIpmiInterrupt": "Disabled"
    }
}
```

```text Generic Graceful system restart
POST `/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/`

Body:
{
    "ResetType": "GracefulRestart"
}
```

:::success TIP
After a modification in the BIOS settings (standard or OEM extension) and the restart of the server, it is a good practice to analyze the `@Redfish.Settings` object of the current settings area as explained in the [Redfish error responses and messages](/docs/concepts/errorresponses.md) section.
:::

### Manage the KCS interface feature for HPE iLO

IPMI over Keyboard Controller Style (KCS) enables management of the computer system and monitoring of the operations from within the host Operating System (OS).

You can enable / disable the KCS interface feature for HPE iLO with the Redfish API using a `PATCH` request. To enable KCS change the value to `true`, as shown in the following example.

```text Generic request
PATCH /redfish/v1/Managers/1/NetworkProtocol
```

```json Body request
{ 
"Oem": {
    "Hpe":{
      "KcsEnabled": true
        }
      }
}
```

### Change UEFI boot order example

<!-- TBD This paragraph needs a complete rewriting and testing on Gen11. -->

Minimum required session ID privileges: `Configure`

For a full Redfish example click here: <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/change_boot_order.py" target="_blank">change\_boot\_order.py</a>

The BIOS current configuration object contains a link to a separate read-only resource of type `HpeServerBootSettings` that lists the UEFI Boot Order current configuration. This is the system boot order when the system is configured in the UEFI Boot Mode. The UEFI Boot Order current configuration resource contains a `BootSources` property, which is an array of UEFI boot sources. Each object in that array has a unique `StructuredBootString,` among other properties that identify that boot source.

The UEFI boot order list itself is represented in a separate `PersistentBootConfigOrder` property that is an ordered array of boot sources, each referenced by its `StructuredBootString.` In addition, a `DesiredBootDevices` property lists a separate ordered list of desired boot sources that might not be listed in the `BootSources` property. This is useful for configuring boot from a specific SCSI or FC LUN or iSCSI target that might have not been configured (and discovered by BIOS) yet.

As with the BIOS current configuration resource, the UEFI Boot Order current configuration resource is read only (as evident by the allow header, which do not list `PATCH` as an allowed operation). To change the UEFI Boot Order, you need to follow the link to a separate Settings resource that you can perform a `PATCH` operation on that contains the pending UEFI Boot Order settings, and update that `PersistentBootConfigOrder` and/or the `DesiredBootDevices` properties in that Settings resource. The settings remain pending until next reboot, and the results are reflected back in the `@Redfish.Settings` property in the UEFI Boot Order current configuration resource.

1. Iterate through `/redfish/v1/Systems/` and choose a member `ComputerSystem.` Find a child resource of type `HpeServerBootSettings` that allows `PATCH` operations (there might be more than one, but for this exercise, choose the first one).

    - `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

2. Obtain the UEFI boot order.

    - `GET {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

3. Create a new JSON object with the `PersistentBootConfigOrder` property and change the boot order.

4. Change the UEFI boot order. You only need to send the updated `PersistentBootConfigOrder` property in the request body.

    - `PATCH {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

When the sever is reset, the new boot order is validated and used.
