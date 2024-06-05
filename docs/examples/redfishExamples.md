---
seo:
  title: Redfish examples
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Redfish examples

This section provides several standard Redfish and HPE OEM specific examples.
Other examples can be found throughout the document like in the
[performing action](/docs/concepts/performing_actions/#oem-action-extensions)
and in the [supplement documents](/docs/redfishservices/ilos/supplementdocuments) sections.

## BIOS Redfish examples

This section presents standard Redfish requests related to the BIOS/UEFI
subsystem. HPE specific BIOS/UEFI examples are presented in the
[HPE BIOS](/docs/redfishservices/ilos/supplementdocuments/biosdoc/)
section of the supplement documents.

### Reading BIOS current settings

The following example retrieves the current BIOS configuration
of an iLO based server using cURL and Python.

:::warning Warning
As mentioned in the
[Getting Started](/docs/concepts/gettingstarted/) section, the
<a href="https://github.com/DMTF/python-redfish-library" target="blank"> DMTF Redfish Python library</a>
and the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> HPE Redfish Python library</a>
cannot co-exist in the same Python environment. You should uninstall
one before installing the other one.
:::

```shell cURL
curl --insecure -u username:password --location \
     https://{iLO}/redfish/v1/systems/1/bios/
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
            "target": "/redfish/v1/systems/1/bios/Actions/Bios.ChangePasswords/"
        },
        "#Bios.ResetBios": {
            "target": "/redfish/v1/systems/1/bios/Bios.ResetBios/"
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

### Update of a BIOS attribute

On an iLO based server, the minimum required session ID privileges
is `Configure`. The following example modifies the
`AdminName`, `AdminEmail` and `AdminPhone` BIOS attributes on an
iLO based server.

:::success TIP
When using iLOrest to set properties, you can include special characters
(including spaces) by surrounding both the key and the value with double
quotes.  
:::

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select Bios.
ilorest set "AdminName=John D'euf" AdminEmail="john.deuf@koulapic.com" AdminPhone="+3367890123"
ilorest commit
ilorest reboot ColdBoot
ilorest logout
```

```shell cURL
curl --insecure -u username:password  \
     --header "Content-Type: application/json" -X PATCH \
     --data "@data.json" \
     https://{iLO}/redfish/v1/Systems/1/bios/settings/ 
```

```json Content of data.json file
{
    "Attributes": {
        "AdminName": "John D'euf",
        "AdminEmail": "john.deuf@koulapic.com",
        "AdminPhone": "+3367890123"
    }
}
```

Python <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/change_bios_setting.py" target="_blank">Redfish example</a>

### BIOS UEFI Secure Boot enablement

The standard Redfish `SecureBootEnable` property is part of
the `SecureBoot` data type. A reboot of the system is
required to enable this property.

The following example enables Secure Boot on an iLO based server.
The minimum required session privilege is `Configure.`

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select SecureBoot.
ilorest set SecureBootEnable=True --commit
ilorest reboot ColdBoot
ilorest logout
```

```shell cURL
curl --insecure -u username:password  \
     --header "Content-Type: application/json" \
     -X PATCH --data "@data.json" \
     https://{iLO}/redfish/v1/Systems/1/SecureBoot/ 
```

```json Content of the data.json file
    {"SecureBootEnable":true}
```

For a full Python example click here:
<a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/enable_secure_boot.py" target="_blank">enable\_secure\_boot.py</a>

### Reset BIOS settings to defaults

The following example resets BIOS attributes in an iLO 6 based
server using the Redfish standard action.
HPE provides
[alternate methods](/docs/redfishservices/ilos/supplementdocuments/biosdoc/)
with added value to achieve a similar goal.

```text Generic POST request
POST /redfish/v1/Systems/1/Bios/Actions/Bios.ResetBios
```

```json Request body
{}
```

## Server reset

Server power control belongs to the global `ComputerSystem` resource.
It is not part of the `Chassis` resource. The reason is because some
systems can be configured with multiple Operating Systems, each of
them spanning one or several chassis.
The <a href="https://www.hpe.com/info/superdome" target="_blank">HPE Superdome Flex</a>
is one of them. With this model,
you can control the power of each operating
system independently of each other by performing an HTTP operation
on the desired Computer System item.

The standard method to reset a server, is to use the `ComputerSystem.Reset`
Redfish standard action.
Refer to the [Performing actions](/docs/concepts/performing_actions/)
section for detail on the `Actions` object.

The following example resets an HPE iLO 6 based server
using the standard Redfish method.
The Minimum required session privilege is `Configure`.

```text Generic GET server reset actions
GET /redfish/v1/Systems/1/?$select=Actions
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
    "@odata.etag": "W/\"13208B80\"",
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
    }
}
```

```shell cURL ForceRestart
curl  --insecure -u username:password  \
      --header "Content-Type: application/json" \
      --request POST --data '{"ResetType": "ForceRestart"}'\
      https://{iLO}/redfish/v1/Systems/1/Actions/ComputerSystem.Reset
