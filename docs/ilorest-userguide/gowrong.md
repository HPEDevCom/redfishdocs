---
title: When things go wrong
toc:
   enable: true
   maxDepth: 2
---

# When things go wrong

This section provides debug information to help when things go wrong. If this section does not solve your issue please contact support or submit a [GitHub issue](https://github.com/HewlettPackard/python-redfish-utility/issues) to our open source project.

## I need return codes to script, but I'm not seeing any in the output

:::success Tip
You can see return codes and other information with the verbose flag ( `-v`, `--verbose`).
:::

```shell iLOrest
ilorest --verbose
iLOrest : RESTful Interface Tool version 3.0
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
iLOrest > login
Discovering data...Done
Monolith build process time: 0.259999990463
iLOrest return code: 0
```

### Symptom

I am unable to see return codes in the output.

### Cause

The verbose global flag ( `-v,--verbose` ) is not being used.

### Action

Use the verbose global flag ( `-v,--verbose` ), which will output more information including return codes.

## How can I see exactly what iLOrest is sending to iLO?

:::success Tip
You can see full payloads with debug mode.
:::

:::attention NOTE
The debug output below is truncated for space.
:::

```shell No debug output
ilorest login
Discovering data...Done
```

```shell Debug output
ilorest --debug login
iLOrest : RESTful Interface Tool version 3.0
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
INFO    : Not using CA certificate.
INFO    : Initializing no proxy.
DEBUG   : HTTP REQUEST: GET
        PATH: /redfish/v1/
        HEADERS: {'OData-Version': '4.0'}
        BODY: None
DEBUG   : Starting new HTTPS connection (1): XX.XX.XX.XXX
DEBUG   : https://XX.XX.XX.XXX:443 "GET /redfish/v1/ HTTP/1.1" 200 None
INFO    : Response Time to /redfish/v1/: 0.536000013351 seconds.
DEBUG   : HTTP RESPONSE for /redfish/v1/:
Code:200 OK
Headers:
        Transfer-Encoding: chunked
        ETag: W/"9E4419FB"
        Link: &lt;/redfish/v1/SchemaStore/en/ServiceRoot.json/&gt;; rel=describedby
        Allow: GET, HEAD
        Cache-Control: no-cache
        Date: Fri, 30 Aug 2019 00:29:30 GMT
        OData-Version: 4.0
        X-Frame-Options: sameorigin
        Content-type: application/json; charset=utf-8

Body Response of /redfish/v1/: {"@odata.con...
```

### Symptom

I am unable to see what iLOrest is sending to iLO.

### Cause

The debug global flag ( `-d, --debug` ) is not being used.

### Action

Use the debug global flag ( `-d, --debug` ), which will provide the payloads that are sent and received from iLO. It is printed to console and to the `iLOrest.log` file in the current directory.

:::warning Warning
Debug mode shows sensitive information, such as the `X-Auth-Token` header. It is highly recommended to use this flag for debugging issues only. Not for production scripts.
:::

## Why am I getting extra data?

In the example below, the selector returns both the instance and the collection type.

:::success Tip
The easiest way to select only one resource type is to append a period ( `.` ) to the selected type
:::

```shell Instance and collection
iLOrest > select ComputerSystem
iLOrest > select
Current selection: #ComputerSystemCollection.ComputerSystemCollection, #ComputerSystem.v1_10_0.ComputerSystem
```

```shell Instance only
iLOrest > select ComputerSystem.
iLOrest > select
Current selection: #ComputerSystem.v1_10_0.ComputerSystem
```

### Symptom

I am getting more data than what I would like.

### Causes

1. You are not using a selector that is exclusive to the type you want.

2. The type that you have selected has more than one instance.

### Actions

1. Use a selector that is exclusive to the type you want.

2. Verify that the type you have selected, does not have more than one instance. In this case, the [filter option](#filter-option) can help you limit the results to the instance you want.

The example below selects only one resource type, but multiple resources are available for that resource type. We only want to modify or view one instance. We can use the [--filter](#filter-option) option to limit to one instance only.

```shell One resource type, multiple resources
iLOrest > select EthernetInterface.

iLOrest > get IPv4Addresses/Address
IPv4Addresses=
               Address=192.168.86.71

IPv4Addresses=
               Address=0.0.0.0

IPv4Addresses=
               Address=192.168.15.1

IPv4Addresses=
               Address=192.168.87.207
```

```shell One resource type, one resource
iLOrest > select EthernetInterface.

iLOrest > get IPv4Addresses/Address --filter=Name="Manager Dedicated Network Interface"
IPv4Addresses=
               Address=192.168.87.207

```

## I can set a property, but the commit fails

### Symptom

The commit is failing, even though I can set a property.

### Cause

This issue can happen for multiple reasons. The API tries  to catch issues with commits when the property is initially set, but not all possible issues can be caught.

### Action

1. Run the [status command](#status-command) to see what properties have failed to commit.

2. To ensure you are sending data that will be accepted by the server, obtain schema information for the property that failed to commit with the [info command](#info-command).

3. Some properties require other properties to be set first. You can view the [iLO REST API Doc's resource definitions](https://hewlettpackard.github.io/ilo-rest-api-docs/ilo5/#resource-definitions) for the property you are trying to commit to see any additional information on modifying the property that is not in the schemas.

## I think this property is an array, but I can't tell by the get/list output

:::success Tip
Include the `--json` format attribute for an easy detection of arrays.
:::

```shell Array is invisible
iLOrest > get Boot/BootOrder Boot/BootSourceOverrideTarget
Boot=
      BootSourceOverrideTarget=None
      BootOrder=Boot0014
                 Boot0015
                 Boot0016
                 Boot000A
                 Boot000B
                 Boot000C
                 Boot000D
                 Boot000E
                 Boot000F
                 Boot0010
                 Boot0012
                 Boot0013
                 Boot0011
```

```Json Array is visible
iLOrest > get Boot/BootOrder Boot/BootSourceOverrideTarget --json
{
  "Boot": {
    "BootOrder": [
      "Boot0014",
      "Boot0015",
      "Boot0016",
      "Boot000A",
      "Boot000B",
      "Boot000C",
      "Boot000D",
      "Boot000E",
      "Boot000F",
      "Boot0010",
      "Boot0012",
      "Boot0013",
      "Boot0011"
    ],
    "BootSourceOverrideTarget": "None"
  }
}
```

### Symptom

It is difficult to tell the difference between arrays and nested JSON objects from the get/list output.

### Cause

The get/list output does not distinguish between nested JSON objects and arrays. They both look similar in the output.

### Action

Use the `-j`, `--json` flag to distinguish between arrays and nested JSON objects.

## I need to change a property, but it's an array... How can I modify that?

In the example below, we are only flipping the first two boot order items in the array, but we need to send the whole array, not just the modified section.

:::success Tips
Use the `status` command to view changed parameters. Then `commit`.

If you want to change reset your changes, use the `--refresh` attribute to the `select <type>` command.
:::

```Shell View changed resources
iLOrest > set Boot/BootOrder=[Boot0015,Boot0014,Boot0016,Boot000A,Boot000B,Boot000C,Boot000D,Boot000E,Boot000F,Boot0010,Boot0012,Boot0013,Boot0011]

iLOrest > status
Current changes found:
ComputerSystem.v1_10_0(/redfish/v1/Systems/1/) (Currently selected)
        Boot/BootOrder/0=Boot0015
        Boot/BootOrder/1=Boot0014

iLOrest > commit
Committing changes...
The operation completed successfully.
```

```shell Reset changed items
iLOrest > status
Current changes found:
ComputerSystem.v1_10_0(/redfish/v1/Systems/1/) (Currently selected)
        Boot/BootOrder/0=Boot0015
        Boot/BootOrder/1=Boot0014

iLOrest > select ComputerSystem. --refresh

set Boot/BootOrder=[Boot000A,Boot000B,Boot0016,Boot0014,Boot0015,Boot000C,Boot000D,Boot000E,Boot000F,Boot0010,Boot0012,Boot0013,Boot0011]

iLOrest > status
Current changes found:
ComputerSystem.v1_10_0(/redfish/v1/Systems/1/) (Currently selected)
        Boot/BootOrder/0=Boot000A
        Boot/BootOrder/1=Boot000B

iLOrest > commit
Committing changes...
The operation completed successfully.
```

### Symptom

I am unable to change a property for an array.

### Cause

Array types must be set as a whole modified array inside brackets. `[ ]`

### Action

Set array types as a whole modified array inside brackets. `[ ]`

You can also modify lists using the [save](#save-command) and [load](#load-command) commands.

## Will this command reboot/reset my system ?

### Symptom

Some commands will reboot the system.

### Cause

Some commands will reboot the system because the reboot is required to complete the process. Other commands will tell you to reboot the system using the `--reboot flag`.

### Action

:::success Tip
Read the help for any warnings or notes specific to each command. Not all warnings are mentioned here and this list is only intended to describe some command behavior to be aware of.
:::

This list describes any reboot or reset behavior for commands:

- The following commands will reboot your system:
  - `Reboot`
  - `OneButtonErase`
  - `Serverclone`
  - `iLOclone`

- The following commands can reboot your system if you specify the option:
  - `BiosDefaults`
  - `BootOrder`
  - `IscsiConfig`
  - `SetPassword`
  - `Commit`
  - `Load`
  - `Set`
  - `VirtualMedia`

- The following commands will reset iLO:
  - `OneButtonErase`
  - `Serverclone`
  - `iLOclone`
  - `iLOreset`
  - `Uploadcomp` - Can reset iLO if the firmware requires an iLO reset to finish flashing and you are directly flashing
  - `flashfwpkg` - Can reset iLO if the firmware requires an iLO reset to finish flashing

- The following commands will factory reset your iLO:
  - `iloclone`
  - `factoryreset`

## Firmware uploading/flash issues

This section describes known issues flashing certain versions or any intermediate steps required to flash certain firmware.

### Unable to flash or upload firmware

### Symptom

You are unable to flash or upload iLO 5 firmware v2.10 or later to a system running an iLO firmware version earlier than iLO 5 v1.40.

### Cause

The target system must be running iLO 5 firmware v1.40 or later before you attempt to flash or upload iLO 5 firmware v2.10 or later to the system.

### Action

1. Flash or upload to iLO 5 firmware v1.40x.
2. Flash or upload to iLO 5 firmware v2.10 or later on the system.
