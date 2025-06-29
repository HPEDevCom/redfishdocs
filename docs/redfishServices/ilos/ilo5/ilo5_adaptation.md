---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
seo:
  title: Adapting from ilo 4
---

# Adapting from iLO 4

This section is a guide to help client code adapt from the iLO 4 RESTful API to the iLO 5 RESTful API.

## Introduction

The iLO 5 RESTful API is fully conformant with the Redfish® protocol and the data model mentioned in the [Changelog](/docs/redfishservices/ilos/ilo5/ilo5_changelog/#changelog) file. Any remaining support for the pre-Redfish iLO RESTful API has been removed and is replaced by the Redfish equivalents. HPE continues to extend the Redfish data model (Oem.Hpe extensions) to enable value for the customer.

## iLO 5 has the following additions not implemented in iLO 4

- HPE Embedded Remote Support
- HPE Persistent Memory
- HPE Smart Storage and Logical drive configuration
- Redfish 1.6 OpenAPI 3.0 support (URIs conform to Redfish 1.6 templates)
- Redfish Advanced Communication Device (NetworkAdapter) model for certain network adapters
- Redfish Directory Authentication configuration
- Redfish Firmware Inventory and `UpdateService`
- Redfish Role based local user administration
- Redfish Storage/Drive/Volume model for NVMe and other direct attached storage
- Redfish TaskService for long running operations
- Redfish Telemetry service for CPU metrics
- Redfish host Interface ("Virtual NIC")
- Workload Performance Advisor
- iLO 5 Backup and Restore configuration
- iLO 5 Certificate based authentication configuration
- iLO 5 Component Update Repository
- iLO 5 Firmware Recovery Set
- iLO 5 One-button secure erase

## Chunked Transfer Coding

Unlike iLO 4, iLO 5 responds to all HTTP operations using <a href="https://www.rfc-editor.org/rfc/rfc7230#section-4.1" target="_blank">Chunked Transfer Coding</a>. This enables features like `$expand` that require very large responses.

## URI Remapping from /rest to /redfish

For iLO 5 all accesses of the `/rest/v1/x` URI pattern result in HTTP 308 redirect to `/redfish/v1/x/`.  Additionally, access of `/redfish/v1/x` redirects to `/redfish/v1/x/`.

{% admonition type="warning" name="Warning" %}
Client code should access the iLO RESTful API starting at /redfish/v1/ and should handle for HTTP 308 redirect.
{% /admonition %}

## OData-Version HTTP Header Requirements

iLO 5 assumes all requests are to Redfish REST resources are Redfish requests. Unlike iLO 4, the service does not behave differently based upon the presence or absence of the `OData-Version` header.

This is a change from iLO 4 where the presence of the `OData-Version` header caused iLO 4 to remove pre-Redfish properties from GET responses.

The only required header for a GET operation is the authorization (`X-Auth-Token` or `Authorization`) header, except for the root resource at `/redfish/v1/` which requires no headers.

## Oem/Hp Sections Renamed to Oem/Hpe

As part of the transition from HP to HPE, and due to the Redfish requirement that the Oem section name reflect an owned IANA name, all OEM section names are changed from **Hp** to **Hpe**.

{% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
  "Oem": {
    "Hp": {
      "@odata.type": "#HpiLOServiceExt.1.0.0.HpiLOServiceExt"
    }
  }
}
```
  
{% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "Oem": {
    "Hpe": {
      "@odata.type": "#HpeiLOServiceExt.v2_0_0.HpeiLOServiceExt"
    }
  }
}
```
  
  {% /tab %}
  {% /tabs %}

{% admonition type="info" name="NOTE" %}
Client code should look for dependencies upon the "Hp" property and also handle "Hpe"
{% /admonition %}

## Schema Type Changes

To preserve OData conformance, Redfish transitioned the format of `@odata.type` properties, and iLO 5 follows this change.  The `type.<major>.<minor>.<errata>.type` format has changed to `type.v<major>_<minor>_<errata>.type`. Also, the type name cannot be parsed programmatically and should be considered opaque. To determine the version of a resource, do not split the type/version by the ‘.’ delimiter.

For example:  

|iLO|@odata.type Format|
|---|---|
|iLO 4|`"@odata.type": "ComputerSystem.1.0.0.ComputerSystem"`|
|iLO 5|`"@odata.type": "ComputerSystem.v1_1_0.ComputerSystem"`|

## Status Block Changes

The pre-Redfish property `HealthRollUp` is removed in iLO 5 and `HealthRollup` is retained.

{% admonition type="info" name="NOTE" %}
Client code should make sure any dependencies upon the pre-Redfish `HealthRollUp` property is replaced by Redfish-standard `HealthRollup`
{% /admonition %}

{% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
    "Status": {
          "State": "Starting",
          "Health": "OK",
          "HealthRollup": "OK",
          "HealthRollUp": "OK"
      }
}
```
  
{% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
    "Status": {
          "State": "Starting",
          "Health": "OK",
          "HealthRollup": "OK"
      }
}
```
  
  {% /tab %}
  {% /tabs %}

## Error and Response Changes

HTTP Operation responses in iLO 5 are Redfish conformant and pre-Redfish properties are removed.

{% admonition type="info" name="NOTE" %}
Client code should verify that it handles Redfish conformant `ExtendedInfo` responses
{% /admonition %}

{% tabs %}
{% tab label="iLO 4 (without the Redfish conformant OData" %}

```json iLO 4 (without the Redfish conformant OData-Version header)
{
  "Messages": [
    {
      "MessageID": "Base.0.10.MalformedJSON"
    }
  ],
  "Type": "ExtendedError.1.0.0",
  "error": {
    "@Message.ExtendedInfo": [
      {
        "MessageID": "Base.0.10.MalformedJSON"
      }
    ],
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information."
  }
}
```
  
{% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "error": {
    "@Message.ExtendedInfo": [
      {
        "MessageId": "Base.0.10.MalformedJSON"
      }
    ],
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information."
  }
}
```
  
  {% /tab %}
  {% /tabs %}

## POST Actions

In Redfish, an `Actions` property informs the client which actions are supported on a resource and how to invoke them.

{% admonition type="info" name="NOTE" %}
Client code should verify that it invokes actions according to the Redfish specification.
{% /admonition %}

### Advertising Available Actions

iLO 4 contained a pre-Redfish form of this with `"AvailableActions"`.  This is now removed and replaced in iLO 5 with Redfish `Actions`.

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
  "AvailableActions": [
      {
         "Action": "Reset",
         "Capabilities": [
         {
             "AllowableValues": [
                 "On",
                 "ForceOff",
                 "ForceRestart",
                 "Nmi",
                 "PushPowerButton"
             ],
             "PropertyName": "ResetType"
             }
         ]
      }
  ]
}
```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "Actions": {
      "#ComputerSystem.Reset": {
          "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset",
          "ResetType@Redfish.AllowableValues": [
              "On",
              "ForceOff",
              "GracefulRestart",
              "ForceRestart",
              "Nmi",
              "GracefulRestart",
              "ForceOn",
              "PushPowerButton"
          ]
      }
  }
}
```
  
  {% /tab %}
  {% /tabs %}

### Invoking Actions

  {% tabs %}
{% tab label="Generic iLO 4 action request" %}

```text Generic iLO 4 action request
POST /rest/v1/Systems/1
```
  
  {% /tab %}
{% tab label="iLO 4 Request body" %}

```json iLO 4 Request body
{
   "Action": "Reset",
   "ResetType": "On"
}
```
  
{% /tab %}
{% tab label="Generic iLO 5 action request" %}

```text Generic iLO 5 action request
POST /redfish/v1/Systems/1/Actions/ComputerSystem.Reset
```
  
  {% /tab %}
{% tab label="iLO 5 Request body" %}

```json iLO 5 Request body
{
    "ResetType": "On"
}
```
  
{% /tab %}
{% /tabs %}

{% admonition type="info" name="NOTE" %}
The URI of the POST matches the `"target"` property in `"Actions"`.
{% /admonition %}

## OData query options

{% admonition type="success" name="TIP" %}
Refer to the [OData query options](/docs/redfishservices/ilos/supplementdocuments/odataqueryoptions/) section for more examples.
{% /admonition %}

Redfish is an [OData-derived](https://www.odata.org/) protocol and data model with resources linking to other resources using the `@odata.id` key: `{"@odata.id": "/redfish/v1/link_to_some_other_resource"}`

The iLO 5 Redfish implementation offers several OData services aiming at facilitating the the consumption of data by Redfish clients.

As an example, the OData `$expand` query option causes the OData service to automatically replace a link with the results of an internal GET of the indicated URI. This is essential to allow the API to scale for clients. An example use case is to expand an event log to return the log entries inline with the collection and reduce the number of GETs required by the client.

Examples of client requests to expand (in the general OData case) looks like:

- `GET /redfish/v1/some_resource?$expand=*($levels=1)` - Expand any references 1 level. Levels is assumed to be 1 by default so this is the same as `GET /redfish/v1/some_resource?$expand=*`
- `GET /redfish/v1/some_resource?$expand=*($levels=3)` - Expand any references 3 levels deep. This case could require loop detection (For example, system expanding a link to chassis expanding a link back to system).
- `GET /redfish/v1/some_resource?$expand=.` - Expand any references EXCEPT those found under the Links section.
- `GET /redfish/v1/some_resource?$expand=./Oem/Hpe` - Expand any references found in the Oem/Hpe section of the resource.

OData query options supported by iLO 5 are presented below along with use case examples.

### iLO 5 $expand

Using the rules above, iLO 5 supports `$expand` in this way:

`$expand` is applicable to HTTP GET only.  

`$expand=.`, `$expand=*`, and `$expand=($levels=n)` result in the same behavior:

- Expands all links in both root and Oem/Hpe sections not inside the `Links` sections.
- Levels is always interpreted as 1, regardless of n. This is to avoid the potential for expanding recursively for interlinked resources.
- The `Links` section is never expanded. This is to avoid expanding the Chassis and Manager related links on GET operations to System.

{% admonition type="info" name="NOTES" %}

- The root resource at `/redfish/v1/` is available without authentication and has navigational links that can be expanded. An $expand request does not result in expansion unless valid authentication credentials are supplied.
- There might be other links that do not support expand.

{% /admonition %}

#### iLO 5 `$expand` example

{% tabs %}
{% tab label="Generic GET Chassis collection request" %}

```text Generic GET Chassis collection request
GET /redfish/v1/Chassis (a collection without `$expand` query option)
```
  
{% /tab %}
{% tab label="Response body" %}

```json Response body
{
  "@odata.context": "/redfish/v1/$metadata#Chassis",
  "@odata.etag": "W/\"C2E4D1CC\"",
  "@odata.id": "/redfish/v1/Chassis/",
  "@odata.type": "#ChassisCollection.ChassisCollection",
  "Description": "Computer System Chassis View",
  "MemberType": "#Chassis.v1_2_0.Chassis",
  "Members": [
    {
      "@odata.id": "/redfish/v1/Chassis/1/"
    }
  ],
  "Members@odata.count": 1,
  "Name": "Computer System Chassis"
}
```
  
{% /tab %}
{% tab label="Generic expanded request" %}

```text Generic expanded request
GET /redfish/v1/Chassis?$expand=.
```
  
{% /tab %}
{% tab label="Response body (abbreviated)" %}

```json Response body (abbreviated)
{
  "@odata.context": "/redfish/v1/$metadata#Chassis",
  "@odata.etag": "W/\"C2E4D1CC\"",
  "@odata.id": "/redfish/v1/Chassis/",
  "@odata.type": "#ChassisCollection.ChassisCollection",
  "Description": "Computer System Chassis View",
  "MemberType": "#Chassis.v1_2_0.Chassis",
  "Members": [
    {
      "@odata.context": "/redfish/v1/$metadata#Chassis/Members/$entity",
      "@odata.etag": "W/\"5D370742\"",
      "@odata.id": "/redfish/v1/Chassis/1/",
      "@odata.type": "#Chassis.v1_2_0.Chassis",
      "ChassisType": "RackMount",
      "Id": "1",
      "Manufacturer": "HPE",
      "Model": "ProLiant ML350 Gen10",
      "Name": "Computer System Chassis",
      "SKU": "SKU NUMBER",
      "SerialNumber": "SERIAL NUMBER",
      "Status": {
        "Health": "OK",
        "State": "Starting"
      }
    }
  ],
  "Members@odata.count": 1,
  "Name": "Computer System Chassis"
}
```
  
{% /tab %}
{% /tabs %}

### iLO 5 only query option

iLO 5 1.40 and later supports the `only` query parameter documented in the Redfish API specification. This query parameter is ignored except on collections with only one member. Examples include the `ComputerSystemCollection`, `ChassisCollection`, and `ManagerCollection`.

#### iLO 5 `only` example

{% tabs %}
{% tab label="Generic only request" %}

```text Generic only request
GET /redfish/v1/Chassis?only
```
  
{% /tab %}
{% tab label="Response body (abbreviated)" %}

```json Response body (abbreviated)
{
    "@odata.context": "/redfish/v1/$metadata#Chassis.Chassis",
    "@odata.etag": "W/\"E85F6E4B\"",
    "@odata.id": "/redfish/v1/Chassis/1/",
    "@odata.type": "#Chassis.v1_6_0.Chassis",
    "Id": "1",
    "ChassisType": "RackMount",
}
```
  
{% /tab %}
{% /tabs %}

### iLO 5 $filter query option

The [odata.org](https://www.odata.org/getting-started/basic-tutorial/#queryData) official site defines the `$filter` query as the following:

"_The `$filter` system query option allows clients to filter a collection of resources that are addressed by a request URL. The expression specified with `$filter` is evaluated for each resource in the collection, and only items where the expression evaluates to true are included in the response._"

Six logical operators (Equals, Not Equals, Greater Than...) can be applied to the `$filter` query. They are defined in the [OData](http://docs.oasis-open.org/odata/odata/v4.0/odata-v4.0-part2-url-conventions.html) specifications.

#### iLO 5 `$filter` examples

The following example retrieves the `iLO Dedicated Network Interface` properties of an iLO 5

{% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Managers/1/EthernetInterfaces?$filter=Name eq 'Manager Dedicated Network Interface'
```
  
