---
seo:
  title: Storage data models
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## Storage data models

The following section describes the storage model supported by
iLO 6 and later - [DMTF Redfish Storage Model](#dmtf-redfish-storage-model).

## DMTF Redfish Storage Model

HPE ProLiant Gen11 servers implement the DMTF standard known as Platform
Level Data Model for Redfish Device Enablement (PLDM for RDE). This open
standard allows storage controllers to host their own set of Redfish
resources and capabilities which are rooted under the iLO `/redfish/v1`
service root. As a result, responses to Redfish client requests are
provided by the controllers through the iLO.

Without the implementation of PLDM for RDE in either the iLO firmware or
the storage controller firmware, the iLO responds to Redfish client requests
using its own database of storage controller resources and properties,
populated during Pre-OS tasks (POST).

For updated information on the Redfish resources, corresponding URIs, and
supported HTTP methods towards storage controllers implementing PLDM for
RDE, refer to the `Configuration` and `Redfish` sections of the
<a href="https://support.hpe.com/hpesc/public/docDisplay?docId=a00110296en_us"
target="_blank"> HPE SR Controller User Guide</a>

The array controllers have implemented the DMTF Redfish storage data model
for inventory (GET). The array controllers that have implemented the DMTF
PLDM for RDE standard support Redfish write
operations (POST, DELETE, and PATCH).

The following table lists the Redfish resources and the corresponding URIs
for the GET requests towards storage controllers implementing PLDM for RDE:

| Redfish Resource | Method | URI |
|:---|:---|:---|
| Storage | GET | `/redfish/v1/Systems/{item}/Storage/{item}` |
| Controller Collection | GET | `/redfish/v1/Systems/{item}/Storage/{item}/Controllers` |
| Storage Controller | GET | `/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}` |
| Port Collection | GET | `/redfish/v1/Systems/{item}/Storage/{item}/Controllers/{item}/Ports` |
| Volume Collection | GET | `/redfish/v1/Systems/{item}/Storage/{item}/Volumes` |
| Volume Capabilities | GET | `/redfish/v1/Systems/{item}/Storage/{item}/Volumes/Capabilities` |
| Volume | GET | `/redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}` |
| Drive | GET | `/redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}` |

The following table lists the Redfish resources and corresponding URIs for
write requests towards storage controllers implementing PLDM for RDE:

| Redfish Resource | Method | URI |
|:---|:---|:---|
| Volume Create | POST | `/redfish/v1/Systems/{item}/Storage/{item}/Volumes` |
| Volume Delete | DEL | `/redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}` |

:::info NOTE
The Redfish responses from controllers implementing PLDM for RDE depend on
the schema versions that are supported by each device and are likely to
vary across each device vendor/family/model. Create and delete volume
operations will also likely vary across devices.
:::

For updated information on the Redfish resources, corresponding URIs, and
supported HTTP methods towards storage controllers implementing PLDM for RDE,
refer to the
<a href="https://www.hpe.com/info/SmartRAID-Gen10Plus-UG"
target="_blank"> HPE SR Gen10 Plus Controller User Guide</a>.

For more information on RDE support changes and limitations, refer to the
[Redfish Device Enablement (RDE) support](../rdesupport/) section.

### GET requests examples

```text GET Storage device properties
GET /redfish/v1/Systems/1/Storage/{item}
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#Storage.Storage",
    "@odata.etag": "W/\"F7D058EE\"",
    "@odata.id": "/redfish/v1/Systems/1/Storage/DA000008/",
    "@odata.type": "#Storage.v1_12_0.Storage",
    "Id": "DA000008",
    "Controllers": {
        "@odata.id": "/redfish/v1/Systems/1/Storage/DA000008/Controllers/"
    },
    "Drives": [
        {
            "@odata.id": "/redfish/v1/Systems/1/Storage/DA000008/Drives/CAE9137A/"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/Storage/DA000008/Drives/F377244E/"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/Storage/DA000008/Drives/E55B33A9/"
        },
        {
            "@odata.id": "/redfish/v1/Systems/1/Storage/DA000008/Drives/69483FD4/"
        }
    ],
    "Links": {
        "Enclosures": [
            {
                "@odata.id": "/redfish/v1/Chassis/1/"
            }
        ]
    },
    "Name": "SATA Storage System",
    "Status": {
        "Health": "OK",
        "State": "Enabled"
    },
    "StorageControllers": [
        {
            "@odata.id": "/redfish/v1/Systems/1/Storage/DA000008#/StorageControllers/0/",
            "FirmwareVersion": null,
            "Location": {
                "PartLocation": {
                    "ServiceLabel": "System Board"
                }
            },
            "Manufacturer": "",
            "MemberId": "0",
            "Model": "Embedded SATA Controller #2",
            "Name": "SATA Storage Controller",
            "PartNumber": "",
            "SerialNumber": "<SerialNumber>",
            "Status": {
                "Health": null,
                "State": null
            },
            "SupportedDeviceProtocols": [
                "SATA"
            ]
        }
    ]
}
```

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

Creating volumes in a storage controller supporting PLDM for RDE in
write mode, is performed using a POST request toward the
`VolumeCollection` URI
(`/redfish/v1/Systems/{item}/Storage/{item}/Volumes`). The exhaustive list
of required and optional parameters of such POST requests can be retrieved
with a GET request to
`/redfish/v1/Systems/1/Storage/{item}/Volumes/Capabilities` This URI
provides as well the possible values for each capability.

:::success TIP

You should verify that POST requests are allowed to create volumes in a
specific storage controller in the `Allow` response header of a GET request
to the Volume collection URI. Refer to the next example.
:::

```text Volume headers
HEAD /redfish/v1/Systems/1/Storage/{item}/Volumes
```

```json Response headers
{
  "Allow": "GET, HEAD, POST",
  "Content-Length": "0",
  "Date": "Tue, 05 Jul 2022 12:43:12 GMT",
  "ETag": "W/\"75983E8D\"",
  "Link": "</redfish/v1/SchemaStore/en/StorageCollection.json>; rel=describedby",
  "OData-Version": "4.0",
  "X-Content-Type-Options": "nosniff",
  "X-Frame-Options": "sameorigin",
  "X-XSS-Protection": "1; mode=block"
}

```

To ease logical volume creation on writable storage controllers, you can
retrieve optional and required parameters from the
`Volumes/Capabilities` resource.

:::info NOTE
The `Volumes/Capabilities` property is present only in writable storage
controllers, with the POST action listed in the `Allow` response headers
of `VolumeCollection` URI.
:::

```text Get volume capabilities
GET /redfish/v1/Systems/1/Storage/{item}/Volumes/Capabilities
```

```json Volume capabilities
{
  "@odata.id": "/redfish/v1/Systems/1/Storage/DE00D000/Volumes/Capabilities",
  "@odata.type": "#Volume.v1_6_2.Volume",
  "Id": "Capabilities",
  "Name": "Capabilities for the volume collection",
  "RAIDType@Redfish.RequiredOnCreate": true,
  "RAIDType@Redfish.AllowableValues": [
    "RAID0",
    "RAID1",
    "RAID10",
    "RAID5",
    "RAID50",
    "RAID6",
    "RAID60",
    "RAID1Triple",
    "RAID10Triple"
  ],
  "CapacityBytes@Redfish.OptionalOnCreate": true,
  "StripSizeBytes@Redfish.OptionalOnCreate": true,
  "IOPerfModeEnabled@Redfish.OptionalOnCreate": true,
  "IOPerfModeEnabled@Redfish.UpdatableAfterCreate": true,
  "MediaSpanCount@Redfish.OptionalOnCreate": true,
  "DisplayName@Redfish.OptionalOnCreate": true,
  "DisplayName@Redfish.UpdatableAfterCreate": true,
  "ReadCachePolicy@Redfish.OptionalOnCreate": true,
  "ReadCachePolicy@Redfish.AllowableValues": [
    "Off",
    "ReadAhead"
  ],
  "ReadCachePolicy@Redfish.UpdatableAfterCreate": true,
  "WriteCachePolicy@Redfish.OptionalOnCreate": true,
  "WriteCachePolicy@Redfish.AllowableValues": [
    "Off"
  ],
  "WriteCachePolicy@Redfish.UpdatableAfterCreate": true,
  "VolumeUsage@Redfish.OptionalOnCreate": true,
  "VolumeUsage@Redfish.AllowableValues": [
    "Data"
  ],
  "InitializeMethod@Redfish.OptionalOnCreate": true,
  "InitializeMethod@Redfish.AllowableValues": [
    "Background",
    "Foreground"
  ],
  "Links@Redfish.RequiredOnCreate": true,
  "Links": {
    "Drives@Redfish.RequiredOnCreate": true,
    "DedicatedSpareDrives@Redfish.OptionalOnCreate": true,
    "DedicatedSpareDrives@Redfish.UpdatableAfterCreate": true
  },
  "@odata.etag": "\"0A1FA1E9\""
}

```

Volume creation:

```text Volume creation
POST /redfish/v1/Systems/1/Storage/{item}/Volumes
```

```json Body
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

The properties to be passed as part of the POST payload are described below:

| Property | Datatype | Description |
|:---|:---|:---|
|CapacityBytes|Number|Size in bytes of this volume.|
|StripSizeBytes|Number|The number of blocks (bytes) in a strip in a disk array that uses striped data mapping.|
|DisplayName|String|A user-configurable string to name the volume.|
|ReadCachePolicy|String|Indicates the read cache policy setting for the Volume.|
|RAIDType|String|The RAID type of this volume.|
|WriteCachePolicy|String (enum) <br/>`"WriteThrough"`/ `"UnprotectedWriteBack"` / `"ProtectedWriteBack"`|Indicates the write cache policy setting for the Volume.|
|Links|Collection of `@odata.id`|Links to the physical drives from which to create the Volume.|

### Deleting Volumes

```text DELETE volume request
DELETE /redfish/v1/Systems/1/Storage/{item}/Volumes/{item}
```
