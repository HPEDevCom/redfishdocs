---
seo:
  title: OData query options
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

## OData query options

:::info NOTE

OData query options are not implemented in iLO 4. Refer to the
[Adapting from iLO 4](/docs/redfishservices/ilos/ilo5/ilo5_adaptation/#odata-query-options)
section for OData query options examples related to iLO 5.

Non implemented OData query options are silently discarded by
Redfish services.

:::

Redfish is an
<a href="https://www.odata.org/" target="_blank">OData-derived</a>
protocol with resources linking to other resources using `@odata.id`:

`{"@odata.id": "/redfish/v1/link_to_some_other_resource"}`

The iLO Redfish implementation offers several OData services aiming
at facilitating the consumption of data by Redfish clients.

As an example, the OData `$expand` query option causes the OData service to
automatically replace a link with the results of an internal GET of the
indicated URI. This is essential to allow the API to scale for clients.
An example use case is to expand an event log to return the log entries
inline with the collection and reduce the number of GETs required
by the client.

Examples of client requests to expand (in the general OData case) looks like:

* `GET /redfish/v1/some_resource?$expand=*($levels=1)` - Expand any references
    1 level. Levels is assumed to be 1 by default so this is the same as
    `GET /redfish/v1/some_resource?$expand=*`
* `GET /redfish/v1/some_resource?$expand=*($levels=3)` - Expand any references
    3 levels deep. This case could require loop detection (For example,
    system expanding a link to chassis expanding a link back to system).
* `GET /redfish/v1/some_resource?$expand=.` - Expand any references EXCEPT
    those found under the Links section.
* `GET /redfish/v1/some_resource?$expand=./Oem/Hpe` - Expand any references
    found in the Oem/Hpe section of the resource.

OData query options supported by iLO are presented below along with
use case examples.

## iLO $expand

Using the rules above, iLO supports `$expand` in this way:

`$expand` is applicable to HTTP GET only.

`$expand=.`, `$expand=*` and `$expand=($levels=n)` result in the
same behavior:

* Expands all links in both root and Oem/Hpe sections not inside the
    `Links` sections.
* Levels is always interpreted as 1, regardless of n. This is to avoid
    the potential for expanding recursively for interlinked resources.
* The `Links` section is never expanded. This is to avoid expanding the
    `Chassis` and `Manager` related links on `GET` operations to System.

:::info NOTE
The root resource at `/redfish/v1/` is available without authentication and
has navigational links that can be expanded. An `$expand` request does not
result in expansion unless valid authentication credentials are supplied.
:::

:::warning Warning
There might be other links that do not support `$expand`.
:::

### iLO $expand examples

:::info NOTE
iLO responds to all HTTP requests using
<a href="https://www.rfc-editor.org/rfc/rfc7230#section-4.1"
target="_blank">Chunked Transfer Coding</a>.
This enables features like `$expand` that require very large responses.
:::

The following example retrieves the `ChassisCollection` without the
`$expand` query option:

```text GET a collection without $expand query
GET /redfish/v1/Chassis/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ChassisCollection.ChassisCollection",
    "@odata.etag": "W/\"AA6D42B0\"",
    "@odata.id": "/redfish/v1/Chassis",
    "@odata.type": "#ChassisCollection.ChassisCollection",
    "Description": "Computer System Chassis View",
    "Name": "Computer System Chassis",
    "Members": [
        {
            "@odata.id": "/redfish/v1/Chassis/1"
        }
    ],
    "Members@odata.count": 1
}
```

The next example retrieves the same `ChassisCollection` with the
`$expand=.` query option:

```text GET a collection with $expand query
GET /redfish/v1/Chassis/?$expand=.
```

```json Response body (abbreviated)
{
    "@odata.context": "/redfish/v1/$metadata#ChassisCollection.ChassisCollection",
    "@odata.etag": "W/\"5DDB6CFA\"",
    "@odata.id": "/redfish/v1/Chassis/",
    "@odata.type": "#ChassisCollection.ChassisCollection",
    "Description": "Computer System Chassis View",
    "Name": "Computer System Chassis",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#Chassis.Chassis",
            "@odata.id": "/redfish/v1/Chassis/1/",
            "@odata.type": "#Chassis.v1_19_0.Chassis",
            "Id": "1",
            "AssetTag": "",
            "ChassisType": "RackMount",
            "EnvironmentalClass": "A2",
            "Links": {
                "ManagedBy": [
                    {
                        "@odata.id": "/redfish/v1/Managers/1/"
                    }
                ],
                "ComputerSystems": [
                    {
                        "@odata.id": "/redfish/v1/Systems/1/"
                    }
                ],
                "Drives": [
                    {
                        "@odata.id": "/redfish/v1/Systems/1/Storage/DA000006/Drives/DA000006/"
                    },
                    ............
                ]
                    }
        },
    ]
    "Members@odata.count": 1
}
```

## iLO "only" query option

iLO supports the `only` query parameter documented in the
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0266_1.13.0.pdf"
target="_blank">Redfish API specification</a>.
This query parameter is ignored except on collections with only one member.
Examples include the `ComputerSystemCollection`, `ChassisCollection`
and `ManagerCollection`.

### iLO "only" example

The following example retrieves the chassis collection without the
`only` query option.

```text GET chassis Collection
GET /redfish/v1/Chassis/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ChassisCollection.ChassisCollection",
    "@odata.etag": "W/\"AA6D42B0\"",
    "@odata.id": "/redfish/v1/Chassis/",
    "@odata.type": "#ChassisCollection.ChassisCollection",
    "Description": "Computer System Chassis View",
    "Name": "Computer System Chassis",
    "Members": [
        {
            "@odata.id": "/redfish/v1/Chassis/1/"
        }
    ],
    "Members@odata.count": 1
}
```

The following example retrieves the a chassis collection of a system
with only one chassis, using the `only` query option.

```text GET the only chassis member
GET /redfish/v1/Chassis/?only
```

```json Response body (abreviated)
{
    "@odata.context": "/redfish/v1/$metadata#Chassis.Chassis",
    "@odata.etag": "W/\"E623AF83\"",
    "@odata.id": "/redfish/v1/Chassis/1/",
    "@odata.type": "#Chassis.v1_19_0.Chassis",
    "Id": "1",
    "AssetTag": "",
    "ChassisType": "RackMount",
    "EnvironmentalClass": "A2",
    "Links": {
        "ManagedBy": [
            {
                "@odata.id": "/redfish/v1/Managers/1/"
            }
        ],
            }
    .....

    "PCIeDevices": {
        "@odata.id": "/redfish/v1/Chassis/1/PCIeDevices/"
    },
    "PCIeSlots": {
        "@odata.id": "/redfish/v1/Chassis/1/PCIeSlots/"
    },
    "Power": {
        "@odata.id": "/redfish/v1/Chassis/1/Power/"
    },
    "PowerState": "On",
    "SKU": "P54199-B21",
    "SerialNumber": "TWA22525A1",
    "Status": {
        "Health": "OK",
        "State": "Enabled"
    },
    "Thermal": {
        "@odata.id": "/redfish/v1/Chassis/1/Thermal/"
    }
}
```

The following example uses the `only` query option to retrieve the chassis
collection of a system containing a
<a href="https://buy.hpe.com/us/en/options/smart-io/smart-io/smart-io/pensando-distributed-services-platform/p/1012796285"
target="_blank">Pensando Data Processor Unit</a> (DPU).

```text GET Chassis collection with ?only query option
GET /redfish/v1/Chassis/?only
```

```json Response body
{
  "@odata.context": "/redfish/v1/$metadata#ChassisCollection.ChassisCollection",
  "@odata.etag": "W/\"570254F2\"",
  "@odata.id": "/redfish/v1/Chassis",
  "@odata.type": "#ChassisCollection.ChassisCollection",
  "Description": "Computer System Chassis View",
  "Name": "Computer System Chassis",
  "Members": [
    {
      "@odata.id": "/redfish/v1/Chassis/1"
    },
    {
      "@odata.id": "/redfish/v1/Chassis/2"
    }
  ],
  "Members@odata.count": 2
}
```

## iLO $filter query option

The
[odata.org](https://www.odata.org/getting-started/basic-tutorial/#queryData)
official site defines the `$filter` query as the following:

"_The `$filter` system query option allows clients to filter a collection of
resources that are addressed by a request URL. The expression specified with
`$filter` is evaluated for each resource in the collection, and only items
where the expression evaluates to true are included in the response._".

Six logical operators (Equals, Not Equals, Greater Than...) can be applied
to the `$filter` query. They are defined in the
<a href="http://docs.oasis-open.org/odata/odata/v4.0/odata-v4.0-part2-url-conventions.html"
target="_blank">OData</a> specifications.

### iLO $filter examples

The following example retrieves the "iLO Dedicated Network Interface"
properties (output abbreviated).

```text GET request with $filter query
GET /redfish/v1/Managers/1/EthernetInterfaces/?$filter=Name eq
'Manager Dedicated Network Interface'
```

```json Response body (abbreviated)
{
    "@odata.context": "/redfish/v1/$metadata#EthernetInterfaceCollection.EthernetInterfaceCollection",
    "@odata.etag": "W/\"3E2CCBB8\"",
    "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/",
    "@odata.type": "#EthernetInterfaceCollection.EthernetInterfaceCollection",
    "Description": "Configuration of Manager Network Interfaces",
    "Name": "Manager Network Interfaces",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#EthernetInterface.EthernetInterface",
            "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/1/",
            "@odata.type": "#EthernetInterface.v1_4_1.EthernetInterface",
            "Id": "1",
            "AutoNeg": true,
            "Name": "Manager Dedicated Network Interface",
            "NameServers": [],
            "DHCPv4": {
                "DHCPEnabled": false,
                "UseDNSServers": false,
                "UseDomainName": false,
                "UseGateway": false,
                "UseNTPServers": false,
                "UseStaticRoutes": false
            },
            "DHCPv6": {
                "OperatingMode": "Stateful",
                "UseDNSServers": false,
                "UseDomainName": false,
                "UseNTPServers": false,
                "UseRapidCommit": false
            },
            "Description": "Configuration of this Manager Network Interface",
            "FQDN": null,
            "FullDuplex": true,
            "HostName": "ILOTWA22525A1",

            .......
            
            "Status": {
                "Health": "OK",
                "State": "Enabled"
            },
            "VLAN": {
                "VLANEnable": false,
                "VLANId": null
            }
        }
    ],
    "Members@odata.count": 1
}
```

The next example retrieves only Integrated Management Log (IML) entries
with severity `Repaired`.

```text GET specific IML entries
GET /redfish/v1/Systems/1/LogServices/IML/Entries/?$filter=Oem.Hpe.Severity
eq 'Repaired'
```

```json Response body (abbreviated)
{
    "@odata.context": "/redfish/v1/$metadata#LogEntryCollection.LogEntryCollection",
    "@odata.etag": "W/\"CA3EE996\"",
    "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries",
    "@odata.type": "#LogEntryCollection.LogEntryCollection",
    "Description": "Integrated Management Logs view",
    "Name": "Integrated Management Logs view",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/39",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "39",
            "Created": "2022-09-25T04:39:05Z",
            "EntryType": "Oem",
            "Message": "System Overheating (Temperature Sensor 1, Location Ambient, Temperature 43)",
            "Name": "Integrated Management Log",
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry",
                    "@odata.type": "#HpeLogEntry.v2_4_0.HpeLogEntry",
                    "Categories": [
                        "Cooling"
                    ],
                    "Class": 2,
                    "ClassDescription": "Environment",
                    "Code": 19,
                    "Count": 1,
                    "EventNumber": 56,
                    "LearnMoreLink": "http://www.hpe.com/support/class0x0002code0x0013-gen11",
                    "RecommendedAction": "Check fans, processor heat sink and air baffles installation.",
                    "Repaired": true,
                    "Severity": "Repaired",
                    "Updated": "2022-09-25T04:39:10Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        },

        .....

    
        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/92",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "92",
            "Created": "2022-09-25T06:19:17Z",
            "EntryType": "Oem",
            "Message": "Automatic Operating System Shutdown Initiated Due to Overheat Condition",
            "Name": "Integrated Management Log",
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry",
                    "@odata.type": "#HpeLogEntry.v2_4_0.HpeLogEntry",
                    "Categories": [
                        "Other"
                    ],
                    "Class": 14,
                    "ClassDescription": "OS",
                    "Code": 2,
                    "Count": 1,
                    "EventNumber": 109,
                    "LearnMoreLink": "http://www.hpe.com/support/class0x000ecode0x0002-gen11",
                    "RecommendedAction": "Check simultaneously logged messages for cause of shutdown and address those issues accordingly.",
                    "Repaired": true,
                    "Severity": "Repaired",
                    "Updated": "2022-09-25T06:19:22Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        }
    ],
    "Members@odata.count": 16
}
```

The following example retrieves IML entries created after a specific date.

```text GET IML entries filtered by date
GET /redfish/v1/Systems/1/LogServices/IML/Entries/?$filter=Created
gt '2022-10-04T06:19:22Z'` 
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#LogEntryCollection.LogEntryCollection",
    "@odata.etag": "W/\"EC19D60B\"",
    "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries",
    "@odata.type": "#LogEntryCollection.LogEntryCollection",
    "Description": "Integrated Management Logs view",
    "Name": "Integrated Management Logs view",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/102",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "102",
            "Created": "2022-10-04T16:11:32Z",
            "EntryType": "Oem",
            "Message": "Maintenance note: Starting F10 GUI",
            "Name": "Integrated Management Log",
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry",
                    "@odata.type": "#HpeLogEntry.v2_4_0.HpeLogEntry",
                    "Categories": [
                        "Maintenance"
                    ],
                    "Class": 33,
                    "ClassDescription": "Maintenance",
                    "Code": 2,
                    "Count": 1,
                    "EventNumber": 119,
                    "Severity": "Informational",
                    "Updated": "2022-10-04T16:11:32Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        },

        .......

        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/105",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "105",
            "Created": "2022-10-04T16:25:34Z",
            "EntryType": "Oem",
            "Message": "Firmware flashed (Broadcom NetXtreme-E BCM5741x adapters 222.1.68.0)",
            "Name": "Integrated Management Log",
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry",
                    "@odata.type": "#HpeLogEntry.v2_4_0.HpeLogEntry",
                    "Categories": [
                        "Administration"
                    ],
                    "Class": 32,
                    "ClassDescription": "System Revision",
                    "Code": 2,
                    "Count": 1,
                    "EventNumber": 122,
                    "Severity": "Informational",
                    "Updated": "2022-10-04T16:25:34Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        }
    ],
    "Members@odata.count": 4
}
```

## iLO $count query option

The `$count` system query option allows Redfish clients to request a count
of the matching resources included with the resources in the response.

### iLO $count example

```text GET the number of Security log entries
/redfish/v1/systems/1/logservices/SL/Entries/?$count=true
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#LogEntryCollection.LogEntryCollection",
    "@odata.etag": "W/\"75983E8D\"",
    "@odata.type": "#LogEntryCollection.LogEntryCollection",
    "Description": "Security Logs view",
    "Name": "Security Logs",
    "Members": [],
    "Members@odata.count": 31
}
```

## iLO $top and $skip query options

The `$top` system query option requests the number of items in the queried
collection to be included in the result. The `$skip` query option requests
the number of items in the queried collection that are to be skipped and
not included in the result.

### iLO $top and $skip examples

Retrieve the top (first) ten IML log entries:

```text GET the top ten IML log entries
GET /redfish/v1/Systems/1/LogServices/IML/Entries/?$top=10
```

```json Response body (abbreviated)

