---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: true
seo:
  title: When things go wrong
---

# When Things Go Wrong

This section provides debug information to help when things go wrong.
If this section does not solve your issue please contact support or
submit a
<a href="https://github.com/HewlettPackard/python-redfish-utility/issues"
 target="_blank">github issue</a>
to our open source project.

## I need return codes to script, but I'm not seeing any in the output

You can see return codes and other information with the verbose flag.

  {% tabs %}
{% tab label="Example" %}

```shell Example
ilorest -v
iLOrest : RESTful Interface Tool version 3.0
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
iLOrest > login
Discovering data...Done
Monolith build process time: 0.259999990463
iLOrest return code: 0
```
  
  {% /tab %}
  {% /tabs %}

### Symptom

I am unable to see return codes in the output.

### Cause

The verbose global flag (-v,--verbose) is not being used.

### Action

Use the verbose global flag (-v,--verbose), which will output more
information including return codes.

## How can I see exactly what iLOrest is sending to iLO?

You can see full payloads with debug mode. The response is truncated for space.

  {% tabs %}
{% tab label="Example" %}

```shell Example
ilorest -d login
iLOrest : RESTful Interface Tool version 3.0
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
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
  
  {% /tab %}
  {% /tabs %}

### Symptom

I am unable to see what iLOrest is sending to iLO.

### Cause

The debug global flag (-d, --debug) is not being used.

#### Action

Use the debug global flag (-d, --debug), which will provide the payloads that
are sent and received from iLO. It is printed to console and to the
iLOrest.log file. Debug mode will show information,
such as X-Auth-Token headers. For this reason,
it's highly encouraged to use only the debug flag for
debugging issues and not for production scripts.

## Why am I getting extra data?

In this example the selector returns both the instance and the collection
type. Modifying the selector to limit the selection solves this problem.
The easiest way to do that is to add a period to ensure you
are only selecting one type.

  {% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > select ComputerSystem
Selected option(s): #ComputerSystemCollection.ComputerSystemCollection, #ComputerSystem.v1_4_0.ComputerSystem
iLOrest return code: 0
iLOrest > select ComputerSystem.
Selected option(s): #ComputerSystem.v1_4_0.ComputerSystem
iLOrest return code: 0
```
  
  {% /tab %}
  {% /tabs %}

### Symptom

I am getting more data than what I would like.

### Cause

You are not using a selector that is exclusive to the type you
want and/or the type that you have selected has more than one instance.

### Action

1. Use a selector that is exclusive to the type you want.

