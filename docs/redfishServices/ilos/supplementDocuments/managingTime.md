---
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: true
seo:
  title: Managing time in iLO
---

## Managing Time in iLO

{% admonition type="info" name="NOTE" %}

It is possible that some properties or resources described in this section
are not implemented in iLO 4 and iLO 5.

{% /admonition %}

iLO obtains the date and time from one of several sources and is not
manually configurable.

* Network Time Protocol (NTP) Servers
* System UEFI during Boot

The configurable iLO time/date related configuration properties are:

* Time zone
* NTP Server addresses
* Option to synchronize the host to the date and time of iLO during
  first boot after AC power is applied (`PropagateTimeToHost` Boolean,
  in the `HpeiLODateTime` data type.)

## iLO date and time

Current date and time of iLO is available in the main `Manager`
resource at `/redfish/v1/Managers/{id}`

  {% tabs %}
{% tab label="Generic GET date" %}

```text Generic GET date/time
GET /redfish/v1/Managers/{id}/?$select=DateTime, DateTimeLocalOffset
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
# The following iLOrest command logs into a remote iLO, selects the 
# Manager data type, retrieves the DateTime and DateTimeLocalOffset properties,
# and logout.

ilorest --nologo get --json DateTime DateTimeLocalOffset  \
        --selector Manager.                               \
        --url ilo-ip                                      \
        --user user --password password                   \
        --logout
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
  "DateTime": "2022-11-09T10:56:34Z",
  "DateTimeLocalOffset": "-06:00"
}
```
  
  {% /tab %}
  {% /tabs %}
### Date/Time Service Resource

A link exists in `/redfish/v1/Managers/{id}` to the iLO Date/Time Service.
It points to a DateTime resource at `/redfish/v1/Managers/{id}/DateTime`
part of the `HpeiLODateTime` data type.

## Time Zone Management

Time Zone configuration is performed with a PATCH to the `HpeiLODateTime`
resource type at `/redfish/v1/Managers/{id}/DateTime`.

The available time zones are listed in the `TimeZoneList` property. Take note
of the `Index` value of the time zone you wish iLO to be configured with.
Then `PATCH` the `TimeZone.Index` property:

  {% tabs %}
{% tab label="Time zone configuration" %}

```text Time zone configuration
PATCH /redfish/v1/Managers/{id}/DateTime
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "TimeZone": {
        "Index": 17
    }
}
```
  
  {% /tab %}
  {% /tabs %}
If the operation is successful, iLO responds with `HTTP 200 OK`
and `ResetRequired`. An iLO reset is required for date and time
operations to be applied. After a successful PATCH the
`ConfigurationSettings` property contains `SomePendingReset`
indicating that some settings have changed but they not take
effect until iLO is reset.