{
    "@odata.context": "/redfish/v1/$metadata#LogEntryCollection.LogEntryCollection",
    "@odata.etag": "W/\"7E02C697\"",
    "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries",
    "@odata.type": "#LogEntryCollection.LogEntryCollection",
    "Description": "Integrated Management Logs view",
    "Name": "Integrated Management Logs view",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/1",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "1",
            "Created": "2001-01-01T00:26:39Z",
            "EntryType": "Oem",
            "Message": "IML Cleared ( user: System Administrator)",
            "Name": "Integrated Management Log",
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry",
                    "@odata.type": "#HpeLogEntry.v2_4_0.HpeLogEntry",
                    "Categories": [
                        "Maintenance",
                        "Administration"
                    ],
                    "Class": 33,
                    "ClassDescription": "Maintenance",
                    "Code": 1,
                    "Count": 1,
                    "EventNumber": 18,
                    "Severity": "Informational",
                    "Updated": "2001-01-01T00:26:39Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        },

        ... 

        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/10",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "10",
            "Created": "2022-09-15T15:42:14Z",
            "EntryType": "Oem",
            "Message": "Insufficient Fan Solution",
            "Name": "Integrated Management Log",
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry",
                    "@odata.type": "#HpeLogEntry.v2_4_0.HpeLogEntry",
                    "Categories": [
                        "Cooling"
                    ],
                    "Class": 2,
                    "ClassDescription": "Environment",
                    "Code": 52,
                    "Count": 2,
                    "EventNumber": 27,
                    "LearnMoreLink": "http://www.hpe.com/support/class0x0002code0x0034-gen11",
                    "RecommendedAction": "Replace any failed or missing fans in the system.",
                    "Repaired": false,
                    "Severity": "Critical",
                    "Updated": "2022-09-15T15:52:10Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "Critical"
        }
    ],
    "Members@odata.count": 10
}
```

The request below returns IML entries starting at the 22th record
(the `Members@odata.count` is 31).

```text Skip entries
 GET /redfish/v1/Systems/1/LogServices/IML/Entries/?$skip=21
