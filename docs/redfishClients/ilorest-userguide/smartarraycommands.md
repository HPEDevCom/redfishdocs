---
seo:
  title: Storage devices commands
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## Storage commands for RDE capable devices

:::info NOTE

- This section applies for HPE Gen10 and later servers.
- This section contains commands for managing
[PLDM for RDE](/docs/etc/glossaryterms/)
capable storage devices only (MR, SR, NS...).
- For other storage devices (i.e NVMe),
use the `select type/get/set` paradigm or
[raw](/docs/redfishclients/ilorest-userguide/rawcommands/) commands.

:::

:::success TIP
Properties of [PLDM for RDE](/docs/etc/glossaryterms/)
capable devices can only be accessed
when the discovery of all devices
has been performed in the managed system. Check
the following two properties to make sure the server
is in the required state:

- `ilorest serverstate` should return `InPostDiscoveryComplete`
or `FinishedPost`
- `ilorest get Oem/Hpe/DeviceDiscoveryComplete/DeviceDiscovery --select ComputerSystem.`
should return: `vMainDeviceDiscoveryComplete`

:::

### Storagecontroller command (former smartarray command)

#### Syntax

storagecontroller _[sub-command]_ _[parameters]_

#### Description

- Display storage controller, logical volume and drive
information of [PLDM for RDE](/docs/etc/glossaryterms/) capable storage
devices.
- Save configurations (controllers, volumes and physical drives)
in a JSON file.
- Load a JSON file with modified storage controller configurations
(read-only properties are discarded).

Run without any sub-command or with the `default`
sub-command returns a summary of storage device(s) present in the system.
Optional parameters narrows the scope of returned
properties to individual controllers, volumes or drives.

#### Sub-commands

- **default**

Returns a summary of storage device(s) present in the system.
Optional arguments narrows the scope of returned
properties to individual controllers, volumes or drives.

- **state**

<!-- The following definition should specify which `@Redfish.Settings` 
     object: Storage device ? Controller(s) behind a storage device ? 
     Please provide the URI of the concerned `@Redfish.Settings`
-->