```

```shell iLOrest GracefulRestart
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest boot GracefulRestart
ilorest logout
```

## Management Controller reset

The following example lists the
possible standard Redfish actions against an
HPE iLO 5 (or later) management controller with
cURL and the HPE iLOrest Redfish client.

:::info NOTES
By design, a Management Controller reset has no impact on the
Operating System running in the server. You can safely restart
(abruptly or gracefully) the Management Controller while th
 Operating System is up and running.
:::

```text Generic request
GET https://ilo-ip/redfish/v1/Managers/1/?$select=Actions
```

```shell cURL
curl --insecure --silent --user ilo-user:password  \
     --request GET 'https://ilo-ip/redfish/v1/Managers/1/?$select=Actions' | jq
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get --json Actions --select Manager.
ilorest logout
```

```json Body response
{
  "Actions": {
    "#Manager.Reset": {
      "ResetType@Redfish.AllowableValues": [
        "ForceRestart",
        "GracefulRestart"
      ],
      "target": "/redfish/v1/Managers/1/Actions/Manager.Reset/"
    }
  }
}
```

The above example returns `ForceRestart` and `GracefulRestart`
for possible Manager Controller reset parameters,
as mentioned in the resource definition
[section](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_manager_resourcedefns{{process.env.LATEST_FW_VERSION}}/#actions).
Use the `GracefulRestart` value to wait for
Management Controller running tasks to complete or to be
gently stopped before restarting. Use `ForceRestart` to restart the
Management Controller abruptly.

:::info NOTE
HPE iLO does not have the possibility to stop running
tasks before triggering its restart. As a consequence,
the `GracefulRestart` action is implemented as a `ForceRestart`.
:::

The following example resets an HPE iLO 5 (or later) using the
standard Redfish `Manager.Reset` action with cURL and the
`ilorest iloreset` [macro-command](/docs/redfishclients/ilorest-userguide/ilocommands/#iloreset-command).

:::success TIP
Refer to the
[Authentication and sessions](/docs/concepts/redfishauthentication/#session-authentication)
to learn how to create a session token like the one used by cURL
in the next example.
:::

```text Generic request
POST /redfish/v1/Managers/1/Actions/Manager.Reset/

