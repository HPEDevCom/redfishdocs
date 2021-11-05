---
title: iLO Repository Commands
toc:
  enable: true
  maxDepth: 3
---
## iLO Repository Commands

<aside class="notice">
The iLO repository commands are designed for use with HPE Gen10 servers.
</aside>

### Deletecomp Command

> Deletecomp example commands:

> To delete firmware by file name run the command with the file name as an argument. You can also delete multiple files by file name.

<pre>
iLOrest > <span style="color: #01a982; ">deletecomp ilo5_137.bin</span>
The operation completed successfully.
Deleted ilo5_137.bin
</pre>

> To delete firmware by Id run the command with the file Ids as arguments. You can also delete a single file by Id.

<pre>
iLOrest > <span style="color: #01a982; ">deletecomp 30d2d7fa b5a00edc</span>
The operation completed successfully.
Deleted 30d2d7fa
The operation completed successfully.
Deleted b5a00edc
</pre>

> To delete all firmware on the iLO repository run the command and include the `--all` option.

<pre>
iLOrest > <span style="color: #01a982; ">deletecomp --all</span>
The operation completed successfully.
</pre>

#### Syntax

deletecomp *[ID/Name(s)] [Optional Parameters]*

#### Description

Deletes firmware from the iLO repository.

<aside class="notice">
You cannot delete firmware that is part of a task from the task queue or an install set.
</aside>

#### Parameters

- **ID/Name(s)**

The name or Id(s) of the components for deletion. Multiple components should be specified by a comma separated list without spaces.

- **-h, --help**

Including the help flag will display help for the command.

- **-a, --all**

Delete all firmware.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Downloadcomp Command

> Downloadcomp example commands:

> To download a file run this command specifying the `file path` of the firmware.

<pre>
iLOrest > <span style="color: #01a982; ">downloadcomp /fwrepo/ilo5_137.bin</span>
Downloading component, this may take a while...
[200] The operation completed successfully.
Download complete
0 hour(s) 1 minute(s) 36 second(s)
</pre>

<aside class="warning">The output directory and files in that directory must be set to writable.</aside>
<aside class="warning">Any file in the output directory with the same name as the downloading firmware will be overwritten.</aside>

#### Syntax

downloadcomp *[File Path] [Optional Parameters]*

#### Description

Downloads firmware from the iLO repository.

#### Parameters

-**File Path**

The path to the firmware to download.

- **-h, --help**

Including the help flag will display help for the command.

- **outdir=OUTDIR**

output directory for saving the file.

#### Login Parameters

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

#### Inputs
None

#### Outputs
None

### Flashfwpkg Command

> flashfwpkg example commands:

> To upload firmware and flash (or stage for a flash) run the command with the `.fwpkg` file.

<pre>
iLOrest > <span style="color: #01a982; ">fwpkg U32_1.46_10_02_2018.fwpkg</span>
Uploading firmware: U32_1.46_10_02_2018.signed.flash
[200] The operation completed successfully.
Component U32_1.46_10_02_2018.signed.flash uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 1 minute(s) 28 second(s)
Firmware has successfully been flashed and a reboot is required for this firmware to take effect.
</pre>

> To skip checks for something blocking firmware updates also include the `--ignorechecks` option.

<pre>
iLOrest > fwpkg ilo5_137.fwpkg <span style="color: #01a982; ">--ignorechecks</span>
Uploading firmware: ilo5_137.bin
[200] The operation completed successfully.
Component ilo5_137.bin uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 0 minute(s) 55 second(s)
Firmware has successfully been flashed.
iLO will reboot to complete flashing. Session will be terminated.
Logging session out.
</pre>

<aside class="notice">
Some firmware can be flashed directly without a reboot, may require a reboot to take effect, or may only be staged for flash on reboot. The command will inform users when a firmware update will take place.
</aside>

#### Syntax

flashfwpkg *[FWPKG PATH] [Optional Parameters]*

#### Description

Run to upload and flash fwpkg components using the iLO repository.

#### Parameters

- **FWPKG PATH**

The path to the (.fwpkg) file for flashing or the (.fwpkg) file itself if it is in the current working directory.

- **-h, --help**

Including the help flag will display help for the command.

- **--forceupload**

Include this flag to force upload firmware with the same name already on the repository.

- **--ignorechecks**

Include this flag to ignore all checks to the taskqueue before attempting to process the .fwpkg file.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Installset Command

> Installset example commands:

> To list current install sets run the command without arguments.

<pre>
iLOrest > <span style="color: #01a982; ">installset</span>
Install Sets:

basic_update:
        command1: ApplyUpdate ilo5_137.bin
</pre>

>To add an install set run the command with the `add` argument followed by the install set json file. If using sequence type json file (see below) the `--name` option must be included.

<pre>
iLOrest > <span style="color: #01a982; ">installset add myinstallset.json</span>
[201] The operation completed successfully.
</pre>

