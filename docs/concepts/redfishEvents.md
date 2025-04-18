---
seo:
  title: The Redfish® Event Service
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

## The Redfish® Event Service

Redfish standardizes an event subscription service that enables monitoring
applications to receive notifications when the REST data changes or when
certain alerts occur. These notifications are HTTPS POST operations sent
to a listener URL of your choice.

The `EventService` resource type is located in the Redfish data model at
`/redfish/v1/EventService/`. This resource includes a link to the collection
of subscriptions referred as `EventDestinationCollection` and located at the
`/redfish/v1/EventService/Subscriptions` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#eventdestinationcollection).

### Event subscription

In order to receive events, you must identify the URL of an HTTPS server
accepting POST requests and accessible to the [BMC](/docs/etc/glossaryterms.md)
management network. Event POST operations generated by the BMC will be sent to
this event listener URL after successful subscription.

:::success TIP
If needed, The DMTF provides a Redfish Event Listener on
<a href="https://github.com/DMTF/Redfish-Event-Listener" target="_blank">GitHub</a>.
:::

To subscribe to an event, you need to construct a JSON object and POST it to
the `EventDestinationCollection` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#eventdestinationcollection)
of the managed BMC. Upon success, you receive an HTTP 201 Created response and
a new subscription has been added in the collection.

:::info NOTE
Most of the BMC Redfish event services (including iLO and OpenBMC) does not
test the event listener destination URL during the subscription phase. It is
your responsibility to verify that the BMC can post HTTPS requests in the
listener destination.
:::

The following example creates an event subscription in an iLO 6,
with the `Destination` and `Context` properties as the only properties part of
the request body. If not provided, the default value for `EventFormatType`
is set to `Event`. Use the `MetricReport` value when subscribing to
[metric reports](/docs/concepts/redfishtelemetry).

```text Generic event subscription request
POST /redfish/v1/EventService/Subscriptions/
```

```json Request body
{
    "Destination": "https://{{EventListener}}/path/to/listener.app",
    "Context": "Some context"
}
```

