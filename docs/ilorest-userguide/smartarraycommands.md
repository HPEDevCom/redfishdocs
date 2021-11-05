---
title: Smart Array Commands
toc:
  enable: true
  maxDepth: 3
---
## Smart Array Commands

The Smart Array commands are designed for use with HPE Gen10 servers.

<aside class="notice">
<ul>
<li>A Smart Array Capable controller capable of communicating with iLO is required.</li>
<li>Logical volume creation is determined on initialization of the controller at system startup. Therefore, invalid entries can only be determined after reboot.
</ul>
</aside>

### Clearcontrollerconfig Command

> Clearcontrollerconfig example commands:

> To clear a controller configuration run the command including the `--controller` option specifying the controller to clear.

<pre>
ilorest > <span style="color: #01a982; ">clearcontrollerconfig --controller=1</span>
One or more properties were changed an will not take effect until system is reset.
</pre>

#### Syntax
clearcontrollerconfig *[Optional Parameters]*

#### Description
Clears smart array controller configuration.


#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--all**

Use this flag to sanitize all physical drives on a controller.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with the password and URL flags can be used to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO.

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Createlogicaldrive Command

> Createlogicaldrive example commands:

> To create a quick logical drive run the command with the following arguments: The type of creation as quickdrive, the raid level, the number of drives to use, the type of drive to use, the drive interface type, and the drive location. Also include the `--controller` option selecting the controller the drive will be created on. See the options list for possible values of these and more.

<pre>

ilorest > <span style="color: #01a982; ">createlogicaldrive quickdrive Raid0 1E:1:2 HDD SATA Internal --controller=1</span>

One or more properties were changed an will not take effect until system is reset.
</pre>

> To create a custom logical drive run the command with the following arguments: The type of creation as customdrive, the raid level, and the physicaldrive drive location. Also include the `--controller` option selecting the controller the drive will be created on. See the options list for possible values of these and more.

<pre>
iLOrest > login
Discovering data...Done

ilorest > <span style="color: #01a982; ">createlogicaldrive customdrive Raid5 1E:1:2 --controller=1 --name=ANewLogicalDrive --spare-drives=2 --capacityGiB=100 --legacy-boot=Primary --accelerator-type=ControllerCache --sparetye=Dedicated</span>

One or more properties were changed an will not take effect until system is reset.
</pre>

<aside class="notice">
The createlogicaldrive command requires a reboot before creating the logical drives. If the drives are not present after a full reboot, run the results command to check for errors in the configuration.
</aside>

#### Syntax

createlogicaldrive *[Optional Parameters]*

#### Description
Creates a new logical drive on the selected controller.

Options:
- raid-level:             Raid0, Raid1, Raid1ADM, Raid10, Raid10ADM, Raid5, Raid50, Raid6, Raid60
- media-type:             SSD,HDD
- interface-type:         SAS, SATA
- drive-location:         Internal, External
- --spare-type:           Dedicated, Roaming
- --accelerator-type:     ControllerCache, IOBypass, None
- --paritytype:           Default, Rapid


#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **-n DRIVENAME, --name=DRIVENAME**

Optionally include to set the drive name (usable in custom creation only).

- **--spare-drives=SPAREDRIVES**

Optionally include to set the spare drives by the physical drive's drive Location (usable in custom creation only).

- **--capacityGiB=CAPACITYGIB**

Optionally include to set the capacity of the drive in GiB (usable in custom creation only, use -1 for max size).

- **--spare-type=SPARETYPE**

Optionally include to choose the spare drive type (usable in custom creation only).

- **--accelerator-type=ACCELERATORTYPE**

Optionally include to choose the accelerator type.

- **--legacy-boot=LEGACYBOOT**

Optionally include to choose the legacy boot priority (usable in custom creation only).

- **--capacityBlocks=CAPACITYBLOCKS**

Optionally include to choose the capacity in blocks (use -1 for max size, usable in custom creation only).

- **--paritygroupcount=PARITYGROUP**

Optionally include to include the number of parity groups to use (only valid for certain RAID levels).

- **--paritytype=PARITYTYPE**

Optionally include to choose the parity initialization type (usable in custom creation only).

- **--block-size-bytes=BLOCKSIZE**

Optionally include to choose the block size of the disk drive (usable in custom creation only).

- **--strip-size-bytes=STRIPSIZE**

Optionally include to choose the strip size in bytes (usable in custom creation only).

- **--stripe-size-bytes=STRIPESIZE**

Optionally include to choose the stripe size in bytes (usable in custom creation only).

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with the password and URL flags can be used to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO.

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None


#### Outputs
None

### Deletelogicaldrive Command

> Deletelogicaldrive example commands:

> To delete multiple logical drives by drive location include the drive location of the drive you wish to delete. Also include the `--controller` option specifying the controller to use. You can specify multiple drives as well as a comma separated list.

<aside class="notice">
A Volume Unique Identifier must be available to delete a logical drive. Pending drives may not be deleted.
</aside>

