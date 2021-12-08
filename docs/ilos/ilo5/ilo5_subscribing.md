---
seo:
  title: RESTful Events and the Event Service
toc:
  enable: true
  maxDepth: 2
disableLastModified: true
---

# RESTful Events and the Event Service

iLO 5 features an event subscription service that enables you to
subscribe to receive notifications when the REST data changes or when certain alerts occur.
These notifications are in the form of HTTPS POST operations to a URI of your choice.

The event service is located in the data model at `/redfish/v1/EventService.`. This resource includes
a link to a collection of subscriptions called `Subscriptions` located at
`/redfish/v1/EventService/Subscriptions`.

## Subscribing for Events examples

In order to receive events, you must provide an HTTPS server with access to iLO’s network with
an URI you designate as the target for iLO-initiated HTTPS POST operations.

Construct a JSON object conforming to the type `EventDestination` (see example) and
POST this to the collection indicated by the `Subscriptions` link at
`/redfish/v1/EventService/Subscriptions.` If you receive an HTTP 201 Created
response, a new subscription has been added. Note that iLO does not test the destination URI
during this phase, so if the indicated URI is not valid, this will not be flagged until events are
emitted and the connection to the destination fails.

```test POST request
POST https://{{iLO}}/redfish/v1/EventService/Subscriptions/
```

```json POST Body
{
    "Destination": "https://myeventreciever/eventreceiver",
    "EventTypes": [
        "ResourceAdded",
        "ResourceRemoved",
        "ResourceUpdated",
        "StatusChange",
        "Alert"
    ],
    "HttpHeaders": {
        "Header": "HeaderValue"
    },
    "TTLCount": 1440,
    "TTLUnits": "minutes",
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

Much of the above content depends entirely upon your needs and setup:

* `Destination` must be an HTTPS URI accessible to iLO’s network.
* `EventTypes` in the example is everything but you could remove types from the array.
* `HttpHeaders` gives you an opportunity to specify any arbitrary HTTP headers you need
for the event POST operation. Note that the subscription is readable via GET to an authorized
iLO user.
* `Context` may be any string.

Consult the `EventDestination` schema for more details on each property. The subscription
will automatically expire after the TTL information specified and must be renewed.