> To invoke an install set and have it start performing tasks run the command with the `invoke` argument followed by the `-n, --name` option specifying the name of the install set to invoke.

<pre>
iLOrest > <span style="color: #01a982; ">installset invoke --name basic_update</span>
Invoking install set:basic_update
The operation completed successfully.
</pre>

> To delete an install set run the command with the `delete` argument followed by the `--name` specifying the name of the install set to delete.

<pre>
iLOrest > <span style="color: #01a982; ">installset delete --name basic_update</span>
Deleting install set: basic_update...
The operation completed successfully.
</pre>

> To remove all install sets run the command with the `--removeall` option.

<pre>
LOrest > installset <span style="color: #01a982; ">--removeall</span>
Deleting all install sets...
Deleting install set: basic_update
The operation completed successfully.
</pre>

> Install sets can be added by either the complete JSON structure...

``` json
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

> Or a list of sequences.

``` json
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



#### Syntax

installset *[Optional Parameters]*

#### Description

Command to perform operations on install sets.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-n NAME, --name=NAME**

Install set name to create, remove, or invoke.

- **-r, --removeall**

Remove all install sets.

- **-j, --json**

Optionally include this flag to change the displayed output to JSON format. Preserving the JSON data structure makes the information easier to parse.

- **--expire=EXAFTER**

Optionally include this flag to set the expiry time for installset. ISO 8601 Redfish-style time string to be written after which iLO will automatically change state to Expired.

- **--startafter=SAFTER**

Optionally include this flag to set the earliest execution time for installset. ISO 8601 Redfish-style time string to be used.

- **--tpmover**

Use this flag if the server you are currently logged into has a TPM chip installed.

- **--updaterecoveryset**

If set then the components in the flash operations are used to replace matching contents in the Recovery Set.

- **--cleartaskqueue**

This option clears previous items in the task queue before the Install Set is invoked.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Listcomp Command

> Listcomp example commands:

> To list the firmware on the iLO repository of the currently logged in system run the command without arguments.

<pre>
iLOrest > <span style="color: #01a982; ">listcomp</span>
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
</pre>

#### Syntax

listcomp *[Optional Parameters]*

#### Description

Command to list the firmware on the iLO repository of the currently logged in system.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to JSON format. Preserving the JSON data structure makes the information easier to parse.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Maintenancewindow Command

> maintenancewindow example commands:

> To list the current maintenancewindows on the system run the command without arguments.

<pre>
iLOrest > <span style="color: #01a982; ">maintenancewindow</span>
MW-147746:
        Description: No description.
        Start After: 2015-11-21T00:00:00Z
        Expires at: No expire time set.
</pre>

> To Create a new maintenance window run the command with the `add` keyword followed by the time the maintenance window should start. If you do not supply a name for your maintenance window one will be randomly generated for you.

<pre>
iLOrest > <span style="color: #01a982; ">maintenancewindow add 2018-11-21T00:00:00</span>
[201] The operation completed successfully.
</pre>

> To optionally specify an expire time (`-e, --expire`), maintenance window name (`-n, --name`), and/or description (`--description`) include their respective options.

<pre>
iLOrest > maintenancewindow add 2019-11-21T00:00:00 <span style="color: #01a982; ">--expire=2019-11-22T00:00:00 --name=MyMaintenanceWindow --description "My maintenance window description."</span>
[201] The operation completed successfully.
</pre>

> To delete a maintenance window run the command with the `delete` keyword followed by the name of the maintenance window you wish to delete.

<pre>
iLOrest > <span style="color: #01a982; ">maintenancewindow delete MyMaintenanceWindow</span>
Deleting MyMaintenanceWindow
The operation completed successfully.
</pre>



#### Syntax

maintenancewindow *[Optional Parameters]*

#### Description

Command to add, remove, or delete maintenance windows from the iLO repository.


#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-j, --json**

Optionally include this flag to change the displayed output to JSON format. Preserving the JSON data structure makes the information easier to parse.

- **-description=DESCRIPTION**

Optionally include this flag to add a description to the maintenance window created by you.

- **-n NAME, --name=NAME**

Optionally include this flag to name the maintenance window created by you. If a name is not specified, system will add a unique name.

- **-e EXPIRE, --expire=EXPIRE**

Optionally include this flag to add the time a maintenance window expires.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Makeinstallset Command

> Makeinstallset example commands:

> Run without logging in for basic guidance on making an install set.

<pre>
iLOrest > <span style="color: #01a982; ">makeinstallset</span>
Warning: This command will run in interactive mode.
Entering new shell, type backout to leave!
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

Enter a name for this command: backout
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
</pre>

> Run while logged into a system for guidance based on the current components on that system.

<pre>
iLOrest > <span style="color: #01a982; ">makeinstallset</span>
Warning: This command will run in interactive mode.
Entering new shell, type backout to leave!
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

Enter a name for this command: backout
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
</pre>



#### Syntax

makeinstallset *[Optional Parameters]*

#### Description