```json Response body
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

:::info NOTE
If the creation request does not provide any value for the `RegistryPrefixes`
and the `Oem` resources, the Redfish service may fill them up with default
values. This is the case for HPE iLO 6; the previous example does not provide
any detail concerning the subscription but `RegisryPrefixes` and `Oem/Hpe`
objects have been automatically supplied by the service. Refer to the
response body of the following example.
:::

Once the subscription is created, its URI appears in the
`EventDestinationCollection` collection. The following example retrieves the
subscription entry created by the previous example.

```text Generic request
GET /redfish/v1/EventService/Subscriptions/{item}/
```

```json Body Response
{
    "@odata.context": "/redfish/v1/$metadata#EventDestination.EventDestination",
    "@odata.etag": "W/\"F8B2DF36\"",
    "@odata.id": "/redfish/v1/EventService/Subscriptions/2/",
    "@odata.type": "#EventDestination.v1_13_0.EventDestination",
    "Id": "2",
    "Context": "Some context",
    "Description": "iLO Event Subscription",
    "Destination": "https://10.124.107.98/path/to/listener.app",
    "EventFormatType": "Event",
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
    "RegistryPrefixes": [
        "NetworkDevice",
        "StorageDevice",
        "ResourceEvent",
        "iLOEvents",
        "iLOResourceEvents"
    ],
    "SubscriptionType": "RedfishEvent"
}
```

The `RegistryPrefixes` [property](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#registryprefixes-array-1)
is a list of message registry prefixes to subscribe to. They correspond to the
prefix of the [error messages](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_msgregs{{process.env.LATEST_FW_VERSION}}/)
of the form `<RegistryPrefix>.<MajorVersion>.<MinorVersion>.<MessageKey>`.

If you subscribe to the the `StorageDevice` registry prefix, the destination
event listener will receive all the error messages starting with
"[StorageDevice](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_msgregs{{process.env.LATEST_FW_VERSION}}/#storagedevice11batterycharging)".
Refer to the [Event interpretation](#event-interpretation)
paragraph for more information.

The following example retrieves the list of possible RegistryPrefixes
from an HPE iLO 6.

```text Generic GET request
GET /redfish/v1/EventService/?$select=RegistryPrefixes
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest get RegistryPrefixes --json --selector EventService.
ilorest logout
```

```json Body response
{
    "@odata.context": "/redfish/v1/$metadata#EventService.EventService",
    "@odata.etag": "W/\"3015330F\"",
    "@odata.id": "/redfish/v1/EventService/",
    "@odata.type": "#EventService.v1_7_2.EventService",
    "RegistryPrefixes": [
        "iLOEvents",
        "ResourceEvent",
        "NetworkDevice",
        "StorageDevice",
        "iLOResourceEvents"
    ]
}
```

The following example retrieves the list of event subscriptions
from an HPE iLO 6.

```text Generic request
GET /redfish/v1/EventService/Subscriptions/
```

```json Body response
{
    "@odata.context": "/redfish/v1/$metadata#EventDestinationCollection.EventDestinationCollection",
    "@odata.etag": "W/\"AA6D42B0\"",
    "@odata.id": "/redfish/v1/EventService/Subscriptions/",
    "@odata.type": "#EventDestinationCollection.EventDestinationCollection",
    "Description": "iLO User Event Subscriptions",
    "Name": "EventSubscriptions",
    "Members": [
        {
            "@odata.id": "/redfish/v1/EventService/Subscriptions/6/"
        }
    ],
    "Members@odata.count": 1
}
```

The following example shows an event subscription with specific `HttpHeaders`
and `Context`  properties. The `HttpHeaders` property contains a list of HTTP
headers that the Redfish service will use when sending events to the event
listener. This property could be used to perform an authentication in the
event listener.

:::info NOTE
The <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2022.3.pdf" target="_blank">Redfish specification</a>
advises to return an empty `HttpHeaders` array upon GET requests of
subscription details. Refer to the Subscription detail tabulation
of the following example.
:::

The `Context` property is a string that will be part of the event sent to the
listener. With this information the listener could dispatch the event to a
specific service able to act accordingly.

```text Generic request
POST /redfish/v1/EventService/Subscriptions/
```

```json Subscription request body
{
    "Destination": "https://{{EventListener}}/",
    "Context": "Some context",
    "RegistryPrefixes": [
        "StorageDevice",
        "NetworkDevice",
        "iLOEvents",
        "ResourceEvent"
    ],
    "HttpHeaders":{
        "Header1": "HeaderValue1",
        "Header2": "HeaderValue2"
    }
}
```

```json Subscription detail
{
    "@odata.context": "/redfish/v1/$metadata#EventDestination.EventDestination",
    "@odata.etag": "W/\"71734713\"",
    "@odata.id": "/redfish/v1/EventService/Subscriptions/3/",
    "@odata.type": "#EventDestination.v1_13_0.EventDestination",
    "Id": "3",
    "Context": "Some context",
    "Description": "iLO Event Subscription",
    "Destination": "https://192.168.1.46/",
    "EventFormatType": "Event",
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
    "RegistryPrefixes": [
        "StorageDevice",
        "NetworkDevice",
        "iLOEvents",
        "ResourceEvent"
    ],
    "SubscriptionType": "RedfishEvent"
}
```

:::success TIP
More event examples are presented in the HPE
[iLO specific supplement documents](/docs/redfishservices/ilos/supplementdocuments/iloeventservices/).
:::

## Testing the Event service

The Redfish Event Service offers the possibility to trigger test events
from managed BMCs. The following test event,
with `MessageId` containing `iLOResourceEvents`, will be forwarded to
all the subscription destinations having `iLOResourceEvents`
in its `RegistryPrefixes` list. Refer to the
[next paragraph](#event-interpretation) for the interpretation of this event.

```text Generirc POST test event
POST /redfish/v1/EventService/Actions/EventService.SubmitTestEvent
```

```json Test event body
{
  "EventID": "myEventId",
  "EventTimestamp": "2023-02-13T14:49:20Z",
  "Severity": "Warning",
  "Message": "This is a test event message",
  "MessageId": "iLOResourceEvents.1.3.DrvArrLogDrvErasing",
  "MessageArgs": [ "1", "slot 3" ],
  "OriginOfCondition": "/redfish/v1/Systems/1/Storage"
}
```

```json Response body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.12.Success"
            }
        ]
    }
}
```

## Event interpretation

When an event occurs in a server, a `MessageId` property is associated to it.
Its value is a message reference
(i.e. `iLOResourceEvents.1.3.DrvArrLogDrvErasing`) described in the
[message registry](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_msgregs{{process.env.LATEST_FW_VERSION}}/#iloresourceevents13drvarrlogdrverasing).
Only event destinations containing the message registry prefix of the
`MessageId` property are notified. Upon reception, they can consult the related
message registry file to get more detail and optionally resolution actions.

:::success TIP
Registry file [URIs](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#messageregistryfilecollection)
are listed in the `MessageRegistryFileCollection` collection at
`/redfish/v1/Registries`.
:::

Upon reception of an event, the event listener can use the prefix of the
`MessageId` property to retrieve the URI of the corresponding message registry
URI. In the test event example above, the message registry prefix contained in
the `MessageId` property is `iLOResourceEvents`. A GET of
`/redfish/v1/registries/iLOResourceEvents` leads to
`/redfish/v1/RegistryStore/registries/en/iLOResourceEvents.json`.
A GET of this URI retrieves the entire message registry. This file contains
an entry for the `DrvArrLogDrvErasing` [error message](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_msgregs{{process.env.LATEST_FW_VERSION}}/#iloresourceevents13drvarrlogdrverasing).

Refer to the [Error responses](/docs/concepts/errorresponses/)
section for more information on this subject.

<!-- A sub-paragraph explaining how to interpret and use the
`OriginOfCondition` property would be great -->
