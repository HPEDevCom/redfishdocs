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
  title: iLO Repository commands
---

# iLO Repository Commands

The HPE iLO repository commands described in this section have been designed for use with HPE Gen10 servers and later.

## Deletecomp Command

### Syntax

deletecomp *[ID/Name(s)] [Optional Parameters]*

### Description

Deletes firmware from the iLO repository.

{% admonition type="info" name="NOTE" %}
You cannot delete firmware that is part of a task from the task queue or an install set.
{% /admonition %}

### Parameters

- **ID/Name(s)**

The name or Id(s) of the components for deletion. Multiple components should be specified by a comma separated list without spaces.

- **-h, --help**

Including the help flag will display help for the command.

- **-a, --all**

Delete all firmware.

### Login Parameters


The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

### Examples

Deletecomp example commands:

To delete firmware by file name run the command with the file name as an argument. You can also delete multiple files by file name.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > deletecomp ilo5_137.bin
The operation completed successfully.
Deleted ilo5_137.bin
```

{% /tab %}
{% /tabs %}

To delete firmware by Id run the command with the file Ids as arguments. You can also delete a single file by Id.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > deletecomp 30d2d7fa,b5a00edc
The operation completed successfully.
Deleted 30d2d7fa
The operation completed successfully.
Deleted b5a00edc
```

{% /tab %}
{% /tabs %}
To delete all firmware on the iLO repository run the command and include the `--all` option.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > deletecomp --all
The operation completed successfully.
```

{% /tab %}
{% /tabs %}

## Downloadcomp Command

### Syntax

downloadcomp *[File Path] [Optional Parameters]*

### Description


Downloads firmware from the iLO repository.

### Parameters

-**File Path**

The path to the firmware to download.

- **-h, --help**

Including the help flag will display help for the command.

- **outdir=OUTDIR**

output directory for saving the file.

### Login Parameters

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with the password and URL flags can be used to log into a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--sessionid=SESSIONID**

Optionally include this flag if you would prefer to connect using a session id instead of a normal login.

- **--includelogs**

Optionally include logs in the data retrieval process.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

### Examples

To download a file run this command specifying the `file path` of the firmware.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > downloadcomp /fwrepo/ilo5_137.bin
Downloading component, this may take a while...
[200] The operation completed successfully.
Download complete
0 hour(s) 1 minute(s) 36 second(s)
```

{% /tab %}
{% /tabs %}

{% admonition type="warning" name="Warning" %}

- The output directory and files in that directory must be set to writable.
- Any file in the output directory with the same name as the downloading firmware will be overwritten.

{% /admonition %}

## Flashfwpkg Command

### Syntax

flashfwpkg *[FWPKG PATH] [Optional Parameters]*

### Description

Run to upload and flash a `.fwpkg` components using the iLO repository.

{% admonition type="info" name="NOTE" %}
Some firmware can be flashed directly without a reboot, may require a reboot to take effect, or may only be staged for flash on reboot. The command will inform users when a firmware update will take place.
{% /admonition %}

### Parameters

- **FWPKG PATH**

The path to the `.fwpkg` file for flashing or the `.fwpkg` file itself if it
is in the current working directory.

- **-h, --help**

Including the help flag will display help for the command.

- **--forceupload**

Include this flag to force upload firmware with the same name already on
the repository.

- **--ignorechecks**

Include this flag to ignore all checks to the Repository
[Task Queue](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#taskqueue-command)
before attempting to process the `.fwpkg` file.

- **--targets target_list**

Specify a comma separated list of similar firmware inventory IDs to be updated
with supplied firmware package.

- **--tpmover**

Include this parameter to set the
`TPMOverride`
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "/#tpmoverride") %} property {% /link-internal %}
to `true` and pass the `TPMOverrideFlag` in on the associated flash operations.

- **--update_srs**

Add this parameter to update the System Recovery Set with the uploaded
firmware.