{% /tab %}
{% tab label="Response body (abbreviated)" %}

```json Response body (abbreviated)
{
    "@odata.context": "/redfish/v1/$metadata#EthernetInterfaceCollection.EthernetInterfaceCollection",
    "@odata.etag": "W/\"2D50600F\"",
    "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces",
    "@odata.type": "#EthernetInterfaceCollection.EthernetInterfaceCollection",
    "Description": "Configuration of Manager Network Interfaces",
    "Name": "Manager Network Interfaces",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#EthernetInterface.EthernetInterface",
            "@odata.id": "/redfish/v1/Managers/1/EthernetInterfaces/1",
            "@odata.type": "#EthernetInterface.v1_4_1.EthernetInterface",
            "Id": "1",
            "AutoNeg": true,
            "DHCPv4": {
                "DHCPEnabled": false,
                "UseDNSServers": false,
                "UseDomainName": false,
                "UseGateway": false,
                "UseNTPServers": false,
                "UseStaticRoutes": false
            },
            ....
            "VLAN": {
                "VLANEnable": false,
                "VLANId": null
            }
        }
    ],
    "Members@odata.count": 1
}
```
  
{% /tab %}
{% /tabs %}

The following example filters IML entries by key:

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Systems/1/LogServices/IML/Entries?$filter=Oem.Hpe.Severity eq 'Repaired'
```
  
  {% /tab %}
{% tab label="Response body (abreviated)" %}

```json Response body (abreviated)
{
    "@odata.context": "/redfish/v1/$metadata#LogEntryCollection.LogEntryCollection",
    "@odata.etag": "W/\"C97C370E\"",
    "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries",
    "@odata.type": "#LogEntryCollection.LogEntryCollection",
    "Description": "Integrated Management Logs view",
    "Name": "Integrated Management Logs view",
    "Members": [
        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/3",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "3",
            "Created": "2022-05-17T12:30:50Z",
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
                    "Class": 17,
                    "ClassDescription": "Network",
                    "Code": 10,
                    "Count": 1,
                    "EventNumber": 57,
                    "LearnMoreLink": "http://www.hpe.com/support/class0x0011code0x000a-gen10",
                    "RecommendedAction": "If the connection is lost, then check the physical connection from the server to its destination device such as interconnect ,blade, switch etc, including any cables. Refer to the NIC issues flowchart in the Troubleshooting Guide for more information.",
                    "Repaired": true,
                    "Severity": "Repaired",
                    "Updated": "2022-05-17T12:30:50Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        },
        ....
        {
            "@odata.context": "/redfish/v1/$metadata#LogEntry.LogEntry",
            "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/28",
            "@odata.type": "#LogEntry.v1_11_0.LogEntry",
            "Id": "28",
            "Created": "2022-05-23T06:36:51Z",
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
                    "Class": 17,
                    "ClassDescription": "Network",
                    "Code": 10,
                    "Count": 1,
                    "EventNumber": 82,
                    "LearnMoreLink": "http://www.hpe.com/support/class0x0011code0x000a-gen10",
                    "RecommendedAction": "If the connection is lost, then check the physical connection from the server to its destination device such as interconnect ,blade, switch etc, including any cables. Refer to the NIC issues flowchart in the Troubleshooting Guide for more information.",
                    "Repaired": true,
                    "Severity": "Repaired",
                    "Updated": "2022-05-23T06:36:51Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        }
    ],
    "Members@odata.count": 25
}
```
  
{% /tab %}
{% /tabs %}

The following example filters IML entries by date:

{% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Systems/1/LogServices/IML/Entries?$filter=Created gt '2022-03-05T07:49:50Z'
```
  
{% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#LogEntryCollection.LogEntryCollection",
    "@odata.etag": "W/\"C8B694E6\"",
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
            "Created": "2022-05-13T14:41:40Z",
            "EntryType": "Oem",
            "Message": "IML Cleared (iLO user: demopaq)",
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
                    "EventNumber": 55,
                    "Severity": "Informational",
                    "Updated": "2022-05-13T14:41:40Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        },
        ....
    ],
    "Members@odata.count": 28
}

```
  
  {% /tab %}
  {% /tabs %}

### iLO 5 $count query option

The `$count` system query option allows clients to request a count of the matching resources included with the resources in the response.

#### iLO 5 `$count` example

The following example retrieves the total number of Security log entries:

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/systems/1/logservices/SL/Entries?$count=true
```
  
  {% /tab %}
{% tab label="Response body" %}

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
  
  {% /tab %}
  {% /tabs %}

### iLO 5 $top and $skip query options

The `$top` system query option requests the number of items in the queried collection to be included in the result. The `$skip` query option requests the number of items in the queried collection that are to be skipped and not included in the result.

#### iLO 5 `$top` and `$skip` examples

