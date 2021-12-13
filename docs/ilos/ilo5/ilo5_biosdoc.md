---
seo:
  title: BIOS Defaults and Passwords
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# BIOS Defaults and Passwords

## Reading BIOS Defaults

The BIOS current configuration object contains a link to a separate read-only object, [`BaseConfigs`](ilo5_resourcedefns/#hpebaseconfigsv2_0_0hpebaseconfigs), in the `bios/Oem/Hpe` sub-tree, which lists the HPE BIOS default settings.

:::info Note:
`BaseConfigs` contains an array of default sets (or base configuration sets). Each base config set contains a list of BIOS properties and their default values. The default base configuration set contains the BIOS manufacturing defaults. It is possible for `BaseConfigs` to contain other sets, like `default.user` for user custom defaults.
:::

```shell cURL
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

## Example to reset all BIOS and boot order settings to factory defaults

iLO 5 Redfish implements the two standard actions presented in the [navigating the data model](../../../concepts/navigating/) section.

In addition, iLO 5 offers the possibility to reset all BIOS and boot order settings to factory defaults using the Oem/Hpe property `RestoreManufacturingDefaults`. Use the following pseudo-code to perform this action:

1. Iterate through `/redfish/v1/Systems/` and choose a member `ComputerSystem.` Find the BIOS settings resource by following the `Bios` property link.
      * BiosSettingsURI = `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`
2. Obtain the BIOS and boot order pending settings.
      * GET @ `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`
3. Create a new JSON object with the `RestoreManufacturingDefaults` property and change the value to `Yes`. Be sure to include the top level JSON `Attributes` property.
      * JSON = {"Attributes":{"RestoreManufacturingDefaults":"Yes"}}
4. Make a PATCH request with the new JSON to the `BiosSettingsUri`. You only need to send the updated `RestoreManufacturingDefaults`
property in the request body.
      * `PATCH {"Attributes":{"RestoreManufacturingDefaults":"Yes"}} @ {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Settings/`

## Reverting BIOS UEFI settings to the BaseConfig defaults

The iLO 5 BIOS Settings resource supports a special feature that allows you to revert BIOS settings
to default for the selected resource. This is accomplished by performing the PATCH or PUT
operation on a special property in the BIOS settings object: `BaseConfig`.

:::info NOTE
The `BaseConfig` property might not already exist in the BIOS or BIOS Settings resources. To determine if the BIOS resource supports reverting the settings to default, `GET` the BIOS `BaseConfigs` resource, and view the `Capabilities` property.
:::

This can be combined with other property sets to first set default values and then set specific
settings all in one operation.

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
* `BaseConfig` can be combined with other property values to first reset everything to default and then apply some specific settings in one operation.
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

For a full Redfish example click <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/bios_revert_default.py" target="_blank">here</a>

## Change BIOS password  

UEFI BIOS supports a POST action to change the BIOS password.

```json POST Action description
"Actions": {
  "#Bios.ChangePassword": {
    "target": "/redfish/v1/Systems/1/Bios/Settings/Actions/Bios.ChangePassword"
  }
}
```

```json Body
{
  "PasswordName": "Administrator | User",
  "OldPassword" : "OldPasswordText",
  "NewPassword" : "NewPasswordText"
}
```

The target link is where the body of the action should be posted.
