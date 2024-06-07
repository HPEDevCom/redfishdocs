---
seo:
  title: iLO Event services
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

## iLO Event services

This section is a complement to the generic
[Redfish® Event Service](/docs/concepts/redfishEvents.md)
section. It contains some specificities of its implementation
in HPE iLO 5 and HPE iLO 6 management controllers.

Information concerning iLO events is also present in the
[iLO Telemetry](../ilotelemetryservice) section.

## HPE iLO 5 Event service

HPE iLO 5 implements a version of the Redfish Event Service older than
<a href="http://redfish.dmtf.org/schemas/v1/EventService.v1_3_0.json"
target="_blank">version 1.3</a>.
As such, events are based on the `EventTypes`
[property](https://servermanagementportal.ext.hpe.com/docs/redfishservices/ilos/ilo5/ilo5_295/ilo5_other_resourcedefns295/#eventtypes-array),
not on the `RegistryPrefixes` property.

However, the generic flow for subscribing, receiving and interpreting
events is the same as the newer versions of the standard. Refer to the
[Redfish® Event Service](/docs/concepts/redfishEvents.md)
section for more information.

The following example creates an event subscription in an HPE iLO 5
based server. As the `Alert` event type is part of the body request,
the event listener will receive
[Alert Event Log](/docs/redfishservices/ilos/supplementdocuments/logservices/#alert-event-log)
messages asynchronously.

```text Generic request
POST /redfish/v1/EventService/Subscriptions/

```

```json Body request
{
    "Destination": "https://{{EventListener}}/RedfishEvents/EventReceiver.php",
    "EventTypes": [
        "StatusChange",
        "ResourceUpdated",
        "ResourceAdded",
        "ResourceRemoved",
        "Alert"
    ],
    "Context": "Public"
}
```

```json Body response
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.17.Created"
            }
        ]
    }
}
```

```json Subscription details
{
    "@odata.context": "/redfish/v1/$metadata#EventDestination.EventDestination",
    "@odata.etag": "W/\"29049257\"",
    "@odata.id": "/redfish/v1/EventService/Subscriptions/1/",
    "@odata.type": "#EventDestination.v1_13_0.EventDestination",
    "Id": "1",
    "Context": "Public",
    "Description": "iLO Event Subscription",
    "Destination": "https://192.168.1.46/RedfishEvents/EventReceiver.php",
    "EventTypes": [
        "StatusChange",
        "ResourceUpdated",
        "ResourceAdded",
        "ResourceRemoved",
        "Alert"
    ],
    "HttpHeaders": [],
    "MetricReportDefinitions": [],
    "Name": "Event Subscription",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeEventDestination.HpeEventDestination",
            "@odata.type": "#HpeEventDestination.v2_1_0.HpeEventDestination",
            "DeliveryRetryAttempts": 3,
            "DeliveryRetryIntervalInSeconds": 30,
            "MutualAuthenticationEnabled": false,
            "RequestedMaxEventsToQueue": 3,
            "RetireOldEventInMinutes": 10
        }
    },
    "Protocol": "Redfish",
    "SubscriptionType": "RedfishEvent"
}
```

:::success TIP
Refer to the [Telemetry Service](../ilotelemetryservice) for examples
explaining how to to receive periodically metric report events.
:::

## HPE iLO 6 Event service

HPE iLO 6 implements a version of the Redfish Event Service newer than
version 1.3. As such, events are based on the `RegistryPrefixes` property
described in the [Redfish Event Service](/docs/concepts/redfishevents/)
section. Refer to this generic section for the numerous standard examples.

Refer to the [Telemetry Service](/docs/concepts/redfishTelemetry.md)
for examples explaining how to to receive periodically metric reports.

<!-- As EventTypes is deprecated in iLO 6, it would be nice to have an
example showing how to subscribe to Alert Event Logs. It is not possible
to subscribe to Alerts anymore with iLO 6-->