```

```json Response body (abbreviated)
{
    "@odata.context": "/redfish/v1/$metadata#LogEntryCollection.LogEntryCollection",
    "@odata.etag": "W/\"2B9C6986\"",
    "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries",
    "@odata.type": "#LogEntryCollection.LogEntryCollection",
    "Description": "Integrated Management Logs view",
    "Name": "Integrated Management Logs view",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/19",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "19",
            "Created": "2022-05-18T14:55:37Z",
            "EntryType": "Oem",
            "Message": "HPE Ethernet 1Gb 4-port 331i Adapter - NIC Connectivity status changed to OK for adapter in slot 0, port 1",
            "Name": "Integrated Management Log",
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeLogEntry.HpeLogEntry",
                    "@odata.type": "#HpeLogEntry.v2_4_0.HpeLogEntry",
                    "Categories": [
                        "Hardware"
                    ],
                    ...
                    "Severity": "Repaired",
                    "Updated": "2022-05-18T14:55:37Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        },
        ...
  ],
    "Members@odata.count": 10
}
```

## iLO $select query option

The `$select` query option allows Redfish clients to requests a limited
set of properties.

### iLO $select examples

The following example retrieves the `RedfishVersion` property of an
iLO based server.

```text GET a single selected property
GET /redfish/v1/?$select=RedfishVersion
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ServiceRoot.ServiceRoot",
    "@odata.etag": "W/\"217FDE58\"",
    "@odata.id": "/redfish/v1",
    "@odata.type": "#ServiceRoot.v1_13_0.ServiceRoot",
    "RedfishVersion": "1.13.0"
}
```

The following example returns the `ChassisType` and `ServiceLabel`
properties of a Data Processor Unit card.

```text GET multiple selected properties
GET /redfish/v1/Chassis/2/?$select=ChassisType,Location/PartLocation/ServiceLabel
```

```json Response body
{
  "@odata.context": "/redfish/v1/$metadata#Chassis.Chassis",
  "@odata.etag": "W/\"1B982357\"",
  "@odata.id": "/redfish/v1/Chassis/2/",
  "@odata.type": "#Chassis.v1_11_2.Chassis",
  "ChassisType": "Card",
  "Location": {
    "PartLocation": {
      "ServiceLabel": "PCIe Slot 1"
    }
  }
}
```