The following example retrieves the latest ten IML log entries:

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Systems/1/LogServices/IML/Entries?$top=10
```
  
  {% /tab %}
{% tab label="Response body (abbreviated)" %}

```json Response body (abbreviated)
{
    "@odata.context": "/redfish/v1/$metadata#LogEntryCollection.LogEntryCollection",
    "@odata.etag": "W/\"FFCD0D20\"",
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
            "Created": "2022-05-13T14:41:40Z",
            "EntryType": "Oem",
            "Message": "IML Cleared (iLO user: demopaq)",
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
                    "EventNumber": 55,
                    "Severity": "Informational",
                    "Updated": "2022-05-13T14:41:40Z"
                }
            },
            "OemRecordFormat": "Hpe-IML",
            "Severity": "OK"
        },
        ....
  ],
    "Members@odata.count": 10
}
```
  
{% /tab %}
{% /tabs %}
The following example skips 18 entries and prints the last 10 entries when `Members@odata.count` is 28:

  {% tabs %}
{% tab label="Generic GET request" %}

```text Generic GET request
GET /redfish/v1/Systems/1/LogServices/IML/Entries?$skip=18
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
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
  
  {% /tab %}
  {% /tabs %}

## iLO 5 Data Model Changes

{% admonition type="info" name="NOTE" %}
Review the documented data model changes and make sure client code handles alternatives and removed properties correctly.
{% /admonition %}

### ServiceRoot (`/redfish/v1/`)

#### Time

The pre-Redfish REST API on iLO 4 had a `Time` property representing the current iLO time. Redfish did not include this, so iLO 5 adds it back in an `Oem/Hpe` section. This is a Redfish conformant time property (ISO 8601).

  {% tabs %}
{% tab label="Generic GET time request" %}

```text Generic GET time request
GET /redfish/v1
```
  
  {% /tab %}
{% tab label="iLO 4 response body" %}

```json iLO 4 response body
{
  "@odata.context": "/redfish/v1/$metadata#ServiceRoot",
  "@odata.id": "/redfish/v1/",
  "@odata.type": "#ServiceRoot.v1_0_0.ServiceRoot",
  "Time": "ISO 8601 time (iLO's current time)"
}
```
  
  {% /tab %}
{% tab label="iLO 5 response body" %}

```json iLO 5 response body
{
  "@odata.context": "/redfish/v1/$metadata#ServiceRoot",
  "@odata.id": "/redfish/v1/",
  "@odata.type": "#ServiceRoot.v1_0_0.ServiceRoot",
  "Oem": {
    "Hpe": {
      "@odata.type": "#HpeiLOServiceExt.v2_0_0.HpeiLOServiceExt",
      "Time": "ISO 8601 time (iLO's current time)"
    }
  }
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="success" name="TIP" %}
Refer to the [Managing time in iLO](/docs/redfishservices/ilos/supplementdocuments/managingtime/) section for more information on this topic.
{% /admonition %}

#### RedfishVersion

`ServiceVersion` has been removed and replaced with `RedfishVersion` for Redfish conformance.

### ComputerSystem (`/redfish/v1/systems/{item}`)

#### Boot Source Override

- Two new boot source override values are supported by the UEFI BIOS in Gen10. Both of these are added to `BootSourceOverrideTarget@Redfish.AllowableValues`. Both of these are only supported in UEFI Boot Mode (not legacy mode).
  - `SDCard` for booting to SD card. Only available when boot mode is UEFI.
  - `UefiHttp` for UEFI HTTP Boot. Only available when boot mode is UEFI.

{% admonition type="info" name="NOTE" %}
iLO 5 implements a more complete Redfish Boot Source Override capability than iLO 4. The following example shows the `Boot` object of an HPE iLO 5.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```json Example
{
  "Boot": {
    "BootSourceOverrideEnabled": "Disabled",
    "BootSourceOverrideMode": "UEFI",
    "BootSourceOverrideTarget": "None",
    "BootSourceOverrideTarget@Redfish.AllowableValues": [
      "None",
      "Pxe",
      "Floppy",
      "Cd",
      "Usb",
      "Hdd",
      "BiosSetup",
      "Utilities",
      "Diags",
      "UefiTarget",
      "SDCard",
      "UefiHttp"
    ],
    "UefiTargetBootSourceOverride": "None",
    "UefiTargetBootSourceOverride@Redfish.AllowableValues": [
      "None",
      "PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x0)/HD(2,GPT,383D95E0-472A-48F1-8445-2A436025C81C,0x96800,0x31800)/\\EFI\\Microsoft\\Boot\\bootmgfw.efi",
      "UsbClass(0xFFFF,0xFFFF,0xFF,0xFF,0xFF)",
      "PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x0)",
      "PciRoot(0x0)/Pci(0x2,0x0)/Pci(0x0,0x0)/Pci(0x9,0x0)/Pci(0x0,0x0)/MAC(9457A50822E0,0x0)/IPv4(0.0.0.0)",
      "PciRoot(0x1)/Pci(0x2,0x0)/Pci(0x0,0x0)/Pci(0x9,0x0)/Pci(0x0,0x0)/MAC(9457A5086560,0x0)/IPv4(0.0.0.0)",
      "PciRoot(0x0)/Pci(0x3,0x2)/Pci(0x0,0x0)/MAC(3464A99332A0,0x0)/IPv4(0.0.0.0)",
      "PciRoot(0x0)/Pci(0x2,0x0)/Pci(0x0,0x0)/Pci(0x9,0x0)/Pci(0x0,0x0)/MAC(9457A50822E0,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)",
      "PciRoot(0x1)/Pci(0x2,0x0)/Pci(0x0,0x0)/Pci(0x9,0x0)/Pci(0x0,0x0)/MAC(9457A5086560,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)",
      "PciRoot(0x0)/Pci(0x3,0x2)/Pci(0x0,0x0)/MAC(3464A99332A0,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)"
    ]
  }
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
iLO 5 implements `BootSourceOverrideMode` as a read-only item that reflects the current boot mode.
{% /admonition %}

#### TrustedModules (TPM)

The existing HPE-specific TrustedModules (TPM) sub-object is replaced with the new Redfish-defined version.

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
  "Oem": {
    "Hp": {
      "@odata.type": "#HpComputerSystemExt.1.1.2.HpComputerSystemExt",
      "TrustedModules": [
        {
          "Status": "NotPresent"
        }
      ]
    }
  }
}

```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "TrustedModules": [
    {
      "FirmwareVersion": "3.1",
      "ModuleType": "TPM2_0",
      "Status": {
        "Health": "OK",
        "State": "Enabled"
      }
    }
  ]
}
```
  
  {% /tab %}
  {% /tabs %}

#### SecureBoot Link

The link to the `SecureBoot` resource is added as defined in Redfish in place of the existing HPE-specific link. Refer to the [SecureBoot](#secureboot) section for more details.

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
  "Oem": {
    "Hp": {
      "@odata.type": "#HpComputerSystemExt.1.1.2.HpComputerSystemExt",
      "SecureBoot": {
        "@odata.id": "/redfish/v1/Systems/1/SecureBoot/"
      }
    }
  }
}
```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "SecureBoot": {
    "@odata.id": "/redfish/v1/Systems/1/SecureBoot/"
  }
}
```
  
  {% /tab %}
  {% /tabs %}

#### Bios

The link to the Bios resource is added as defined in Redfish in place of the existing HPE-specific OEM link. Refer to the [UEFI BIOS](#uefi-bios) section for more details.

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
  "Oem": {
    "Hp": {
      "@odata.type": "#HpComputerSystemExt.1.1.2.HpComputerSystemExt",
      "BIOS": {
          "@odata.id": "/redfish/v1/systems/1/bios/"
      }
    }
  }
}
```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "Bios": {
    "@odata.id": "/redfish/v1/Systems/1/Bios"
  }
}
```
  
  {% /tab %}
  {% /tabs %}

#### Other

The following properties have been removed in iLO 5 for Redfish conformance:

- `Version`
- `VirtualSerialNumber`
- `HostCorrelation` - See replacement `HostOS` described below.
- `BIOSPostCode`
- `Power` (replaced by `PowerState`)
- `Processors` is now a link to the Processors collection instead of a summary description of the CPUs.
- `Memory` (replaced by `MemorySummary`)

If the server has a running operating system and HPE Agentless Management Service is installed and running, a new `HostOS` object is included in `ComputerSystem` with information about the OS under `/Oem/Hpe/HostOS`:

- `OsName`
- `OsVersion`
- `OsDescription`

### UEFI BIOS

iLO5 supports Redfish standard BIOS Attributes and BIOS Attribute Registry resources that replace the HPE proprietary versions used in iLO4. The following is a summary of all BIOS resources changes in Gen10 / iLO5:

|Resource Type|iLO 4 / Gen9|iLO 5 / Gen10|
|-------------|------------|-------------|
|BIOS current settings|HpBios.1.2.0|#Bios.v1_0_0.Bios
|BIOS pending settings|HpBios.1.2.0|#Bios.v1_0_0.Bios
|BIOS Attribute Registry|HpBiosAttributeRegistrySchema.1.2.1|#AttributeRegistry.v1_0_0.AttributeRegistry
|BIOS PCI Mappings|HpBiosMapping.1.2.0|#HpeBiosMapping.v2_0_0.HpeBiosMapping
|UEFI Boot Order|HpServerBootSettings.1.3.1|#HpeServerBootSettings.v2_0_0.HpeServerBootSettings
|Base Config (BIOS defaults)|HpBaseConfigs.0.10.0|#HpeBaseConfigs.v2_0_0.HpeBaseConfigs
|UEFI iSCSI Software Initiator|HpiSCSISoftwareInitiator.1.1.0|#HpeiSCSISoftwareInitiator.v2_0_0.HpeiSCSISoftwareInitiator
|BIOS Extensions Schema|None|#HpeBiosExt.v2_0_0.HpeBiosExt

#### BIOS Current/Pending Settings Resources