<pre>
ilorest > <span style="color: #01a982; ">deletelogicaldrive --controller=1 1</span>
Are you sure you would like to continue deleting drive 004D56ABPEYHC0ARH951TK A39C? (y/n)
Setting logical drive 004D56ABPEYHC0ARH951TK A39C for deletion
One or more properties were changed and will not take effect until system is reset.
</pre>


> To delete all logical drives on a controller include the`--controller` option specifying the controller to perform the operation on and the `--all` option.

<pre>
iLOrest > login
Discovering data...Done
ilorest > deletelogicaldrive --controller=1 <span style="color: #01a982; ">--all</span>
[200] The operation completed successfully.
</pre>

#### Syntax

deletelogicaldrive *[Optional Parameters]*

#### Description
Deletes logical drives from the selected controller.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--all**

Use this flag to delete all logical drives on a controller.

- **--force**

Use this flag to override the "are you sure?" text when deleting a logical drive.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with the password and URL flags can be used to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO.

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Drivesanitize Command

> Drivesanitize example commands:

> To sanitize a physical drive pass its drive location along with the `--controller` option to specify which controller to perform the operation on.

<pre>
ilorest > drivesanitize --controller=1 1I:3:4
Setting physical drive 1I:3:4 for sanitization
One or more properties were changed and will not take effect until system is reset.
Sanitization will occur on the next system reboot.
</pre>

> To sanitize multiple physical drives pass the location as a comma separated list along with the `--controller` option to dpecify which controller to perform the operation on.

<pre>
ilorest > drivesanitize --controller=<span style="color: #01a982; ">1 1I:3:3,1I:3:2,1I:3:1</span>
Setting physical drive 1I:3:3 for sanitization
Setting physical drive 1I:3:2 for sanitization
Setting physical drive 1I:3:1 for sanitization
One or more properties were changed and will not take effect until system is reset.
Sanitization will occur on the next system reboot.
</pre>

#### Syntax

drivesanitize *[Optional Parameters]*

#### Description
Erase/Sanitizes physical drives.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--reboot**

Include this flag to perform a coldboot command function after completion of operations and monitor sanitization.

- **--all**

Use this flag to sanitize all physical drives on a controller.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with the password and URL flags can be used to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO.

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None

### Factoryresetcontroller Command

> Factoryresetcontroller example commands:

> To factory reset a controller run this command and specify it's index with the `--controller` option.

<pre>
ilorest > <span style="color: #01a982; ">factoryresetcontroller --controller=1</span>
One or more properties were changed and will not take effect until system is reset.
</pre>

> To factory reset all controllers run this command and include the `--all` option.

<pre>
ilorest > factoryresetcontroller <span style="color: #01a982; ">--all</span>
One or more properties were changed and will not take effect until system is reset.
</pre>

#### Syntax

factoryresetcontroller *[Optional Parameters]*

#### Description
Restores a controller to factory defaults.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with the password and URL flags can be used to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO.

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None


#### Outputs
None

### SmartArray Command

> To list all available smart array controllers run the command without arguments.

<pre>
ilorest > <span style="color: #01a982; ">smartarray</span>
[1]&#58; Slot 0
</pre>

> To list all Existing Volume Unique Identifier's for logical drives for all controllers run the command including the `--logicaldrives` option. Drives which are pending will instead show "Pending Drive" for the Volume Unique Identifier (this will be available after the system has been rebooted and the drive has been successfully created.). The information is presented such that the controller slot number is noted first, followed by all associated logical drives to that controller.

<pre>
iLOrest > login
Discovering data...Done
ilorest > <span style="color: #01a982; ">smartarray --logicaldrives</span>
[1]&#58; Slot 0
Logical Drives&#58;
[1]&#58; 600508B1001C599DE361257397F69972
[2]&#58; Pending drive
[3]&#58; Pending drive
</pre>

> To list all physical drives for all available controllers, run the command with the `--physicaldrives` option. The controller will be provided first followed by drive information (as associated to that controller). Drive information is in the format, [Controller Port (Internal)]:[Box]:[Bay].

<pre>
iLOrest > login
Discovering data...Done
ilorest > <span style="color: #01a982; ">smartarray --physicaldrives</span>
[1]&#58; Slot 0
Physical Drives&#58;
[1]&#58; 1I:3:4
[2]&#58; 1I:3:3
[3]&#58; 1I:3:2
[4]&#58; 1I:3:1
[5]&#58; 2I:3:5
[6]&#58; 2I:3:6
</pre>

> To return a JSON formatted response including controller settings, as well as physical and logical drives information on the selected controller, include the `--controller` option followed by the number in brackets associated to the controller.