{% admonition type="info" name="NOTE" %}
This requires an account login with the system recovery set
[privilege](https://servermanagementportal.ext.hpe.com/docs/redfishservices/ilos/ilo6/ilo6_156/ilo6_hpe_resourcedefns156/#recoveryprivilege).
{% /admonition %}

### Examples

The following example retrieves the IDs of UBM3 devices
and update all of them with a single command.

{% tabs %}
{% tab label="Example" %}

```shell Example
ilorest list Id Name  --json --selector SoftwareInventory. --filter Name="8 SFF 24G x1NVMe/SAS UBM3*" 
Id=30
Name=8 SFF 24G x1NVMe/SAS UBM3 BC BP

Id=29
Name=8 SFF 24G x1NVMe/SAS UBM3 BC BP



ilorest flashfwpkg HPE_UBM3_1.24_F.fwpkg --targets 29,30 --tpmover

Uploading firmware: HPE_UBM3_1.24_F.fwpkg
Successfully checked 'HPE_UBM3_1.24_F.fwpkg'.
Uploading component HPE_UBM3_1.24_F.fwpkg.
[200] The operation completed successfully.
Component HPE_UBM3_1.24_F.fwpkg uploading successfully.
Waiting for iLO UpdateService to finish processing the component
Uploading took 00 hour(s) 00 minute(s) 02 second(s)
payload: "{'Name': 'Update-460148', 'Command': 'ApplyUpdate', 'Filename': 'HPE_UBM3_1.24_F.fwpkg',
'UpdatableBy': ['Bmc'], 'TPMOverride': True, 'Targets': ['/redfish/v1/UpdateService/Firmwar
eInventory/29/', '/redfish/v1/UpdateService/FirmwareInventory/30/']}"
Creating task: "Update-460148"
The operation completed successfully.
```

{% /tab %}
{% /tabs %}

### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and
password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and
URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL
flags to login. Use the provided iLO password corresponding to the username you
gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command
is completed. Using this flag when not logged in will have no effect.

### Examples

To upload firmware and flash (or stage for a flash) run the command with
the `.fwpkg` file.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > flashfwpkg U32_1.46_10_02_2018.fwpkg
Uploading firmware: U32_1.46_10_02_2018.signed.flash
[200] The operation completed successfully.
Component U32_1.46_10_02_2018.signed.flash uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 1 minute(s) 28 second(s)
Firmware has successfully been flashed and a reboot is required for this firmware to take effect.
```

  {% /tab %}
  {% /tabs %}
To skip checks for something blocking firmware updates also include
the `--ignorechecks` option.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > fwpkg ilo5_137.fwpkg --ignorechecks
Uploading firmware: ilo5_137.bin
[200] The operation completed successfully.
Component ilo5_137.bin uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 0 minute(s) 55 second(s)
Firmware has successfully been flashed.
iLO will reboot to complete flashing. Session will be terminated.
Logging session out.
```
  
{% /tab %}
{% /tabs %}

## Installset Command

### Syntax

installset *[Optional Parameters]*

### Description

Command to perform operations on
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpecomponentinstallset") %} install sets {% /link-internal %}.
Among other objects, install sets contain a `Name`, an `Id` and an ordered
list of installation instructions `sequence[]` that may be invoked/deployed.

To list current install sets run the command without arguments.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-n NAME, --name=NAME**

Install set name to create, remove, or invoke/deploy.

- **-r, --removeall**

Remove all install sets.

{% admonition type="info" name="NOTE" %}

To remove recovery install sets during a local in-band session, you have to supply
the `--user` and `--password` parameters. This security enhancement is needed
because the local in-band management mode does not perform any authentication,
as mentioned in the `login` [command](/docs/redfishclients/ilorest-userguide/globalcommands/#login-command)
description.

{% /admonition %}

- **-j, --json**

Optionally include this flag to change the displayed output to JSON format.
Preserving the JSON data structure makes the information easier to parse.

- **--expire=EXAFTER**

Optionally include this flag to set the expiry time for installset.
ISO 8601 Redfish-style time string to be written after which iLO will
automatically change state to Expired
(i.e. YYYY-MM-DDThh:mm:ss, YYYY-MM-DDThh:mm:ssZ).

- **--startafter=SAFTER**

Optionally include this flag to set the earliest execution time for
`installset`.
ISO 8601 Redfish-style time string to be used
(i.e. YYYY-MM-DDThh:mm:ss, YYYY-MM-DDThh:mm:ssZ).

- **--tpmover**

Use this flag if the server you are currently logged into has a TPM chip installed.

- **--updaterecoveryset**

If set then the components in the flash operations are used to replace
matching contents in the Recovery Set.

- **--cleartaskqueue**

This option clears previous items in the task queue before the Install Set is invoked.

### Login Parameters

The following parameters can be included to login to a server in the same
line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and
password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and
URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL
flags to login. Use the provided iLO password corresponding to the username
you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command
is completed. Using this flag when not logged in will have no effect.

### Examples

The following example lists install sets with basic formatting.

{% tabs %}
{% tab label="Basic formatting" %}

```shell Basic formatting
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest installset
ilorest logout
```
  
{% /tab %}
{% tab label="Output" %}

```text Output
Install Sets:
basic_update:
        SequenceName1: Action Filename1
        SequenceName2: Action Filemane2
```
  
{% /tab %}
{% /tabs %}

Install sets can be added with their complete JSON structure or a subset
containing only the members of the `sequence[]` array.

{% admonition type="success" name="TIP" %}
Refer to the [Makeinstallset command](#makeinstallset-command)
to learn how to create an install set file.
{% /admonition %}

{% tabs %}
{% tab label="Complete JSON structure" %}

```json Complete JSON structure
{
    "Name": "installset name",
    "Description": "installset description",
    "Sequence": [{
            "Name": "Wait",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "Wait",
            "WaitTimeSeconds": 60
        },
        {
            "Name": "uniqueName",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "ApplyUpdate",
            "Filename": "filename.exe"
        },
        {
            "Name": "uniqueName2",
            "UpdatableBy": ["Bmc"],
            "Command": "ApplyUpdate",
            "WaitTimeSeconds": 0,
            "Filename": "filename2.hex"
        },
        {
            "Name": "uniqueName3",
            "UpdatableBy": ["Uefi", "RuntimeAgent"],
            "Command": "ApplyUpdate",
            "WaitTimeSeconds": 0,
            "Filename": "filename3.x86_64.rpm"
        },
        {
            "Name": "Reboot",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "ResetServer"
        }
    ],
    "IsRecovery": false
}
```
  
{% /tab %}
{% tab label="List of sequence members" %}

```json List of sequence members
[
        {
            "Name": "Wait",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "Wait",
            "WaitTimeSeconds": 60
        },
        {
            "Name": "uniqueName",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "ApplyUpdate",
            "Filename": "filename.exe"
        },
        {
            "Name": "Reboot",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "ResetServer"
        }
]
```
  
{% /tab %}
{% /tabs %}

To add an install set, run the command with the `add` argument followed by
an install set json file. When using sequence type json file, it is not
necessary to include the `-n, --name` flag.
In this scenario the iLO provides default install set name (time stamp).

{% tabs %}
{% tab label="iLOrest command" %}

```shell iLOrest command
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest installset add myinstallset.json
ilorest logout
```
  
{% /tab %}
{% tab label="Output" %}

```shell Output
[201] The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

In case of problem during the addition of an install set, use the `-d, --debug`
mode to troubleshoot. The following example fails to add an install
set because it contains two identical sequence member names (`NonUnique`).
The last lines of the iLOrest.log file explains this problem.

{% tabs %}
{% tab label="Example" %}

```shell Example
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest -v installset add badsequence.json
[400] iLO.2.19.PropertyValueIncompatible
iLOrest return code: 63
```
  
{% /tab %}
{% tab label="Badsequence" %}

```json Badsequence.json file
[
        {
            "Name": "NonUnique",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "Wait",
            "WaitTimeSeconds": 60
        },
        {
            "Name": "Firmware Package",
            "UpdatableBy": ["Bmc"],
            "Command": "ApplyUpdate",
            "Filename": "HPE_MR216i-o_Gen11_52.24.3-4948_A.fwpkg"
        },
        {
            "Name": "NonUnique",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "Wait",
            "WaitTimeSeconds": 60
        },
        {
            "Name": "Reboot",
            "UpdatableBy": ["RuntimeAgent"],
            "Command": "ResetServer"
        }
]
```
  
{% /tab %}
{% tab label="Debug output error" %}

```json Debug output error
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageArgs": [
                    "NonUnique",
                    "Sequence[0].Name",
                    "Sequence[2].Name"
                ],
                "MessageId": "iLO.2.19.PropertyValueIncompatible"
            }
        ]
    }
}
```
  
{% /tab %}
{% /tabs %}

To invoke (deploy) an install set, run the command with the `invoke` command
followed by the `-n, --name` option specifying the name of the install set to
invoke. Add the `--tpmover` if a Trusted Platform Module (TPM) is installed in
the system.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > installset invoke --name basic_update
Invoking install set:basic_update
The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

{% admonition type="success" name="TIP" %}
Use the `taskqueue` [command](#taskqueue-command) without any
argument to monitor the install set deployment.
{% /admonition %}

To delete an install set run the command with the `delete` argument
followed by the `--name` specifying the name of the install set to delete.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > installset delete --name basic_update
Deleting install set: basic_update...
The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

To remove all install sets run the command with the `--removeall` option.

{% tabs %}
{% tab label="Example" %}

```shell Example
LOrest > installset --removeall
Deleting all install sets...
The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

