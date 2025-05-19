---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: true
seo:
  title: iLO Telemetry service
---

## HPE iLO Telemetry service

This section provides detail and examples specific to HPE iLO 5
and iLO 6 based servers. A generic presentation of the Redfish Telemetry
service is presented in the
[concepts section](/docs/concepts/redfishtelemetry) of this documentation.

{% admonition type="info" name="NOTE" %}

- HPE ilO 5 and iLO 6 implements the Redfish Telemetry service on **Intel**
    based servers **only**. AMD (Gen10, Gen11), and ARM Gen11 servers don't
    provide this service.
- Upgrading the iLO firmware to iLO 5 2.96/iLO 6 1.51 and above
    retains the subscriptions created prior to the upgrade.

{% /admonition %}

{% admonition type="warning" name="Warning" %}

- Downgrading the iLO firmware from iLO 5 2.96/iLO 6 1.51 deletes
    existing subscriptions.
- The retry mechanism for metric report streaming is the same as
    for Events in case of any network issues or connection issue. All metric
    reports will be retried again after `DeliveryRetryIntervalInSeconds`
    duration for `DeliveryRetryAttempts` times.
- During a connection issue when creating a subscription for eligible
    metrics while setting the frequency to stream every ten minutes, the
    queue will be full within an hour and all metric reports will be lost
    after that. Once the connection is re-established, the metric reports
    will be streamed back without sending the previous reports.
- During a connection issue when creating a subscription for eligible metrics
    while setting the frequency to stream every hour, the queue will be full
    after sixteen hours and the metric reports will be lost after that. Once
    the connection is re-established, the metric reports will be streamed back
    without sending the previous reports.

{% /admonition %}

## Metric report subscription

Metric reports eligible for subscription are the ones listed under the Metric
Report Definition Collection
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#metricreportdefinitioncollection") %} URI {% /link-internal %}
**and not** containing string **"Custom"** in their URI.
The following list corresponds to the eligible metrics of
iLO 5 2.96 and iLO 6 1.51.

`/redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtil/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/MemoryBusUtil/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/IOBusUtil/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/CPUICUtil/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/JitterCount/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/PowerMetrics/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU0Freq/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/CPU0Power/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU1Freq/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/CPU1Power/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU2Freq/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/CPU2Power/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU3Freq/`
`/redfish/v1/TelemetryService/MetricReportDefinitions/CPU3Power/`

