---
seo:
  title: When things go wrong
toc:
  enable: true
  maxDepth: 2
disableLastModified: true
---

# When Things Go Wrong

This section provides debug information to help when things go wrong. If this section does not solve your issue please contact support or submit a github issue to our open source project <a href="https://github.com/HewlettPackard/python-redfish-utility/issues">here</a>.

## I need return codes to script, but I'm not seeing any in the output.


> You can see return codes and other information with the verbose flag.

<pre>
ilorest <span style="color: #01a982; ">-v</span>
iLOrest : RESTful Interface Tool version 3.0
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
iLOrest > login
Discovering data...Done
Monolith build process time: 0.259999990463
<span style="color: #01a982; ">iLOrest return code: 0</span>
</pre>

<p class="fake_header">Symptom</p>

I am unable to see return codes in the output.

<p class="fake_header">Cause</p>

The verbose global flag (-v,--verbose) is not being used.

<p class="fake_header">Action</p>

Use the verbose global flag (-v,--verbose), which will output more information including return codes.

## How can I see exactly what iLOrest is sending to iLO?

> You can see full payloads with debug mode. The response is truncated for space.

<pre>
ilorest <span style="color: #01a982; ">-d</span> login
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
</pre>

<p class="fake_header">Symptom</p>

I am unable to see what iLOrest is sending to iLO.

<p class="fake_header">Cause</p>

The debug global flag (-d, --debug) is not being used.

<p class="fake_header">Action</p>

Use the debug global flag (-d, --debug), which will provide the payloads that are sent and received from iLO. It is printed to console and to the iLOrest.log file. Debug mode will show information, such as X-Auth-Token headers. For this reason, it's highly encouraged to use only the debug flag for debugging issues and not for production scripts.


## Why am I getting extra data?

> In this example the selector returns both the instance and the collection type. Modifying the selector to limit the selection solves this problem. The easiest way to do that is to add a period to ensure you are only selecting one type.

<pre>
iLOrest > select <span style="color: #01a982; ">ComputerSystem</span>
Selected option(s): #ComputerSystemCollection.ComputerSystemCollection, #ComputerSystem.v1_4_0.ComputerSystem
iLOrest return code: 0
iLOrest > select <span style="color: #01a982; ">ComputerSystem.</span>
Selected option(s): #ComputerSystem.v1_4_0.ComputerSystem
iLOrest return code: 0
</pre>

<p class="fake_header">Symptom</p>

I am getting more data than what I would like.

<p class="fake_header">Cause</p>

You are not using a selector that is exclusive to the type you want and/or the type that you have selected has more than one instance.

<p class="fake_header">Action</p>

1. Use a selector that is exclusive to the type you want.