The following example illustrates this behavior using the iLOrest
command line tool. Only relevant output is shown.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest
ilorest login ilo-ip -u user -p password
ilorest select HpeiLODateTime.
ilorest get --json TimeZone/Index ConfigurationSettings
{
  "ConfigurationSettings": "Current",
  "TimeZone": {
    "Index": 7,
    "Name": "Central America, Central Time(US & Canada)",
    "UtcOffset": "-06:00",
    "Value": "CST+6:00CDT+05:00:00,M3.2.0/02:00:00,M11.1.0/02:00:00"
}


ilorest set TimeZone/Index=17 --commit
Added the following patch:
{
  "TimeZone/Index": 17
}
Committing changes...
The operation completed successfully.

ilorest get --json TimeZone/Index ConfigurationSettings
{
  "ConfigurationSettings": "SomePendingReset",
  "TimeZone": 
  {
    "Index": 17 
  }
}

ilorest iloreset
A management processor reset is in progress.

sleep 90

ilorest login ilo-ip -u user -p password --selector HpeiLODateTime.
ilorest get --json TimeZone/Index ConfigurationSettings
{
  "ConfigurationSettings": "Current",
  "TimeZone": 
  {
    "Index": 17
  }
}

ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
If the time zone is configured to be managed by DHCP, iLO responds with
`HTTP 400` and `SNTPConfigurationManagedByDHCPAndIsReadOnly`
(see Using DHCP Supplied Time Settings).

## Configuring the Network Time Protocol (NTP)

The current configured Network Time Protocol (NTP) servers are available
in the `HpeiLODateTime` resource type at
`/redfish/v1/Managers/{id}/DateTime`.

  {% tabs %}
{% tab label="Generic GET NTP servers request" %}

```text Generic GET NTP servers request
GET /redfish/v1/Managers/{id}/DateTime/?$select=NTPServers
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest
# The following iLOrest commands logs in a remote Redfish service,
# selects the HpeiLODateTime resource type,
# Retrieves in JSON format the list of configured NTP servers,
# and logout.

ilorest login ilo-ip -u user -p password
ilorest select HpeiLODateTime.
ilorest get --json NTPServers
ilorest logout
```
  
  {% /tab %}
{% tab label="Response body" %}

```json Response body
{
    "NTPServers": [
        "<NTP server 1 IP address>",
        "<NTP server 2 IP address>"
    ]
}
```
  
  {% /tab %}
  {% /tabs %}
If NTP is not being managed by DHCP, you may PATCH server addresses
into the `StaticNTPServers` array as shown in the following example.

  {% tabs %}
{% tab label="NTP servers PATCH URI" %}

```text NTP servers PATCH URI
PATCH /redfish/v1/Managers/{id}/DateTime
```
  
  {% /tab %}
{% tab label="Body (one NTP server)" %}

```json Body (one NTP server)
{
    "StaticNTPServers": [
        "<NTP server 1 IP address>"
    ]
}
```
  
  {% /tab %}
{% tab label="Body (two NTP servers)" %}

```json Body (two NTP servers)
{
    "StaticNTPServers": [
        "<NTP server 1 IP address>",
        "<NTP server 2 IP address>"        
    ]
}
```
  
  {% /tab %}
  {% /tabs %}
If the operation is successful, iLO responds with `HTTP 200 OK` and
`Success`. After a successful PATCH the `ConfigurationSettings` property
contains `Current` indicating that the new settings have have been taken
into account.

{% admonition type="success" name="TIP" %}
To empty the NTP servers list, PATCH with the following body:

`{"StaticNTPServers": ["",""]}`
{% /admonition %}

{% admonition type="warning" name="Warning" %}
If you empty the NTP servers list, an iLO reset is required to take
the modification into account.
{% /admonition %}

The following example is an iLOrest sequence of commands to set one or two
NTP servers. The first example shows how to verify the new settings.

  {% tabs %}
{% tab label="iLOrest" %}

```shell iLOrest: Empty the NTP servers list
ilorest login ilo-ip -u user -p password
ilorest select HpeiLODateTime.
ilorest set StaticNTPServers=["",""]  --commit
ilorest reset
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest: Set one NTP server
ilorest login ilo-ip -u user -p password
ilorest select HpeiLODateTime.
ilorest set StaticNTPServers=["<NTP server 1 IP address>",""]  --commit
ilorest select  HpeiLODateTime. --refresh
ilorest get -j NTPServers ConfigurationSettings
ilorest logout
```
  
  {% /tab %}
{% tab label="iLOrest" %}

```shell iLOrest: Set two NTP servers.
ilorest login ilo-ip -u user -p password
ilorest select HpeiLODateTime.
ilorest set StaticNTPServers=["<NTP server 1 IP address>","<NTP server 2 IP address>"]  --commit
ilorest select  HpeiLODateTime. --refresh
ilorest get -j NTPServers ConfigurationSettings
ilorest logout
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="success" name="TIP" %}
If you receive a `400 bad request` response code with the
`ArrayPropertyOutOfBound` error message, you should empty the NTP servers
list, reset the iLO and resubmit your query.
{% /admonition %}

If the time zone is configured to be managed by DHCP, iLO responds
with `HTTP 400` and `SNTPConfigurationManagedByDHCPAndIsReadOnly`.