Body:
{
    "ResetType": "ForceRestart"
}
```

```shell cURL
curl --location --request POST 'ilo-ip/redfish/v1/Managers/1/Actions/Manager.Reset/' \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: 2e6886a529d5af368d46890ff82e3ce5' \
     --data-raw '{"ResetType": "ForceRestart"}'
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest iloreset
ilorest logout 
```

## GET MAC address of a Management Controller

The goal of this example is to explain the workflow to retrieve
the MAC address of the active management controller Ethernet interface of
a server, connected to a physical network. MAC addresses of other
network interfaces (ComputerSystem, HostInterfaces) are excluded.
With this methodology, you should be able to write a long term
Redfish client that works against any Redfish service implementation,
including non-HPE.

:::info NOTE
The following methodology targets Redfish services compliant with
version 1.6.0 or above.

Redfish services compliant with earlier versions must start browsing
the Redfish tree at `/redfish/v1`.
:::

 The <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.4_0.pdf" target="_blank">Redfish schema specification</a>,
 provides, in table 5.2, the exhaustive list of the standard collections
 with their associated URIs. One of them is the `EthernetInterfaceCollection`.

The URIs related to `EthernetInterfaceCollection` subordinate the
following major subsystems:
`Chassis`, `CompositionService` `ResourceBlocks`, `Systems` and `Managers`.
Considering the goal of this exercise, you need to focus on the URIs
below the  `Managers` subsystem: `/redfish/v1/Managers/{ManagerId}/EthernetInterfaces`
and `/redfish/v1/Managers/{ManagerId}/HostInterfaces/{HostInterfaceId}/HostEthernetInterfaces`.

The second URI relates to `HostInterfaces`
(i.e. virtual NIC on iLO based servers) allowing the access to the
Management Controller from the operating system of the server.
This type of ethernet interface is not relevant to this exercise as
mentioned in the fist paragraph. Hence, the only relevant URI
for this exercise is: `/redfish/v1/Managers/{ManagerId}/EthernetInterfaces`.

This URI is compliant with the Redfish Resource URI pattern definition
(<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.6.0.pdf" target="_blank">paragraph 7.5.4</a>)
as it contains the `{ManagerId}` string.
Long term and portable Redfish clients must discover the
list of possible Manager Identifiers and chose the most relevant one.
The discovery of the Management Identifiers is performed with a
GET operation toward the `ManagerCollection` URI.

The following example provides portable methods to retrieve
controller manager Identifiers.

```text Generic GET request
GET /redfish/v1/Managers
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get Members --json --selector ManagerCollection |\
        jq -r '[.Members][][]["@odata.id"]'
```

```shell cURL
curl --insecure --silent --user ilo-user:password \
     https://ilo-ip/redfish/v1/Managers | \
     jq -r '[.Members][][]["@odata.id"]'
```

```json HPE iLO response
{
  "@odata.id": "/redfish/v1/Managers/1/"
}
```

```json OpenBMC response
{
  "@odata.id": "/redfish/v1/Managers/bmc/"
}
```

```json HPE Superdome Flex response
{
  "@odata.id": "/redfish/v1/Managers/RMC/"
}
```

Once the Manager identifier URI is discovered,
you can list the collection of Ethernet Interfaces
attached to this particular manager:

The following example retrieves the collection of
Ethernet interfaces of an iLO based server.

```text Generic GET request
GET /redfish/v1/Managers/1/EthernetInterfaces
```

```shell cURL
curl --insecure --silent --user ilo-user:password \
     https://ilo-ip/redfish/v1/Managers/1/EthernetInterfaces | \
     jq '.Members[]'
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get "@odata.id" --json --select EthernetInterface. --filter "@odata.id"="/redfish/v1/Managers/*" | jq '.[]'
ilorest logout
```

:::success TIP
In the above iLOrest example, you have to select
only _Managers*_ interfaces. This is because iLOrest uses
the `EthernetInterface` [data type](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_network_resourcedefns{{process.env.LATEST_FW_VERSION}}/#ethernetinterface)
which owns several instances (URIs).

Failure to do so retrieves also `Systems` interfaces.  
:::

The last step is to identify the interface physically connected
to the management network among the URIs discovered in the previous step.
This can be done with the `LinkUp` property and the following pseudo code:

```text Pseudo code
create list of Managers Ethernet interface URIs
for each interface in list ; do
   if LinkStatus == LinkUp then
      print MacAddress
   fi
endfor
```
  
```shell cURL
ManagerEthernetInterfacesList=$(curl --silent --location --insecure \
    --request GET 'ilo-hst320g11-7/redfish/v1/Managers/1/EthernetInterfaces/' \
    --header 'Content-Type: application/json' \
    --header 'X-Auth-Token: a21e961450965d9f181cad31b094bc88' | \
    jq -r '.Members[]."@odata.id"')