The metric report subscription process is identical to an
[event subscription](/docs/concepts/redfishevents/#event-subscription)
with a POST request toward `/redfish/v1/EventService/Subscriptions/`.

The metric reports that you want to subscribe to, has to be listed in the
`MetricReportDefinitions` array for both iLO 5 and iLO 6. By default metric
reports are sent every hour to the event listener.

### Subscribing to iLO 5 metric reports

The body request to subscribe for Metric Reports of an HPE iLO 5 must
contain `MetricReport` in the `EventTypes` array property.

  {% tabs %}
{% tab label="iLO 5 Subscription request body" %}

```json iLO 5 Subscription request body
{
    "Destination": "https://myeventreciever/eventreceiver",
    "EventTypes": [
        "ResourceAdded",
        "ResourceRemoved",
        "ResourceUpdated",
        "StatusChange",
        "MetricReport",
        "Alert"
    ],
    "MetricReportDefinitions": [
        "/redfish/v1/Telemetryservice/MetricReportDefinitions/CPUUtil",
        "/redfish/v1/Telemetryservice/MetricReportDefinitions/CPU0Power",
        "/redfish/v1/Telemetryservice/MetricReportDefinitions/CPU1Power"
    ],
    "HttpHeaders": {
        "Header1": "HeaderValue1"
    },
    "Context": "context string",
    "Oem": {
        "Hpe": {
            "DeliveryRetryIntervalInSeconds": 30,
            "RequestedMaxEventsToQueue": 20,
            "DeliveryRetryAttempts": 5,
            "RetireOldEventInMinutes": 10
        }
    }
}
```
  
  {% /tab %}
{% tab label="iLO 5 Subscription detail" %}

```json iLO 5 Subscription detail
{
    "@odata.context": "/redfish/v1/$metadata#EventDestination.EventDestination",
    "@odata.etag": "W/"026C17EE"",
    "@odata.id": "/redfish/v1/EventService/Subscriptions/9",
    "@odata.type": "#EventDestination.v1_13_0.EventDestination",
    "Id": "9",
    "Context": "Public",
    "Description": "iLO Event Subscription",
    "Destination": "https://10.242.174.123:442/EventReceiver9",
    "EventTypes": [
        "ResourceUpdated",
        "ResourceAdded",
        "ResourceRemoved",
        "Alert",
        "MetricReport",
        "StatusChange"
    ],
    "HttpHeaders": [],
    "MetricReportDefinitions": [
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtil"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/MemoryBusUtil"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/IOBusUtil"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPUICUtil"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/JitterCount"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU0Freq"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU0Power"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU1Freq"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU1Power"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU2Freq"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU2Power"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU3Freq"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU3Power"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/PowerMetrics"
        }
    ],
    "Name": "Event Subscription",
    "Oem": {
        "Hpe": {
        "@odata.context": "/redfish/v1/$metadata#HpeEventDestination.HpeEventDestination",
        "@odata.type": "#HpeEventDestination.v2_1_0.HpeEventDestination",
        "DeliveryRetryAttempts": 300,
        "DeliveryRetryIntervalInSeconds": 600,
        "MutualAuthenticationEnabled": false,
        "RequestedMaxEventsToQueue": 3,
        "RetireOldEventInMinutes": 10
        }
    },
    "Protocol": "Redfish",
    "SubscriptionType": "RedfishEvent"
}
```
  
  {% /tab %}
  {% /tabs %}
### Subscribing to iLO 6 metric reports

The body request to subscribe for Metric Reports of an HPE iLO 6 must
contain `MetricReport` in the `EventFormatType` property.

  {% tabs %}
{% tab label="iLO 6 Subscription request body" %}

```json iLO 6 Subscription request body
{
    "Destination": "https://myeventreciever/eventreceiver",
    "EventFormatType": "MetricReport",
    "MetricReportDefinitions": [
        "/redfish/v1/Telemetryservice/MetricReportDefinitions/CPUUtil",
        "/redfish/v1/Telemetryservice/MetricReportDefinitions/CPU0Power",
        "/redfish/v1/Telemetryservice/MetricReportDefinitions/CPU1Power"
    ],
    "HttpHeaders": {
        "Header": "HeaderValue"
    },
    "Context": "context string",
    "Oem": {
        "Hpe": {
            "DeliveryRetryIntervalInSeconds": 30,
            "RequestedMaxEventsToQueue": 20,
            "DeliveryRetryAttempts": 5,
            "RetireOldEventInMinutes": 10
        }
    }
}
```
  
  {% /tab %}
{% tab label="iLO 6 Subscription detail" %}

```json iLO 6 Subscription detail
{
    "@odata.context": "/redfish/v1/$metadata#EventDestination.EventDestination",
    "@odata.etag": "W/"21500F92"",
    "@odata.id": "/redfish/v1/EventService/Subscriptions/4",
    "@odata.type": "#EventDestination.v1_13_0.EventDestination",
    "Id": "4",
    "Context": "Public",
    "Description": "iLO Event Subscription",
    "Destination": "https://16.242.161.71:435/EventReceiver9",
    "EventFormatType": "MetricReport",
    "HttpHeaders": [],
    "MetricReportDefinitions": [
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtil"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/MemoryBusUtil"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/IOBusUtil"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPUICUtil"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/JitterCount"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU0Freq"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU0Power"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU1Freq"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU1Power"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU2Freq"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU2Power"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/AvgCPU3Freq"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU3Power"
        },
        {
            "@odata.id": "/redfish/v1/TelemetryService/MetricReportDefinitions/PowerMetrics"
        }
    ],
    "Name": "Event Subscription",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeEventDestination.HpeEventDestination",
            "@odata.type": "#HpeEventDestination.v2_1_0.HpeEventDestination",
            "DeliveryRetryAttempts": 100,
            "DeliveryRetryIntervalInSeconds": 300,
            "MutualAuthenticationEnabled": false,
            "RequestedMaxEventsToQueue": 3,
            "RetireOldEventInMinutes": 10
            }
        },
    "Protocol": "Redfish",
    "RegistryPrefixes": [],
    "SubscriptionType": "RedfishEvent"
}

```
  
  {% /tab %}
  {% /tabs %}
## Metric report definitions

The streaming frequency of each metric report, is decided by the
configurations in the corresponding
`/redfish/v1/TelemetryService/MetricReportDefinitions/{item}` URI.

The following example specifies that metric report `CPUUtil` has to
be sent once a day, starting on the first of June 2023
at one o'clock GMT.

  {% tabs %}
{% tab label="PATCH event" %}

```json PATCH event
PATCH /redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtil/
```
  
  {% /tab %}
{% tab label="PATCH Payload" %}

```json PATCH Payload
{
    "MetricReportDefinitionType": "Periodic",
    "Schedule": {
    "RecurrenceInterval": "P1DT",
    "InitialStartTime": "2023-06-01T01:00:00Z"
    }
}
```
  
  {% /tab %}
  {% /tabs %}
`MetricReportDefinitionType` is set as `Periodic` when streaming is enabled.
You can stop streaming specific metric reports either by not subscribing to
it during the creation of the subscription or by configuring the
`MetricReportDefinitionType` property under `MetricReportDefinition`
for non custom URIs to `OnRequest` or `OnChange`.

`RecurrenceInterval` determines the frequency of streaming. The default
value is set to one hour, indicated by value `PT1H`. You can also
configure other values like `PT10M`, `P1DT`, `P7DT` i.e., every 10 minutes,
every day, or every week respectively. The sample rate for 10 minutes
and every hour data is 20 second, 5 minutes for every day and 30 minutes
for every week’s report.

`InitialStartTime` if configured, determines the date and time for the first
metric report to be streamed. By default, the metric report will be
streamed when the subscription is created.

{% admonition type="info" name="NOTE" %}

- `PATCH` is supported only on these URIs which doesn’t contain the
    "Custom" string. A `PATCH` against a custom `MetricReportDefinitions`
     URI returns an error response.
- The `PowerMetrics` metric report does not allow a `PATCH`
    on `RecurrenceInterval`.

{% /admonition %}
