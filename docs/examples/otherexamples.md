---
title: More Redfish examples
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# More Redfish examples

:::info NOTE
Some examples in this section use a pseudo-code syntax for clarity. JSON pointer syntax is used to indicate specific properties.
:::

:::warning Warning
The [DMTF Redfish Python library](https://github.com/HewlettPackard/python-ilorest-library) and the [HPE Redfish Python library](https://github.com/HewlettPackard/python-ilorest-library) cannot co-exist in the same Python environment. You should uninstall one before installing the other one.
:::

Before accessing Redfish resources and properties, you must create an instance of `RedfishObject`. The class constructor takes the Redfish service hostname/IP address, login username, and password or valid certificate as arguments. The class also initializes a login session, gets systems resources, and message registries as shown in this simple [example](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_redfish.py).

## Changing Boot Settings

### UEFI boot structured name string

This UEFI boot structured name string is unique and represents each UEFI boot option in the
system. Software can identify and manipulate devices using the string’s fixed format as defined
in this specification. Software can assume that the string unique for each boot device in the UEFI
BootOrder.

The UEFI boot structured name string is divided into sections separated by ‘.’ characters, using
the following format:

`<DeviceType>.<Location>.<Instance>.<Sub-instance>.<Qualifier>`

* **DeviceType**: The first section describes the device type (For example, `HD,` `CD,` `NIC,` and
`PCI.`).
* **Location:** The second and the third section together describes the location of the device
(For example, `Slot.7` or `Emb.4`).
* **Instance:** The third section is used with the `Location` section to describe the device location
(for example, the slot number or embedded instance number).
* **Sub-instance:** The fourth section is optional, and is used as a sub-instance number in case
of multiple boot options using the same instance. For example, this can be the port number
for a multi-port NIC.
* **Qualifier:** The fifth section is optional, and describes the logical protocol (for example, IPv4,
IPv6, and iSCSI).

### UEFI boot structured name string examples

**Table 1 Examples**

Name | Description
------------ | -------------
**HD.Emb.4.2** | The second instance of a hard drive in embedded SA controller bay 4
**NIC.Slot.7.2.IPv4** | Port 2 of a NIC in PCIe slot 7, which is enabled for PXE IPv4
**NIC.FlexLOM.1.1.IPv6** | Port 1 of an embedded NIC FlexLOM, which is enabled for PXE IPv6
**PCI.Slot.6.1** | PCIe card in slot 6
**HD.FrontUSB.2.2** | Second partition of a flash drive in front USB port 2

**Table 2 Examples of currently supported Structured Boot Strings**

Device Type | Location | Instance | Sub instance | Qualifier | Structure Boot String Examples
------------ | ------------- | ------------- | ------------- | ------------- | -------------
Smart Array Hard Drive | Embedded | Bay number | Incremental by LUN |  | HD.Emb.1.1
                       | Slot | Slot number | Incremental by LUN |  | HD.Slot.1.1
Smart Array Controller | Embedded | Controller Instance | 1 |  | RAID.Emb.1.1
                       | Slot | Slot number | 1 |  | RAID.Slot.1.1
Dynamic Smart Array Controller (Software RAID) | Embedded | 1 | 1 |  | Storage.Emb.1.1
                       | Slot | Controller Instance | 1 |  | Storage.Slot.1.1
SATA Hard Drive | Embedded | SATA port # 1 |  |  | HD.Emb.1.1
SATA Controller | Embedded | Controller Instance | 1 |  | SATA.Emb.1.1
All other storage controllers (FC, SAS, etc…) | Embedded | 1 | 1 |  | Storage.Emb.1.1
         | Slot | Slot # | 1 |  | Storage.Slot.1.1
Network Adapter | LOM | NIC number, 1 for 1st NIC, 2 for 2nd NIC | Port number | IPv4 or IPv6 or iSCSI or FCoE | NIC.LOM.1.2.IPv4, NIC.LOM.1.2.IPv6
         | FlexibleLOM | FlexibleLOM number, 1 for 1st FlexLOM, 2 for 2nd FlexLOM | Port Number | IPv4 or IPv6 or iSCSI or FCoE | NIC.FlexLOM.2.1.IPv4, NIC.FlexLOM.2.1.IPv6
         | Slot | Slot Number | Port number | IPv4 or IPv6 or iSCSI or FCoE | NIC.Slot.3.2.Ipv4
Fiber Channel Adapter | Slot | Slot number | Port number | IPv4 or IPv6 or iSCSI or FCoE | PCI.Slot.3.1
OS Boot entry (such as Embedded HD.Slot.1.2 “Windows Boot Manager”) | Slot  | Embedded |  | Incremental | HD.Emb.1.2, HD.Slot.1.2
USB Key | Front USB | USB Port # | Incremental by LUN |  | HD.FrontUSB.1.1
        | Rear USB | USB Port # | Incremental by LUN |  | HD.RearUSB.1.1
        | Internal USB | USB Port # |  |  | HD.InternalUSB.1.1
        | iLO virtual media |  |  |  | HD.Virtual.1.1
ISO image | iLO virtual media |  |  |  | CD.Virtual.2.1
Virtual Install Disk (VID) | Embedded store | USB Port # |  |  | HD.VirtualUSB.1.1
Embedded User Partition | Embedded store | USB Port # |  |  | HD.VirtualUSB.2.1
USB CD/DVD | Front USB | USB Port # |  |  | CD.FrontUSB.1.1
           | Rear USB | USB Port # |  |  | CD.RearUSB.1.1
           | Internal USB | USB Port # |  |  | xxxxxxxx
SD card | SD slot | USB Port # |  |  | HD.SD.1.1
Floppy | Front USB, Rear USB | USB Port # |  |  | FD.FrontUSB.1.1, FD.RearUSB.1.1
Embedded UEFI Shell | Embedded | 1 | 1 |  | Shell.Emb.1.1
UEFI applications (embedded in the ROM firmware) (Diag, System Utility, etc..) | Embedded | 1 | Incremental |  | App.Emb.1.1, App.Emb.1.2, App.Emb.1.3
File | URL | Different URL Increased by 1 | 1 |  | File.URL.1.1
HPE RAM Disk Device | RAM Memory | 1 | Port Number |  | RAMDisk.Emb.1.1
Special USB device class with Device Path: UsbClass(0xFFFF, 0xFFFF, 0xFF, 0xFF, 0xFF) | Any USB device in the system | 1 |  |  | Generic.USB.1.1
Empty slot, no device | Slot | Slot number | 1 |  | PCI.Slot.2.1
Unknown device | Embedded Slot Unknown location | Slot number or 1 | Incremental |  | Unknown.Slot.1.1, Unknown.Unknown.1.1
NVMe | Slot | Slot number | NVMe drive number (The number is based on bus enumeration sequence). |  | NVMe.Slot.1.1
NVMe | Embedded | Bay number | 1 (Each drive bay has 1 NVMe drive.) |  | NVMe.Emb.1.1

### Change UEFI boot order example

Minimum required session ID privileges: `Configure`

For a full Redfish example click here: <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/change_boot_order.py" target="_blank">change\_boot\_order.py</a>

The BIOS current configuration object contains a link to a separate read-only resource of type
`HpeServerBootSettings` that lists the UEFI Boot Order current configuration. This is the system
boot order when the system is configured in the UEFI Boot Mode. The UEFI Boot Order current
configuration resource contains a `BootSources` property, which is an array of UEFI boot sources.
Each object in that array has a unique `StructuredBootString,` among other properties that
identify that boot source.

The UEFI boot order list itself is represented in a separate `PersistentBootConfigOrder`
property that is an ordered array of boot sources, each referenced by its
`StructuredBootString.` In addition, a `DesiredBootDevices` property lists a separate
ordered list of desired boot sources that might not be listed in the `BootSources` property. This
is useful for configuring boot from a specific SCSI or FC LUN or iSCSI target that might have not
been configured (and discovered by BIOS) yet.

As with the BIOS current configuration resource, the UEFI Boot Order current configuration
resource is read only (as evident by the allow header, which do not list `PATCH` as an allowed
operation). To change the UEFI Boot Order, you need to follow the link to a separate Settings
resource that you can perform a `PATCH` operation on that contains the pending UEFI Boot Order
settings, and update that `PersistentBootConfigOrder` and/or the `DesiredBootDevices`
properties in that Settings resource. The settings remain pending until next reboot, and the results
are reflected back in the `@Redfish.Settings` property in the UEFI Boot Order current configuration
resource.

1. Iterate through `/redfish/v1/Systems/` and choose a member `ComputerSystem.` Find a child resource of type
`HpeServerBootSettings` that allows `PATCH` operations (there might be more than one, but for this exercise, hoose the first one).

* `{ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

2. Obtain the UEFI boot order.

* `GET {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

3. Create a new JSON object with the `PersistentBootConfigOrder` property and change the boot order.

4. Change the UEFI boot order. You only need to send the updated `PersistentBootConfigOrder` property in
the request body.

* `PATCH {ilo-ip-address}/redfish/v1/Systems/1/BIOS/Boot/Settings/`

When the sever is reset, the new boot order is validated and used.

## Reset a Server

Server power control is a system-node-level entity, not a chassis-level control. For example, you
can turn on one node in a multi-node chassis. You control power by performing an HTTP operation
on a computer system node object.

Some operations in the interface are not truly RESTful `GET,` `PUT,` `POST,` `DELETE,` or `PATCH.` They
are called custom actions and are performed with an HTTP `POST` containing a specific request
payload. Typically, actions are defined when the action you want to perform is not adequately
represented by the properties available in the type. For example, a power button is not readable,
so you cannot `GET` the status of the power button. In this case, pressing the power button is an
action.

Actions are `POST` operations with an `Action` property that names the action to perform and zero
or more parameter properties.

### Reset a server example

Minimum required session ID privileges: Configure

```shell cURL
curl  --insecure -u username:password  \
      --header "Content-Type: application/json" \
      --request POST --data '{"ResetType": "ForceRestart"}'\
      https://{iLO}/redfish/v1/Systems/1/Actions/ComputerSystem.Reset
```

1. Iterate through `/redfish/v1/Systems` collection and choose a member `ComputerSystem` that allows `POST` operations.

* `{ilo-ip-address}/redfish/v1/Systems/1`

2. Get the "Actions" -> "#ComputerSystem.Reset" -> "target" Uri.

3. Construct an Action object to submit to iLO.

* `{"ResetType":"ForceRestart"}`

4. Reset the server by posting the body to the target Uri.

* `POST {ilo-ip-address}/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/`

The server resets and reboots.

## Download Active Health System Data

For a full Redfish example click here: <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_ahs_data.py" target="_blank">get\_ahs\_data.py</a>

Active Health System (AHS) data may be accessed by first discovering the resource of type `HpiLOActiveHealthSystem`.  This is typically at `https://{iLO}/redfish/v1/managers/{item}/activehealthsystem/`.  Refer to the section on Iterating Collections for details on how to navigate the data model.

1. Iterate the Managers collection at `https://{iLO}/redfish/v1/managers/`.  For traditional iLO-based server architectures there is a single manager representing iLO 5 itself.

2. Find the `Link` property referring to the `HpiLOActiveHealthSystem` and follow that link.

3. GET the `HpiLOActiveHealthSystem` resource and look for the URI indicated by `Links.AHSLocation.extref`.

4. Perform a GET to this URI with the following query parameters to define the download time range and embed customer case information:

* `from`:  the starting date of the download range (in YYYY-MM-DD format)
* `to`:    the ending date of the download range (in YYYY-MM-DD format)
* `case_no`:  case identification string
* `co_name`:  company or organization name
* `contact`:  contact name
* `email`:  contact email address
* `phone`:  contact phone number

If successful, the response is an HTTP 200 level status code and a binary download which can be saved to a file.

## Finding the iLO mac address

For a full Redfish example click here: <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/find_ilo_mac_address.py" target="_blank">find\_ilo\_mac_address.py</a>

## Adding an iLO user account

For a full Redfish example click here: <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/add_user_account.py" target="_blank">add_user_account.py</a>

## Setting a license key

```shell cURL
curl --insecure -u username:password  \
     --header "Content-Type: application/json" \
     -X POST --data "@data.json" \
     https://{iLO}/redfish/v1/Managers/1/LicenseService/ 
```

```json Contents of data.json
{"LicenseKey": "xxxxx-xxxxx-xxxxx-xxxxx-xxxxx"}
```

For a full Redfish example click here: <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_license_key.py" target="_blank">set\_license\_key.py</a>

## Changing an iLO user account

For full Redfish examples click here: <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/modify_user_account.py" target="_blank">modify\_user\_account.py</a>, <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/remove_account.py" target="_blank">remove_account.py</a>