<pre>
ilorest > <span style="color: #01a982; ">smartarray --controller=1</span>
{
  "CurrentParallelSurfaceScanCount": 1,
  "DataGuard": "Disabled",
  "DegradedPerformanceOptimization": "Disabled",
  "DriveWriteCache": "Disabled",
  "ElevatorSort": "Enabled",
  "EncryptionConfiguration": "None",
  "EncryptionEULA": null,
  "ExpandPriority": "Medium",
  "FlexibleLatencySchedulerSetting": "Default",
  "InconsistencyRepairPolicy": "Disabled",
  "Location": "Slot 0",
  "LocationFormat": "PCISlot",
  "LogicalDrives": [
    {
      "CapacityBlocks": 1172058032,
      "ParityGroupCount": 0,
      "SpareRebuildMode": null,
      "Raid": "Raid0",
      "LogicalDriveNumber": 1,
      "Accelerator": "ControllerCache",
      "BlockSizeBytes": 512,
      "CapacityGiB": 558,
      "SpareDrives": [],
      "DriveLocationFormat": "ControllerPort:Box:Bay",
      "LogicalDriveName": "004D56ABPEYHC0ARH951TK A39C",
      "VolumeUniqueIdentifier": "600508B1001C599DE361257397F69972",
      "StripeSizeBytes": 262144,
      "StripSizeBytes": 262144,
      "DataDrives": [
        "1I:3:2"
      ]
  ...
</pre>

> To return a JSON formatted response regarding the settings and attributes of the selected physical drive on the selected controller include the `--controller` option specifying the controller and the `--pdrive` option specifying the physical drive number in brackets.

<pre>
ilorest > <span style="color: #01a982; ">smartarray --controller=1 --pdrive=1I:3:4</span>
{
  "BlockSizeBytes": 512,
  "CapacityGB": 400,
  "CapacityLogicalBlocks": 781422768,
  "CapacityMiB": 381554,
  "CarrierApplicationVersion": "11",
  "CarrierAuthenticationStatus": "OK",
  "CurrentTemperatureCelsius": 41,
  "DiskDriveStatusReasons": [
    "None"
  ],
  "DiskDriveUse": "Raw",
  "EncryptedDrive": false,
  "FirmwareVersion": {
    "Current": {
      "VersionString": "HPD3"
    }
  },
  "InterfaceSpeedMbps": 12000,
  "InterfaceType": "SAS",
  "LegacyBootPriority": "Primary",
  "Location": "1I:3:4",
  "LocationFormat": "ControllerPort:Box:Bay",
  "MaximumTemperatureCelsius": 46,
  "MediaType": "SSD",
  "Model": "MO0400JEFPA",
  "PowerOnHours": 5943,
  "SSDEnduranceUtilizationPercentage": 0,
  "SerialNumber": "0QV2MS1A",
  "Status": {
    "State": "Enabled",
    "Health": "OK"
  },
  "UncorrectedReadErrors": 0,
  "UncorrectedWriteErrors": 0
}
</pre>

> To return a JSON formatted response regarding the settings and attributes of the selected logical drive on the selected controller include the `--controller` option specifying the controller and the `--ldrive` option specifying the logical drive number in brackets.

<pre>
iLOrest > <span style="color: #01a982; ">smartarray --controller=1 --ldrive=1</span>
{
  "Accelerator": "ControllerCache",
  "BlockSizeBytes": 512,
  "CapacityBlocks": 1172058032,
  "CapacityGiB": 558,
  "DataDrives": [
    "1I:3:2"
  ],
  "DriveLocationFormat": "ControllerPort:Box:Bay",
  "LegacyBootPriority": "None",
  "LogicalDriveName": "004D56ABPEYHC0ARH951TK A39C",
  "LogicalDriveNumber": 1,
  "ParityGroupCount": 0,
  "Raid": "Raid0",
  "SpareDrives": [],
  "SpareRebuildMode": null,
  "StripSizeBytes": 262144,
  "StripeSizeBytes": 262144,
  "VolumeUniqueIdentifier": "600508B1001C599DE361257397F69972"
}
</pre>



#### Syntax

Smartarray *[Optional Parameters]*

#### Description

Discovers all storage controllers installed in the server and managed by the SmartStorage.  

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--physicaldrives**

Use this flag to return the physical drives for the controller selected.

- **--logicaldrives**

Use this flag to return the logical drives for the controller selected.

- **--pdrive=PDRIVE_LOCATION**

Use this flag to select the corresponding physical disk.

- **--ldrive=LDRIVE**

Use this flag to select the corresponding logical disk.

#### Login Parameters

The following parameters can be included to login to a server in the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL along with the user and password flags to login to the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this flag along with the password and URL flags can be used to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this flag along with the user and URL flags to login. Use the provided iLO password corresponding to the username you gave to login.

- **-privatecert User CA Certificate, --privateusercert**

Specify a user CA certificate file path for certificate based authentication with iLO.

<aside class="notice">A root user CA key is required.</aside>

- **-certkey Private User Root CA, --userrootcakey**

Specify a user root ca key file path for certificate based authentication with iLO

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-certpass Private User Root CA Password, --userrootcapassword**

Optionally specify a user root ca key file password for a password protected user root CA.

<aside class="notice">If the root CA key is password protected, but not included with '-certpass/--userrootcapassword', then Urllib3 will automatically request the password on the command line.</aside>

- **-cert CA Certificate Bundle, --usercacert**

Optionally specify a file path for the certificate authority bundle location (local repository for trusted CA collection).

<aside class="notice">Providing a private user certificate or user root CA key will override the use of certificate bundles.</aside>

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Inputs
None

#### Outputs
None
