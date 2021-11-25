---
title: iscsi configuration example
toc:
  enable: true
  maxDepth: 2
disableLastModified: true
---

# Redfish iscsi configuration example

:::info NOTE
Some examples in this section use a pseudo-code syntax for clarity. JSON pointer syntax is used to indicate specific properties.
:::

:::warning Warning
The [DMTF Redfish Python library](https://github.com/HewlettPackard/python-ilorest-library) and the [HPE Redfish Python library](https://github.com/HewlettPackard/python-ilorest-library) cannot co-exist in the same Python environment. You should uninstall one before installing the other one.
:::

Before accessing Redfish resources and properties, you must create an instance of `RedfishObject`. The class constructor takes the Redfish service hostname/IP address, login username, and password or valid certificate as arguments. The class also initializes a login session, gets systems resources, and message registries as shown in this simple [example](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_redfish.py).

## Example iSCSI Software Initiator configuration

The iSCSI Software Initiator allows you to configure an iSCSI target device to be used as a boot
source. The BIOS current configuration object contains a link to a separate resource of type
`HpeiSCSISoftwareInitiator.` The BIOS current configuration resource and the iSCSI Software
Initiator current configuration resources are read-only. To change iSCSI settings, you need to
follow another link to the `Settings` resource, which allows `PUT` and `PATCH` operations.

The iSCSI target configurations are represented in an `iSCSISources` property, that is an
array of objects, each containing the settings for a single target. The size of the array represents
the total number of iSCSI boot sources that can be configured at the same time. Many mutable
properties exist, including `iSCSIAttemptInstance,` which can be set to a unique integer
in the range [1, _N_], where _N_ is the boot sources array size. By default, this _instance number_ is 0
for all objects, indicating that the object should be ignored when configuring iSCSI.



Each object also contains two read-only properties—`StructuredBootString` and
`UEFIDevicePath`, which are only populated after the target has been successfully configured
as a boot source. More information about each property is available in the corresponding schema.
The iSCSI initiator name is represented by the `iSCSIInitiatorName` property.

An additional read-only property, `iSCSINicSources,` is only shown in the iSCSI current
configuration resource. This property is an array of strings representing the possible NIC instances
that can be used as targets for iSCSI boot configuration. To confirm which NIC device each string
corresponds to, it is recommended to cross-reference two other resources:

* A resource of type `HpeBiosMapping` can be found through a `Mappings` link in the BIOS
current configurations resource. Within its `BiosPciSettingsMappings` property is an
array of mappings between BIOS-specific device strings (such as the `NIC` source string)
and a `CorrelatableID` string that can be used to refer to the same device in non-BIOS
contexts.
* A collection of `HpeServerPciDevices` may be found through a PCIDevices link in the
`ComputerSystem` resource. The specific PCI device corresponding to the NIC instance
can be found by searching for the `CorrelatableID` that will usually match a
`UEFIDevicePath.` Once the `HpeServerPciDevice` resource is found, you have access
to all the human-readable properties useful for describing a NIC source.

Changing the `iSCSISources` and `iSCSIInitiatorName` settings can be done through
`PATCH` operations, very similar to how `HpeBios` settings are changed. However, whereas all BIOS
settings are located in a single flat object, iSCSI settings are nested into arrays and sub-objects.
When doing a `PATCH` operation, use empty objects (`{}`) in place of those boot source objects
that you do not want to alter.

The following example covers a situation where you have configured two iSCSI boot sources,
and you would like to edit some existing settings, and add a third source.

1. Iterate through `/redfish/v1/Systems` and choose a member `ComputerSystem.` Find a
child resource of type `HpeiSCSISoftwareInitiator` that allows PATCH operations.

* `{ilo-address}/redfish/v1/Systems/1/BIOS/iSCSI/Settings/`

2. Inspect the existing `iSCSIBootSources` array. You need to inspect the
`iSCSIBootAttemptInstance` property of each object to find the boot sources you are
prefer to change.

3. Create a new JSON object with the `iSCSIBootSources` property.

*  Use an empty object in the position of instance 1 to indicate that it should not be modified.
Use an object in the position of instance 2 containing the properties that should be
modified—all omitted properties will remain unmodified.
  * To add a new boot source, find any position of instance 0 and replace it with an object
containing all the new settings, and most importantly, a new unique value of
iSCSIBootAttemptInstance.

4. Change the iSCSI software initiator settings.

* `PATCH {ilo-address}/redfish/v1/Systems/1/BIOS/iSCSI/Settings/`

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