Returns the content of the
`@Redfish.Settings` [object](/docs/concepts/errorresponses/#interpreting-the-redfishsettings-object),
if available.

- **save**

<!-- The save commands only saves ONE storage device.
     Problem can be reproduced on ilo-scott380g11-1 
-->

Save configurations (controllers, volumes and physical drives)
in a JSON file. if `-f <filename>` is not provided,
the configuration is saved in
`storagecontroller_config.json`.

- **load**

<!-- Cannot make this sub-command working. 
     Need directions to use this load
     command and insert an example.
-->
Load a JSON file with modified storage controller configurations
(read-only properties are discarded).

#### Parameters

- **-h, --help**

The `--help` parameter displays help for the command.

- **--storageid=STORAGEID**

Use this parameter to select a specific storage device.

- **--controller=CONTROLLER**

Use this parameter to select a controller of the specified storage device.

- **--physicaldrives** or **--drives**

Use this parameter to return properties of the physical drives
behind a specific controller of the selected storage device.

- **--volumes** or **--logicaldrives**

Use this parameter to return properties of the volumes accessible
from a specific controller in the specified storage device.

- **--json**

Use this parameter to print the output in JSON format.

- **-f <filename.json>**

Save or load the configuration information using `<filename.json>`

#### Login Parameters

The following parameters can be included to login to a server in
the same line as the command is run.

- **--url=URL**

If you are not logged in yet, use the provided iLO URL
along with the `--user` and `--password` parameters to login to
the server in the same command.

- **-u User, --user=USER**

If you are not logged in yet, including this parameter along with the password
and URL flags can be used to login to a server in the same command.

- **-p Password, --password=PASSWORD**

If you are not logged in yet, use this parameter along with the
user and URL flags to login. Use the provided iLO password corresponding
to the username you gave to login.

- **--logout**

Optionally include the `--logout` parameter to log out of the server after this command is completed. Using this parameter when not logged in will have no effect.

#### Examples

To list RDE capable storage devices with a brief summary of their properties,
run the `storagecontroller` command without arguments or with the `default` sub-command.

```shell Command and text output
ilorest storagecontroller default
---------------------------------
List of RDE storage devices
---------------------------------
DE00E000: HPE MR408i-o Gen11: Health OK: Enabled
DE00D000: HPE MR416i-p Gen11: Health OK: Enabled
DE009000: HPE NS204i-u Gen11 Boot Controller: Health OK: Enabled
DE00F000: HPE SR932i-p Gen11: Health OK: Enabled
```

```json Command and JSON output
ilorest storagecontroller --json
{
  "DE009000": {
    "Health": "OK",
    "Name": "HPE NS204i-u Gen11 Boot Controller",
    "State": "Enabled"
  },
  "DE00D000": {
    "Health": "OK",
    "Name": "HPE MR416i-p Gen11",
    "State": "Enabled"
  },
  "DE00E000": {
    "Health": "OK",
    "Name": "HPE MR408i-o Gen11",
    "State": "Enabled"
  },
  "DE00F000": {
    "Health": "OK",
    "Name": "HPE SR932i-p Gen11",
    "State": "Enabled"
  }
}

```

To list selected properties
not returned by the `default` sub-command,
use the `list` command combined with the
`--filter`
[parameter](/docs/redfishclients/ilorest-userguide/advancedusage/#filter-option)

```shell List of RDE capable devices
ilorest list @odata.type Drives@odata.count Id Name --select Storage.  --filter "Id=DE*" --json
```

```json Output
[
  {
    "@odata.type": "#Storage.v1_13_0.Storage",
    "Drives@odata.count": 2,
    "Id": "DE009000",
    "Name": "HPE NS204i-u Gen11 Boot Controller"
  },
  {
    "@odata.type": "#Storage.v1_15_0.Storage",
    "Drives@odata.count": 2,
    "Id": "DE00D000",
    "Name": "HPE MR416i-p Gen11"
  },
  {
    "@odata.type": "#Storage.v1_15_0.Storage",
    "Drives@odata.count": 8,
    "Id": "DE00E000",
    "Name": "HPE MR408i-o Gen11"
  },
  {
    "@odata.type": "#Storage.v1_15_0.Storage",
    "Drives@odata.count": 4,
    "Id": "DE00F000",
    "Name": "HPE SR932i-p Gen11"
  }
]


```

The following example retrieves a summary of the properties of
a specific storage device.

```shell Command and text output
ilorest storagecontroller --storageid=DE00D000

-----------------------------------
Details of Storage DE00D000
-----------------------------------
        Id: DE00D000
        Health: OK
        Name: HPE MR416i-p Gen11
        Number of Controllers: 1
        Number of Volumes: 2
        Number of Drives: 2
```

```json Command and JSON output
ilorest storagecontroller --storageid=DE00D000 --json
{
  "Storage": {
    "Health": "OK",
    "Id": "DE00D000",
    "Name": "HPE MR416i-p Gen11",
    "Number of Controllers": 1,
    "Number of Drives": 2,
    "Number of Volumes": 2
  }
}
```

The following example retrieves properties of controller 0 of
a specific device.

```shell Command and text output
ilorest storagecontroller --storageid=DE00D000 --controller=0

---------------------------------------------
Controller 0 Details on Storage Id DE00D000
---------------------------------------------
Id: 0
StorageId: DE00D000
Name: HPE MR416i-p Gen11
FirmwareVersion: 52.26.3-5250
Manufacturer: HPE
Model: HPE MR416i-p Gen11
PartNumber: P47951-001
SerialNumber: PZDUV0ABIHV08W
SKU: P47777-B21
Status: {'State': 'Enabled', 'Health': 'OK'}
SupportedDeviceProtocols: ['NVMe', 'SAS', 'SATA']
SupportedControllerProtocols: ['PCIe']
```

```json Command and JSON output
ilorest storagecontroller --storageid=DE00D000 --controller=0 --json
{
  "FirmwareVersion": "52.26.3-5250",
  "Id": "0",
  "Manufacturer": "HPE",
  "Model": "HPE MR416i-p Gen11",
  "Name": "HPE MR416i-p Gen11",
  "PartNumber": "P47951-001",
  "SKU": "P47777-B21",
  "SerialNumber": "PZDUV0ABIHV08W",
  "Status": {
    "Health": "OK",
    "State": "Enabled"
  },
  "StorageId": "DE00D000",
  "SupportedControllerProtocols": [
    "PCIe"
  ],
  "SupportedDeviceProtocols": [
    "NVMe",
    "SAS",
    "SATA"
  ]
}
```

```json Equivalent list command
ilorest list --select Storage. --filter Id=DE00D000  --json
{
  "@Redfish.WriteableProperties": [
    "AutoVolumeCreate"
  ],
  "@odata.etag": "\"3f8be751\"",
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE00D000",
  "@odata.type": "#Storage.v1_15_0.Storage",
  "Actions": {
    "#Storage.ResetToDefaults": {
      "ResetType@Redfish.AllowableValues": [
        "ResetAll",
        "PreserveVolumes"
      ],
      "target": "/redfish/v1/Systems/1/Storage/DE00D000/Actions/Storage.ResetToDefaults"
    }
  },
  "AutoVolumeCreate": "Disabled",
  "AutoVolumeCreate@Redfish.AllowableValues": [
    "Disabled",
    "NonRAID"
  ],
  "Controllers": {
    "@odata.id": "/redfish/v1/Systems/1/Storage/DE00D000/Controllers"
  },
  "Drives": [
    {
      "@odata.id": "/redfish/v1/Chassis/DE00D000/Drives/0"
    },
    {
      "@odata.id": "/redfish/v1/Chassis/DE00D000/Drives/1"
    }
  ],
  "Drives@odata.count": 2,
  "Id": "DE00D000",
  "Links": {
    "Enclosures": [
      {
        "@odata.id": "/redfish/v1/Chassis/DE00D000"
      }
    ],
    "Enclosures@odata.count": 1
  },
  "Name": "HPE MR416i-p Gen11",
  "Status": {
    "HealthRollup": "OK",
    "State": "Enabled"
  },
  "Volumes": {
    "@odata.id": "/redfish/v1/Systems/1/Storage/DE00D000/Volumes"
  }
}
```

The following example lists a summary of the properties of
logical volumes existing in controller 0 of a
specific storage device.

```shell Command and text output
ilorest storagecontroller --storageid=DE00D000  --controller=0 --volumes
--------------------------------------------------
Volumes on Controller 0 and Storage DE00D000
--------------------------------------------------
        [7]: Name MR Volume 7 RAIDType None VUID 600062B214F000802D8FF4862CF27B90 Capacity 1600321314816 Bytes - Health OK
        [8]: Name MR Volume 8 RAIDType None VUID 600062B214F000802D8FF4883002995D Capacity 1600321314816 Bytes - Health OK
```

```json Command and JSON output
ilorest storagecontroller --storageid=DE00D000  --controller=0 --volumes --json
{
  "volumes": {
    "7": {
      "Capacity": 1600321314816,
      "Health": "OK",
      "RAIDType": "None",
      "VolumeName": "MR Volume 7",
      "VolumeUniqueIdentifier": "600062B214F000802D8FF4862CF27B90"
    }
  }
}
{
  "volumes": {
    "7": {
      "Capacity": 1600321314816,
      "Health": "OK",
      "RAIDType": "None",
      "VolumeName": "MR Volume 7",
      "VolumeUniqueIdentifier": "600062B214F000802D8FF4862CF27B90"
    },
    "8": {
      "Capacity": 1600321314816,
      "Health": "OK",
      "RAIDType": "None",
      "VolumeName": "MR Volume 8",
      "VolumeUniqueIdentifier": "600062B214F000802D8FF4883002995D"
    }
  }
}

```

The following example returns selected
properties of the volumes contained in a
specific storage device, not present in the
previous output.

```shell Volume selected properties
ilorest list  Name @odata.id Links/Drives  --select Volume. --filter  "@odata.id=/redfish/v1/Systems/1/Storage/DE07C000/Vol*" --json
```

```json Output
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE07C000/Volumes/1",
  "Links": {
    "Drives": [
      {
        "@odata.id": "/redfish/v1/Systems/1/Storage/DE07C000/Drives/0"
      },
      {
        "@odata.id": "/redfish/v1/Systems/1/Storage/DE07C000/Drives/1"
      }
    ]
  },
  "Name": "Raid1-1"
}
```

The following example lists physical drive properties in a specific storage device.

Location information is in the format, `ControllerPort:Box:Bay`.

<!-- The following commands works on ilo-scott380g11-1,
     but not on ilo-lio365g11-2 (MR 216i-o version 52.26.3-5250)
     Various errors: "ERROR: 'PhysicalLocation' or incomplete
     output with list command 
-->

```shell Command and text output
ilorest storagecontroller --storageid=DE00F000  --controller=0 --physicaldrives
--------------------------------------------------
Drives on Controller 0 and Storage DE00F000
--------------------------------------------------
        [1:3:1]: 1.6TB 64G NVMe SSD, Model KCM6FVUL1T60, Location 1:3:1, Type SSD, Serial 8340A01FTMP8 - 1600321314816 Bytes
        [1:3:2]: 1.6TB 64G NVMe SSD, Model KCM6FVUL1T60, Location 1:3:2, Type SSD, Serial 8340A00ZTMP8 - 1600321314816 Bytes
        [2:3:3]: 960GB 6G SATA SSD, Model MK000960SXNXC, Location 2:3:3, Type SSD, Serial 23113FE137E9 - 960197124096 Bytes
        [2:3:4]: 900GB 12G SAS HDD, Model EH000900JXLVU, Location 2:3:4, Type HDD, Serial WAG1LW5W - 900185481216 Bytes

```

```json Command and JSON output
ilorest storagecontroller --storageid=DE00F000  --controller=0 --physicaldrives --json
{
  "Drives": {
    "1:3:1": {
      "CapacityBytes": 1600321314816,
      "Id": "0",
      "Location": "1:3:1",
      "MediaType": "SSD",
      "Model": "KCM6FVUL1T60",
      "Name": "1.6TB 64G NVMe SSD",
      "SerialNumber": "8340A01FTMP8"
    },
    "1:3:2": {
      "CapacityBytes": 1600321314816,
      "Id": "4",
      "Location": "1:3:2",
      "MediaType": "SSD",
      "Model": "KCM6FVUL1T60",
      "Name": "1.6TB 64G NVMe SSD",
      "SerialNumber": "8340A00ZTMP8"
    },
    "2:3:3": {
      "CapacityBytes": 960197124096,
      "Id": "8",
      "Location": "2:3:3",
      "MediaType": "SSD",
      "Model": "MK000960SXNXC",
      "Name": "960GB 6G SATA SSD",
      "SerialNumber": "23113FE137E9"
    },
    "2:3:4": {
      "CapacityBytes": 900185481216,
      "Id": "12",
      "Location": "2:3:4",
      "MediaType": "HDD",
      "Model": "EH000900JXLVU",
      "Name": "900GB 12G SAS HDD",
      "SerialNumber": "WAG1LW5W"
    }
  }
}

```

```json Equivalent list command (truncated)
ilorest get --select Drive. --filter "Links/Storage/@odata.id=/redfish/v1/Systems/1/Storage/DE00D000" --json
[
  {
    "@Redfish.WriteableProperties": [
      "LocationIndicatorActive"
    ],
    "@odata.etag": "\"d4c5826d\"",
    "@odata.id": "/redfish/v1/Chassis/DE00D000/Drives/0",
    "@odata.type": "#Drive.v1_17_0.Drive",
    "BlockSizeBytes": 512,
    "CapableSpeedGbs": 64.0,
    "CapacityBytes": 1600321314816,
    "EncryptionAbility": "SelfEncryptingDrive",
    "EncryptionStatus": "Unencrypted",
    "FailurePredicted": false,
    "HotspareType": "None",
    "Id": "0",
    "Identifiers": [
      {
        "DurableName": "01:CF:53:21:E2:8E:E3:8C",
        "DurableNameFormat": "EUI"
      }
    ],
    "Links": {
      "Chassis": {
        "@odata.id": "/redfish/v1/Chassis/DE00D000"
      },
      "Storage": {
        "@odata.id": "/redfish/v1/Systems/1/Storage/DE00D000"
      },
      "Volumes": [
        {
          "@odata.id": "/redfish/v1/Systems/1/Storage/DE00D000/Volumes/8"
        }
      ],
      "Volumes@odata.count": 1
    },
    "LocationIndicatorActive": false,
    "MediaType": "SSD",
    "Model": "KCM6FVUL1T60",
    "Multipath": false,
    "Name": "1.60TB 64G NVMe SSD",
    "NegotiatedSpeedGbs": 64.0,
    "Operations": [],
    "PhysicalLocation": {
      "PartLocation": {
        "LocationOrdinalValue": 8,
        "LocationType": "Bay",
        "ServiceLabel": "Slot=1:Port=1:Box=3:Bay=8"
      }
    },
    "PredictedMediaLifeLeftPercent": 100.0,
    "Protocol": "NVMe",
    "Revision": "GPK4",
    "SerialNumber": "8340A00YTMP8",
    "Status": {
      "Health": "OK",
      "State": "Enabled"
    },
    "StatusIndicator": "OK",
    "WriteCacheEnabled": false
  },
....
]

```

<!-- Need to include examples with the state command 
     and a non null @Redfish.Settings. Need help. -->

<!-- Need to include an example with load command. Need help.  -->

### Createvolume Command (former createlogicaldrive command)

#### Syntax

createvolume sub-command _[Parameters]_

#### Description

Creates a new volume on the selected storage device/controller.

sub-commands:

<!-- 
     Createvolume needs a detailed review and a clarification
     when volume, quickdrive, customdrive sub-sub-commands are 
     really valid.
-->

- volume: Create a volume on gen 11 or higher HPE servers.
- quickdrive: Create a volume on HPE iLO 5 based servers only.
Requires a minimal number of parameters (utilizes default values present in the storage device).
- customdrive: Create a customized volume on HPE iLO 5 based servers only.
Potentially accepts available parameters.


<!-- 
    A note/tip should be introduce to explain how to find the valid
    RAID levels, depending of the storage device/controller capabilities.
-->
- raid-level: Raid0, Raid1, Raid1ADM, Raid10, Raid10ADM, Raid5, Raid50, Raid6, Raid60
- media-type: SSD, HDD
- interface-type: SAS, SATA, NVMe
- drive-location: Internal, External
- --spare-type: Dedicated, Roaming
- --accelerator-type: ControllerCache, IOBypass, None
- --paritytype: Default, Rapid
- --storageid: Storage Id (iLO 6 only).

#### Parameters

- **-h, --help**

Including the help flag will display help for the command.

- **--controller=CONTROLLER**

Use this flag to select the corresponding controller.

- **--storageid=STORAGEID**

Use this flag to select the corresponding Storage Id.

<!-- Need to verify if the following parameter is 
     a valid synonym of --DisplayName ??? -->

- **-n DRIVENAME, --name=DRIVENAME** or **--DisplayName DISPLAYNAME**

Optionally include to set the drive name / display name.

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

#### Examples

To create quickly a volume, run the command with the following arguments: The type of creation as `quickdrive`, the raid level, the number of drives to use, the type of drive to use, the drive interface type, and the drive location. Also include the `--controller` option selecting the controller the drive will be created on. See the options list for possible values of these and more.

<!-- The following example has been created on ilo-fdz360g10-3
     (P408i-a SR Gen10)
-->
```shell

ilorest createvolume quickdrive RAID0 1I:1:3 HDD SAS Internal  --storageid=DE07C000 --controller=0

CreateVolume path and payload: /redfish/v1/Systems/1/Storage/DE07C000/Volumes,
{'Links': {'Drives': [{'@odata.id': '/redfish/v1/Systems/1/Storage/DE07C000/Drives/2'}]}, 'RAIDType': 'RAID0'}
The operation completed successfully.
Volume created successfully
```

To create a custom volume, run the command with the following arguments:
The type of creation as `customdrive`, the raid level,
and the `physicaldrive` drive location. Also include the `--controller`
option selecting the controller the drive will be created on.
See the options list for possible values of these and more.

<!-- 
     The following example needs to be reviewed/re-tested.
-->

```shell

ilorest createvolume customdrive Raid0 1E:1:2 --controller=1 --name=ANewVolume --spare-drives=1E:1:3 --capacityGiB=100 --legacy-boot=Primary --accelerator-type=ControllerCache --sparetye=Dedicated

```

<!--
     Need to understand if volume creation is really different
     on iLO 5 and iLO 6.
-->

Use the following example syntax for creating a volume in an iLO 6 based server.

```shell
iLOrest > login
Discovering data...Done

ilorest > createvolume volume RAID1 2:3:4,2:3:8 --DisplayName Name1 --iOPerfModeEnabled False --ReadCachePolicy ReadAhead --WriteCachePolicy ProtectedWriteBack --WriteHoleProtectionPolicy Yes --capacitygib 1000 --controller=0 --storageid=DE00C000
```

:::info NOTE

- If JBOD volumes are created by default in some controllers, these would be deleted when creating RAID volumes.
- HPE iLO 6 onwards, there is no need to reboot after creating a volume.

<!-- Is the following note still valid ?  -->

- HPE iLO 5 requires a reboot after creating the volumes.
If the drives are not present after a full reboot,
run the results command to check for errors in the configuration.

:::

### Deletevolume Command (former deletelogicaldrive command)

#### Syntax

deletevolume _[Optional Parameters]_

#### Description

Deletes volume(s) from the selected controller of a specific storage device.

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

#### Examples

The following example deletes volume 239 behind controller 0 of storage id DE040000.

<!-- 
    The following example has been created on ilo-lio365g11-2
-->

```shell
ilorest deletevolume --storageid=DE040000 --controller=0 239
Are you sure you would like to continue deleting volume ESX_boot_volume? (y/n)y
Setting volume ESX_boot_volume for deletion
The operation completed successfully.
```

The following example forces the deletion of all volumes behind
controller 0 of storage device DE07C0000.

<!-- The following example returns the following error when run
against ilo-fdz360g10-3:
ERROR: 'Members'
-->

```shell
ilorest deletevolume --storageid=DE07C00 --controller=0 --all --force
The operation completed successfully.
```

To delete multiple volumes by drive location include the drive location of the drive you wish to delete. Also include the `--controller` option specifying the controller to use. You can specify multiple drives as well as a comma separated list.

<!-- Need a working example illustrating the above statement -->

### Drivesanitize Command

<!--
    The Drivesanitize command needs a complete review/re-test.
-->

#### Syntax

drivesanitize _[Optional Parameters]_

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

Use this flag to indicate if the drive is HDD or SSD. This is mandatory option.

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

#### Examples

To sanitize a physical drive pass its drive location along with the `--controller` option to specify which controller to perform the operation on.

```shell
ilorest > drivesanitize --controller=1 1I:3:4
Setting physical drive 1I:3:4 for sanitization
One or more properties were changed and will not take effect until system is reset.
Sanitization will occur on the next system reboot.
```

To sanitize multiple physical drives pass the location as a comma separated list along with the `--controller` option to specify which controller to perform the operation on.

In case of iLO 6, the `--storageid` tag is mandatory.

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

Once the process is 100% complete, use the `--drivereset` tag to reset the drive. This is only applicable for iLO 6

```shell
ilorest > drivesanitize 1I:1:1 --controller=1 --storageid=DE00900 --mediatype="HDD" --drivereset </span>
DriveReset path and payload: /redfish/v1/Systems/1/Storage/DE00A000/Drives/8/Actions/Drive.Reset, {"ResetType": "ForceOn"}
```

### Factoryresetcontroller Command

<!-- 
     The Factoryresetcontroller command needs
     a complete review/re-test.
-->

#### Syntax

factoryresetcontroller _[Optional Parameters]_

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

### Clearcontrollerconfig Command

<!-- 
     The Clearcontrollerconfig command needs
     a complete review/re-test.
-->

#### Syntax

clearcontrollerconfig _[Optional Parameters]_

#### Description

Clears controller configuration.

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

#### Examples

To clear a controller configuration run the command including the `--controller` option specifying the controller to clear.

```shell
ilorest > clearcontrollerconfig --controller=1
One or more properties were changed an will not take effect until system is reset.
```