## Listcomp Command

### Syntax

listcomp *[Optional Parameters]*

### Description

Command to list the firmware on the iLO repository of the currently
logged in system.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to
JSON format. Preserving the JSON data structure makes the information easier
to parse.

### Login Parameters

The following parameters can be included to login to a server in the
same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user
and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you gave
to login.

- **--usercert**

User Certificate for certificate login.

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. Using this flag when not logged in will have no effect.

### Examples

To list the firmware on the iLO repository of the currently logged in system
run the command without arguments.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > listcomp
Id: ca3bcc4b
Name: iLO 5
Version: 1.30
Locked:Yes
Component Uri:/fwrepo/ilo5_130.bin
File Path: ilo5_130.bin
SizeBytes: 33556520

Id: 30d2d7fa
Name: iLO 5
Version: 1.37
Locked:No
Component Uri:/fwrepo/ilo5_137.bin
File Path: ilo5_137.bin
SizeBytes: 33556520
```
  
  {% /tab %}
  {% /tabs %}

## Maintenancewindow Command

### Syntax

maintenancewindow *[Optional Parameters]*

### Description

Command to add or delete maintenance windows from the iLO repository.

### Parameters

**add TIME**

Add a maintenance window with a given start time. The time format of
the current time zone is: YYYY-MM-DDThh:mm:ss. The time format in the GMT
time zone is: YYYY-MM-DDThh:mm:ssZ.
Refer to the examples below for more detail.

**delete NAME**

Delete a maintenance window.

- **-h, --help**

Including the help flag will display help for the command.

- **-j, --json**

Optionally include this flag to change the displayed output to JSON format.
Preserving the JSON data structure makes the information easier to parse.

- **-description=DESCRIPTION**

Optionally include this flag to add a description to the maintenance window
created by you.

- **--name=NAME**

Optionally include this flag to name the maintenance window created by you.
If a name is not specified, system will add a unique name.

- **--expire=EXPIRE**

Optionally include this flag to add the time a maintenance window expires.

### Login Parameters

The following parameters can be included to login to a server in the same line
as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user
and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you
gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command
is completed. Using this flag when not logged in will have no effect.

### Examples

To list the current maintenancewindows on the system run the command
without arguments.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > maintenancewindow
MW-147746:
        Description: No description.
        Start After: 2015-11-21T00:00:00Z
        Expires at: No expire time set.
```
  