- All BIOS attributes resources switch from HP OEM type (HpBios.1.2.0) to Redfish standard type (Bios.1.0.0).
- All BIOS Attributes name/value pairs that are referenced in the Attribute Registry are moved from the top level of the resource to be grouped under an “Attributes” Redfish property.
- New Actions on BIOS resources.
  - ResetBios to reset BIOS configuration to defaults.
  - ChangePassword to change BIOS passwords.

##### BIOS Attribute Access

Redfish moves the system-specific BIOS attributes from the top level of the resource into an Attributes sub-object:

  {% tabs %}
{% tab label="iLO 4 BIOS Settings" %}

```json iLO 4 BIOS Settings
{
    "AdminEmail": "",
    "AdminName": "",
    "AdminPhone": ""
}

```
  
  {% /tab %}
{% tab label="iLO 5 BIOS settings" %}

```json iLO 5 BIOS settings
{
  "Attributes": {
    "AdminEmail": "",
    "AdminName": "",
    "AdminPhone": ""
  }
}
```
  
  {% /tab %}
  {% /tabs %}

##### Reset Bios Settings (NEW)

UEFI BIOS Supports a new POST Action to reset settings.

  {% tabs %}
{% tab label="iLO 5 Reset BIOS Settings Action" %}

```json iLO 5 Reset BIOS Settings Action
{
  "Actions": {
    "#Bios.ResetBios": {
      "target": "/redfish/v1/Systems/1/Bios/Settings/Actions/Bios.ResetBios/"
    }
  }
}
```
  
  {% /tab %}
{% tab label="Generic ResetBios request" %}

```txt Generic ResetBios request
POST /redfish/v1/Systems/1/Bios/Settings/Actions/Bios.ResetBios/
```
  
  {% /tab %}
{% tab label="Request body" %}

```json Request body
{}
```
  
  {% /tab %}
  {% /tabs %}

##### Change BIOS Password (NEW)

UEFI BIOS Supports a new Redfish POST Action to change the BIOS password.

  {% tabs %}
{% tab label="iLO 5 Set" %}

```json iLO 5 Set/Change BIOS Setup Password Actions
{
  "Actions": {
    "#Bios.ChangePassword": {
      "target": "/redfish/v1/Systems/1/Bios/Settings/Actions/Bios.ChangePassword/"
    }
  }
}
```
  
  {% /tab %}
{% tab label="Generic POST action" %}

```text Generic POST action
POST /redfish/v1/Systems/1/Bios/Settings/Actions/Bios.ChangePassword/
```
  
  {% /tab %}
{% tab label="Request body" %}

```json Request body
{
  "PasswordName": "Administrator | User",
  "OldPassword" : "OldPasswordText",
  "NewPassword" : "NewPasswordText"
}
```
  
  {% /tab %}
  {% /tabs %}

##### Settings Result Report

The result of applying new settings is Redfish conformant in iLO 5.

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
    "SettingsResult": {
        "ETag": "92EB7D02",
        "Messages": [
            {
                "MessageArgs": [
                    "test"
                ],
                "MessageID": "Base.1.0:PropertyUnknown"
            },
            {
                "MessageArgs": [],
                "MessageID": "Base.1.0:Success"
            }
        ],
        "Time": "2012-03-07T14:44.30-05:00"
    }
}
```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
    "@Redfish.Settings": {
        "@odata.type": "#Settings.v1_0_0.Settings",
        "ETag": "92EB7D02",
        "Messages": [
            {
            "MessageId": "Base.1.0.PropertyUnknown",
            "RelatedProperties": [
              "#/Attributes/ProcTurboMode"
             ]
            },
            {
                "MessageId": "Base.1.0.Success"
            }
        ],
        "SettingsObject": {
          "@odata.id": "/redfish/v1/Systems/1/Bios/Settings"
        },
        "Time": "2012-03-07T14:44.30-05:00"
    }
}
```
  
  {% /tab %}
  {% /tabs %}

##### Changes to BIOS Attribute Enum Values

Attribute names/enum values cannot start with digits, per OData requirements.

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
"AsrTimeoutMinutes": "10",
"SerialConsoleBaudRate": "115200",
}
```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
"AsrTimeoutMinutes": "TimeOut10",
"SerialConsoleBaudRate": "Baud115200",
}
```
  
  {% /tab %}
  {% /tabs %}

##### Redfish conformant HPE Links

With a Redfish conformant BIOS resource structure, some HPE-specific links are moved into an HPE specific section.

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
    "links": {
        "BaseConfigs": {
          "href": "/rest/v1/systems/1/bios/BaseConfigs"
        },
        "Boot": {
          "href": "/rest/v1/systems/1/bios/Boot"
        },
        "Mappings": {
          "href": "/rest/v1/systems/1/bios/Mappings"
        },
        "Settings": {
          "href": "/rest/v1/systems/1/bios/Settings"
        },
        "iScsi": {
          "href": "/rest/v1/systems/1/bios/iScsi"
        },
        "self": {
          "href": "/rest/v1/systems/1/bios"
        }
    }
}
```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "Links": {
    "Oem": {
      "Hpe": {
        "@odata.type": "#HpeBiosExt.v2_0.0.HpeBiosExt",
        "BaseConfigs": {
          "@odata.id": "/redfish/v1/Systems/1/BIOS/BaseConfigs"
        },
        "Boot": {
          "@odata.id": "/redfish/v1/Systems/1/BIOS/Boot"
        },
        "Mappings": {
          "@odata.id": "/redfish/v1/Systems/1/BIOS/Mappings"
        },
        "iScsi": {
          "@odata.id": "/redfish/v1/Systems/1/BIOS/iScsi"
        }
      }
    }
  }
}
```
  
  {% /tab %}
  {% /tabs %}

#### Bios Attribute Registry

All BIOS attribute registry resources have switched from HP OEM type (HpBiosAttributeRegistrySchema.1.2.1) to Redfish standard object (AttributeRegistry.v1_0_0).

#### Other BIOS HPE OEM Resources

##### Existing BIOS HPE OEM Resources

All the remaining HPE OEM resources remain similar to iLO 4, except for following:

- Includes the Redfish conformance changes
- Major version change to v2_0_0

The impacted resources are:

- `HpeBiosMapping`
- `HpeServerBootSettings`
- `HpeBaseConfigs`
- `HpeiSCSISoftwareInitiator`

##### New BIOS HPE OEM Resources

The following new HPE BIOS OEM resources are added in iLO5:

- `HpeBiosExt.v2_0_0.HpeBiosExt` - Provider HPE BIOS OEM extensions to `BIOS.v1_0_0 resource`, specifically in the `links.Oem` property.

#### BIOS Password Authentication HTTP Header

iLO4 requires a special HTTP header when BIOS Admin password is programmed to be included in all PUT/PATCH requests on BIOS resources. This header is removed from iLO5. Instead, all access to BIOS resources requires ConfigureBios iLO privilege.

|Header|iLO 4 / Gen9|iLO 5 / Gen10
|-------------|------------|-------------|
|X-HPRESTFULAPI-AuthToken|A string consisting of the uppercase SHA256 hex digest of the administrator password. In Python this is hashlib.sha256(bios_password.encode()).hexdigest().upper().|None - Access to BIOS resources require iLO account with the ConfigureBios Privilege.

### Software/Firmware Inventory and Update

Gen9 FirmwareInventory (`/redfish/v1/systems/{item}/firmwareinventory`) is removed and replaced with the new Redfish firmware inventory `/redfish/v1/UpdateService/FirmwareInventory` and `/redfish/v1/UpdateService/SoftwareInventory`.

Gen9 HpiLOFirmwareUpdate (`/redfish/v1/managers/{item}/updateservice`) is also removed in favor of the new Redfish update service `/redfish/v1/UpdateService`.

A Redfish conformant UpdateService has been added at `/redfish/v1/UpdateService`. This includes the following:

- Firmware Inventory.
- Software Inventory (when AMS is running on the Host Operating System).
- SimpleUpdate action to update firmware from a URI.

Additionally, the `UpdateService` is extended with:

- Component repository to host smart components on the iLO Repository.
- Task queue to update the system via iLO, UEFI, and SUM/SUT.
- Install Sets to organize sequences of update operations.

### SecureBoot

The `HpSecureBoot` status and configuration resource has been replaced with the Redfish conformant version. The `SecureBoot` properties change from iLO 4 2.30+ to iLO 5 as follows:

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
  "@odata.context": "/redfish/v1/$metadata#Systems/Members/1/SecureBoot$entity",
  "@odata.id": "/redfish/v1/Systems/1/SecureBoot/",
  "@odata.type": "#HpSecureBoot.1.0.0.HpSecureBoot",
  "Id": "SecureBoot",
  "Name": "SecureBoot",
  "ResetAllKeys": false,
  "ResetToDefaultKeys": false,
  "SecureBootCurrentState": false,
  "SecureBootEnable": false
}
```
  
{% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "@odata.context": "/redfish/v1/$metadata#Systems/1/SecureBoot",
  "@odata.id": "/redfish/v1/Systems/1/SecureBoot",
  "@odata.type": "#SecureBoot.v1_0_0.SecureBoot",
  "Actions": {
    "#SecureBoot.ResetKeys": {
      "ResetKeysType@Redfish.AllowableValues": [
        "ResetAllKeysToDefault",
        "DeleteAllKeys",
        "DeletePK"
      ],
      "target": "/redfish/v1/Systems/1/SecureBoot/Actions/SecureBoot.ResetKeys"
    }
  },
  "Id": "SecureBoot",
  "Name": "UEFI Secure Boot",
  "SecureBootCurrentBoot": "Disabled",
  "SecureBootEnable": false,
  "SecureBootMode": "UserMode"
}
```
  