2. Verify that the type you have selected, does not have more than one instance.
   In this case, the [filter option](advancedusage/#filter-option) can help
   you limit the results to the instance you want.

This example shows that we are selecting only 1 type, but multiple instances
are available for that type. We only want to modify or view 1 instance! We can
use the [--filter](advancedusage/#filter-option) option to limit to 1instance
only.

  {% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > select EthernetInterface.
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
iLOrest > list @odata.id --filter=Id=3
Selected option(s): #EthernetInterface.v1_4_1.EthernetInterface
@odata.id=/redfish/v1/Systems/1/EthernetInterfaces/3/
iLOrest return code: 0
```
  
  {% /tab %}
  {% /tabs %}

## I can set a property, but the commit is failing

### Symptom

The commit is failing, even though I can set a property.

### Cause

This issue can happen for multiple reasons. The API tries to catch issues with
commits when the property is initially set, but not all possible issues can be caught.

### Action

1. Run the [status command](globalcommands/#status-command) to see what
   properties have failed to commit.

2. To ensure you are sending data that will be accepted by the server, obtain
   schema information for the property that failed to commit with the
   [info command](globalcommands/#info-command).

3. Some properties require other properties to be set first. Refer to the
   {% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION) %} iLO REST API Doc's resource definitions {% /link-internal %}
   for the property you are trying to commit to see any additional information
   on modifying the property that is not in the schemas.

## I think this property is an array, but I can't tell by the get/list output

It's hard to tell where the array is in this output until you print the response
in json format.

  {% tabs %}
{% tab label="Example" %}

```shell Example
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
iLOrest > get Boot/BootOrder Boot/BootSourceOverrideTarget --json
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
```
  
  {% /tab %}
  {% /tabs %}

### Symptom

It is difficult to tell the difference between arrays and nested JSON objects
from the get/list output.

### Cause

The get/list output does not distinguish between nested JSON objects and arrays.
They both look similar in the output.

### Action

Use the -j/--json flag to distinguish between arrays and nested JSON objects.

## I need to change a property, but it's an array... How can I modify that?

In this example we are only flipping the first two boot order items in the array, but we need to send the whole array, not just the modified section. You can see with the [status command](globalcommands/#status-command) that we are changing specific array values.

  {% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > set Boot/BootOrder=[Boot0015,Boot0014,Boot0016,Boot000A,Boot000B,Boot000C,Boot000D,Boot000E,Boot000F,Boot0010,Boot0012,Boot0013,Boot0011]
iLOrest > status
Current changes found:
ComputerSystem.v1_4_0(/redfish/v1/Systems/1/) (Currently selected)
        Boot/BootOrder/0=Boot0015
        Boot/BootOrder/1=Boot0014
iLOrest > commit
Committing changes...
The operation completed successfully.
```
  
  {% /tab %}
  {% /tabs %}
#### Symptom

I am unable to change a property for an array.

#### Cause

Array types must be set as a whole modified array inside brackets. ``[ ]``

#### Action

Set array types as a whole modified array inside brackets. ``[ ]``

You can also modify lists using the [save](globalcommands/#save-command) and [load](globalcommands/#load-command) commands.

## Will this command reboot/reset my system?

### Symptom

Some commands will reboot the system.

### Cause

Some commands will reboot the system because the reboot is required
to complete the process.
Other commands will tell you to reboot the system using
the `--reboot`  flag.

### Action

{% admonition type="warning" name="Warning" %}
Please read the help for any warnings or notes specific to each command.
Not all warnings are mentioned here and this list is only intended to describe
some command behavior to be aware of.
{% /admonition %}

This list describes any reboot or reset behavior for commands:

- The following commands will reboot or ask for a system reboot:
  - [Reboot](/docs/redfishclients/ilorest-userguide/ilocommands/#reboot-command)
  - [OneButtonErase](/docs/redfishclients/ilorest-userguide/ilocommands/#onebuttonerase-command)
  - [Serverclone](/docs/redfishclients/ilorest-userguide/ilocommands/#serverclone-command)
  - iloclone (deprecated in 2.4.1 and removed in 3.2.1)
- The following commands can reboot your system if you specify the option:
  - [BiosDefaults](/docs/redfishclients/ilorest-userguide/bioscommands/#biosdefaults-command)
  - [BootOrder](/docs/redfishclients/ilorest-userguide/bioscommands/#bootorder-command)
  - [IscsiConfig](/docs/redfishclients/ilorest-userguide/bioscommands/#iscsiconfig-command)
  - [SetPassword](/docs/redfishclients/ilorest-userguide/bioscommands/#setpassword-command)
  - [Commit](/docs/redfishclients/ilorest-userguide/globalcommands/#commit-command)
  - [Load](/docs/redfishclients/ilorest-userguide/globalcommands/#load-command)
  - [Set](/docs/redfishclients/ilorest-userguide/globalcommands/#set-command)
  - [VirtualMedia](/docs/redfishclients/ilorest-userguide/ilocommands/#virtualmedia-command)
- The following commands will reset iLO or ask for a reset:
  - [OneButtonErase](/docs/redfishclients/ilorest-userguide/ilocommands/#onebuttonerase-command)
  - [Serverclone](/docs/redfishclients/ilorest-userguide/ilocommands/#serverclone-command)
  - iloclone (deprecated in 2.4.1 and removed in 3.2.1)
  - [iLOreset](/docs/redfishclients/ilorest-userguide/ilocommands/#iloreset-command)
  - [Uploadcomp](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#uploadcomp-command) - Can reset iLO if the firmware requires an iLO reset to
    finish flashing and you are directly flashing
  - [flashfwpkg](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command) - Can reset iLO if the firmware requires an iLO reset to finish flashing
- The following commands will factory reset your iLO:
  - iloclone (deprecated in 2.4.1 and removed in 3.2.1)
  - [factorydefaults](/docs/redfishclients/ilorest-userguide/ilocommands/#factorydefaults-command)

## Firmware uploading/flash issues

This section describes known issues flashing certain versions or any
intermediate steps required to flash certain firmware.

### Unable to flash or upload firmware

#### Symptom

You are unable to flash or upload iLO 5 firmware v2.10 or later to a system
running an iLO firmware version earlier than iLO 5 v1.40.

#### Cause

The target system must be running iLO 5 firmware v1.40 or later before
you attempt to flash or upload iLO 5 firmware v2.10 or later to the system.

#### Action

1. Flash or upload to iLO 5 firmware v1.40x.
2. Flash or upload to iLO 5 firmware v2.10 or later on the system.

## When vNIC Login Fails

This section outlines the steps to take when logging into an iLO 7 (or later) via the [Virtual NIC](/docs/redfishservices/ilos/supplementdocuments/vnic/) fails.

### Symptom

You are unable to log in to the server using the virtual NIC and receive the error:
*Unable to access iLO using virtual NIC.Please ensure virtual NIC is enabled in iLO.Ensure that virtual NIC in the host OS is configured properly. Refer to documentation for more information. iLOrest return code: [142](/docs/redfishclients/ilorest-userguide/errors/)*.

### Cause

The virtual NIC is not enabled on the server you are attempting to log in to.

### Action

Use `-vv login` to get the exact [error return code](/docs/redfishclients/ilorest-userguide/errors/).
Refer to the *Virtual NIC* section in the <a href="https://www.hpe.com/info/ilo/docs" target="_blank">iLO User Guide</a>

## iLOrest application account creation fails

This section is related to iLO 7 (or later) based servers and
[in-band](/docs/redfishservices/ilos/supplementdocuments/vnic#in-band-management)
management. It outlines the steps to take when the iLOrest
[application account](/docs/redfishservices/ilos/supplementdocuments/securityservice#installing-hpe-host-applications)
cannot be created during its installation (i.e. `rpm -ivh`) or during a
[manual creation](/docs/redfishservices/ilos/supplementdocuments/securityservice#managing-application-accounts).

{% admonition type="info" name="NOTES" %}

- The methodology presented in this section can be adapted to other host applications (i.e. AMS).
- Only ilo users with the `UserConfigPriv`
  [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers#roles-and-privileges)
  can manage application accounts.
  The following example retrieves the value of the `UserConfigPriv`
  {% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_manager_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#oem.hpe.privileges") %} property {% /link-internal %}
  using iLOrest.
  
  ```shell
   list Oem/Hpe/Privileges/UserConfigPriv --select ManagerAccount. --filter UserName=ilorest-appuser --json

   {
      "Oem": {
        "Hpe": {
          "Privileges": {
          "UserConfigPriv": true
          }
        }
      }
    }

  ```

{% /admonition %}

### Symptom

During iLOrest installation or when creating the iLOrest application account
on an iLO 7 (or later) based OS server, the following messages are returned:

{% tabs %}
{% tab label="iLOrest installation" %}

```shell
ILO_USERNAME="ilorest-appuser" ILO_PASSWORD="password" rpm -ivh ilorest-6.0.0.0-29.x86_64.rpm
warning: ilorest-6.0.0.0-29.x86_64.rpm: Header V4 RSA/SHA256 Signature, key ID 26c2b797: NOKEY
Verifying...                          ################################# [100%]
Preparing...                          ################################# [100%]
Updating / installing...
   1:ilorest-6.0.0.0-29               ################################# [100%]
Environment variable ILO_USERNAME and ILO_PASSWORD are set and non-empty.

....

Failed to create the application account. The application will still work but requires iLO credentials.
To create application account after installation, use the command: 'ilorest appaccount create -u <username> -p <password>'

```

{% /tab %}
{% tab label="Appaccount creation" %}

```shell
ilorest -v appaccount create --self  -u ilorest-appuser -p password
ERROR   : Failed to save account in TPM.
ERROR   : SavinginTPMError: Failed to save the app account in TPM. Please execute the appaccount delete command with the same host application information and attempt to create the app account again.
Alternatively, you can use the --no_app_account option in the Login Command to log in using your iLO user account credentials.

ERROR   : Failed to save the app account in TPM. Please execute the appaccount delete command with the same host application information and attempt to create the app account again.
Alternatively, you can use the --no_app_account option in the Login Command to log in using your iLO user account credentials.

iLORest return code: 147

```

{% /tab %}
{% /tabs %}

In addition to the above symptom, a deletion of the application account fails with a
[return code](/docs/redfishclients/ilorest-userguide/errors)
of [143].

```shell
ilorest -v appaccount delete --self
ERROR   : NoAppAccountError: The application account you are trying to delete does not exist.

ERROR   : The application account you are trying to delete does not exist.

iLORest return code: 143

```

### Cause

The iLOrest application account is present in the Redfish tree but the
associated application token is not present in the TPM (iLOrest
[error](http://localhost:4000/docs/redfishclients/ilorest-userguide/errors) 143).
This can be verified with iLOrest in-band or out-of-band, or with cURL,
as shown in the following examples.

{% tabs %}
{% tab label="in-band iLOrest" %}

```shell
# Vedify that the iLOrest application account exists
ilorest login --no_app_account -u ilorest-appuser -p password
ilorest list @odata.id  --select HpeiLOAppAccount. --refresh --filter HostAppName=iLORest
@odata.id=/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606/
ilorest logout 

```

{% /tab %}
{% tab label="out-of-band iLOrest" %}

```shell
ilorest login $ilo_ip -u ilorest-appuser -p password
ilorest list @odata.id  --select HpeiLOAppAccount. --refresh --filter HostAppName=iLORest
@odata.id=/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606/
ilorest logout
```

{% /tab %}
{% tab label="cURL" %}

```shell
curl --insecure --location --silent \
     -u ilorest-appuser:password         \
     https://$ilo_ip/redfish/v1/AccountService/Oem/Hpe/AppAccounts | \
     jq -r '.Members[] | ."@odata.id"'
     /redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606
```

{% /tab %}
{% /tabs %}

### Action

Manually delete the application account using iLOrest or cURL.

The following examples show how to delete the iLOrest application account using
iLOrest and then cURL.

{% tabs %}
{% tab label="iLOrest (in-band)" %}

```shell
ilorest login --no_app_account -u ilorest-appuser -p password
ilorest -vv rawdelete "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606/"
ilorest logout

```

{% /tab %}
{% tab label="iLOrest (out-of-band)" %}

```shell

ilorest login $ilo_ip -u ilorest-appuser -p password
ilorest -vv rawdelete "/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606/"
HTTP Response Code: [200]
MessageId: Base.1.18.AccountRemoved
Description: The operation completed successfully.
Message: The operation completed successfully.
Resolution:
iLORest return code: 0

ilorest logout
```

{% /tab %}
{% tab label="cURL" %}

```shell

curl --insecure --location --silent \
     -u ilorest-appuser:password         \
     -X DELETE  \
     https://$ilo_ip/redfish/v1/AccountService/Oem/Hpe/AppAccounts/65606/ | \
     jq '.'

```

{% /tab %}
{% /tabs %}

At this point, both the iLOrest application account and associated application token have been removed.
You can either re-create them manually (`ilorest appaccount create --self`) or un-install/re-install
iLOrest.
