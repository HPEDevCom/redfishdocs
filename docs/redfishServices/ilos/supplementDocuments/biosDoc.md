---
seo:
  title: Managing HPE BIOS
toc:
  enable: true
  maxDepth: 4
disableLastModified: false
---

## Managing HPE BIOS resources

:::info NOTE
It is possible that some properties or resources described
in this section are not implemented in iLO 4 and iLO 5.
:::

This section presents the HPE Bios related resources
(attributes and OEM resources) of HPE iLO based servers.
Refer to the [BIOS data model](/docs/concepts/biosdatamodel/)
section for a generic overview of the standard Redfish Bios data model.

The HPE Bios subsystem contains two families of elements:

- A set of **attributes** located under the `/redfish/v1/Systems/{item}/Bios`
  standard URI, and described in the
  [Bios registry](/docs/concepts/biosdatamodel/#bios-attribute-registry-overview)
  section.
- Sets of **OEM Bios resources** described in proprietary schemas
  (i.e. `HpeTlsConfig`)

The URIs of the HPE OEM Bios resources can be retrieved from
 `/redfish/v1/Systems/{item}/Bios/Oem/Hpe` as shown in the next
 example.

:::info NOTE
HPE OEM Bios resource links have been moved from `/redfish/v1/Systems/1/Bios`
in Gen10 servers to `/redfish/v1/Systems/1/Oem/Hpe` in Gen10 Plus and
Gen11 servers.
Refer to the following example for a generic method to retrieve them,
regardless the server generation.
:::

```text Generic request
GET /redfish/v1/systems/1/bios/?$select=Oem/Hpe/Links
```

```shell iLOrest
# The following request retrieves Bios related URIs
# using a recursive jq request, ignoring errors
# and 'null' responses

ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawget --silent \
        '/redfish/v1/systems/1/bios/?$select=Oem/Hpe/Links' | \
        jq -r '..|."@odata.id"?' | grep -v null
ilorest logout
```

```shell cURL
# The following request retrieves Bios related URIs
# using a recursive jq request, ignoring errors
# and 'null' responses

curl --silent --insecure -u <ilo-user>:password \
     'https://<ilo-ip>/redfish/v1/systems/1/bios/?$select=Oem/Hpe/Links' | \
     jq -r '..|."@odata.id"?' \
     | grep -v null
```

```text Gen10 response body
/redfish/v1/systems/1/bios/
/redfish/v1/systems/1/bios/baseconfigs/
/redfish/v1/systems/1/bios/boot/
/redfish/v1/systems/1/bios/kmsconfig/
/redfish/v1/systems/1/bios/mappings/
/redfish/v1/systems/1/bios/serverconfiglock/
/redfish/v1/systems/1/bios/tlsconfig/
/redfish/v1/systems/1/bios/iscsi/
```

```text Gen10 Plus and Gen11 response body
/redfish/v1/systems/1/bios/
/redfish/v1/systems/1/bios/oem/hpe/baseconfigs/
/redfish/v1/systems/1/bios/oem/hpe/boot/
/redfish/v1/systems/1/bios/oem/hpe/kmsconfig/
/redfish/v1/systems/1/bios/oem/hpe/mappings/
/redfish/v1/systems/1/bios/oem/hpe/serverconfiglock/
/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/
/redfish/v1/systems/1/bios/oem/hpe/iscsi/
```

:::info NOTE
The **HPE service Bios** extension is dedicated to HPE field service
employees, and should not be accessed programmatically by
Redfish clients.

The **HPE service Bios** extension URI is not mentioned
explicitly under the Bios `Oem/Hpe` extension on purpose.

However, like other HPE Bios extensions,
it is located at `/redfish/v1/Systems/1/Bios/Oem/Hpe/Service`
in Gen10 Plus and Gen11 servers and at `/redfish/v1/Systems/1/Bios/Service` in
Gen10 servers.
:::

## Bios defaults

Bios attributes and OEM Bios resources present default values.
This paragraph explains how to get, set and reset them.

### Default Bios attributes

The current configuration Bios attributes
[URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_bios_resourcedefns{{process.env.LATEST_FW_VERSION}}/#resource-instances)
contains a link to a
[`BaseConfigs[]` array](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#baseconfigs-array)
that holds the factory attributes, and eventually, custom user defined
attributes. Default OEM Bios resources (i.e. Bios TLS) are described
in the next paragraph.

The Bios attribute list depends on the server architectures
(Intel, AMD, Ampere).
It may depend, as well, on the ROM version installed in the system.
For these reasons, it is not possible to publish their factory default values
with a long term validity. Instead, you will find below methods to retrieve
them from live systems or from registries available online.

#### Retrieving factory Bios attributes from a live system

Factory Bios attributes and their values are located in the `default` member
of the
`BaseConfigs[]` [array](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#baseconfigs-array).
Bios custom user defined attributes are part of
the `default.user` member of this array.

The following example retrieves factory Bios attributes from
a live system using a generic GET request or iLOrest.

:::info NOTE

The `BaseConfig[]` URI is different in Gen10, Gen10 Plus and Gen11 servers.
Refer to the following example for detail.

:::

```shell Generic requests
Gen 10
GET /redfish/v1/Systems/1/Bios/BaseConfigs | jq '.BaseConfigs[] | .default'

Gen10 Plus and Gen11
GET /redfish/v1/Systems/1/Bios/Oem/Hpe/BaseConfigs | jq '.BaseConfigs[] | .default'
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get BaseConfigs/default --json --selector=HpeBaseConfigs
ilorest logout
```

#### Saving and retrieving user defined Bios attributes

The following example sets various Bios attributes (Gen10, Gen10 Plus or Gen11)
and requests the saving in the `BaseConfigs[]` array.
This modification requires a reboot of the server to be visible
in the `default.user` array member.

:::info NOTE
A PATCH request to the Bios settings URI with a body containing
`"SaveUserDefaults": "Yes"` saves Bios attributes
**and Service Bios attributes** in the `default.user` member
of their respective `BaseConfigs[]` array.

Look for string "Service Bios" in this documentation section
for more info concerning this HPE Bios extension.
:::

```shell Generic request
PATCH /redfish/v1/Systems/1/Bios/Settings/
```

```json Body request
{
    "Attributes": {
        "AdminName": "Toto Content",
        "AdminEmail": "toto.content@koulapic.com",
        "AdminPhone": "+3306789012340",
        "WorkloadProfile": "TransactionalApplicationProcessing",
        "SaveUserDefaults": "Yes"
    }
}
```

```shell cURL
curl --insecure --silent --location -u <ilo-user>:passsword \
     --header 'Content-Type: application/json' \
     --request PATCH \
     'https://<ilo-ip>/redfish/v1/Systems/1/Bios/Settings/' \
     --data '{"Attributes": {
          "AdminName": "Toto Content",
          "AdminEmail": "toto.content@koulapic.com", 
          "AdminPhone": "+3306789012340",
          "WorkloadProfile": "TransactionalApplicationProcessing",
          "SaveUserDefaults": "Yes"
     }
}'
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select Bios.
ilorest set "AdminName=Toto Content" \
        AdminEmail="toto.content@koulapic.com" \
        AdminPhone="+3306789012340"            \
        WorkloadProfile="TransactionalApplicationProcessing" \
        SaveUserDefaults=Yes
ilorest commit
ilorest reboot ForceRestart
ilorest logout
```

```json Body response
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.25.SystemResetRequired"
            }
        ]
    }
}
```

The following example reads the Bios attributes `BaseConfigs[]`
array members from Gen10, Gen10 Plus or Gen11 systems,
that has been modified with the payload of the previous example.
It contains two members: `default` and `default.user`.

Refer to the [Bios resets](#bios-resets) paragraph below to apply
user defined attributes.

```text Generic request
# Gen10 
GET /redfish/v1/Systems/{item}/Bios/BasConfigs

# Gen 10 Plus and Gen11
GET /redfish/v1/Systems/{item}/Bios/Oem/Hpe/BaseConfigs
```

```shell cURL
# Gen10
curl --include --insecure -u username:password --location \
      https://{iLO6-ip}/redfish/v1/systems/1/bios/BaseConfigs/

# Gen10 Plus and Gen11
curl --include --insecure -u username:password --location \
      https://{iLO-ip}/redfish/v1/systems/1/bios/Oem/Hpe/BaseConfigs/ 
```

```shell iLOrest
# Gen10
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawget --silent /redfish/v1/systems/1/bios/BaseConfigs/
ilorest logout

# Gen10 Plus and Gen10
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawget --silent /redfish/v1/systems/1/bios/Oem/Hpe/BaseConfigs/
ilorest logout
```

```json Response (truncated)
{
    "@odata.context": "/redfish/v1/$metadata#HpeBaseConfigs.HpeBaseConfigs",
    "@odata.etag": "W/\"D3544D1E7B21CACACAB99143115A5971\"",
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
                "AdvCrashDumpMode": "Disabled",
                ...
                ...
                "VlanControl": "Disabled",
                "VlanId": 0,
                "VlanPriority": 0,
                "WakeOnLan": "Enabled",
                "WorkloadProfile": "GeneralPowerEfficientCompute",
                "XGMIForceLinkWidth": "Auto",
                "XGMIMaxLinkWidth": "Auto",
                "iSCSISoftwareInitiator": "Enabled"
            }
        },
        {
            "default.user": {
                "AMDPerformanceWorkloadProfile": "Disabled",
                "AccessControlService": "Enabled",
                "AcpiHpet": "Enabled",
                "AcpiRootBridgePxm": "Enabled",
                "AcpiSlit": "Enabled",
                "AdminEmail": "toto.content@koulapic.com",
                "AdminName": "Toto Content",
                "AdminOtherInfo": "Toto est Content",
                "AdminPhone": "+3306789012340",
                "AdvCrashDumpMode": "Disabled",
                ...
                "SaveUserDefaults": "No",
                ...
                "VlanId": 0,
                "VlanPriority": 0,
                "WakeOnLan": "Enabled",
                "WorkloadProfile": "TransactionalApplicationProcessing",
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

#### Retrieving default Bios attributes from a registry file

:::info NOTE

The method described in this paragraph for
retrieving factory default Bios attribute values
is only valid for Gen10 Plus and Gen11 servers.

:::

Bios attribute registries can be downloaded from the
<a href="https://support.hpe.com" target="_blank">HPE Support Center</a>.
Depending the server you are focusing on,
enter a string similar to this one in the search box of
the HPE Support Center: `RESTful API BIOS Schemas/Registries dl365`.

Download the Schemas/Registry `.zip` file that suites your needs and extract
its content.

Drill down to the `RegistryStore/en` subdirectory and retrieve
the `DefaultValue` property for each Bios attribute.

The following example retrieves the Bios default values (and other properties)
from a DL385 Gen11 server (A55) Bios registry file downloaded from the
<a href="https://support.hpe.com" target="_blank">HPE Support site</a>.

```shell bash
jq '.RegistryEntries.Attributes[] | {AttributeName, ReadOnly, Type, MenuPath, DefaultValue}'\
    BiosAttributeRegistryA55.v1_1_60_en.json

```

```json Output (truncated)
{
  "AttributeName": "WorkloadProfile",
  "DefaultValue": "GeneralPowerEfficientCompute",
  "MenuPath": "./",
  "ReadOnly": false,
  "Type": "Enumeration"
}
{
  "AttributeName": "DynamicPowerCapping",
  "DefaultValue": "Disabled",
  "MenuPath": "./SystemOptions/BootTime",
  "ReadOnly": false,
  "Type": "Enumeration"
}
{
  "AttributeName": "ExtendedMemTest",
  "DefaultValue": "Disabled",
  "MenuPath": "./SystemOptions/BootTime",
  "ReadOnly": false,
  "Type": "Enumeration"
}
....
{
  "AttributeName": "EraseUserDefaults",
  "DefaultValue": "No",
  "MenuPath": "./SysDefaultOptions/UserDefaultOptions",
  "ReadOnly": false,
  "Type": "Enumeration"
}
{
  "AttributeName": "UserDefaultsState",
  "DefaultValue": "Disabled",
  "MenuPath": "./SysDefaultOptions/UserDefaultOptions",
  "ReadOnly": true,
  "Type": "Enumeration"
}
{
  "AttributeName": "UtilityLang",
  "DefaultValue": "English",
  "MenuPath": "./LangSettings",
  "ReadOnly": false,
  "Type": "Enumeration"
}
```

### Default HPE Bios resources

In addition to the HPE Bios attributes and their defaults described
in the previous paragraph, other Bios related resources can be managed
and reset to their factory defaults. Depending on the iLO generation,
they may have a different location. Hence, you will have to use a generic
script to locate and retrieve them.

Refer to the following sections for additional information
concerning some of those resources:

- [HTTPS Boot TLS Configuration](/docs/redfishservices/ilos/supplementdocuments/biostlsconf/#https-boot-tls-configuration)
- [iSCSI Software Initiator Configuration](/docs/redfishservices/ilos/supplementdocuments/iscsiconf/)
- [Secureboot databases](/docs/concepts/securebootdatabases/)

The following script retrieves the location and data type of
Bios configuration attributes and resources,
except HPE Service Bios attributes for the reason mentioned earlier
in this section.

```bash iLOrest script
# The following script retrieves HPE Bios configuration links, prints them as well
# as their respective data type.

# Login remote iLO
ilorest login <ilo-ip> -u <ilo-user> -p password

# Retrieve HPE Bios configuration links
BiosLinksURI='/redfish/v1/systems/1/bios/?$select=Oem/Hpe/Links'
BiosConfigLinks=$(ilorest rawget --silent $BiosLinksURI | \
          jq '.Oem.Hpe.Links')

# Exract HPE Bios configuration URIs
URIs=$(echo $BiosConfigLinks | jq -r '..|."@odata.id"?'  | grep -v null)

# Print HPE Bios URIs and their data type
for uri in $URIs ; do
    echo -n -e "Resource type of ${uri}:\t\t"
    ilorest rawget --silent "${uri}" | \
            jq '."@odata.type"'   | \
            awk -F. '{print $NF}' | \
            tr -d "\""
done

# logout
ilorest logout
```

```text iLO 5 output
Resource type of /redfish/v1/systems/1/bios/baseconfigs/:        HpeBaseConfigs
Resource type of /redfish/v1/systems/1/bios/boot/:               HpeServerBootSettings
Resource type of /redfish/v1/systems/1/bios/kmsconfig/:          HpeKmsConfig
Resource type of /redfish/v1/systems/1/bios/mappings/:           HpeBiosMapping
Resource type of /redfish/v1/systems/1/bios/serverconfiglock/:   HpeServerConfigLock
Resource type of /redfish/v1/systems/1/bios/tlsconfig/:          HpeTlsConfig
Resource type of /redfish/v1/systems/1/bios/iscsi/:              HpeiSCSISoftwareInitiator

```

```text  iLO 6 Output
Resource type of /redfish/v1/systems/1/bios/oem/hpe/baseconfigs/:       HpeBaseConfigs
Resource type of /redfish/v1/systems/1/bios/oem/hpe/boot/:              HpeServerBootSettings
Resource type of /redfish/v1/systems/1/bios/oem/hpe/kmsconfig/:         HpeKmsConfig
Resource type of /redfish/v1/systems/1/bios/oem/hpe/mappings/:          HpeBiosMapping
Resource type of /redfish/v1/systems/1/bios/oem/hpe/serverconfiglock/:  HpeServerConfigLock
Resource type of /redfish/v1/systems/1/bios/oem/hpe/tlsconfig/:         HpeTlsConfig
Resource type of /redfish/v1/systems/1/bios/oem/hpe/iscsi/:             HpeiSCSISoftwareInitiator
```

HPE OEM Bios resources
(except `HpeMappings`, but including the Service Bios extension)
contain a link to a `BaseConfigs` URI. This URI contains the factory
default configuration of the related resource. This configuration is
in the `default` member of a `BaseConfigs[]` array.

The following example retrieves the HPE Bios TLS default
configuration
[URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpetlsconfig)
from an iLO 6.

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select HpeTlsConfig.
ilorest list Oem/Hpe/Links/BaseConfigs --json  | \
        jq -r '..|."@odata.id"?'  | grep -v null

# Or

ilorest rawget --silent "/redfish/v1/Systems/1/bios/oem/hpe/tlsconfig" | \
        jq '.Oem.Hpe.Links.BaseConfigs'
ilorest logout
```

```shell cURL
curl --silent --insecure -u <ilo-user>:password \
     'https://<ilo-ip>/redfish/v1/systems/1/bios/oem/hpe/tlsconfig' | \
     jq '.Oem.Hpe.Links.BaseConfigs'
```

```json Response body
{
  "@odata.id": "/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/baseconfigs/"
}
```

## BIOS resets

This paragraph explains how to reset Bios attributes and
OEM Bios related resources to factory defaults and user defaults.

:::success TIP
The iLOrest user guide contains a
[dedicated section](/docs/redfishclients/ilorest-userguide/bioscommands/)
to Bios related commands.
:::

### Reset Bios attributes to factory defaults

The generic
[concepts/BIOS data model](/docs/concepts/biosdatamodel/#reset-bios-settings-action)
section contains an example to reset the Bios attributes to their factory
default values, using the `Bios.ResetBios` standard Redfish
[action](/docs/concepts/performing_actions/) against an **HPE iLO 6**
based server. After performing this action and a reboot of the server,
the Bios attributes are reset to the values contained in the `default`
member of the `BaseConfigs[]` array mentioned in
the [Default Bios attributes](#default-bios-attributes) paragraph.

The following example resets Bios attributes to factory defaults
using the `Bios.ResetBios` action and cURL against an **iLO 6** based server.
Refer to the
[iLOrest user guide](/docs/redfishclients/ilorest-userguide/bioscommands/#biosdefaults-command)
for performing the same action with iLOrest.

```text Generic request
POST /redfish/v1/Systems/1/Bios/Actions/Bios.ResetBios

Payload:
{}
```

```shell cURL/iLO 6
curl --insecure --silent --location -u <ilo-user>:password \
     '<ilo-ip>/redfish/v1/systems/1/bios/Actions/Bios.ResetBios/' \
     --request POST \
     --header 'Content-Type: application/json' \
     --data '{}'
```

The following example resets Bios attributes to factory defaults
using the `Bios.ResetBios` action and cURL against an **HPE iLO 5**
based server. Refer to the
[iLOrest user guide](/docs/redfishclients/ilorest-userguide/bioscommands/#biosdefaults-command)
for performing the same action with iLOrest.

```text Generic request
POST /redfish/v1/Systems/1/Bios/Settings/Actions/Bios.ResetBios

Payload:
{
    "Action": "Bios.ResetBios"
}
```

```shell cURL/iLO 5
curl --insecure --silent --location  -u <ilo-user>:password \
      'https://<ilo-ip>/redfish/v1/Systems/1/Bios/Settings/Actions/Bios.ResetBios' \
     --request POST                 \
     --header 'Content-Type: application/json' \
     --data '{
                "Action": "Bios.ResetBios"
             }'
```

:::info NOTE
A Python example using the `Bios.ResetBios` action and
the
<a href="https://github.com/HewlettPackard/python-ilorest-library"
target="_blank">HPE Python Library</a>
is available on
<a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/bios_revert_default.py" target="_blank">GitHub</a>.
:::

The following example resets Bios attributes to factory
defaults using a PUT request against the
Bios attributes settings location. This example is valid for both
HPE iLO 5 and iLO 6 based servers.

```text Generic request
PUT /redfish/v1/Systems/1/Bios/Settings

Payload:
{
    "Attributes": {
        "BaseConfig": "default"
    }
}

```

```shell cURL
curl --insecure --silent -u <ilo-user>:password --location \
     --request PUT '<ilo-ip>/redfish/v1/systems/1/bios/settings' \
--header 'Content-Type: application/json' \
--data '{
    "Attributes": {
        "BaseConfig": "default"
    }
}'
```

:::success TIP
You can easily view the attribute values that will be restored with
iLOrest and its `pending`
[command](/docs/redfishclients/ilorest-userguide/bioscommands/#pending-command)
before restarting the server.
:::

:::info NOTE
The `BaseConfig` Bios attribute might not be visible
in the current BIOS or BIOS settings resources.
:::

### Reset Bios attributes to user defaults

HPE allows the saving of custom Bios attributes of iLO based systems.
As mentioned
[earlier](/docs/redfishservices/ilos/supplementdocuments/biosdoc/#default-bios-attributes),
these user defined Bios attributes are stored in
the `default.user` member of the `BaseConfigs[]`
[array](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#baseconfigs-array).

:::info NOTE
The HPE Service Bios HPE extension also contains a `default.user` object
under the `/redfish/v1/Sytems/1/Bios/Oem/Hpe/Baseconfigs` URI that can be
customized as mentioned earlier in this documentation section.
:::

The following example retrieves the default user defined Bios attributes
from an HPE iLO 6.

```text Generic request
GET /redfish/v1/systems/1/bios/Oem/Hpe/BaseConfigs/
```

```shell cURL
curl --insecure --silent --location -u <ilo-user>:password \
     'https://<ilo-ip>/redfish/v1/systems/1/bios/Oem/Hpe/BaseConfigs' | \
     jq '.BaseConfigs[] | ."default.user"'
```

```shell iLOrest
ilorest login 
ilorest rawget --silent /redfish/v1/systems/1/bios/Oem/Hpe/BaseConfigs | \
        jq '.BaseConfigs[] | ."default.user"'
ilorest logout
```

```json Output (truncated)
null
{
  "AMDPerformanceWorkloadProfile": "Disabled",
  "AccessControlService": "Enabled",
  "AcpiHpet": "Enabled",
  "AcpiRootBridgePxm": "Enabled",
  "AcpiSlit": "Enabled",
  "AdminEmail": "titi.content@koulapic.com",
  "AdminName": "Titi Content",
  "AdminOtherInfo": "Toto est Content",
  "AdminPhone": "+3306789012340",
  ...
  ...
  "WakeOnLan": "Enabled",
  "WorkloadProfile": "TransactionalApplicationProcessing",
  "XGMIForceLinkWidth": "Auto",
  "XGMIMaxLinkWidth": "Auto",
  "iSCSISoftwareInitiator": "Enabled"
}


```

The following example resets the Bios attributes to the user default settings.
This PUT request is valid against iLO 5 and iLO 6 based servers.

```text Generic request
PUT /redfish/v1/systems/1/bios/settings

Payload:
{
    "Attributes": {
        "BaseConfig": "default.user"
    }
}
```

```shell cURL
curl --insecure --silent --location -u <ilo-user>:password \
     --header "Content-Type: application/json" \
     --request PUT --data {"Attributes":{"BaseConfig": "default.user"}} \
     https://<ilo-ip>/redfish/v1/Systems/1/bios/settings/
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest biosdefaults --userdefaults
ilorest reboot ForceRestart
ilorest logout
```

:::info NOTE
To reset the Service Bios extension attributes to the `default.user` values,
send a PUT request
with same workload as in the previous example
to the corresponding settings area
(`/redfish/v1/systems/1/Bios/Oem/Hpe/Service/Settings`)
:::

### Reset Bios attributes and HPE Bios resources

HPE iLO offers the possibility to reset both Bios attributes and Bios
related properties in a single operation to their factory defaults using
the OEM HPE property `RestoreManufacturingDefaults` :

From the `BiosSettingsUri` end point, you only need to PATCH
the `RestoreManufacturingDefaults`
property in the request body with the `Yes` value and then reset the server.

The following example resets Bios attributes and Bios related properties
to their factory defaults using cURL and iLOrest.

:::success TIP
As shown in the following example, you can use
the `ilorest biosdefaults --manufacturingdefaults`
[command](/docs/redfishclients/ilorest-userguide/bioscommands/#biosdefaults-command)
to perform this operation, and then reboot the server.
:::

<!-- The following example fails against DL365 / iLO 6 1.55 with ROM 2.10:
Bios attributes are not reset ! -->

```text Generic request
PATCH /redfish/v1/Systems/1/Bios/Settings/

Payload:
{
    "Attributes":{
        "RestoreManufacturingDefaults":"Yes"
        }
}
```

```shell cURL
curl --insecure --silent --location -u <ilo-user>:password \
     --header "Content-Type: application/json" \
     --request PATCH --data {"Attributes":{"RestoreManufacturingDefaults":"Yes"}} \
     https://<ilo-ip>/redfish/v1/Systems/1/bios/settings/
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest biosdefaults --manufacturingdefaults
ilorest reboot ForceRestart
ilorest logout
```

If you just need to reset a single Bios resource set,
send a PUT request to its settings URI and then restart the server.
The following example resets the `TlsConfig` Bios resources using cURL
and iLOrest against an HPE iLO 6 based system.

<!-- The following example needs to be verified with Boot settings,
     KMS config, iSCCI config and Mappings, on Gen10 and Gen11  -->

```text Generic request
PUT /redfish/v1/systems/1/bios/oem/hpe/tlsconfig/settings

Workload:
{
    "BaseConfig": "default"
}

```

```shell cURL
curl --insecure --silent --location \
     --request PUT '<ilo-ip>/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/settings' \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: a9fb364e8fc6eb9f33dfb7c7910bed1c' \
     --data '{
        "BaseConfig": "default"
     }'
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawput TlsDefault.json
ilorest pending
ilorest reboot ForceRestart
ilorest logout

cat TlsDefault.json
{
  "/redfish/v1/systems/1/bios/oem/hpe/tlsconfig/settings": {
    "BaseConfig": "default"
  }
}
```

:::success TIP
The reset to the default `BaseConfig` configuration can be
combined with other property values changes.
This allows to first reset everything to
default and then apply some specific settings with
only one system reboot.

 The following example resets to defaults the
 Bios TLS configuration and configures
 the `VerifyMode` to a specific value (different from the default),
 on an HPE iLO 5 based system.
:::

```text Generic request
PUT /redfish/v1/systems/1/bios/tlsconfig/settings

Workload:
{
    "BaseConfig": "default",
    "VerifyMode": "NONE"
}
```

```shell cURL
curl --insecure --silent --location -u username:password  \
     --header "Content-Type: application/json" \
     -X PUT --data '{"BaseConfig": "default", "VerifyMode": "NONE"}' \
     https://{iLO}/redfish/v1/systems/1/bios/tlsconfig/settings 
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest PUT TLSdata.json
ilorest reboot ColdBoot
ilorest logout

cat TLSdata.json
{
  "/redfish/v1/systems/1/bios/tlsconfig/settings": {
    "BaseConfig": "default",
    "VerifyMode": "NONE"
  }
}

```

:::success TIP
Use the Action specified in the Service Bios extension URI to
reset these attributes to
their factory defaults.
:::

<!-- TBD Need to get help from R&D to understand the
     BaseConfigs/Capabilities !>
::: info NOTE
To determine if the BIOS resource supports reverting the
settings to default, `GET` the BIOS `BaseConfigs` resource,
and view the `Capabilities` property.
:::
-->

<!--
### Change UEFI boot order example

This paragraph is extremely difficult to understand !

 !!! A new section in the Guide/Concepts concerning
     Standard Boot Options with examples must be created.
 !!! A new section in the Supplements Documents explaining
     the added value of the HpeServerBootSettings schema, with examples.

Minimum required session ID privileges: `Configure`

For a full Redfish example click here:
<a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/change_boot_order.py"
target="_blank">change\_boot\_order.py</a>

The BIOS current configuration object contains a link to a
separate read-only resource of type `HpeServerBootSettings`
that lists the UEFI Boot Order current configuration.
This is the system boot order when the system is configured
in the UEFI Boot Mode. The UEFI Boot Order current configuration
resource contains a `BootSources` property, which is an array of
UEFI boot sources. Each object in that array has a unique
`StructuredBootString,` among other properties that identify
that boot source.

The UEFI boot order list itself is represented in a separate
`PersistentBootConfigOrder` property that is an ordered array of
boot sources, each referenced by its `StructuredBootString.`
In addition, a `DesiredBootDevices` property lists a separate ordered
list of desired boot sources that might not be listed in the
`BootSources` property. This is useful for configuring boot from a
specific SCSI or FC LUN or iSCSI target that might have not been
configured (and discovered by BIOS) yet.

As with the BIOS current configuration resource, the UEFI Boot Order
current configuration resource is read only (as evident by the allow header,
which do not list `PATCH` as an allowed operation). To change the
UEFI Boot Order, you need to follow the link to a separate Settings resource
that you can perform a `PATCH` operation on that contains the pending UEFI Boot
Order settings, and update that `PersistentBootConfigOrder` and/or
the `DesiredBootDevices` properties in that Settings resource.
The settings remain pending until next reboot, and the results
are reflected back in the `@Redfish.Settings` property in the
UEFI Boot Order current configuration resource.

1. Iterate through `/redfish/v1/Systems/` and choose a member `ComputerSystem.`
2. Find a child resource of type `HpeServerBootSettings` that allows
3. `PATCH` operations (there might be more than one,
   but for this exercise, choose the first one).

    - `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

4. Obtain the UEFI boot order.

    - `GET {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

5. Create a new JSON object with the `PersistentBootConfigOrder`
   property and change the boot order.

6. Change the UEFI boot order. You only need to send the updated
   `PersistentBootConfigOrder` property in the request body.

    - `PATCH {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

When the sever is reset, the new boot order is validated and used.
-->
