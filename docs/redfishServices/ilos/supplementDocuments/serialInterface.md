---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: true
breadcrumbs:
  hide: false
seo:
  title: Serial interface
---

## Serial interface

{% admonition type="info" name="NOTE" %}

It is possible that some properties or resources described in this section
are not implemented in iLO 4 and ilo 5.

{% /admonition %}

The Redfish serial interface resource lists physical serial interfaces that
allow access to iLO. It allows administrators to configure the baud rate and
enable or disable serial access to iLO Command line interface using server
physical serial port.

## Accessing serial interfaces resource through Redfish

To access the Redfish serial interfaces resource, perform `GET` on
`/redfish/v1/Managers/1/SerialInterfaces/`. This collection resource
includes links to the serial interface members
`/redfish/v1/Managers/1/SerialInterfaces/{serialInterfaceId}`.

## Viewing serial interface configuration

To view configuration information on a specific member from the serial
interfaces collection, perform `GET` on
`/redfish/v1/Managers/1/SerialInterfaces/{serialInterfaceId}`.

This resource provides configurable information on the following:

| Property              | Type      | Description   |
| ---                   | ---       | ---           |
| InterfaceEnabled   | Boolean   | An indication of whether this interface is enabled |
| BitRate         | Enum (`Bitrate`) | The receive and transmit rate of data flow, typically in bits per second (bit/s), over the serial connection |

The `Bitrate` enum can take the following values -
`"9600"`, `"19200"`, `"38400"`, `"57600"`, `"115200"`

  {% tabs %}
{% tab label="cURL" %}

```shell cURL
> curl https://{iLO}/redfish/v1/Managers/1/SerialInterfaces/{serialInterfaceId} -i --insecure -L
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#SerialInterface.SerialInterface",
    "@odata.etag": "W/\"0CFA12DC\"",
    "@odata.id": "/redfish/v1/Managers/1/SerialInterfaces/1",
    "@odata.type": "#SerialInterface.v1_1_7.SerialInterface",
    "Id": "1",
    "BitRate": "115200",
    "Description" : "Serial Interface",
    "InterfaceEnabled" : true,
    "Name" : "SerialInterface"
}
```
  
  {% /tab %}
  {% /tabs %}
## Configuring serial interface through Redfish PATCH

To modify the serial interface configuration, perform a `PATCH` on
`/redfish/v1/Managers/1/SerialInterfaces/{serialInterfaceId}`.

  {% tabs %}
{% tab label="Configure serial interface" %}

```text Configure serial interface
PATCH /redfish/v1/Managers/1/SerialInterfaces/{serialInterfaceId}
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "InterfaceEnabled" : true,
    "BitRate" : "9600"
}
```
  
  {% /tab %}
  {% /tabs %}