{% /tab %}
{% /tabs %}

To Create a new maintenance window run the command with the `add` keyword
followed by the time the maintenance window should start.
If you do not supply a name for your maintenance window one will be
randomly generated for you.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > maintenancewindow add 2018-11-21T00:00:00
[201] The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

To optionally specify an expire time (`--expire`), maintenance window name
(`--name`), and/or description (`--description`)
include their respective options.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > maintenancewindow add 2019-11-21T00:00:00 --expire=2019-11-22T00:00:00 --name=MyMaintenanceWindow --description "My maintenance window description."
[201] The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

To delete a maintenance window run the command with the `delete`
keyword followed by the name or id of the maintenance window you wish to
delete.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > maintenancewindow delete MyMaintenanceWindow
Deleting MyMaintenanceWindow
The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

## Makeinstallset Command

### Syntax


makeinstallset *[Optional Parameters]*

### Description

Run to make installsets for iLO.
If not logged into the server, the command will provide basic guidance on
making an installset.
If logged into the server, the command will provide guidance based
on the current components on the system.

{% admonition type="info" name="NOTE" %}
When using this command on a logged in sever, for best results, upload the
components before running this command.
{% /admonition %}

### Parameters

- **-h, --help**

Including the help flag on this command will display help.

- **-f FILENAME, --filename=FILENAME**

