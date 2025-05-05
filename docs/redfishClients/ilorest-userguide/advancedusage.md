---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: true
breadcrumbs:
  hide: true
seo:
  title: Advanced Options
---

# Advanced Options

## Filter Option

This section covers some advanced features
and options available with HPE iLOrest.

Selecting the `EthernetInterface.` type reveals many instances.
To return a single instance we can filter by a property value.
In the following example, we are filtering by `@odata.id`.

By default, `--filter` attempts to match the property and
value case insensitively, but exactly. If no matches are
found HPE iLOrest will return an error.

```Shell Successful filter
ilorest select EthernetInterface.
ilorest list Id @odata.id

@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/1/
Id=1
@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/2/
Id=2
@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/12/
Id=12
@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/11/
Id=11
@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/9/
Id=9
@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/3/
Id=3
@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/10/
Id=10

ilorest list Id @odata.id --filter "@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/1/"
@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/1/
Id=1
```

```shell Unsuccessful filter
ilorest list Id @odata.id --filter "@Odata.id=/redfish/v1/Managers/1/"
Unable to locate instance for 'ethernetinterface.' and filter '@odata.id=/redfish/v1/Managers/1/'
```

Partial string matching is supported with the `*` character.

```shell
iLOrest > list @odata.id Id --filter "@Odata.id=/redfish/v1/Managers/1/*"

@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/1/
Id=1

@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/2/
Id=2
```

Filter is also useful for setting properties to specific instances.

```shell
iLOrest > set FullDuplex=True --filter "@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/2/"
iLOrest > status
Current changes found:
EthernetInterface.v1_4_1(/redfish/v1/Managers/1/EthernetInterfaces/2/) (Currently selected)
        FullDuplex=True
```

### Syntax

--filter [FILTER\_PROPERTY=FILTER\_VALUE]

### Description

If there is more than one instance of a type on the system,
when you select it, the `--filter` option can be used to narrow
down the results. With this narrowed result, you can set
specific instance properties, list specific
instance properties, or get specific instance properties.

:::success TIP
The filter option can be used in the get, list, and set commands.
:::

## Path Option

To start type collection from a specific path include
the `--path` option followed by the path to start from.
This can limit or add new types depending on the path specified.

```shell All data types (Truncated)
iLOrest > login xx.xx.xx.xx -u username -p password
Discovering data...Done
iLOrest > types
Type options:
AccountService.v1_3_0
Bios.v1_0_0
CertificateCollection
Chassis.v1_6_0
ChassisCollection
ComputerSystem.v1_4_0
ComputerSystemCollection
EthernetInterface.v1_4_1
EthernetInterfaceCollection
EventDestinationCollection
EventService.v1_0_8
HostInterface.v1_1_1
HostInterfaceCollection
HpeBaseConfigs.v2_0_0
HpeBaseNetworkAdapter.v2_0_0
HpeBaseNetworkAdapterCollection
HpeBiosMapping.v2_0_0
HpeCertAuth.v1_1_0
HpeCertificate.v1_0_0
HpeCertificateCollection
HpeComponent.v1_0_1
HpeComponentCollection
HpeComponentInstallSet.v1_0_3
HpeComponentInstallSetCollection
HpeComponentUpdateTaskQueueCollection
HpeDirectoryTest.v1_0_0
HpeESKM.v2_0_0
...
```

```shell Data types below specific path
iLOrest > login xx.xx.xx.xx -u username -p password --path /redfish/v1/systems/1/bios/
Discovering data......Done
iLOrest > types
Type options:
#Bios.v1_0_0.Bios
#HpeBaseConfigs.v2_0_0.HpeBaseConfigs
#HpeBiosMapping.v2_0_0.HpeBiosMapping
#HpeScalablePmem.v1_0_0.HpeScalablePmem
#HpeServerBootSettings.v2_0_0.HpeServerBootSettings
#HpeTlsConfig.v1_0_0.HpeTlsConfig
#HpeiSCSISoftwareInitiator.v2_0_0.HpeiSCSISoftwareInitiator
```

### Syntax

--path [URI]

### Description

The path option can set a different URI as the starting point
for type discovery. The default path is `/redfish/v1/`.
This option is useful if you wish to view specific types
 which are not available by default or if you wish to
 lower the time it takes to login. It is not recommended
 to use this flag on systems with a resource directory.
