---
seo:
  title: Storage controller commands
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## Storage controller commands (former smart array commands)

The storage controller commands of this section are designed for use with HPE Gen10 servers and later.

:::info NOTE

- A storage controller capable of communicating with iLO is required.
- Logical volume creation is determined on initialization of the controller at system startup. Therefore, invalid entries can only be determined after reboot.

:::

### storagecontroller command (former smartarray command)

#### Syntax

storagecontroller *[Optional Parameters]*

#### Description

Discovers all storage controllers installed in the server.  

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--physicaldrives**

Use this flag to return the physical drives for the controller selected.

- **--logicaldrives**

Use this flag to return the volumes for the controller selected.

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

None

#### Output

None

#### Examples

To list all available storage controllers run the command without arguments.

```shell
ilorest > storagecontroller
[1] Slot 0
```

To list all Existing Volume Unique Identifier's for logical drives for all controllers run the command including the `--logicaldrives` option. Drives which are pending will instead show "Pending Drive" for the Volume Unique Identifier (this will be available after the system has been rebooted and the drive has been successfully created.). The information is presented such that the controller slot number is noted first, followed by all associated volumes to that controller.

```shell
iLOrest > login
Discovering data...Done
ilorest > storagecontroller  --volumes
[1] Slot 0
Volumes
[1] 600508B1001C599DE361257397F69972
[2] Pending drive
[3] Pending drive
```

To list all physical drives for all available controllers, run the command with the `--physicaldrives` option. The controller will be provided first followed by drive information (as associated to that controller). Drive information is in the format, [Controller Port (Internal)]:[Box]:[Bay].

```shell
iLOrest > login
Discovering data...Done
ilorest > storagecontroller --physicaldrives
[1] Slot 0
Physical Drives
[1] 1I:3:4
[2] 1I:3:3
[3] 1I:3:2
[4] 1I:3:1
[5] 2I:3:5
[6] 2I:3:6
```

To return a JSON formatted response including controller settings, as well as physical drives and volumes information on the selected controller, include the `--controller` option followed by the number in brackets associated to the controller.

```shell
ilorest > storagecontroller --controller=0
Selected option(s): #StorageCollection.StorageCollection
------------------------------------------------
Controller Info
------------------------------------------------
Id: 0
Name: HPE Smart Array SR308i-p Gen11
FirmwareVersion: 5.32
Manufacturer: HPE
Model: HPE Smart Array SR308i-p Gen11
PartNumber: 830826-001
SerialNumber: PZDLCX1GFG002O
SKU: 836269-001
Status: {'Health': 'Critical', 'State': 'Enabled'}
SupportedDeviceProtocols: ['SAS', 'SATA']
SupportedControllerProtocols: ['PCIe']
ILOREST return code: 0
```

To return a JSON formatted response regarding the settings and attributes of the selected physical drive on the selected controller include the `--controller` option specifying the controller and the `--pdrive` option specifying the physical drive number in brackets.

```shell
ilorest > smartarray --controller=1 --pdrive=1I:3:4
{
  "Controller": "Slot=3 - HPE Smart Array SR308i-p Gen11",
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
```

To return a JSON formatted response regarding the settings and attributes of the selected volume on the selected controller, include the `--controller` option specifying the controller and the `--ldrive` option specifying the logical drive number in brackets.

```shell
iLOrest > smartarray --controller=1 --ldrive=1
{
  "Controller": "Slot=3 - HPE Smart Array SR308i-p Gen11",
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
```

### clearcontrollerconfig Command

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


- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

None

#### Output

None

#### Examples

To clear a controller configuration run the command including the `--controller` option specifying the controller to clear.

```shell
ilorest > clearcontrollerconfig --controller=1
One or more properties were changed an will not take effect until system is reset.
```

### createvolume Command (former createlogicaldrive command)

#### Syntax

createvolume *[Optional Parameters]*

#### Description

Creates a new volume on the selected controller.

Options:

- raid-level:             Raid0, Raid1, Raid1ADM, Raid10, Raid10ADM, Raid5, Raid50, Raid6, Raid60
- media-type:             SSD,HDD
- interface-type:         SAS, SATA, NVMe
- drive-location:         Internal, External
- --spare-type:           Dedicated, Roaming
- --accelerator-type:     ControllerCache, IOBypass, None
- --paritytype:           Default, Rapid
- --storageid:            Storage Id (iLO 6 only).

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--storageid=STORAGEID**

Use this flag to select the corresponding Storage Id. This is applicable for **iLO 6 only**.

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

None

#### Output

None

#### Examples

To create quickly a volume, run the command with the following arguments: The type of creation as `quickdrive`, the raid level, the number of drives to use, the type of drive to use, the drive interface type, and the drive location. Also include the `--controller` option selecting the controller the drive will be created on. See the options list for possible values of these and more.

```shell

ilorest > createvolume quickdrive Raid0 1E:1:2 HDD SATA Internal --controller=1

One or more properties were changed an will not take effect until system is reset.
```