Include this flag to use a different filename than the default one.
The default filename is myinstallset.json

### Login Parameters


The following parameters can be included to login to a server in the same
line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user
and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username you
gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. Using this flag when not logged in will have no effect.

### Examples

Run without logging in for basic guidance on making an install set.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > makeinstallset
Warning: This command will run in interactive mode.
Entering new shell, type quit to leave!
Running in basic guidance mode.
Enter a name for this command: command1

Possible Commands: ApplyUpdate, ResetServer, ResetBmc, Wait
Enter Command for command1: ApplyUpdate

Unique filename of component on iLO repository
Enter Filename for command1: ilo5_130.bin

Possible Update parameter(s):
Bmc: Updatable by iLO
Uefi: Updatable by Uefi
RuntimeAgent: Updatable by runtime agent such as SUM/SUT
Enter UpdatableBy for command1: Bmc

Enter a name for this command: quit
Is this a recovery installset? no
Enter installset name: basic_update
Enter description for the installset:
{
  "Sequence": [
    {
      "UpdatableBy": [
        "Bmc"
      ],
      "Command": "ApplyUpdate",
      "Name": "command1",
      "Filename": "ilo5_130.bin"
    }
  ],
  "IsRecovery": false,
  "Name": "basic_update",
  "Description": ""
}
installset saved to myinstallset.json
```
  
{% /tab %}
{% /tabs %}

Run while logged into a system for guidance based on the current components on that system.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > makeinstallset
Warning: This command will run in interactive mode.
Entering new shell, type quit to leave!
Running in logged in mode.
Enter a name for this command: update iLO

Possible Commands: ApplyUpdate, ResetServer, ResetBmc, Wait
Enter Command for update iLO: ApplyUpdate

Unique filename of component on iLO repository
Components currently in the repository that have not been added to the installset:
[1] iLO 5
[2] HP Lights-Out Online Configuration Utility for Windows x64 E...
[3] System BIOS - U30
Select the number of the component you want to add to the install set: 1

Enter a name for this command: update bios

Possible Commands: ApplyUpdate, ResetServer, ResetBmc, Wait
Enter Command for update bios: ApplyUpdate

Unique filename of component on iLO repository
Components currently in the repository that have not been added to the installset:
[1] HP Lights-Out Online Configuration Utility for Windows x64 E...
[2] System BIOS - U30
Select the number of the component you want to add to the install set: 2

Enter a name for this command: quit
Is this a recovery installset? no
Enter installset name: update fw
Enter description for the installset:
{
  "Sequence": [
    {
      "UpdatableBy": [
        "Bmc"
      ],
      "Command": "ApplyUpdate",
      "Name": "update iLO",
      "Filename": "ilo5_137.bin"
    },
    {
      "UpdatableBy": [
        "Bmc"
      ],
      "Command": "ApplyUpdate",
      "Name": "update bios",
      "Filename": "U30_1.46_10_02_2018.signed.flash"
    }
  ],
  "IsRecovery": false,
  "Name": "update fw",
  "Description": ""
}
installset saved to myinstallset.json
```
  
{% /tab %}
{% /tabs %}

## Taskqueue Command

### Syntax

taskqueue *[Optional Parameters]*

### Description

Command to manage (view, add and remove tasks) from the task queue.
Added tasks are appended to the end of the queue. Don't specify any
argument to list the tasks and their status.

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-r, --resetqueue**

Remove all update tasks in the queue.

- **-c, --cleanqueue**

Clean up all finished or errored tasks - leave pending.

- **-j, --json**

Optionally include this flag if you wish to change the displayed output
to JSON format. Preserving the JSON data structure makes the information
easier to parse.

- **--tpmover**

Include this flag when updating firmware if you have a TPM installed.