{% /tab %}
{% /tabs %}

An action exists to reset keys. The `ResetKeysType` value can be the following:

- `DeleteAllKeys`
- `ResetAllKeysToDefault`
- `DeletePK`

{% tabs %}
{% tab label="Generic Reset of Secure Boot keys" %}

```text Generic Reset of Secure Boot keys
POST /redfish/v1/Systems/1/SecureBoot/Actions/SecureBoot.ResetKeys/
```
  
{% /tab %}
{% tab label="Request body" %}

```json Request body
{
  "ResetKeysType": "DeleteAllKeys"
}
```
  
{% /tab %}
{% /tabs %}

### Memory and NVDIMM Support

iLO 5 replaces iLO 4's `HpMemory` DIMM information with the Redfish conformant `Memory` schema.

#### Host Correlation Removed

iLO 4 had a pre-Redfish property in the `ComputerSystem` resource called `HostCorrelation` designed to enable easy discovery of host MAC and IP addresses. This was not included in the Redfish standard, and is removed in iLO 5 for conformance reasons. 

iLO 5 replaces `HostCorrelation` with `Oem/Hpe/HostOS` which is available if Agentless Management Service is running.

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
  "HostCorrelation": {
    "HostMACAddress": [
      "14:58:d0:d3:10:ca",
      "14:58:d0:d3:10:cb"
    ],
    "HostName": "some-host-name",
    "IPAddress": [
      "ip-address available if AMS is installed and running",
      ""
    ]
  }
}
```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "Oem": {
    "Hpe": {
      "HostOS": {
        "OsName": "Windows Server 2012 R2, x64 Standard Edition",
        "OsVersion": "6.3",
        "OsSysDescription": "",
        "OsType": 38
      }
    }
  }
}
```
  
  {% /tab %}
  {% /tabs %}

### Managers

The following properties have been replaced in the `Manager` iLO 5 resource type (`/redfish/v1/Managers/1`) for Redfish conformance:

|iLO 4|iLO 5 replacement|
|-----|-----|
|/Firmware|FirmwareVersion|
|/CommandShell/Enabled|/CommandShell/ServiceEnabled|
|/GraphicalConsole/Enabled|/GraphicalConsole/ServiceEnabled|
|/SerialConsole/Enabled|/SerialConsole/ServiceEnabled|

All of the replacement properties are also implemented in iLO 4 2.30 and later.

#### iLO 5 Security State

iLO 5 features a new `SecurityState` setting readable and settable via the REST API.
Refer to the [iLO Security State](/docs/redfishservices/ilos/supplementdocuments/securityservice/#ilo-security-state)
for more detail.

You may PATCH these settings, but iLO 5 enforces strict limitations on how security states can transition. Any unsupported transition results in an error.

##### Allowed Transitions

|Transition|Notes|
|---|---|
|Production <--> HighSecurity|You may transition freely between Production mode and High Security mode, subject to authentication and privileges.
|FIPS <--> SuiteB|You may transition freely between Production mode and High Security mode, subject to authentication and privileges.
|Production or HighSecurity --> FIPS|You may transition into FIPS mode. Transitions out of FIPS mode are complex and beyond the scope of the RESTful API.

##### Impact on Local iLO RESTful API Access (via HPREST utility and Channel Interface)

iLO 4 allowed anonymous access to the iLO RESTful API over the local channel interface (CHIF) except in the case where the Data Center Lock mode was engaged.

iLO 5 limits access to the local interface in HighSecurity, FIPS, and SuiteB modes to authorized users only. In Production mode, anonymous access remains identical to iLO 4.

When performing local BIOS configuration changes, the following conditions apply:

|Local REST Access|No BIOS Password|BIOS Password Set|
|-------------------------|--------------------------|---------------------------|
|Production Mode|**No authorization required**|**Requires BIOS Configuration Privilege**|
|High Security Mode|Requires BIOS Configuration Privilege|Requires BIOS Configuration Privilege|

|Remote REST Access|No BIOS Password|BIOS Password Set|
|-------------------------|--------------------------|---------------------------|
|Production Mode|**Requires BIOS Configuration Privilege**|Requires BIOS Configuration Privilege|
|High Security Mode|Requires BIOS Configuration Privilege|Requires BIOS Configuration Privilege|

Notice that iLO is not validating against the BIOS setup password, but is using the presence of the BIOS password to require BIOS Configuration Privilege.

#### iLO Ethernet Interfaces (/redfish/v1/managers/{item}/EthernetInterfaces/{item}/)

The following properties have been removed for Redfish conformance:

|iLO 4|iLO 5 replacement|
|-----|-----|
|/FactoryMacAddress|/PermanentMACAddress|
|/MacAddress|/MACAddress|
|/LinkTechnology|Removed (assume Ethernet)|
|/Autosense|/AutoNeg|

All of the above replacement properties were added in iLO 4 2.30.

##### VLAN Configuration

VLAN Configuration for iLO's Shared Network Interface has changed in iLO 5 to become Redfish conformant.

|iLO 4|iLO 5 replacement|
|---|---|
|/VLANEnable|/VLAN/VLANEnable|
|/VLANId|/VLAN/VLANId|

#### iLO Network Protocols (/redfish/v1/managers/{item}/NetworkService/)

The following properties have been removed for Redfish conformance:

|iLO 4|iLO 5 replacement|
|-----|-----|
|/SessionTimeoutMinutes|Removed|
|/{protocol}/Enabled|/{protocol}/ProtocolEnabled|
|/Oem/Hp/HPSystemManagementHomepageAddress|/Oem/Hpe/SystemManagementHomepage|

`ProtocolEnabled` was added in iLO 4 2.30 and Enabled is now removed.
`HPSystemManagementHomepageAddress` was changed as part of the Hewlett Packard Enterprise transition.

### Chassis (/redfish/v1/chassis/{item}/)

iLO 5 supports the Redfish `PhysicalSecurity` status to report the status of the hood sensor. This is only present when a hood sensor is installed on the server:

Example:

  {% tabs %}
{% tab label="Example" %}

```json Example
{
  "PhysicalSecurity": {
    "IntrusionSensor": "HardwareIntrusion"
  }
}

```
  
  {% /tab %}
  {% /tabs %}
"Version" has been removed from Chassis to be Redfish conformant.

### Power (/redfish/v1/chassis/{item}/power/)

The following properties have been removed for Redfish conformance:

|iLO 4|iLO 5 replacement|
|-----|-----|
|/PowerConsumedWatts|/PowerControl/PowerConsumedWatts|
|/PowerRequestedWatts|/PowerControl/PowerRequestedWatts|
|/PowerAvailableWatts|/PowerControl/PowerAvailableWatts|
|/PowerAllocatedWatts|/PowerControl/PowerAllocatedWatts|
|/PowerCapacityWatts|/PowerControl/PowerCapacityWatts|
|/PowerMetrics|/PowerControl/PowerMetrics|
|/PowerLimit|/PowerControl/PowerLimit|
|/PowerSupplies[]/CorrelatableID|no replacement|

### Thermal (/redfish/v1/chassis/{item}/thermal)

The existing `CurrentReading` property for each fan array entry is replaced with the Redfish errata change:  

Redfish adds a pair of properties `Reading` and `ReadingUnits`.  Both are GET-only operation properties. ReadingUnits are returned from a GET operation as `Percent` and `Reading` is a number between 0 and 100.

Additionally, a few other properties from the pre-Redfish schema are removed to conform with Redfish.

|iLO 4|iLO 5 replacement|
|-----|-----|
|/Fans[]/FanName|/Fans[]/Name (changed in Redfish Thermal.v1_1_0)|
|/Fans[]/CurrentReading|/Fans[]/Reading*|
|/Fans[]/CurrentReading|/Fans[]/ReadingUnits* (= "Percent")|
|/Fans[]/ReadingRPM|Removed from old schema - never implemented|
|/Fans[]/Units|/Fans[]/ReadingUnits (= "Percent")|
|/Fans[]/Context|/Fans[]/PhysicalContext|
|/Temperatures[]/Context|/Temperatures[]/PhysicalContext|
|/Temperatures[]/CurrentReading|/Temperatures[]/ReadingCelsius|
|/Temperatures[]/Number|/Temperatures[]/SensorNumber*|
|/Temperatures[]/Units|Removed - Redfish always read in Celsius (see ReadingCelsius)|
|/Temperatures[]/LowerThresholdNonCritical|/Temperatures[]/UpperThresholdCritical|
|/Temperatures[]/LowerThresholdCritical|/Temperatures[]/UpperThresholdFatal|

These are newly added for iLO 5 as Redfish conformant replacements for the removed properties. The others were added in iLO 4 2.30 and above as Redfish replacements.

{% admonition type="info" name="NOTE" %}
 The threshold property changes fix a issue with incorrectly labeled thresholds in previous releases of iLO.
{% /admonition %}

### On-Service JSON Schema

The on-service schema collection remains at /redfish/v1/schema/ and does not change to the Redfish example of `/redfish/v1/JsonSchema`. Because URIs are opaque, this is left where it is without violating the spec and preserving compatibility.

The existing collection of `SchemaFileCollection` and `SchemaFile` resources are now Redfish conformant using `JsonSchemaFileCollection` and `JsonSchemaFile`.

|iLO 4|iLO 5|
|-----|-----|
|/redfish/v1/schemas: "@odata.type": "#SchemaFileCollection.SchemaFileCollection"|/redfish/v1/schemas: "@odata.type": "#JsonSchemaFileCollection.JsonSchemaFileCollection"|
|/redfish/v1/schemas/{item}: "@odata.type": “#SchemaFile.1.0.0.SchemaFile"|/redfish/v1/schemas/{item}: "@odata.type": “#JsonSchemaFile.v1_0_0.JsonSchemaFile"|

The main difference in the `SchemaFile` and `JsonSchemaFile` is the change from using `extref` as a pointer to using the `Uri` property:

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
    "Uri": {
        "extref": "/redfish/v1/registrystore/en/BiosAttributeRegistryP89.v1_0_0.json"
    }
}
```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
   "Uri": "/redfish/v1/registrystore/en/BiosAttributeRegistryP89.v1_0_0.json"
}
```
  
  {% /tab %}
  {% /tabs %}