To create a custom volume, run the command with the following arguments: The type of creation as `customdrive`, the raid level, and the `physicaldrive` drive location. Also include the `--controller` option selecting the controller the drive will be created on. See the options list for possible values of these and more.

```shell
iLOrest > login
Discovering data...Done

ilorest > createvolume customdrive Raid5 1E:1:2 --controller=1 --name=ANewVolume --spare-drives=2 --capacityGiB=100 --legacy-boot=Primary --accelerator-type=ControllerCache --sparetye=Dedicated

One or more properties were changed an will not take effect until system is reset.
```

:::info NOTE

- HPE iLO 6 onwards, there is no need to reboot after creating a volume.
- HPE iLO 5 requires a reboot after creating the volumes. If the drives are not present after a full reboot, run the results command to check for errors in the configuration.

:::

### deletevolume Command (former deletelogicaldrive command)

#### Syntax

deletevolume *[Optional Parameters]*

#### Description

Deletes volumes from the selected controller.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--storageid=STORAGEID**

Use this flag to select the corresponding Storage Id. This is applicable for iLO 6 only.

- **--all**

Use this flag to delete all volumes on a controller.

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

None

#### Output

None

#### Examples

To delete multiple volumes by drive location include the drive location of the drive you wish to delete. Also include the `--controller` option specifying the controller to use. You can specify multiple drives as well as a comma separated list.

:::info NOTES

- A Volume Unique Identifier must be available to delete a volume. Pending drives may not be deleted.
- In case of iLO 6, `--storageid` tag is mandatory.

:::

```shell
ilorest > deletevolume --controller=1 1
Are you sure you would like to continue deleting drive 004D56ABPEYHC0ARH951TK A39C? (y/n)
Setting volume 004D56ABPEYHC0ARH951TK A39C for deletion
One or more properties were changed and will not take effect until system is reset.
```

To delete all volumes on a controller include the`--controller` option specifying the controller to perform the operation on and the `--all` option.

```shell
iLOrest > login
Discovering data...Done
ilorest > deletevolume --controller=1 --all
[200] The operation completed successfully.
```

### drivesanitize Command

#### Syntax

drivesanitize *[Optional Parameters]*

#### Description

Erase/Sanitizes physical drives.

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--storageid=STORAGEID**

Use this flag to select the corresponding Storage Id. This is applicable for iLO 6 only.

- **--status**

Use this flag to check sanitization status of a controller. This is applicable for iLO 6 only.

- **--drivereset**

Use this flag to reset physical drives on a controller. This is applicable for iLO 6 only.

- **--mediatype=HDD/SSD**

Use this flag to indicate if the drive is HDD or SSD.  This is mandatory option.

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

None

#### Output

None

#### Examples

To sanitize a physical drive pass its drive location along with the `--controller` option to specify which controller to perform the operation on.

```shell
ilorest > drivesanitize --controller=1 1I:3:4
Setting physical drive 1I:3:4 for sanitization
One or more properties were changed and will not take effect until system is reset.
Sanitization will occur on the next system reboot.
```

To sanitize multiple physical drives pass the location as a comma separated list along with the `--controller` option to specify which controller to perform the operation on.

In case of iLO 6, the `--storageid`  tag is mandatory.

```shell
ilorest > drivesanitize --controller=1 1I:3:3,1I:3:2,1I:3:1
Setting physical drive 1I:3:3 for sanitization
Setting physical drive 1I:3:2 for sanitization
Setting physical drive 1I:3:1 for sanitization
One or more properties were changed and will not take effect until system is reset.
Sanitization will occur on the next system reboot.
```

Use the `--status` tag to check the status of Sanitization. This is only applicable for iLO 6.

```shell
ilorest > drivesanitize 1I:1:1 --controller=1 --storageid=DE00900 --mediatype="HDD" --status </span>
The drive is in Sanitizing state, 25 percent complete.
```

Once the process in 100% complete, use the `--drivereset` tag to reset the drive. This is only applicable for iLO 6

```shell
ilorest > drivesanitize 1I:1:1 --controller=1 --storageid=DE00900 --mediatype="HDD" --drivereset </span>
DriveReset path and payload: /redfish/v1/Systems/1/Storage/DE00A000/Drives/8/Actions/Drive.Reset, {"ResetType": "ForceOn"}
```

### Factoryresetcontroller Command

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

- **--logout**

Optionally include the logout flag to log out of the server after this command is completed. Using this flag when not logged in will have no effect.

#### Input

None

#### Output

None

#### Examples

To factory reset a controller run this command and specify it's index with the `--controller` option.

```shell
ilorest > factoryresetcontroller --controller=1
One or more properties were changed and will not take effect until system is reset.
```

To factory reset all controllers run this command and include the `--all` option.

```shell
ilorest > factoryresetcontroller --all
One or more properties were changed and will not take effect until system is reset.
```