for i in $ManagerEthernetInterfacesList ; do 
    linkStatus=$(curl --silent --insecure --location \
    --request GET "ilo-hst320g11-7${i}" \
    --header 'Content-Type: application/json' \
    --header 'X-Auth-Token: a21e961450965d9f181cad31b094bc88' | \
    jq -r '.LinkStatus')

    if [[ $linkStatus == "LinkUp" ]]; then
       echo 
       curl --silent --insecure --location \
            --request GET "ilo-hst320g11-7${i}" \
            --header 'Content-Type: application/json' \
            --header 'X-Auth-Token: a21e961450965d9f181cad31b094bc88' | \
            jq -r '.MACAddress'
    fi 
done
```  

:::info NOTE
It is possible that Redfish services include Host Interfaces
(also called vNICs) in the Manager `EthernetInterfaceCollection`
(i.e. iLO Redfish). If at least one is enabled, the above script
will print its MAC address in addition to the MAC address of the
physical interface.

In that case, you will have to find a property common to all your
computer vendors and use it to filter out undesirable interfaces.
This property could belong to the OEM extension.
:::

<!-- >
Need to work on following solution with iLOrest and jq.
The trick would be to find a suitable way to test LinkStatus with jq !

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ManagerEtherInterfaces="$(ilorest get "@odata.id" --json --select EthernetInterface.  | awk -F'"' '/Managers/ {print $(NF-1)}')"
ilorest get --json Name "@odata.id"  LinkStatus MacAddress --filter "@odata.id"="/redfish/v1/Managers/*" | jq '.[]'
ilorest logout
```

-->

For a full Redfish example click here:
<a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/find_ilo_mac_address.py" target="_blank">find\_ilo\_mac_address.py</a>

## Configuring user-defined temperature threshold

iLO 6 offers the possibility to configure user-defined temperature
thresholds using a Redfish action, and resulting in IML
log entries generation if exceeded.

:::info NOTE

System defined temperature threshold cannot be modified.
User defined temperature thresholds provide finer granularity
to temperature thresholds.

:::

The following example is similar to
[this one](/docs/concepts/performing_actions/#user-defined-temperature-threshold-creation)
in the performing actions section. It configures a user-defined temperature
warning threshold on sensor 1 (Inlet-Ambient) of an iLO 6 based server.
If the ambient temperature is exceeded, a warning IML entry is created.

:::success TIP

Replace `AlertType=Warning` with `AlertType=Critical`
to create a `CriticalUserTempThreshold` property in the sensor entry.
If the ambient temperature is exceeded, a warning IML entry is created.

:::

```text Generic Action
POST /redfish/v1/Chassis/1/Thermal/Actions/Oem/Hpe/HpeThermalExt.SetUserTempThreshold/
```

```json Request body
{
    "SensorNumber": 1,
    "ThresholdValue": 39,
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

Once a user defined temperature threshold is created,
it is possible to retrieve the corresponding properties as
shown in the following example.

```text Generic request
GET /redfish/v1/Chassis/1/Thermal/?$select=Temperatures/Oem/Hpe/
```

```json Response body (truncated)
{
    "@odata.context": "/redfish/v1/$metadata#Thermal.Thermal",
    "@odata.etag": "W/\"92252764\"",
    "@odata.id": "/redfish/v1/Chassis/1/Thermal/",
    "@odata.type": "#Thermal.v1_7_1.Thermal",
    "Temperatures": [
        {
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeSeaOfSensors.HpeSeaOfSensors",
                    "@odata.type": "#HpeSeaOfSensors.v2_1_0.HpeSeaOfSensors",
                    "LocationXmm": 15,
                    "LocationYmm": 0,
                    "WarningTempUserThreshold": 39
                }
            }
        },
        ....
}
```

## Server Thermal Configuration

Both BIOS and iLO/Chassis Redfish subsystems are
able to manage the thermal configuration (fan cooling)
of iLO based HPE servers. This paragraph provides detailed
examples using both methods.

### Fan management using BIOS

Fan cooling management can be performed with the
`ThermalConfig` [BIOS attribute](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_bios_resourcedefns{{process.env.LATEST_FW_VERSION}}/#attributes).

:::info NOTE:

A reboot of the server **is required** to take
BIOS attribute modifications, including `ThermalConfi`, into account.

:::

```shell ThermalConfig description with iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest info ThermalConfig --select Bios
ilorest logout
```

```text iLOrest output
NAME
    ThermalConfig


