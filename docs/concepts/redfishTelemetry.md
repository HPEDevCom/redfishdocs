---
markdown:
  toc:
    hide: true
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
seo:
  title: The Redfish telemetry service
---

## The Redfish® telemetry service

As per the DMTF
<a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP2051_1.0.1.pdf" target="_blank">Redfish telemetry whitepaper</a>,
the standard telemetry service allows clients to:

- _Obtain the characteristics and details of a metric (metadata)._
- _Specify metric reports that periodically report a set of metrics
  (aggregation)._
- _Specify trigger thresholds against a metric that is monitored (monitoring)._

{% admonition type="info" name="NOTE" %}
As this service is dependent of the computer chipset (Intel, AMD, ARM...)
it may not be present in all types of servers.
{% /admonition %}

When implemented, the telemetry entry point
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#telemetryservice") %} URI {% /link-internal %}
is `/redfish/v1/TelemetryService`.

Metric reports can be stored locally, sent remotely or both.

## Subscribing for metric reports

Metric reports can be sent remotely toward an event listener after an
[event subscription](/docs/concepts/redfishevents)
with `EventFormatType=MetricReport`.
The following example shows a metric report subscription toward an HPE iLO 6.

  {% tabs %}
{% tab label="Generic subscription request" %}

```text Generic subscription request
POST /redfish/v1/EventService/Subscriptions/
```
  
  {% /tab %}
{% tab label="Body request" %}

```json Body request
{
    "Destination": "https://myeventreciever/eventreceiver",
    "EventFormatType": "MetricReport",
    "MetricReportDefinitions": [
        "/redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtil",
        "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU0Power",
        "/redfish/v1/TelemetryService/MetricReportDefinitions/CPU1Power"
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
  {% /tabs %}
Subscribed metric reports can be sent to the event listener periodically
only when `MetricReportDefinitionType` property of the metric report
definition URI is set to `Periodic`. In the cases of `OnRequest` or `OnChange`
streaming will be stopped. This is defined in the `MetricReportDefinitionType`
property of the metric report definition
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_other_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#telemetryservice") %} URI {% /link-internal %}
for each metric report that is eligible to subscription.

The following example sets the frequency of the `CPUUtil` metric report
of an HPE iLO 6 to 1 day (P1DT), starting on a specific day and GMT time.

  {% tabs %}
 {% tab label="Generic request" %}

 ```json Generic request
PATCH /redfish/v1/TelemetryService/MetricReportDefinitions/CPUUtil/
```
  
  {% /tab %}
{% tab label="Body request" %}

```json Body request
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
Refer to this
[documentation section](/docs/redfishServices/ilos/supplementDocuments/iloTelemetryService.md)
for examples and detail concerning the implementation of the
Redfish® Telemetry service in HPE iLO 5 and iLO 6.
