---
seo:
  title: Storage data models
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Storage data models

The following section describes the DMTF Redfish Storage Model storage model supported by
iLO 5 based servers. The OEM HPE legacy
[Smart Storage](/docs/redfishservices/ilos/ilo6/ilo6_adaptation/#hpe-smart-storage-model-oem-deprecated)
model used by iLO 4 and supported by iLO 5 is deprecated with iLO 6 and later.

## DMTF Redfish Storage Model

HPE ProLiant Gen10 servers and later implement the DMTF standard known as Platform
Level Data Model for Redfish Device Enablement ([PLDM for RDE](/docs/etc/glossaryterms/)). This open
standard allows storage devices to host their own set of Redfish
resources and capabilities which are rooted under the iLO `/redfish/v1`
root service. As a result, responses to Redfish client requests are
provided by the controllers through the iLO.

Without the implementation of PLDM for RDE in either the iLO firmware or
the storage controller firmware, the iLO responds to Redfish client requests
using its own database of storage controller resources and properties,
populated during Pre-OS tasks (POST).

For more information on HPE RDE support changes and limitations, refer to the
[Redfish Device Enablement (RDE) support](../rdesupport/) section.

For updated information on the Redfish resources, corresponding URIs, and
supported HTTP methods towards storage controllers implementing PLDM for
RDE, refer to the
<a href="https://www.hpe.com/info/scmo"
target="_blank">HPE Storage Controllers Management Overview</a>
technical whitepaper.

:::info NOTE
Redfish responses from controllers implementing PLDM for RDE depend on
the schema versions that are supported by each device and are likely to
vary across each device vendor/family/model. Create and delete volume
operations will also likely vary across devices.

As an example, NS204 storage devices don't support the
DELETE volume request, while SR and MR controllers do.
Refer to the [Drive secure erase](#drive-secure-erase) paragraph below
for an example of NS204i volume deletion.
:::

## Storage requests examples

:::success TIP

It is a good practice to verify that the server is powered on
and that all the devices have been discovered before
any operation to those devices.

As mentioned in step 1 of the
[Drive secure erase](/docs/redfishservices/ilos/supplementdocuments/storage/#drive-secure-erase)
procedure below, the `Oem.Hpe.DeviceDiscoveryComplete.DeviceDiscovery`
[property](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_computersystem_resourcedefns{{process.env.LATEST_FW_VERSION}}/#oemhpedevicediscoverycomplete)
should be equal to `vMainDeviceDiscoveryComplete` before any operation involving storage or network devices.

Refer to this
<a href="https://developer.hpe.com/blog/master-the-redfish-server-states-to-improve-your-monitoring-and-manageme/"
target="_blank">article</a>
for more information concerning server states.
:::

### GET requests

The following example retrieves the exhaustive list
of storage device URIs using iLOrest and cURL.
This list is composed of two
RDE devices (`DE040000` and `DE042000`) and two
direct attached devices (`DA000005` and `DA000006`).

<!-- The following example comes from ilo-lio365g11-2 -->

```shell iLOrest
ilorest list Members --select StorageCollection. --json
{
  "Members": [
    {
      "@odata.id": "/redfish/v1/Systems/1/Storage/DE040000/"
    },
    {
      "@odata.id": "/redfish/v1/Systems/1/Storage/DE042000/"
    },
    {
      "@odata.id": "/redfish/v1/Systems/1/Storage/DA000005/"
    },
    {
      "@odata.id": "/redfish/v1/Systems/1/Storage/DA000006/"
    }
  ]
}
```

```shell cURL
curl --insecure --location --silent --user $user:password  \
      https://$iLO/redfish/v1/Systems/1/Storage |           \
      jq '.Members[]'
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE040000"
}
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE042000"
}
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DA000005"
}
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DA000006"
}
```

The following example retrieves the list of RDE storage devices only,
using the iLOrest `storagecontroller`
[command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#storagecontroller-command-former-smartarray-command).

```shell ilorest storagecontroller
ilorest storagecontroller
---------------------------------
List of RDE storage devices
---------------------------------
DE040000: HPE MR216i-o Gen11: Health OK: Enabled
DE042000: HPE NS204i-u Gen11 Boot Controller: Health OK: Enabled
```

The following example retrieves the properties of a specific
storage device.

<!-- Following example coming from ilo-hst110g11-158 -->

```shell iLOrest
ilorest list --select Storage.v \
        --filter @odata.id="/redfish/v1/Systems/1/Storage/DA000001*" \
        --json
```

```shell cURL
iLO=<ilo-ip>
user=<ilo-user>
curl --insecure --location --silent --user $user:password  \
      https://$iLO/redfish/v1/Systems/1/Storage/DA000001 | \
      jq '.'
```

```json Response body
{
  "@odata.context": "/redfish/v1/$metadata#Storage.Storage",
  "@odata.etag": "W/\"79F8DDBD\"",
  "@odata.id": "/redfish/v1/Systems/1/Storage/DA000001",
  "@odata.type": "#Storage.v1_12_0.Storage",
  "Id": "DA000001",
  "Controllers": {
    "@odata.id": "/redfish/v1/Systems/1/Storage/DA000001/Controllers"
  },
  "Drives": [
    {
      "@odata.id": "/redfish/v1/Systems/1/Storage/DA000001/Drives/DA000001/"
    }
  ],
  "Links": {
    "Enclosures": [
      {
        "@odata.id": "/redfish/v1/Chassis/1"
      }
    ]
  },
  "Name": "NVMe Storage System",
  "Status": {
    "Health": "OK",
    "State": "Enabled"
  },
  "StorageControllers": [
    {
      "@odata.id": "/redfish/v1/Systems/1/Storage/DA000001#/StorageControllers/0/",
      "FirmwareVersion": "85032G00",
      "Identifiers": [
        {
          "DurableName": "AC:E4:2E:00:25:1B:54:A2",
          "DurableNameFormat": "EUI"
        }
      ],
      "Location": {
        "PartLocation": {
          "LocationOrdinalValue": 21,
          "LocationType": "Slot",
          "ServiceLabel": "Slot=21"
        }
      },
      "MemberId": "0",
      "Model": "VS000480KXALB",
      "Name": "PE6010",
      "PCIeInterface": {
        "LanesInUse": 2,
        "MaxLanes": 4,
        "MaxPCIeType": "Gen3",
        "PCIeType": "Gen3"
      },
      "SerialNumber": "FDB1N6081ICB91Q3I",
      "Status": {
        "Health": "OK",
        "State": "Enabled"
      },
      "SupportedControllerProtocols": [
        "PCIe"
      ],
      "SupportedDeviceProtocols": [
        "NVMe"
      ]
    }
  ]
}
```

The following example retrieves the URIs of the controllers
attached to storage devices.

<!-- The following example comes from ilo-lio365g11-2.
     NOTE: As per Issue #1076 in the iLOrest sources GitHub
           (https://github.hpe.com/intelligent-provisioning/python-restful-interface-tool/issues/1076)
           iLOrest 5.2.0.0 returns only DA controllers on systems containing DE and DA devices.
           
           Hence, the following example is not accurate since it supposes that iLOrest returns
           all controllers, including DE ones. It will become Ok when bug fixed.
-->

```shell iLOrest
ilorest list members --selector=StorageControllerCollection --json
```

```shell cURL
iLO="<ilo-ip>"
# Retrieve Storage Device URIs
StorageDeviceList="$(curl --insecure --location --silent --user \
                     $user:password https://$iLO/redfish/v1/Systems/1/Storage | \
                     jq -r '.Members[] | ."@odata.id"' )"

for uri in $StorageDeviceList ; do
  curl --insecure --location --silent --user \
       $user:password https://${iLO}${uri}/Controllers | \
       jq '.Members[]'
done
```

```json Response body
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE040000/Controllers/0"
}
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE042000/Controllers/0"
}
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DA000005/Controllers/0"
}
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DA000006/Controllers/0"
}
```

The following example retrieves the `Status` property of a
specific controller.

```shell ilorest
ilorest get Status --select StorageController. --filter Name="HPE MR216*"  --json
```

```shell curl
# Retrieve Storage Device URIs
StorageDeviceList="$(curl --insecure --location --silent --user \
                     $user:password https://$iLO/redfish/v1/Systems/1/Storage | \
                     jq -r '.Members[] | ."@odata.id"' )"

ControllerUris=\
"$(\
for uri in $StorageDeviceList ; do
    curl --insecure --location --silent --user $user:password \
    https://${iLO}${uri}/Controllers |        \
    jq -r '.Members[] | ."@odata.id"'
done \
  )"
````

```json Response body
{
  "Status": {
    "Health": "OK",
    "State": "Enabled"
  }
}

```

The following example retrieves the drive list behind a
specific RDE capable storage device and prints a few properties in
human readable format.
Append the `--json` attribute to get the output in JSON format.

```shell iLOrest
ilorest storagecontroller --storageid=DE040000 --physicaldrives

--------------------------------------------------
Drives on Storage DE040000
--------------------------------------------------
        [2:1:2]: 480GB 6G SATA SSD, Model MK000480GWXFF, Location 2:1:2, Type SSD, Serial EDB9N5464I1309H68 - 480103981056 Bytes
        [1:1:6]: 480GB 6G SATA SSD, Model MK000480GWXFF, Location 1:1:6, Type SSD, Serial EDB9N5464I1309H63 - 480103981056 Bytes
        [2:1:1]: 480GB 6G SATA SSD, Model MK000480GWXFF, Location 2:1:1, Type SSD, Serial EDB9N5464I1309H69 - 480103981056 Bytes
        [2:1:3]: 480GB 6G SATA SSD, Model MK000480GWXFF, Location 2:1:3, Type SSD, Serial EDB9N5464I1309H5Q - 480103981056 Bytes
        [2:1:4]: 480GB 6G SATA SSD, Model MK000480GWXFF, Location 2:1:4, Type SSD, Serial EDB9N5464I1309H5I - 480103981056 Bytes
        [1:1:5]: 480GB 6G SATA SSD, Model MK000480GWXFF, Location 1:1:5, Type SSD, Serial EDB9N5464I1309H5H - 480103981056 Bytes
        [1:1:7]: 3.84TB 32G NVMe SSD, Model VO003840KYDMV, Location 1:1:7, Type SSD, Serial S70LNE0T801822 - 3840755982336 Bytes
        [1:1:8]: 3.84TB 32G NVMe SSD, Model VO003840KYDMV, Location 1:1:8, Type SSD, Serial S70LNE0T902775 - 3840755982336 Bytes
```

```shell cURL
# Retrieve the Drive list behind controller DE040000
iLO=<ilo-ip>
User=<ilo-user>

DriveList=$(curl --silent --insecure --location -u $User:password \
            https://$iLO/redfish/v1/Systems/1/Storage/DE040000 | \
            jq '.Drives[]' | \
            awk -F\" '{print $4}')

# For each drive URI, fetch properties (output truncated)
for d in $DriveList ; do
  curl --silent --insecure --location -u $User:password \
       https://${iLO}${d} | jq .
done

{
  "@odata.etag": "\"e30afa80\"",
  "@odata.id": "/redfish/v1/Chassis/DE040000/Drives/0",
  "@odata.type": "#Drive.v1_17_0.Drive",
  "Id": "0",
  "Name": "480GB 6G SATA SSD",
  "Status": {
    "State": "Enabled",
    "Health": "OK"
  },
  "Links": {
    "Storage": {
      "@odata.id": "/redfish/v1/Systems/1/Storage/DE040000"
    },
    "Chassis": {
      "@odata.id": "/redfish/v1/Chassis/DE040000"
    },
    "Volumes@odata.count": 1,
    "Volumes": [
      {
        "@odata.id": "/redfish/v1/Systems/1/Storage/DE040000/Volumes/239"
      }
    ]
  },
...
}
```

The following example retrieves the drive properties of a specific drive

```text GET Drive properties
GET /redfish/v1/Systems/1/Storage/{item}/Drives/{item}
```

```json Response body (abbreviated)
{
    "@odata.context": "/redfish/v1/$metadata#Drive.Drive",
    "@odata.etag": "W/\"98A85B7F\"",
    "@odata.id": "/redfish/v1/Systems/1/Storage/DA000008/Drives/CAE9137A/",
    "@odata.type": "#Drive.v1_7_0.Drive",
    "Id": "CAE9137A",
    "Actions": {
        "#Drive.Reset": {
            "ResetValue@Redfish.AllowableValues": [
                "ForceOff",
                "ForceOn",
                "PowerCycle"
            ],
            "target": "/redfish/v1/Systems/1/Storage/DA000008/Drives/CAE9137A/Actions/Drive.Reset/"
        }
    },
    "CapacityBytes": 1000204000000,
    "Identifiers": [],
    "IndicatorLED": "Off",
    "Location": [
        {
            "Info": "SATA Drive Box 3 Bay 4",
            "InfoFormat": "BayNumber"
        }
    ],
    "MediaType": "HDD",
    "Model": "MM1000GFJTE",
    "Name": "Secondary Storage Device",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLODriveExt.HpeiLODriveExt",
            "@odata.type": "#HpeiLODriveExt.v2_0_1.HpeiLODriveExt",
            "DriveStatus": {},
            "TemperatureStatus": {}
        }
    },
    "PhysicalLocation": {
        "PartLocation": {
            "LocationOrdinalValue": 4,
            "LocationType": "Bay",
            "ServiceLabel": "SATA Drive Box 3 Bay 4"
        }
    },
    "Revision": "HPG5",
    "SerialNumber": "<SerialNumber>",
    "Status": {
        "Health": "OK",
        "State": "Enabled"
    }
}
```

```text Volume properties
GET /redfish/v1/Systems/1/Storage/{item}/Volumes/{item}
```

```json Response body
{
    "@odata.etag": "\"14175561\"",
    "@odata.id": "/redfish/v1/Systems/1/Storage/DE009000/Volumes/238",
    "@odata.type": "#Volume.v1_4_0.Volume",
    "Id": "238",
    "Name": "MR Volume",
    "Status": {
        "State": "Enabled",
        "Health": "OK"
    },
    "BlockSizeBytes": 512,
    "CapacityBytes": 85899345920,
    "DisplayName": "WESERVER",
    "Encrypted": false,
    "EncryptionTypes": [
        "NativeDriveEncryption"
    ],
    "Identifiers": [
        {
            "DurableName": "425380496",
            "DurableNameFormat": "NAA"
        }
    ],
    "Links": {
        "Drives@odata.count": 1,
        "Drives": [
            {
                "@odata.id": "/redfish/v1/Systems/1/Storage/DE009000/Drives/8"
            }
        ],
        "DedicatedSpareDrives@odata.count": 0,
        "DedicatedSpareDrives": []
    },
    "LogicalUnitNumber": 0,
    "Operations": [],
    "OptimumIOSizeBytes": 65536,
    "RAIDType": "RAID0",
    "ReadCachePolicy": "Off",
    "StripSizeBytes": 65536,
    "VolumeUsage": "Data",
    "WriteCachePolicy": "WriteThrough"
}
```

### Creating Volumes

Creating volumes in a storage controller supporting [PLDM for RDE](/docs/etc/glossaryterms/) in
write mode, is performed using a POST request toward the
`VolumeCollection` URI
(`/redfish/v1/Systems/{item}/Storage/{item}/Volumes`). The exhaustive list
of required and optional parameters of such POST requests can be retrieved
with a GET request toward
`/redfish/v1/Systems/1/Storage/{item}/Volumes/Capabilities`. This URI
provides as well the possible values for each capability.

:::success TIP

- The `Volumes/Capabilities` URI only exists on writable storage devices.
- You can verify that POST requests are allowed to create volumes in a
specific storage controller by checking the `Allow` response header of a GET request
to its Volume collection URI. Refer to the next example for detail.

:::

```text Generic HEAD request
HEAD /redfish/v1/Systems/1/Storage/{item}/Volumes
```

```shell iLOrest request
ilorest rawhead /redfish/v1/Systems/1/Storage/DE07A000/Volumes
```

```json Response headers
{
  "Allow": "GET, HEAD, POST",
  "Cache-Control": "no-store",
  "Content-Length": "0",
  "Date": "Mon, 16 Sep 2024 17:24:55 GMT",
  "ETag": "\"961827A8\"",
  "Link": "http://redfish.dmtf.org/schemas/swordfish/v1/VolumeCollection.json",
  "OData-Version": "4.0",
  "X-Content-Type-Options": "nosniff",
  "X-Frame-Options": "sameorigin",
  "X-XSS-Protection": "1; mode=block"
}

```

The following example retrieves the `Volumes/Capabilities` properties of a MR408i storage.

```text generic GET request
GET /redfish/v1/Systems/1/Storage/{item}/Volumes/Capabilities
```

```shell iLOrest commands
# The following commands retrieve the volume capabilities of the MR408i
# storage device located in a Gen11 server.

ilorest login <ilo-ip> -u <ilo-user> -p password

# Extract the storage device ID
ilorest --nologo storagecontroller | awk -F: '/MR408i/ {print $1}'
DE00D000

# Retrieve the URI of the volume capabilites of device DE00D000
ilorest list @Redfish.CollectionCapabilities/Capabilities/CapabilitiesObject/@odata.id \
                --filter @odata.id="/redfish/v1/Systems/1/Storage/DE00D000*" | \
awk -F= '/odata.id/ {print $NF}'
/redfish/v1/Systems/1/Storage/DE00D000/Volumes/Capabilities

# List the volume capabilites of device DE00D000
ilorest --nologo rawget --silent /redfish/v1/Systems/1/Storage/DE00D000/Volumes/Capabilities

# logout
ilorest logout
```

```json Volume capabilities
{
  "@odata.etag": "\"a448ffa3\"",
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE00D000/Volumes/Capabilities",
  "@odata.type": "#Volume.v1_9_0.Volume",
  "CapacityBytes@Redfish.AllowableNumbers": [
    "1073741824:4797612687360"
  ],
  "CapacityBytes@Redfish.OptionalOnCreate": true,
  "DisplayName@Redfish.AllowablePattern": "^.{0,15}$",
  "DisplayName@Redfish.OptionalOnCreate": true,
  "DisplayName@Redfish.UpdatableAfterCreate": true,
  "Id": "Capabilities",
  "InitializeMethod@Redfish.AllowableValues": [
    "Foreground",
    "Background"
  ],
  "InitializeMethod@Redfish.OptionalOnCreate": true,
  "Links": {
    "DedicatedSpareDrives@Redfish.OptionalOnCreate": true,
    "DedicatedSpareDrives@Redfish.UpdatableAfterCreate": true,
    "Drives@Redfish.RequiredOnCreate": true
  },
  "Links@Redfish.RequiredOnCreate": true,
  "MediaSpanCount@Redfish.AllowableNumbers": [
    "1:16"
  ],
  "MediaSpanCount@Redfish.OptionalOnCreate": true,
  "Name": "Capabilities for VolumeCollection",
  "Name@Redfish.AllowablePattern": "^.{0,15}$",
  "Name@Redfish.OptionalOnCreate": true,
  "RAIDType@Redfish.AllowableValues": [
    "None",
    "RAID0",
    "RAID1",
    "RAID10",
    "RAID5",
    "RAID50",
    "RAID6",
    "RAID60"
  ],
  "RAIDType@Redfish.RequiredOnCreate": true,
  "ReadCachePolicy@Redfish.AllowableValues": [
    "Off",
    "ReadAhead"
  ],
  "ReadCachePolicy@Redfish.OptionalOnCreate": true,
  "ReadCachePolicy@Redfish.UpdatableAfterCreate": true,
  "StripSizeBytes@Redfish.AllowableNumbers": [
    "65536",
    "131072",
    "262144",
    "524288",
    "1048576"
  ],
  "StripSizeBytes@Redfish.OptionalOnCreate": true,
  "VolumeUsage@Redfish.AllowableValues": [
    "Data"
  ],
  "VolumeUsage@Redfish.OptionalOnCreate": true,
  "WriteCachePolicy@Redfish.AllowableValues": [
    "ProtectedWriteBack",
    "UnprotectedWriteBack",
    "WriteThrough"
  ],
  "WriteCachePolicy@Redfish.OptionalOnCreate": true,
  "WriteCachePolicy@Redfish.UpdatableAfterCreate": true
}
```

The following example creates a RAID1 volume in a [RDE](/docs/etc/glossaryterms/) capable
MR storage device part of a Gen11/iLO 6 server. If you want
to provide more parameters, consult the `Volumes/Capabilities` features
available for this device, as described above.

<!-- Following example performed on ilo-lio365g11-2 
     NOTE: quickdrive and customdrive are not supported with iLO 6 -->

```text Generic Volume creation
POST /redfish/v1/Systems/1/Storage/{item}/Volumes

Body:
{
    "CapacityBytes": <Number>,
    "StripSizeBytes": <Number>,
    "DisplayName": "string",
    "ReadCachePolicy": "string",
    "RAIDType": "string",
    "WriteCachePolicy": "string",
    "Links": {
        "Drives": [
            {
                "@odata.id": "/redfish/v1/Systems/1/Storage/{item}/Drives/0"
            },
            {
                "@odata.id": "/redfish/v1/Systems/1/Storage/{item}/Drives/4"
            }
        ]
    }
}
```

```shell iLOrest volume creation
# The following command has been performed against an MR device in an iLO 6 based system
ilorest createvolume volume RAID1 2:1:2,1:1:6 --DisplayName "Test1" --storageid=DE040000 --controller=0

CreateVolume path and payload: /redfish/v1/Systems/1/Storage/DE040000/Volumes, {'Links': {'Drives': [
{'@odata.id': '/redfish/v1/Chassis/DE040000/Drives/0'}, {'@odata.id': '/redfish/v1/Chassis/DE040000/D
rives/1'}]}, 'RAIDType': 'RAID1', 'DisplayName': 'Test1'}
Volume created successfully
```

### Deleting Volumes

The following example deletes volume 239 in [RDE](/docs/etc/glossaryterms/) capable device `DE040000`
part of a Gen11/iLO 6 server.

```text Generic DELETE request
DELETE /redfish/v1/Systems/1/Storage/{StorageId}/Volumes/{VolumeId}
```

```shell iLOrest volume deletion
ilorest deletevolume 239 --storageid=DE040000 --controller=0
```

```shell curl volume deletion
iLO="<ilo-ip>"
User="<iLO-user>"
curl --silent --insecure --location -u $User:password \
     -X DELETE "https://${iLO}/redfish/v1/Systems/1/Storage/DE040000/Volumes/239"
```

:::success TIP

Refer to the [Drive secure erase](#drive-secure-erase) section for deleting
the NS204 volume.

:::

### Drive secure erase

Although volume deletion is sufficient for most use cases, data is still present on drives after this operation.
In order to erase drive data, the DMTF proposes the `Drive.SecureErase`
[action](/docs/concepts/performing_actions/), in the `Drive` schema.

:::info NOTE
The `Drive.SecureErase` action may not be visible in the drive properties
when the drive is part a volume.
In this case, a [volume deletion](#deleting-volumes) is necessary
before the drive secure erase operation can occur.

Refer to the [previous section](#deleting-volumes) for the generic
way for deleting volumes.
:::

Using the latest version of <a href="https://github.com/HewlettPackard/python-redfish-utility/releases/latest"
target="_blank">iLOrest</a>
and then cURL, the following examples performs several tasks to
secure erase the drives of an NS204 storage device part of a Gen11/iLO 6 server.
Adapt this workflow
if you have more than one NS204 devices in your server.

1. Wait until the server is in
   the right state to have all storage devices visible.
   Refer to <a href="https://developer.hpe.com/blog/master-the-redfish-server-states-to-improve-your-monitoring-and-manageme/"
   target="_blank">this article</a> for more information concerning server states.

2. Locate NS204i storage device, volume and disks URIs.

   :::success TIP
   NS204 drives are not listed in the `DriveCollection` schema.
   Their URIs are under `/redfish/v1/Sytems/1/Storage/{NS204Id}/Drives`,
   which is not in the DMTF's
   <a href="https://redfish.dmtf.org/schemas/v1/DriveCollection.json"
   target="_blank">specification</a>

   As a consequence, you'll have to extract the `Drives[]` array
   starting at the storage device URI.
   :::

3. Deletion / `ResetToDefaults` of the logical volume to make the `Drive.SecureErase`
   action visible on the corresponding drives.

   :::info NOTE
   The volume URI of NS204 storage devices does not allow
   DELETE requests. It is needed to use the `ResetToDefaults` action
   for that purpose.
   :::

4. Secure erase disks and restart server.

<!-- Use of ilo-lio365g11-2 for those examples -->

```shell iLOrest step 1
ilorest login <ilo-ip> -u <ilo-user> -p password

# Wait until `DeviceDiscovery` == `vMainDeviceDiscoveryComplete`
while [[ "$(ilorest get --json --select ComputerSystem. --refresh | jq -r '.Oem.Hpe.DeviceDiscoveryComplete.DeviceDiscovery')" != "vMainDeviceDiscoveryComplete" ]]
  do
    echo -n "."
     sleep 5
done
```

```shell iLOrest step 2
# NS204 URI identification 
ilorest list Name @odata.id --json --filter Name="HPE NS204*" --select Storage.v
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE042000/Controllers/0",
  "Name": "HPE NS204i-u Gen11 Boot Controller"
}

# Identify corresponding volume
ilorest list Members --select VolumeCollection \
         --filter @odata.id="/redfish/v1/Systems/1/Storage/DE042000*" --json
{
  "Members": [
    {
      "@odata.id": "/redfish/v1/Systems/1/Storage/DE042000/Volumes/1"
    }
  ]
}

# Identify drives composing NS204 Volume
  # NOTE: NS204 drives are not listed in the `DriveCollection` schemas.
  #       Their URIs are under `/redfish/v1/Sytems/1/Storage/{NS204Id}/Drives`,
  #       which is not in the DMTF's specification at
  #       https://redfish.dmtf.org/schemas/v1/DriveCollection.json
  #
  #       As a consequence, you'll have to extract the `Links/Drives[]` array
  #       from the Volume URI.

ilorest list Links/Drives --select Volume.v  \
        --filter @odata.id="/redfish/v1/Systems/1/Storage/DE042000/Volumes/1"  \
        --json
{
  "Links": {
    "Drives": [
      {
        "@odata.id": "/redfish/v1/Systems/1/Storage/DE042000/Drives/1"
      },
      {
        "@odata.id": "/redfish/v1/Systems/1/Storage/DE042000/Drives/2"
      }
    ]
  }
}
```

```shell iLOrest step 3
# Delete volume / Reset to defaults
ilorest rawpost DeleteNS204Volume.json

cat DeleteNS204Volume.json
{
    "/redfish/v1/Systems/1/Storage/DE042000/Actions/Storage.ResetToDefaults": {
        "ResetType": "ResetAll"
    }
}
```

```shell iLOrest step 4
# Retrieve the Drive.SecureErase URI.
# If those URIs don't exist, it means that the Volume
# has not been deleted or that the firmare of the device
# is not the latest.
ilorest list  Actions/#Drive.SecureErase/target \
        --select Drive.v \
        --filter @odata.id="/redfish/v1/Systems/1/Storage/DE04200*" \
        --json

# Sanitize / secureerase both disks
ilorest rawpost DriveSecureErase.json

cat DriveSecureErase.json
{
    "/redfish/v1/Systems/1/Storage/DE042000/Drives/1/Actions/Drive.SecureErase": {},
    "/redfish/v1/Systems/1/Storage/DE042000/Drives/2/Actions/Drive.SecureErase": {}
}

# Restart system to re-form the volume
ilorest reboot ForceRestart

# Don't forget to logout
ilorest logout
```

Same as above, but with cURL

```shell cURL step 1
iLO="<ilo-ip>"
User="<ilo-user>"
while [[ "$(curl --silent --insecure --location -u $User:password https://${iLO}/redfish/v1/Systems/1 | jq -r '.Oem.Hpe.DeviceDiscoveryComplete.DeviceDiscovery')" != "vMainDeviceDiscoveryComplete" ]]
  do
    echo -n "."
     sleep 5
done
```

```shell cURL step 2
# NS204 URI identification
StorageDeviceList=$(curl --silent --insecure --location -u $User:password \
                    https://${iLO}/redfish/v1/Systems/1/Storage | \
                    jq -r '.Members[] | ."@odata.id"')

for d in $StorageDeviceList ; do
  Name=$(curl --silent --insecure --location -u $User:password \
       https://${iLO}${d} | \
       jq -r '.Name')
  if [[  "$Name" == *"NS204"* ]] ; then N204URI=$d ; fi
done

# Identify corresponding volume URI
VolumeURI=$(curl --silent --insecure --location -u $User:password \
       https://${iLO}${NS204URI}/Volumes |
       jq -r '.Members[] | ."@odata.id"')

# Identify drives composing NS204 Volume
DriveURIs=$(curl --silent --insecure --location -u $User:password \
     https://${iLO}${VolumeURI} | \
     jq -r '.Links.Drives[] | ."@odata.id"')
```

```shell cURL step 3
# Delete volume / Reset to defaults
curl --silent --insecure --location -u $User:password \
     -X POST "https://${iLO}/redfish/v1/Systems/1/Storage/DE042000/Actions/Storage.ResetToDefaults" \
     --data '{"ResetType": "ResetAll"}'
```

```shell cURL step 4
# Retrieve the Drive.SecureErase URI.
# If those URIs don't exist, it means that the Volume
# has not been deleted or that the firmare of the device
# is not the latest.
SecureEraseURIs=""
for drive in $DriveURIs ; do
  echo "Processing ${drive}..."
  SecureEraseURIs="${SecureEraseURIs} $(curl --silent --insecure --location -u $User:password \
       "https://${iLO}${drive}" | \
  jq -r '.Actions."#Drive.SecureErase".target')"
done


# Sanitize / secureerase both disks
for uri in $SecureEraseURIs ; do
  echo "Sanitizing drive: ${uri}..."
  curl --silent --insecure --location -u $User:password \
       -X POST "https://${iLO}${uri}" \
       --data '{}'
done

# Reboot server
curl --silent --insecure --location -u $User:password \
       --header 'Content-Type: application/json'     \
       -X POST "https://${iLO}/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/" \
       --data '{"ResetType": "ForceRestart"}'
```

:::success TIP
While the secure erase process is in progress, you can monitor its progress by
monitoring the `Operations[]` [array](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_storage_resourcedefns{{process.env.LATEST_FW_VERSION}}/#operations-array)
and the `Status` [property](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_storage_resourcedefns{{process.env.LATEST_FW_VERSION}}/#status-3)
of the disks being erased.

The following example retrieves the `Operations[]` array and the drives status property using iLOrest and cURL.

```shell iLOrest
ilorest list  @odata.id Operations Status --filter @odata.id="/redfish/v1/Systems/1/Storage/DE042*"  --json 
```

```shell cURL
for drive in $DriveURIs ; do
  curl --silent --insecure --location -u $User:password \
       "https://${iLO}${drive}" | \
  jq '."@odata.id", .Operations[], .Status'
done
```

:::