### On-Service Message Registries

Message Registries available in the service conform to Redfish.

The `HpCommon` registry is renamed to `HpeCommon` and changed to version 2.0.0.

The iLO registry version is also changed to 2.0.0. The base remains at 1.0.0 because that is a Redfish standard registry.

|iLO 4|iLO 5|
|-------------------|----------------------------|
|"Type": "MessageRegistry.0.10.0"|"@odata.type": "#MessageRegistry.1.0.0.MessageRegistry"|
|Version|RegistryVersion|
|none|OwningEntity (== Hewlett Packard Enterprise)|

The collection of Message Registries is changed to:

|iLO 4 @odata.type|iLO 5 @odata.type|
|---|---|
|`SchemaFileCollection.SchemaFileCollection`|`#MessageRegistryFileCollection.MessageRegistryFileCollection`|

The collection items pointing to the registries change type:

|iLO 4 @odata.type|iLO 5 @odata.type|
|---|---|
|`#SchemaFile.1.0.0.SchemaFile`|`#MessageRegistryFile.1.0.0.MessageRegistryFile`|

The only difference between SchemaFile/JsonSchemaFile and MessageRegistryFile is the property substitution Schema for Registry.

### Integrated Management Log (IML)

`/redfish/v1/Systems/{item}/LogServices/IML/Entries/{item}/`

The Integrated Management Log (IML) RESTful API in iLO 5 is significantly enhanced. Each log entry is Redfish conformant with the LogEntry Schema and has been enhanced with features of the IML using an Oem/Hpe extension.

Compared to iLO 4, the following items are new or changed:

|Property|Change|Notes|
|--------|------|-----|
|Oem/Hpe/RecommendedAction|Added|This is a text string with recommended actions to resolve a condition indicated by this event.|
|Oem/Hpe/Categories (array of strings)|Added|Categorizes this log entry into one or more defined categories (see below).|
|Oem/Hpe/LearnMoreLink|Added|A URI with the location of more information for this class and code of event.|
|Oem/Hpe/Count|Added|Replaces the "Number" property in iLO 4 which was not Redfish conformant and was hidden when the resource was requested in Redfish mode.|
|Oem/Hpe/Repaired|Added|This boolean flag indicates whether the event has been repaired.|
|OemRecordFormat|Changed|The OEM Record Format has been changed from "Hp-IML" to "Hpe-IML".|
|Oem/Hpe/EventNumber|Added|Replaces the "RecordId" property in iLO 4 which was not Redfish conformant and was hidden when the resource was requested in Redfish mode.|

#### Event Categories

An event can indicate that it is in one or more of the following categories:

|Categories|
|--------|
|Security|
|Hardware Failure|
|Firmware Failure|
|Maintenance|
|Administration|
|Power|
|Cooling|
|Invalid User Input|
|Other|
|Configuration|

  {% tabs %}
{% tab label="iLO 4" %}

```json iLO 4
{
  "@odata.context": "/redfish/v1/$metadata#Systems/Members/1/LogServices/IML/Entries/Members/$entity",
  "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/1/",
  "@odata.type": "#LogEntry.1.0.0.LogEntry",
  "Created": "2016-01-12T21:38:00Z",
  "EntryType": "Oem",
  "Id": "1",
  "Message": "IML Cleared (iLO 4 user:[NONE])",
  "Name": "Integrated Management Log",
  "Oem": {
    "Hp": {
      "@odata.type": "#HpLogEntry.1.0.0.HpLogEntry",
      "Class": 33,
      "Code": 1,
      "EventNumber": 28,
      "Updated": "2016-01-12T21:38:00Z"
    }
  },
  "OemRecordFormat": "Hp-IML",
  "Severity": "OK"
}

```
  
  {% /tab %}
{% tab label="iLO 5" %}

```json iLO 5
{
  "@odata.context": "/redfish/v1/$metadata#Systems/Members/1/LogServices/IML/Entries/Members/$entity",
  "@odata.id": "/redfish/v1/Systems/1/LogServices/IML/Entries/1/",
  "@odata.type": "#LogEntry.v1_0_0.LogEntry",
  "Created": "2034-01-01T23:20:04Z",
  "EntryType": "Oem",
  "Id": "1",
  "Message": "System Overheating (Temperature Sensor 0x07, Location Power Supply, Temperature 48)",
  "Name": "Integrated Management Log",
  "Oem": {
    "Hpe": {
      "@odata.type": "#HpeLogEntry.v2_0_0.HpeLogEntry",
      "Categories": [
        "Hardware Failure"
      ],
      "Class": 2,
      "Code": 1,
      "EventNumber": 197,
      "LearnMoreLink": "http://www.hpe.com/support/class0x02code0x01/",
      "RecommendedAction": "Replace DIMM at slot no. 0x07, socket ",
      "Repaired": false,
      "Updated": "2034-01-01T23:20:04Z"
    }
  },
  "OemRecordFormat": "Hpe-IML",
  "Severity": "Warning"
}

```
  
  {% /tab %}
  {% /tabs %}

### EventService (/redfish/v1/EventService/)

The following properties are removed for Redfish conformance:

- DeliveryRetryIntervalInSeconds (replaced by DeliveryRetryIntervalSeconds present in iLO 4 2.30 and later)
- SubscriptionRemovalAction
- SubscriptionRemoval
- TimeIntervalInMinutes

#### Event Destinations

The following properties are removed for Redfish conformance:

- TTLCount
- TTLUnits

## Detail of All Property Changes

### Property Replacements and Removals

#### Chassis Renames and Removals

`@odata.type: #Chassis.v1_2_0.Chassis`

|Property|Replacement|Note|
|--------|-----------|----|
|/Version|none|/Version is not Redfish conformant.|

#### ComputerSystem Renames and Removals

`@odata.type: #ComputerSystem.v1_2_0.ComputerSystem`

|Property|Replacement|
|--------|-----------|
|/BIOSPOSTCode|none<sup>1</sup>|
|/Bios/Current|/BiosVersion|
|/Boot/BootSourceOverrideSupported|/Boot/BootSourceOverrideTarget@Redfish.AllowableValues<sup>2</sup>|
|/Boot/UefiTargetBootSourceOverrideSupported|/Boot/UefiTargetBootSourceOverride@Redfish.AllowableValues<sup>3</sup>
|/HostCorrelation|none<sup>4</sup>|
|/Memory/Status|/MemorySummary/Status|
|/Memory/TotalSystemMemoryGB|/MemorySummary/TotalSystemMemoryGiB|
|/Power|/PowerState<sup>5</sup>|
|/Processors/Count|/ProcessorSummary/Count|
|/Processors/ProcessorFamily|/ProcessorSummary/Model|
|/Processors/Status|/ProcessorSummary/Status|
|/Version|none<sup>6</sup>|
|/VirtualSerialNumber|none<sup>7</sup>|
<sup>1</sup>/BIOSPOSTCode is not Redfish conformant.
<sup>2</sup>/Boot/BootSourceOverrideSupported is not Redfish conformant.
<sup>3</sup>/Boot/UefiTargetBootSourceOverrideSupported is not Redfish conformant.
<sup>4</sup>/HostCorrelation is not Redfish conformant.
<sup>5</sup>/Power is not Redfish conformant.
<sup>6</sup>/Version is not Redfish conformant.
<sup>7</sup>/VirtualSerialNumber is not Redfish conformant.

#### EthernetInterface Renames and Removals

`@odata.type: #EthernetInterface.v1_0_0.EthernetInterface`

|Property|Replacement|Note|
|--------|-----------|----|
|/Autosense|/AutoNeg|/Autosense is not Redfish conformant.|
|/FactoryMacAddress|/PermanentMACAddress|/FactoryMacAddress is not Redfish conformant.|
|/LinkTechnology|none|/LinkTechnology is not Redfish conformant. Ethernet is assumed.|
|/MacAddress|/MACAddress|/MacAddress is not Redfish conformant.|

#### Event Renames and Removals

`@odata.type: #Event.v1_0_0.Event`

|Property|Replacement|Note|
|--------|-----------|----|
|/Events[]/EventID|/Events[]/EventId|
|/Events[]/MessageID|/Events[]/MessageId|/Events[]/MessageID is not Redfish conformant.|

#### EventDestination Renames and Removals

`@odata.type: #EventDestination.v1_0_0.EventDestination`

|Property|Replacement|Note|
|--------|-----------|----|
|/TTLCount|none|/TTLCount is not Redfish conformant.|
|/TTLUnits|none|/TTLUnits is not Redfish conformant.|

#### EventService Renames and Removals

`@odata.type: #EventService.v1_0_1.EventService`

|Property|Replacement|Note|
|--------|-----------|----|
|/DeliveryRetryIntervalInSeconds|/Oem/Hpe/DeliveryRetryIntervalSeconds|/DeliveryRetryIntervalInSeconds is not Redfish conformant. This has been moved into the EventDestination OEM section as /Oem/Hpe/DeliveryRetryIntervalInSeconds in the HpeEventDestination schema.|
|/SubscriptionRemovalAction|none|/SubscriptionRemovalAction is not Redfish conformant.|
|/SubscriptionRemovalTimeIntervalInMinutes|none|/SubscriptionRemovalTimeIntervalInMinutes is not Redfish conformant.|