### Login Parameters

The following parameters can be included to login to a server in the same
line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user
and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL
flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL
flags to login. Use the provided iLO password corresponding to the
username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this
command is completed. Using this flag when not logged in will have no effect.

### Examples

To create new wait task queue task, include the `create` keyword
followed by the amount of time to wait.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > taskqueue create 60
[200] The operation completed successfully.
Creating task: "Wait-703879 60 seconds"
[201] The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

To create a new firmware task queue task, include the `create` keyword
followed by the name of a firmware file that is already in the iLO repository.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > taskqueue create ilo5_137.bin
[200] The operation completed successfully.
Creating task: "Update-740856 iLO 5"
[201] The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

To list the tasks present in the task queue and their status, run
the command with no arguments.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > taskqueue

Current Update Task Queue:

Task Wait-703879 60 seconds:
        Command: Wait 60 seconds
        State:Pending

Task Update-740856 iLO 5:
        Command: ApplyUpdate
        Filename: ilo5_137.bin
        State:Pending

```
  
{% /tab %}
{% /tabs %}

To delete all tasks from the update task queue, run the command with
the `--resetqueue` option.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > taskqueue --resetqueue
Deleting all update tasks...
Deleting: Wait-703879 60 seconds
The operation completed successfully.
Deleting: Update-740856 iLO 5
The operation completed successfully.
```
  
{% /tab %}
{% /tabs %}

## Uploadcomp Command

### Syntax

uploadcomp *[Optional Parameters]*

### Description

Command to upload a firmware in the iLO repository.

{% admonition type="info" name="NOTES" %}

- The `uploadcomp` command requires iLO 5 firmware version v1.48(a) or later.
  Earlier iLO 5 Firmware versions fails with a return code 103.  
- iLO firmware version v1.48(a) or later is required because the
  <b>uploadcomp</b> command depends on the Bunny Hop feature found
  in that version of the iLO firmware.  
- Before updating the iLO firmware, read
  <a href="https://support.hpe.com/hpesc/public/docDisplay?docId=emr_na-a00068199en_us" target="_blank">the customer advisory regarding iLO firmware upgrades</a>.

{% /admonition %}

### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--includelogs**

Optionally include logs in the data retrieval process.

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to
JSON format. Preserving the JSON data structure makes the
information easier to parse.

- **--component=COMPONENT**

Component or binary file path to upload to the update service.

- **--compsig=COMPONENTSIG**

Component signature file path needed by iLO to authenticate the component file.
If not provided, the command will try to find the signature file from
component file path.

- **--forceupload**

Add this flag to force upload components with the same name already on the repository.

- **--update_repository**

Add this flag to skip uploading component/binary to the iLO Repository.
If this flag is included with `--update_srs`, it is ignored.
Adding component to the repository is required to update the system
recovery set.

- **--update_target**

If true, the uploaded component/binary will be flashed. The default is set to False.

- **--update_srs**

The uploaded component becomes a part of the system recovery set (srs).

{% admonition type="info" name="NOTE" %}

`--update_target` also need to passed along with `--update_srs` for
component to be valid for that server.
{% /admonition %}

### Login Parameters

The following parameters can be included to login to a server in the same
line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user
and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and
URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags
to login. Use the provided iLO password corresponding to the username
you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after
this command is completed. Using this flag when not logged in will have no effect.

### Examples

To upload firmware to the iLO repository run the command with
the `--component` option specifying the firmware file to upload.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > uploadcomp --component ilo5_137.bin
[200] The operation completed successfully.
Component ilo5_137.bin uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 1 minute(s) 43 second(s)
```
  
{% /tab %}
{% /tabs %}

By default the firmware is uploaded to the iLO Repository. For firmware iLO is
capable of flashing you can instead directly flash it.
To do this you need to include the `--update_repository`
flag to not include the firmware in the iLO repository and
the `--update_target`
flag to trigger iLO to flash.

{% tabs %}
{% tab label="Example" %}

```shell Example
iLOrest > uploadcomp --component ilo5_140.bin --update_repository --update_target
[200] The operation completed successfully.
Component ilo5_140.bin uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 1 minute(s) 56 second(s)
```
  
{% /tab %}
{% /tabs %}