DISPLAY NAME
    Thermal Configuration


HELP TEXT
    Use this option to select the fan cooling solution for the system.
    Optimal Cooling provides the most efficient solution by
    configuring fan speeds to the minimum required speed to provide
    adequate cooling. Increased Cooling runs fans at higher speeds to
    provide additional cooling. Select Increased Cooling when third-
    party storage controllers are cabled to the embedded hard drive
    cage, or if the system is experiencing thermal issues that cannot
    be resolved. Maximum cooling provides the maximum cooling
    available on this platform. Enhanced CPU Cooling runs the fans at
    a higher speed to provide additional cooling to the processors.
    Selecting Enhanced CPU Cooling may improve system performance with
    certain processor intensive workloads.


TYPE
    Enumeration


READ-ONLY
    False


POSSIBLE VALUES
    OptimalCooling
    IncreasedCooling
    MaxCooling
    EnhancedCPUCooling
```

```shell Set ThermalConfig with iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest set ThermalConfig=IncreasedCooling --select Bios --commit

ilorest reboot ForceRestart
ilorest logout
```

### Fan management using Thermal

Fan cooling management can also be performed
with the `ThermalConfiguration` property.

:::info NOTE

A reboot of the server **is not required** to take
`Thermal` modifications into account.

:::

```text Generic PATCH request
PATCH /redfish/v1/Chassis/1/Thermal
```

```json Request body
{
    "Oem": {
        "Hpe": {
            "ThermalConfiguration": "EnhancedCooling"
        }
    }
}
```

```shell
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest select Thermal.
ilorest get Oem/Hpe/ThermalConfiguration --json
ilorest logout
```

```json Response body
{
  "Oem": {
    "Hpe": {
      "ThermalConfiguration": "OptimalCooling"
    }
  }
}
```

:::success TIP

The possible values for the `ThermalConfiguration` property are listed in the
[resource definition](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#oemhpethermalconfiguration) section:

- `OptimalCooling`
- `IncreasedCooling`
- `MaximumCooling`
- `EnhancedCooling`
- `AcousticMode` (Edgeline-only option.
  Prioritizes minimizing noise from the enclosure.)

:::

```shell Set ThermalConfiguration with iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest set Oem/Hpe/ThermalConfiguration="EnhancedCooling" --commit
ilorest logout
```

```json Response body and return code
payload {'/redfish/v1/Chassis/1/Thermal/': {'Oem': {'Hpe': {'ThermalConfiguration': 'EnhancedCooling'
}}}}
[200] The operation completed successfully.
```

## Redfish iscsi configuration example

:::info NOTE
Some examples in this section use a pseudo-code syntax for clarity.
JSON pointer syntax is used to indicate specific properties.
:::

:::warning Warning
The <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> DMTF Redfish Python library</a>
and the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> HPE Redfish Python library</a>
cannot co-exist in the same Python environment.
You should uninstall one before installing the other one.
:::

Before accessing Redfish resources and properties,
you must create an instance of `RedfishObject`.
The class constructor takes the Redfish service hostname/IP address,
login username, and password or valid certificate as arguments.
The class also initializes a login session, gets systems resources,
and message registries as shown in this simple
<a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_redfish.py" target="_blank"> example</a>.

### Example iSCSI Software Initiator configuration

The iSCSI Software Initiator allows you to configure an iSCSI
target device to be used as a boot
source. The BIOS current configuration object contains a
link to a separate resource of type
`HpeiSCSISoftwareInitiator.` The BIOS current configuration
resource and the iSCSI Software
Initiator current configuration resources are read-only.
To change iSCSI settings, you need to
follow another link to the `Settings` resource, which allows
`PUT` and `PATCH` operations.

The iSCSI target configurations are represented in an `iSCSISources`
property, that is an
array of objects, each containing the settings for a single target.
The size of the array represents
the total number of iSCSI boot sources that can be configured at the same time.
Many mutable
properties exist, including `iSCSIAttemptInstance,` which can be set
to a unique integer
in the range [1, _N_], where _N_ is the boot sources array size.
By default, this _instance number_ is 0
for all objects, indicating that the object should be ignored when
configuring iSCSI.

Each object also contains two read-only properties—`StructuredBootString` and
`UEFIDevicePath`, which are only populated after
the target has been successfully configured
as a boot source. More information about each property
is available in the corresponding schema.
The iSCSI initiator name is represented by the `iSCSIInitiatorName` property.

An additional read-only property, `iSCSINicSources,`
is only shown in the iSCSI current
configuration resource. This property is an array of strings
representing the possible NIC instances
that can be used as targets for iSCSI boot configuration.
To confirm which NIC device each string
corresponds to, it is recommended to cross-reference two other resources:

- A resource of type `HpeBiosMapping` can be found through a `Mappings`
  link in the BIOS
  current configurations resource. Within its
  `BiosPciSettingsMappings` property is an
array of mappings between BIOS-specific device
strings (such as the `NIC` source string)
and a `CorrelatableID` string that can be used to refer to the same device
in non-BIOS contexts.
- A collection of `HpeServerPciDevices` may be found through a
  PCIDevices link in the
`ComputerSystem` resource.
The specific PCI device corresponding to the NIC instance
can be found by searching for the `CorrelatableID`
that will usually match a
`UEFIDevicePath.` Once the `HpeServerPciDevice`
resource is found, you have access
to all the human-readable properties useful for describing a NIC source.

Changing the `iSCSISources` and `iSCSIInitiatorName` settings can be done
through
`PATCH` operations, very similar to how `HpeBios` settings are changed.
However, whereas all BIOS
settings are located in a single flat object, iSCSI settings are
nested into arrays and sub-objects.
When doing a `PATCH` operation, use empty objects (`{}`)
in place of those boot source objects
that you do not want to alter.

The following example covers a situation where you have configured
two iSCSI boot sources,
and you would like to edit some existing settings, and add a third source.

1. Iterate through `/redfish/v1/Systems` and choose a member `ComputerSystem.`
   Find a child resource of type `HpeiSCSISoftwareInitiator`
   that allows PATCH operations.

    - `{ilo-address}/redfish/v1/Systems/1/BIOS/iSCSI/Settings/`

2. Inspect the existing `iSCSIBootSources` array.
   You need to inspect the
   `iSCSIBootAttemptInstance` property of
   each object to find the boot sources you are prefer to change.

3. Create a new JSON object with the `iSCSIBootSources` property.

    - Use an empty object in the position of instance 1 to
      indicate that it should not be modified.
    - Use an object in the position of instance 2
      containing the properties that should be modified—all omitted properties will remain unmodified.

    - To add a new boot source,
      find any position of instance 0 and replace it with an object
      containing all the new settings, and most importantly,
      a new unique value of iSCSIBootAttemptInstance.

4. Change the iSCSI software initiator settings.

    - `PATCH {ilo-address}/redfish/v1/Systems/1/BIOS/iSCSI/Settings/`

```json Existing example resource (truncated)
{
    "iSCSISources": [
        {
             "iSCSIAttemptInstance": 1,
             ...
        },
        {
             "iSCSIAttemptInstance": 2,
             ...
        },
        {
             "iSCSIAttemptInstance": 0,
             ...
        },
        {
             "iSCSIAttemptInstance": 0,
             ...
        }
    ],
    ...
}
```

```json PATCH workload (truncated)
{
  "iSCSISources": [
    {},
    {
      "iSCSIConnectRetry": 2
    },
    {
      "iSCSIAttemptInstance": 3,
      "iSCSIAttemptName": "Name",
      "iSCSINicSource": "NicBootX"
      ...
    },
    {}
  ]
}
```