Run to make installsets for iLO.
If not logged into the server, the command will provide basic guidance on making an installset.
If logged into the server, the command will provide guidance based on the current components on the system.
<aside class="notice">When using this command on a logged in sever, for best results, upload the components before running this command.</aside>

#### Parameters

- **-h, --help**

Including the help flag on this command will display help.

- **-f FILENAME, --filename=FILENAME**

Include this flag to use a different filename than the default one. The default filename is myinstallset.json

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Taskqueue Command

> Taskqueue example commands:

> To create new wait task queue task include the `create` keyword followed by the amount of time to wait.

<pre>
iLOrest > <span style="color: #01a982; ">taskqueue create 60</span>
[200] The operation completed successfully.
Creating task: "Wait-703879 60 seconds"
[201] The operation completed successfully.
</pre>

> To create a new firmware task queue task include the `create` keyword followed by the name of a firmware file that is already in the iLO repository.

<pre>
iLOrest > <span style="color: #01a982; ">taskqueue create ilo5_137.bin</span>
[200] The operation completed successfully.
Creating task: "Update-740856 iLO 5"
[201] The operation completed successfully.
</pre>

> To view the current update task queue runt the command with no arguments.

<pre>
iLOrest > <span style="color: #01a982; ">taskqueue</span>

Current Update Task Queue:

Task Wait-703879 60 seconds:
        Command: Wait 60 seconds
        State:Pending

Task Update-740856 iLO 5:
        Command: ApplyUpdate
        Filename: ilo5_137.bin
        State:Pending

</pre>

> To delete all tasks from the update task queue run the command with the `--resetqueue` option.

<pre>
iLOrest > <span style="color: #01a982; ">taskqueue --resetqueue</span>
Deleting all update tasks...
Deleting: Wait-703879 60 seconds
The operation completed successfully.
Deleting: Update-740856 iLO 5
The operation completed successfully.
</pre>

#### Syntax

taskqueue *[Optional Parameters]*

#### Description

Command to add or remove tasks from the task queue. Added tasks are appended to the end of the queue.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **-r, --resetqueue**

Remove all update tasks in the queue.

- **-c, --cleanqueue**

Clean up all finished or errored tasks - leave pending.

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to JSON format. Preserving the JSON data structure makes the information easier to parse.

- **--tpmover**

Include this flag when updating firmware if you have a TPM installed.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Uploadcomp Command

> Uploadcomp example commands:

> To upload firmware to the iLO repository run the command with the `--component` option specifying the firmware file to upload.

<pre>
iLOrest > <span style="color: #01a982; ">uploadcomp --component ilo5_137.bin</span>
[200] The operation completed successfully.
Component ilo5_137.bin uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 1 minute(s) 43 second(s)
</pre>

> By default the firmware is uploaded to the iLO Repository. For firmware iLO is capable of flashing you can instead directly flash it.
To do this you need to include the `--update_repository`  flag to not include the firmware in the iLO repository and the `--update_target`
flag to trigger iLO to flash.

<pre>
iLOrest > uploadcomp --component ilo5_140.bin <span style="color: #01a982; ">--update_repository --update_target</span>
[200] The operation completed successfully.
Component ilo5_140.bin uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 1 minute(s) 56 second(s)
</pre>


#### Syntax

uploadcomp *[Optional Parameters]*

#### Description

Command to upload firmware on to iLO repository.
<aside class="notice">
The </b>uploadcomp</b> command requires iLO firmware version v1.48(a) or later. Earlier iLO Firmware versions will fail with a return code 103.  
iLO firmware version v1.48(a) or later is required because the <b>uploadcomp</b> command depends on the Bunny Hop feature found in that version of the iLO firmware.  
Before updating the iLO firmware, see <a href="https://support.hpe.com/hpesc/public/docDisplay?docId=emr_na-a00068199en_us" target="_blank">the customer advisory regarding iLO firmware upgrades</a>.
To download the latest iLO Firmware, see the <a href="https://support.hpe.com/hpsc/swd/public/detail?swItemId=MTX_912b35cf18cd4b7ea530732822" target="_blank">Drivers & Software page for the Online ROM Flash Firmware Package - HPE iLO 5</a>
</aside>


#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--includelogs**

Optionally include logs in the data retrieval process.

- **-j, --json**

Optionally include this flag if you wish to change the displayed output to JSON format. Preserving the JSON data structure makes the information easier to parse.

- **--component=COMPONENT**

Component or binary file path to upload to the update service.

- **--compsig=COMPONENTSIG**

Component signature file path needed by iLO to authenticate the component file. If not provided, the command will try to find the signature file from component file path.

- **--forceupload**

Add this flag to force upload components with the same name already on the repository.

- **--update_repository**

If true, uploads the component/binary on to the Repository. The default is set to True.

- **--update_target**

If true, the uploaded component/binary will be flashed. The default is set to False.

- **--update_srs**

The component uploaded will become a part of the system recovery set (srs).

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, use this flag along with the password and URL flags to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.



- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None
