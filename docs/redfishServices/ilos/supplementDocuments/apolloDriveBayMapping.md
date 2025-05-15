---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: true
breadcrumbs:
  hide: false
seo:
  title: Managing Apollo Drive Bay mapping
---

## Managing Apollo Drive Bay Mapping

The HPE Apollo 2000 System with the HPE Apollo r2800 Chassis (including the
Storage Expander Backplane) supports 24 SFF HPE SmartDrives. The SFF drive

{% admonition type="warning" name="CAUTION" %}
Changing the drive bay mapping configuration might cause data loss or data
corruption. For example, consider a configuration with drive bays two through
seven assigned to node 1, with the drives configured as a RAID0 volume. Data
corruption might occur if you change the drive bay mapping so that the
configured drives are no longer available.
{% /admonition %}

## Prerequisites

* HPE iLO 5 firmware 1.20 or later
* Storage enclosure processor firmware 1.00 or later
* Chassis firmware 1.2.10 or later

## Getting host port topology details

The `HostPortsInfo` JSON object displays the node number and SAS controller
associated with each server host port. Before you change the drive bay
mapping, HPE recommends using the following REST API to view and understand
the PortNumber mapping:

  {% tabs %}
{% tab label="GET request" %}

```text GET request
GET /redfish/v1/Chassis/1/AccHddService
```
  
  {% /tab %}
{% tab label="Body response" %}

```json Body response
{
    "HostPortsInfo": [
        {
            "NodeNumber": 1,
            "PortNumber": 1,
            "SlotNumber": 1
        },
        {
            "NodeNumber": 2,
            "PortNumber": 2,
            "SlotNumber": 1
        },
        {
            "NodeNumber": 3,
            "PortNumber": 3,
            "SlotNumber": 1
        },
        {
            "NodeNumber": 4,
            "PortNumber": 4,
            "SlotNumber": 1
        }
    ]
}
```
  
  {% /tab %}
  {% /tabs %}
## Getting current and pending drive bay mapping

  {% tabs %}
{% tab label="GET request" %}

```text GET request
GET /redfish/v1/Chassis/1/AccHddService/zone
```
  
  {% /tab %}
{% tab label="response Body" %}

```json response Body
{
    "CurrentZoneConfiguration": {
        "HostPort": [
            {
                "BayNumber": [ 1, 2, 3, 4, 5, 6 ],
                "PortNumber": 1
            },
            {
                "BayNumber": [ 7, 8, 9, 10, 11, 12 ],
                "PortNumber": 2
            },
            {
                "BayNumber": [ 13, 14, 15, 16, 17, 18 ],
                "PortNumber": 3
            },
            {
                "BayNumber": [ 19, 20, 21, 22, 23, 24 ],
                "PortNumber": 4
            },
            {
                "PortNumber": null
            }
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
The value `PortNumber` null indicates that a drive bay is not assigned.
{% /admonition %}

The `PendingZoneConfiguration` JSON object displays the pending drive bay
mapping configuration. This configuration will not be applied until all
nodes remain powered off for at least 5 seconds.

  {% tabs %}
{% tab label="PendingZoneConfiguration example" %}

```json PendingZoneConfiguration example
{
    "PendingZoneConfiguration": {
        "HostPort": [
            {
                "BayNumber": [ 1, 2, 3, 4 ],
                "PortNumber": 1
            },
            {
                "BayNumber": [ 7, 8, 9, 10 ],
                "PortNumber": 2
            },
            {
                "BayNumber": [ 13, 14, 15, 16 ],
                "PortNumber": 3
            },
            {
                "BayNumber": [ 19, 20, 21, 22 ],
                "PortNumber": 4
            },
            {
                "BayNumber": [ 5, 6, 11, 12, 17, 18, 23, 24 ],
                "PortNumber": null
            }
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
The value PortNumber null indicates that a drive bay is not assigned.
{% /admonition %}

## Configuring drive bay mapping

You can make drive bay mapping configuration changes from any server node.
The changes take effect when all server nodes in the Apollo 2000 system
chassis are powered off and the Chassis firmware is able to reset the
Storage Expander backplane. All nodes must remain powered off for at
least 5 seconds after you initiate the configuration change.

The following example shows three drive bays assigned to each node.
This action returns a response indicating that all server nodes
in the chassis must remain powered off for at least 5 seconds
for the changes to take effect.

  {% tabs %}
{% tab label="POST request" %}

```text POST request
POST /redfish/v1/Chassis/1/AccHddService/Zone/Actions/HpeServerAccHddZone.ConfigureZone
```
  
  {% /tab %}
{% tab label="POST Body" %}

```json POST Body
{
    "HostPort": [
      {
        "BayNumber": [
          1,
          2,
          3
        ],
        "PortNumber": 1
      },
      {
        "BayNumber": [
          7,
          8,
          9
        ],
        "PortNumber": 2
      },
      {
        "BayNumber": [
          13,
          14,
          15
        ],
        "PortNumber": 3
      },
      {
        "BayNumber": [
          19,
          20,
          21
        ],
        "PortNumber": 4
      }
    ]
}
```
  
  {% /tab %}
{% tab label="Response Body" %}

```json Response Body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.9.ChassisResetRequired"
            }
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
## Setting drive bay mapping to the default configuration

The default configuration divides the 24 SFF drive bays by the number
of server host ports in the Apollo 2000 Chassis. In a configuration
with four 1U servers, the default drive bay configuration is six
bays allocated to each of the four server slots. In a configuration
with two 2U servers, the default drive bay configuration is 12 drive
bays allocated to each of the two server slots.

POST an empty JSON object to URI to set drive bay mapping to the default
configuration. This action returns a response indicating that all server
nodes in the chassis must remain powered off for at least 5 seconds
for the changes to take effect.

  {% tabs %}
{% tab label="POST request" %}

```text POST request
POST /redfish/v1/Chassis/1/AccHddService/Zone/Actions/HpeServerAccHddZone.LoadDefault
```
  
  {% /tab %}
{% tab label="POST Body" %}

```json POST Body
{}
```
  
  {% /tab %}
{% tab label="response Body" %}

```json response Body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.9.ChassisResetRequired"
            }
        ]
    }
}
```
  
  {% /tab %}
  {% /tabs %}