2. Verify that the type you have selected, does not have more than one instance. In this case, the [filter option](#filter-option) can help you limit the results to the instance you want.

> This example shows that we are selecting only 1 type, but multiple instances are available for that type. We only want to modify or view 1 instance! We can use the [--filter](#filter-option) option to limit to 1 instance only.

<pre>
iLOrest > select <span style="color: #01a982; ">EthernetInterface.</span>
Selected option(s): #EthernetInterface.v1_4_1.EthernetInterface
iLOrest return code: 0
iLOrest > list @odata.id

@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/2/

@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/1/

@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/1/

@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/3/

@odata.id=/redfish/v1/Managers/1/EthernetInterfaces/2/

@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/4/
iLOrest return code: 0
iLOrest > list @odata.id <span style="color: #01a982; ">--filter=Id=3</span>
Selected option(s): #EthernetInterface.v1_4_1.EthernetInterface
@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/3/
iLOrest return code: 0
</pre>

## I can set a property, but the commit is failing.

<p class="fake_header">Symptom</p>

The commit is failing, even though I can set a property.

<p class="fake_header">Cause</p>

This issue can happen for multiple reasons. The API tries  to catch issues with commits when the property is initially set, but not all possible issues can be caught.

<p class="fake_header">Action</p>

1. Run the [status command](#status-command) to see what properties have failed to commit.

2. To ensure you are sending data that will be accepted by the server, obtain schema information for the property that failed to commit with the [info command](#info-command).

3. Some properties require other properties to be set first. You can view the <a href=" https://hewlettpackard.github.io/ilo-rest-api-docs/ilo5/#resource-definitions">iLO REST API Doc's resource definitions</a> for the property you are trying to commit to see any additional information on modifying the property that is not in the schemas.

## I think this property is an array, but I can't tell by the get/list output.

> It's hard to tell where the array is in this output until you print the response in json format.

<pre>
iLOrest > get Boot/BootOrder Boot/BootSourceOverrideTarget
Selected option(s): #ComputerSystem.v1_4_0.ComputerSystem
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
iLOrest return code: 0
iLOrest > get Boot/BootOrder Boot/BootSourceOverrideTarget <span style="color: #01a982; ">--json</span>
Selected option(s): #ComputerSystem.v1_4_0.ComputerSystem
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
iLOrest return code: 0
</pre>

<p class="fake_header">Symptom</p>

It is difficult to tell the difference between arrays and nested JSON objects from the get/list output.

<p class="fake_header">Cause</p>

The get/list output does not distinguish between nested JSON objects and arrays. They both look similar in the output.

<p class="fake_header">Action</p>

Use the -j,--json flags to distinguish between arrays and nested JSON objects.

## I need to change a property, but it's an array... How can I modify that?

> In this example we are only flipping the first two boot order items in the array, but we need to send the whole array, not just the modified section. You can see with the status command that we are changing specific array values.

<pre>
iLOrest > set Boot/BootOrder=<span style="color: #01a982; ">[Boot0015,Boot0014,Boot0016,Boot000A,Boot000B,Boot000C,Boot000D,Boot000E,Boot000F,Boot0010,Boot0012,Boot0013,Boot0011]</span>
iLOrest > status
Current changes found:
ComputerSystem.v1_4_0(/redfish/v1/Systems/1/) (Currently selected)
        Boot/BootOrder/0=Boot0015
        Boot/BootOrder/1=Boot0014
iLOrest > commit
Committing changes...
The operation completed successfully.
</pre>

<p class="fake_header">Symptom</p>

I am unable to change a property for an array.

<p class="fake_header">Cause</p>

Array types must be set as a whole modified array inside brackets. ``[ ]``

<p class="fake_header">Action</p>

Set array types as a whole modified array inside brackets. ``[ ]``

You can also modify lists using the [save](#save-command) and [load](#load-command) commands.

## Will this command reboot/reset my system?

<p class="fake_header">Symptom</p>

Some commands will reboot the system.

<p class="fake_header">Cause</p>

Some commands will reboot the system because the reboot is required to complete the process. Other commands will tell you to reboot the system using the --reboot flag.

<p class="fake_header">Action</p>

<aside class="warning">Please read the help for any warnings or notes specific to each command. Not all warnings are mentioned here and this list is only intended to describe some command behavior to be aware of.</aside>

This list describes any reboot or reset behavior for commands:

- The following commands will reboot your system:
  - Reboot
  - OneButtonErase
  - Serverclone
  - iLOclone
- The following commands can reboot your system if you specify the option:
  - BiosDefaults
  - BootOrder
  - IscsiConfig
  - SetPassword
  - Commit
  - Load
  - Set
  - VirtualMedia
- The following commands will reset iLO:
  - OneButtonErase
  - Serverclone
  - iLOclone
  - iLOreset
  - Uploadcomp - Can reset iLO if the firmware requires an iLO reset to finish flashing and you are directly flashing
  - flashfwpkg - Can reset iLO if the firmware requires an iLO reset to finish flashing
- The following commands will factory reset your iLO:
  - iLOclone
  - factoryreset

## Firmware uploading/flash issues

This section describes known issues flashing certain versions or any intermediate steps required to flash certain firmware.

### Unable to flash or upload firmware

<p class="fake_header">Symptom</p>

You are unable to flash or upload iLO 5 firmware v2.10 or later to a system running an iLO firmware version earlier than iLO 5 v1.40.

<p class="fake_header">Cause</p>

The target system must be running iLO 5 firmware v1.40 or later before you attempt to flash or upload iLO 5 firmware v2.10 or later to the system.

<p class="fake_header">Action</p>

1. Flash or upload to iLO 5 firmware v1.40x.
2. Flash or upload to iLO 5 firmware v2.10 or later on the system.