#### ExtendedInfo Renames and Removals

`@odata.type: #ExtendedInfo.1.0.0.ExtendedInfo`

|Property|Replacement|Note|
|--------|-----------|----|
|/Messages|/@Message.ExtendedInfo|/Messages is not Redfish conformant.|
|/error/@Message.ExtendedInfo[]/MessageID|/error/@Message.ExtendedInfo[]/MessageId|/error/@Message.ExtendedInfo[]/MessageID is not Redfish conformant.|

#### HpeBaseNetworkAdapter Renames and Removals

`@odata.type: #HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter`

|Property|Replacement|Note|
|--------|-----------|----|
|/PhysicalPorts[]/links/EthernetNetworkAdapter|none|

#### HpeComputerSystemExt Renames and Removals

`@odata.type: #HpeComputerSystemExt.v2_1_0.HpeComputerSystemExt`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#HpComputerSystemExt.PowerButton|/Actions/#HpeComputerSystemExt.PowerButton|HPE Branding Transition|
|/Actions/#HpComputerSystemExt.ServerSigRecompute|/Actions/#HpeComputerSystemExt.ServerSigRecompute|HPE Branding Transition|
|/Actions/#HpComputerSystemExt.SystemReset|/Actions/#HpeComputerSystemExt.SystemReset|HPE Branding Transition|
|/TrustedModules|ComputerSystem#/TrustedModules|This has been formally approved in the Redfish standard and moved from the Oem/Hpe section into the main ComputerSystem object.|

#### HpeESKM Renames and Removals

`@odata.type: #HpeESKM.v2_0_0.HpeESKM`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#HpESKM.ClearESKMLog|/Actions/#HpeESKM.ClearESKMLog|HPE Branding Transition|
|/Actions/#HpESKM.TestESKMConnections|/Actions/#HpeESKM.TestESKMConnections|HPE Branding Transition|

#### HpeHttpsCert Renames and Removals

`@odata.type: #HpeHttpsCert.v2_0_0.HpeHttpsCert`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#HpHttpsCert.GenerateCSR|/Actions/#HpeHttpsCert.GenerateCSR|HPE Branding Transition|
|/Actions/#HpHttpsCert.ImportCertificate|/Actions/#HpeHttpsCert.ImportCertificate|HPE Branding Transition|

#### HpeiLO Renames and Removals

`@odata.type: #HpeiLO.v2_0_0.HpeiLO`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#HpiLO.ClearRestApiState|/Actions/#HpeiLO.ClearRestApiState|HPE Branding Transition|
|/Actions/#HpiLO.ResetToFactoryDefaults|/Actions/#HpeiLO.ResetToFactoryDefaults|HPE Branding Transition|
|/Actions/#HpiLO.iLOFunctionality|/Actions/#HpeiLO.iLOFunctionality|HPE Branding Transition|

#### HpeiLOActiveHealthSystem Renames and Removals

`@odata.type: #HpeiLOActiveHealthSystem.v2_0_0.HpeiLOActiveHealthSystem`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#HpiLOActiveHealthSystem.ClearLog|/Actions/#HpeiLOActiveHealthSystem.ClearLog|HPE Branding Transition|

#### HpeiLOEmbeddedMedia Renames and Removals

`@odata.type: #HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia`

|Property|Replacement|Note|
|--------|-----------|----|
|/SDCard/HpCertified|/SDCard/HpeCertified|HPE Branding Transition|

#### HpeiLOManagerNetworkService Renames and Removals

`@odata.type: #HpeiLOManagerNetworkService.v2_0_0.HpeiLOManagerNetworkService`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#HpiLOManagerNetworkService.SendTestAlertMail|/Actions/#HpeiLOManagerNetworkService.SendTestAlertMail|HPE Branding Transition|
|/Actions/#HpiLOManagerNetworkService.SendTestSyslog|/Actions/#HpeiLOManagerNetworkService.SendTestSyslog|HPE Branding Transition|
|/HPSystemManagementHomepageAddress|/SystemManagementHomepage|HPE Branding Transition|

#### HpeiLOSSO Renames and Removals

`@odata.type: #HpeiLOSSO.v2_0_0.HpeiLOSSO`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#HpiLOSSO.DeleteAllSSORecords|/Actions/#HpeiLOSSO.DeleteAllSSORecords|HPE Branding Transition|
|/Actions/#HpiLOSSO.DeleteSSORecordbyNumber|/Actions/#HpeiLOSSO.DeleteSSORecordbyNumber|HPE Branding Transition|
|/Actions/#HpiLOSSO.ImportCertificate|/Actions/#HpeiLOSSO.ImportCertificate|HPE Branding Transition|
|/Actions/#HpiLOSSO.ImportDNSName|/Actions/#HpeiLOSSO.ImportDNSName|HPE Branding Transition|

#### HpeiLOSnmpService Renames and Removals

`@odata.type: #HpeiLOSnmpService.v2_0_0.HpeiLOSnmpService`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#SnmpService.SendSNMPTestAlert|/Actions/#HpeiLOSnmpService.SendSNMPTestAlert|

#### HpeiLOVirtualMedia Renames and Removals

`@odata.type: #HpeiLOVirtualMedia.v2_0_0.HpeiLOVirtualMedia`

|Property|Replacement|Note|
|--------|-----------|----|
|/Actions/#HpiLOVirtualMedia.1.1.0.EjectVirtualMedia|/Actions/#HpeiLOVirtualMedia.EjectVirtualMedia|HPE Branding Transition|
|/Actions/#HpiLOVirtualMedia.1.1.0.InsertVirtualMedia|/Actions/#HpeiLOVirtualMedia.InsertVirtualMedia|HPE Branding Transition|

#### LogEntry Renames and Removals

`@odata.type: #LogEntry.v1_0_0.LogEntry`

|Property|Replacement|Note|
|--------|-----------|----|
|/Number|none|/Number is not Redfish conformant.|
|/RecordId|/EventNumber|/RecordId is not Redfish conformant.|

#### Manager Renames and Removals

`@odata.type: #Manager.v1_1_0.Manager`

|Property|Replacement|Note|
|--------|-----------|----|
|/CommandShell/Enabled|/CommandShell/ServiceEnabled|/CommandShell/Enabled is not Redfish conformant.|
|/Firmware|/FirmwareVersion|/Firmware is not Redfish conformant.|
|/GraphicalConsole/Enabled|/GraphicalConsole/ServiceEnabled|/GraphicalConsole/Enabled is not Redfish conformant.|
|/SerialConsole/Enabled|/SerialConsole/ServiceEnabled|/SerialConsole/Enabled is not Redfish conformant.|

#### ManagerNetworkProtocol Renames and Removals

`@odata.type: #ManagerNetworkProtocol.v1_0_0.ManagerNetworkProtocol`

|Property|Replacement|Note|
|--------|-----------|----|
|/HTTP/Enabled|/HTTP/ProtocolEnabled|/HTTP/Enabled is not Redfish conformant.|
|/HTTPS/Enabled|/HTTPS/ProtocolEnabled|/HTTPS/Enabled is not Redfish conformant.|
|/IPMI/Enabled|/IPMI/ProtocolEnabled|/IPMI/Enabled is not Redfish conformant.|
|/KVMIP/Enabled|/KVMIP/ProtocolEnabled|/KVMIP/Enabled is not Redfish conformant.|
|/SNMP/Enabled|/SNMP/ProtocolEnabled|/SNMP/Enabled is not Redfish conformant.|
|/SSDP/Enabled|/SSDP/ProtocolEnabled|/SSDP/Enabled is not Redfish conformant.|
|/SSH/Enabled|/SSH/ProtocolEnabled|/SSH/Enabled is not Redfish conformant.|
|/SessionTimeoutMinutes|none|/SessionTimeoutMinutes is not Redfish conformant.|
|/VirtualMedia/Enabled|/VirtualMedia/ProtocolEnabled|/VirtualMedia/Enabled is not Redfish conformant.|

#### Power Renames and Removals

`@odata.type: #Power.v1_0_1.Power`

|Property|Replacement|Note|
|--------|-----------|----|
|/PowerAllocatedWatts|/PowerControl/PowerAllocatedWatts|/PowerAllocatedWatts is not Redfish conformant.|
|/PowerAvailableWatts|/PowerControl/PowerAvailableWatts|/PowerAvailableWatts is not Redfish conformant.|
|/PowerCapacityWatts|/PowerControl/PowerCapacityWatts|/PowerCapacityWatts is not Redfish conformant.|
|/PowerConsumedWatts|/PowerControl/PowerConsumedWatts|/PowerConsumedWatts is not Redfish conformant.|
|/PowerLimit|/PowerControl/PowerLimit|/PowerLimit is not Redfish conformant.|
|/PowerMetrics|/PowerControl/PowerMetrics|/PowerMetrics is not Redfish conformant.|
|/PowerRequestedWatts|/PowerControl/PowerRequestedWatts|/PowerRequestedWatts is not Redfish conformant.|
|/PowerSupplies[]/CorrelatableID|none|/PowerSupplies[]/CorrelatableID is not Redfish conformant.|

#### ServiceRoot Renames and Removals

`@odata.type: #ServiceRoot.v1_1_0.ServiceRoot`

|Property|Replacement|Note|
|--------|-----------|----|
|/Time|HpeiLOServiceExt#/Time|/Time is not Redfish conformant. A replacement to this is defined in the Oem section of Manager (HpeiLOServiceExt).|

