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
  title: iLO Event services
---

# iLO Event services

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

However, the generic flow for subscribing, receiving, and interpreting
events is the same as the newer versions of the standard. Refer to the
[Redfish® Event Service](/docs/concepts/redfishEvents.md)
section for more information.

The following example creates an event subscription in an HPE iLO 5
based server. As the `Alert` event type is part of the body request,
the event listener will receive
[Alert Event Log](/docs/redfishservices/ilos/supplementdocuments/logservices/#alert-event-log)
messages asynchronously.

  {% tabs %}
{% tab label="Generic request" %}

```text Generic request
POST /redfish/v1/EventService/Subscriptions/

```
  
  {% /tab %}
{% tab label="Body request" %}

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
  
  {% /tab %}
{% tab label="Body response" %}

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
  
  {% /tab %}
{% tab label="Subscription details" %}

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
  
  {% /tab %}
  {% /tabs %}
{% admonition type="success" name="TIP" %}
Refer to the [Telemetry Service](../ilotelemetryservice) for examples
explaining how to receive periodical metric report events.
{% /admonition %}

## HPE iLO 6 Event service

HPE iLO 6 implements a version of the Redfish Event Service that is
newer than version 1.3. As such, events are based on the
`RegistryPrefixes` property described in the
[Redfish Event Service](/docs/concepts/redfishevents/) section.
Refer to this generic section for the numerous standard examples.

Refer to the [Telemetry Service](/docs/concepts/redfishTelemetry.md)
for example, explaining how to to receive periodical metric reports.

<!-- As EventTypes is deprecated in iLO 6, it would be nice to have an
example showing how to subscribe to Alert Event Logs. It is not possible
to subscribe to Alerts anymore with iLO 6-->

## Syslog subscription

You can create Syslog subscriptions under `/redfish/v1/EventService/Subscriptions/`
using `Syslog` subscription type and `SyslogTLS` or `SyslogUDP` protocols. HPE iLO
sends iLO logs over a secure TCP connection to the subscribed entity. The setup must
have an authenticated TCP session between the Syslog server and the Syslog client.
The packets must be encrypted and sent over a TCP session. The Syslog
server (receiving entity) decrypts the payload and renders the logs to HPE iLO
(Syslog client).

{% admonition type="info" name="Note" %}
  The Syslog Subscription feature is available from HPE iLO 6 version 1.68.
{% /admonition %}

### Prerequisites to create Syslog subscriptions

- `SubscriptionType` and `Protocol` properties.
    {% admonition type="info" name="Note" %}
    If you do not add the above properties to the Payload, HPE iLO considers
    those subscriptions as Redfish event subscriptions.
    {% /admonition %}
- Import Certificate Authority (CA) certificate. HPE iLO uses the CA certificate
    to authenticate the remote syslog server (destination). To import a CA certificate
    in HPE iLO, perform a `POST` operation like in the following example or use the
    iLO rest `certificate import --ca_cert`
    [command](https://servermanagementportal.ext.hpe.com/docs/redfishclients/ilorest-userguide/ilocommands/#examples-2):
  
  {% tabs %}
    {% tab label="POST request" %}

    ```text POST request
    POST /redfish/v1/eventservice/actions/oem/Hpe/Hpeeventservice.importCAcertificate/
    ```
  
  {% /tab %}
    {% tab label="Payload request" %}

    ```json Payload request
    {
        "SubscriptionType":"Syslog",
        "Certificate":"-----BEGIN CERTIFICATE-----\nMIIEIzCCAwugAwIBAgIBFTANBgkqhkiG9w0BAQsFADCBvTELMAkGA1UEBhMCRlIx\nIzAhBgNVBAgMGlByb3ZlbmNlLUFscGVzLUNvdGUgZCdBenVyMRkwFwYDVQQHDBBT\nb3BobWEtQW50bXBvbGlzMQwwCgYDVQQKDANIUEUxEDAOBgNVBAsMB0NvbXB1dGUx\nJzAlBgNVBAMMHnRveWJveC5ldGMuZnIuY29tbS5ocGVjb3JwLm5ldDElMCMGCSqG\nSIb3DQEJARYWZnJhbmNvbXMuZG9uemVAbHBlLmNvbTAeFw0yMjA5MTQxNzI3MTJb\nFw0zMjA5MTExNzI3MTJbMIGWMQswCQYDVQQGEwJGUjEjMCEGA1UECAwbUHJvdmVu\nY2UtQWxwZXMtQ290ZSBkJ0F6dXIxGTAXBgNVBAcMEFNvcGhpYS1BbnRpcG9sbXMx\nDDAKBgNVBAoMA0hQRTEQMA4GA1UECwwHQ29tcHV0ZTEnMCUGA1UEAwwedG95Ym94\nLmV0Yy5mci5jb21tLmhwZWNvcnAubmV0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8A\nMIIBCgKCAQEAwOyJ07+FBKNHp1CB7QodkAMxfnIhqjL/oxyKXb60XbBVOb3r967k\nlXu8CDhdcj4RRfQcgbhy0q0Dnq1QBdqmGjjk6O7sOVhbTdm7jDShWkV7PcQcrYvz\ns1FNHO2zNgwRl5yqOd2uCYi3CXOi599gFhMNbblCeh6Ff03CxgBZoJBVgPYdmTSF\nOenpFng/uwbXtRUVYpbImPJfLs5oux4QxZXun71Gsf+bS1SgW1Vz9Fjye4tg/5sO\nvGjLSPMFCsiWFbononV6XY6wXKg5t3PZrcnEWDDLu17MwNZT+07d+sJddL71dGzC\nQIqcpDBERKXZpUpzxtAq6HLiplmqU2cBYwIDAQABo1MwUTAJBgNVHRMEAjAAMAsG\nA1UdDwQEAwIF4DA3BgNVHREEMDAugh50b3lib3guZXRjLmZyLmNvbW0ubHBlY29y\ncC5uZXSCBnRveWJveIcECuRLDTANBgkqhkiG9w0BAQsFAAOCAQEAwILPk2Ghy45W\nEeEC5WVCi0B2w7k89KRqe9Lx9peQTgm194lB3BqG6RJQObxbrK54GBA617ebJsOl\n/eeJo+Y2W9Q/bHLwmGYdKlMiDV+3N6jQh8dZDL1RjRMKmKkQEALx+JLVO9uuFQku\n6x4M+nQMU6bQ+irtpjDFCichvqHXAjTvn0foe1SePfCUThozCox+J1toPbmKOTCb\n5no43lgAB5VRLyUKrpKbZYf/o+bNcOhVDh8m6QEnQ47ruLXf8U8EbhppiFKsWymZ\nZWmO+qMczMwme1JPQTGt5AFDC84T6EpD4krYI9kzuyINfj60ZOzb7GE806ZO5mGi\nkSH4nvx8CQ==\n-----END CERTIFICATE-----\n"
    }
    ```
  
  {% /tab %}
  {% /tabs %}
- You can use the methods presented in this
  [section](https://servermanagementportal.ext.hpe.com/docs/redfishservices/ilos/supplementdocuments/securityservice/#importing-a-signed-certificate-into-ilo)
  to format the CA certificate properly.

{% admonition type="info" name="Note" %}
If you do not add the `SubscriptionType` property to the Payload, HPE iLO
doesn't consider the certificate for the syslog subscriptions.
{% /admonition %}

### Example to create Syslog subscription

  {% tabs %}
{% tab label="POST request" %}

```text POST request
POST /redfish/v1/eventservice/subscriptions/
```
  
  {% /tab %}
{% tab label="Payload" %}

```json Payload
    {
        "Context":"MySubscription",
        "Destination":"syslog://16.242.171.221:443/EventReceiver25",
        "SubscriptionType":"Syslog",
        "Protocol":"SyslogTLS"
    }
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="Note" %}
In the payload if you do not provide a `SubscriptionType` or if you set
it with any value other than the `Syslog`, HPE iLO does not consider the
payload for the Syslog subscriptions.
{% /admonition %}

### Example to list Syslog subscriptions

The following example lists the members of the Event Service collection,
containing both Redfish events, with an integer ID, and Syslog subscriptions
noted as `SyslogID`. The following example retrieves the properties of a
Syslog subscription, introduced in the HPE iLO 6 version 1.68. It includes
the `SyslogFilters[]` array with the `LogFacilities` and `LowestSeverity`
properties.

  {% tabs %}
{% tab label="GET request" %}

```text GET request
GET /redfish/v1/eventservice/subscriptions
```
  
  {% /tab %}
{% tab label="Body response" %}

```json Body response
    {
        "@odata.context": "/redfish/v1/$metadata#EventDestinationCollection.EventDestinationCollection",
        "@odata.etag": "W/\"D5EC731D\"",
        "@odata.id": "/redfish/v1/EventService/Subscriptions/",
        "@odata.type": "#EventDestinationCollection.EventDestinationCollection",
        "Description": "iLO User Event Subscriptions",
        "Name": "EventSubscriptions",
        "Members":[
                    {
                    "@odata.id": "/redfish/v1/EventService/Subscriptions/2/"
                    },
                    {
                    "@odata.id": "/redfish/v1/EventService/Subscriptions/Syslog1/"
                    },
                    {
                    "@odata.id": "/redfish/v1/EventService/Subscriptions/Syslog2/"
                    },
                    {
                    "@odata.id": "/redfish/v1/EventService/Subscriptions/Syslog3/"
                    },
                    {
                    "@odata.id": "/redfish/v1/EventService/Subscriptions/Syslog4/"
                    },
                    {
                    "@odata.id": "/redfish/v1/EventService/Subscriptions/Syslog5/"
                    }
                ],
            "Members@odata.count": 6
        }
```
  
  {% /tab %}
{% tab label="GET request" %}

```text GET request
GET /redfish/v1/eventservice/subscriptions/syslogID/
```
  
  {% /tab %}
{% tab label="Body response" %}

```json Body response
    {
        "@odata.context": "/redfish/v1/$metadata#EventDestination.EventDestination",
        "@odata.etag": "W/\"74179589\"",
        "@odata.id": "/redfish/v1/EventService/Subscriptions/Syslog1/",
        "@odata.type": "#EventDestination.v1_14_0.EventDestination",
        "Id": "Syslog1",
        "Context": "MySubscription",
        "Description": "Syslog Subscription",
        "Destination": "syslog://16.242.171.221:443",
        "Name": "Syslog Subscription",
        "Protocol": "SyslogTLS",
        "SubscriptionType": "Syslog",
        "SyslogFilters":[
                {
                    "LogFacilities":[],
                    "LowestSeverity": "Emergency"
                }
            ]
    }
```
  
  {% /tab %}
{% /tabs %}

### Example to modify a Syslog subscription

  {% tabs %}
{% tab label="PATCH request" %}

```text PATCH request
PATCH /redfish/v1/eventservice/subscriptions/syslogID/
```
  
  {% /tab %}
{% tab label="Payload" %}

```json Payload
    {
        "Context":"MySubscription",
        "Destination":"syslog://16.242.171.221:443",
        "Protocol":"SyslogTLS"
    }
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="Note" %}
You cannot perform `PATCH` operation on the `SubscriptionType` property.
{% /admonition %}

### Example to list CA certificates

The following example retrieves the members of the imported CA certificates,
including the CA certificate used for the Syslog subscription. The
last example retrieves the properties of a specific member. For more
information on certificates, refer to the
[HPE Security Service](https://servermanagementportal.ext.hpe.com/docs/redfishservices/ilos/supplementdocuments/securityservice/#hpe-security-service).

  {% tabs %}
{% tab label="GET request" %}

```text GET request
GET /redfish/v1/eventservice/CAcertificates/
```
  
  {% /tab %}
{% tab label="Body response" %}

```json Body response
    {
        "@odata.context": "/redfish/v1/$metadata#HpeCertificateCollection.HpeCertificateCollection",
        "@odata.etag": "W/\"AA6D42B0\"",
        "@odata.id": "/redfish/v1/EventService/CACertificates/",
        "@odata.type": "#HpeCertificateCollection.HpeCertificateCollection",
        "Description": "Trusted CA Certificates for REST Event Mutual Authentication",
        "Name": "REST CA Certificates",
        "Members":[
            {
                "@odata.id": "/redfish/v1/EventService/CACertificates/4/"
            }
        ],
        "Members@odata.count": 1
    }
```
  
  {% /tab %}
{% tab label="GET request" %}

```text GET request
GET /redfish/v1/eventservice/CAcertificates/cacertId
```
  
  {% /tab %}
{% tab label="Body response" %}

```json Body response
    {
        "@odata.context": "/redfish/v1/$metadata#HpeCertificate.HpeCertificate",
        "@odata.etag": "W/\"9C84861E\"",
        "@odata.type": "#HpeCertificate.v1_0_0.HpeCertificate",
        "Issuer": "/C=IN/ST=Karnataka/L=Bangalore/O=HPE/OU=CSFE",
        "SerialNumber": "3E9D7F22187E69C25A55A5EBC4B1F448DEE9D794",
        "Subject": "/C=IN/ST=Karnataka/L=Bangalore/O=HPE/OU=CSFE",
        "ValidNotAfter": "1970-01-01T00:00:00Z",
        "ValidNotBefore": "1970-01-01T00:00:00Z"
    }
```
  
  {% /tab %}
  {% /tabs %}