#### Thermal Renames and Removals

`@odata.type: #Thermal.v1_1_0.Thermal`

|Property|Replacement|Note|
|--------|-----------|----|
|/Fans[]/Context|/Fans[]/PhysicalContext|/Fans[]/Context is not Redfish conformant.|
|/Fans[]/CurrentReading|/Fans[]/Reading|/Fans[]/CurrentReading is not Redfish conformant.|
|/Fans[]/FanName|/Fans[]/Name|
|/Fans[]/ReadingRPM|/Fans[]/Reading|
|/Fans[]/Units|/Fans[]/ReadingRPM|/Fans[]/Units is not Redfish conformant.|
|/Temperatures[]/Context|/Temperatures[]/PhysicalContext|/Temperatures[]/Context is not Redfish conformant.|
|/Temperatures[]/CurrentReading|/Temperatures[]/ReadingCelsius|/Temperatures[]/CurrentReading is not Redfish conformant.|
|/Temperatures[]/Number|/Temperatures[]/SensorNumber|/Temperatures[]/Number is not Redfish conformant.|
|/Temperatures[]/Units|/Temperatures[]/ReadingCelsius|/Temperatures[]/Units is not Redfish conformant.|

### Property Additions to existing Types

#### Chassis Additions

`@odata.type: #Chassis.v1_2_0.Chassis`

|Property|Note|
|--------|-------------------|
|/Links/Drives|An array of references to the drives contained in this chassis.|
|/PhysicalSecurity|A Redfish standard Physical Security object if supported and installed on the chassis.|

#### ComputerSystem Additions

`@odata.type: #ComputerSystem.v1_2_0.ComputerSystem`

|Property|Note|
|--------|-------------------|
|/Boot/BootSourceOverrideMode|none|
|/Boot/BootSourceOverrideTarget@Redfish.AllowableValues|none|
|/Boot/UefiTargetBootSourceOverride@Redfish.AllowableValues|none|
|/SecureBoot|A reference to the UEFI SecureBoot resource associated with this system.|
|/Storage|A reference to the collection of storage devices associated with this system.|
|/TrustedModules|This object describes the array of Trusted Modules in the system.|

#### Event Additions

`@odata.type: #Event.v1_0_0.Event`

|Property|Note|
|--------|-------------------|
|/Events[]/EventId|This is a unique instance identifier of an event.|

#### HpeAdvancedMemoryProtection Additions

`@odata.type: #HpeAdvancedMemoryProtection.v2_0_0.HpeAdvancedMemoryProtection`

|Property|Note|
|--------|-------------------|
|/MemoryList|An array of memory boards containing socket and CPU correlation information.|

#### HpeBaseNetworkAdapter Additions

`@odata.type: #HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter`

|Property|Note|
|--------|-------------------|
|/FcPorts|Information about the Fiber Channel Ports in the server.|

#### HpeComputerSystemExt Additions

`@odata.type: #HpeComputerSystemExt.v2_1_0.HpeComputerSystemExt`

|Property|Note|
|--------|-------------------|
|/AggregateHealthStatus|The Aggregate Health Status of the System.|
|/HostOS|none|
|/Links/USBPorts|A reference to the USB Port Connectors associated with this system.|
|/PCAPartNumber|The PCA part number.|
|/PCASerialNumber|The PCA serial number.|
|/PostDiscoveryCompleteTimeStamp|Displays the last known POST Discovery Complete time.|
|/PostDiscoveryMode|The mode which the system operates during the discovery section of POST.|
|/SMBIOS|A reference to the SMBIOS records associated with this system.|
|/SmartStorageConfig|An array of references to SmartStorage elements associated with this system.|
|/ProcessorJitterControl|Allows the user to set the Processor Jitter Control mode and Frequency at run time.|
|/CurrentPowerOnTimeSeconds|Shows the amount of time (in seconds) that has passed since the server was last powered on.|
|/PowerOnMinutes|Retrieves the virtual clock value, in minutes, since the server was first powered on. |

#### HpeLogEntry Additions

`@odata.type: #HpeLogEntry.v2_0_0.HpeLogEntry`

|Property|Note|
|--------|-------------------|
|/Categories|The log entry categories.|
|/Count|The occurrence count of the log entry.|
|/LearnMoreLink|The HPSC link for troubleshooting information.|
|/RecommendedAction|The recommended action for the event.|

#### HpePowerMetricsExt Additions

`@odata.type: #HpePowerMetricsExt.v2_0_0.HpePowerMetricsExt`

|Property|Note|
|--------|-------------------|
|/BbuPowerSupply|Battery Backup Unit Power Supply action determines what occurs when a server is running on battery power.|
|/HasPowerMetering|Indicates if the system has power metering.|
|/MinimumSafelyAchievableCap|Minimum Safely Achievable Cap is the lowest cap value that is safe for a group power manager to apply to a particular server. It can either be identical to or slightly greater than the 0 percent cap value calculated during ROM power burn.|
|/HighEfficiencyMode|The redundant power supply mode that is used when redundant power supplies are configured.|

#### HpeSecurityService Additions

`@odata.type: #HpeSecurityService.v2_0_0.HpeSecurityService`

|Property|Note|
|--------|-------------------|
|/SecurityState|The operational security level of this Manager.|
|/LoginSecurityBanner|Allows you to configure the security banner displayed on the iLO login screen.|
|/CurrentCipher|Displays the current cipher in use.|

#### HpeServerChassis Additions

`@odata.type: #HpeServerChassis.v2_0_0.HpeServerChassis`

|Property|Note|
|--------|-------------------|
|/Links/BladeEnclosure|The URI for this blade enclosure resource.|
|/SystemMaintenanceSwitches|Describes the maintenance switch positions|

#### HpeServerFan Additions

`@odata.type: #HpeServerFan.v2_0_0.HpeServerFan`

|Property|Note|
|--------|-------------------|
|/HotPluggable|Indicates if the fan can be replaced while the server is running.|
|/Redundant|Indicates if the fan is in a redundant configuration.|

#### HpeServerPciDevice Additions

`@odata.type: #HpeServerPciDevice.v2_0_0.HpeServerPciDevice`

|Property|Note|
|--------|-------------------|
|/LocationString|Text representation of the UEFI device location.|

#### HpeSmartStorageArrayController Additions

`@odata.type: #HpeSmartStorageArrayController.v2_0_0.HpeSmartStorageArrayController`

|Property|Note|
|--------|-------------------|
|/ControllerPartNumber|Smart Array Controller Part Number|

#### HpeSmartStorageDiskDrive Additions

`@odata.type: #HpeSmartStorageDiskDrive.v2_0_0.HpeSmartStorageDiskDrive`

|Property|Note|
|--------|-------------------|
|/LegacyBootPriority|This indicates that the array controller should provide legacy boot support.|

#### HpeSmartStorageLogicalDrive Additions

`@odata.type: #HpeSmartStorageLogicalDrive.v2_0_0.HpeSmartStorageLogicalDrive`

|Property|Note|
|--------|-------------------|
|/InterfaceType|The connection interface of the logical drive.|
|/MediaType|Type of the disk this logical drive is associated with.|

#### HpeiLO Additions

`@odata.type: #HpeiLO.v2_0_0.HpeiLO`

|Property|Note|
|--------|-------------------|
|/ConfigurationSettings|State of the currently displayed configuration settings.|
|/IdleConnectionTimeoutMinutes|This setting specifies how long a user can be inactive before an iLO web interface ends automatically.|
|/Links/Thumbnail|A link to static images in Manager.|
|/RIBCLEnabled|This property enables or disables RIBCL for the management processor. The management processor requires reset when this field is modified.|
|/WebGuiEnabled|This property enables or disables WEB GUI access for the management processor. The management processor requires reset when this field is modified.|
|/PersistentMouseKeyboardEnabled| This property enables or disables the persistent keyboard and mouse feature.|

#### HpeiLOEmbeddedMedia Additions

`@odata.type: #HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia`

|Property|Note|
|--------|-------------------|
|/SDCard/HpeCertified|True if this is an HPE-certified SD card.|

#### HpeiLOManagerNetworkService Additions

`@odata.type: #HpeiLOManagerNetworkService.v2_0_0.HpeiLOManagerNetworkService`

|Property|Note|
|--------|-------------------|
|/SystemManagementHomepage|The IP address or FQDN of the System Management Homepage (SMH) server.|

#### HpeiLOResourceDirectory Additions

`@odata.type: #HpeiLOResourceDirectory.v2_0_0.HpeiLOResourceDirectory`

|Property|Note|
|--------|-------------------|
|/Instances[]/HttpMethods|This property lists the set of methods supported by the resource.|

#### HpeiLOServiceExt Additions

`@odata.type: #HpeiLOServiceExt.v2_0_0.HpeiLOServiceExt`

|Property|Note|
|--------|-------------------|
|/Time|The current Redfish service time. This is a replacement for the ServiceRoot Time removed in Redfish.|

#### Manager Additions

`@odata.type: #Manager.v1_1_0.Manager`

|Property|Note|
|--------|-------------------|
|/Links/ManagerInChassis|This property is a reference to the chassis that this manager is located within.|

#### ServiceRoot Additions

`@odata.type: #ServiceRoot.v1_1_0.ServiceRoot`

|Property|Note|
|--------|-------------------|
|/UpdateService|The URI to this UpdateService resource.|

#### Thermal Additions

`@odata.type: #Thermal.v1_1_0.Thermal`

|Property|Note|
|--------|-------------------|
|/Fans[]/Name|The name of the fan sensor.|
|/Fans[]/Reading|The current speed of the fan.|
|/Temperatures[]/SensorNumber|A numerical identifier to represent the temperature sensor.|
