---
seo:
  title: Getting started
disableLastModified: true
toc:
  enable: true
---

# Getting Started

## Tips for Using the RESTful API

The RESTful API for HPE iLO Amplifier Pack is available on version 1.25 or later.

To access the RESTful API, you need an HTTPS-capable client, such as a web browser with a REST Client plugin extension, or a Desktop REST Client application (such as Postman), or cURL (a popular command line HTTP utility).

## Using RESTful Interface with cURL and Python

The Python Redfish library is a generic Redfish client library developed by DMTF and is available at [https://github.com/DMTF/python-redfish-library](https://github.com/DMTF/python-redfish-library). It's main purpose is to simplify the communication to any RESTful API. REST (Representational State Transfer) is a web based software architectural style consisting of a set of constraints that focus on a system's resource. The Redfish library performs the basic HTTP operations GET, POST, PUT, PATCH and DELETE on resources using the HATEOS (Hypermedia as the Engine of Application State) REST architecture. Most API's allow the clients to manage and interact with a fixed URL and several URIs.

cURL is a command line utility available for many Operating Systems that enables easy access to the RESTful API. cURL is available at [http://curl.haxx.se/](http://curl.haxx.se/). Note that all the cURL examples will use a flag `-insecure`. This causes cURL to bypass validation of the HTTPS certificate. In actual usage, iLO Amplifier Pack should be configured to use a user-supplied certificate and this option is not necessary. Notice also that we use the `-L` option to force cURL to follow HTTP redirect responses. If iLO Amplifier Pack changes URI locations for various items, it can indicate to the client where the new location is and automatically follow the new link.

## Example REST API operation with cURL and Python

Let's perform our first GET operation using the RESTful API. We will do an HTTP GET on the iLO Amplifier Pack HTTPS port 443. Your client should be prepared to handle the HTTPS certificate challenge. The interface is not available over open HTTP (port 80), so you must use HTTPS.

Our GET operation will be against a resource at `/redfish/v1/` (with a trailing slash):

It is best to perform this initial GET with a tool like CURL or the Postman REST Client tool. Later you will want to do this with your own scripting code. The options used with the cURL command are:

* `-i` returns HTTP response headers
* `--insecure` bypasses TLS/SSL certification verification
* `-L` follows HTTP redirect

It's also useful to see the HTTP header information exchanged using a browser or REST Client tool.

In JSON, there is no strong ordering of property names, so iLO Amplifier Pack may return JSON properties in any order. Likewise, iLO Amplifier Pack cannot assume the order of properties in any submitted JSON. This is why the best scripting data structure for a RESTful client is a dictionary: a simple set of unordered key/value pairs. This lack of ordering is also the reason you see embedded structure within objects (objects within objects). This allows us to keep related data together that is more logically organized, aesthetically pleasing to view, and helps avoid property name conflicts or ridiculously long property names. It also allows us to use identical blocks of JSON in many places in the data model, like `Status`.

```shell cURL
$ curl https://{iLOAmpServer}/redfish/v1/ -i --insecure -L
```

```python Python
# Perform GET operation against a resource at /redfish/v1
import sys
import redfish

# Specify the remote iLO Amp address
login_host = "https://{iLOAmpServer}"

# Create a REDFISH object
REDFISH_OBJ = redfish.redfish_client(base_url=login_host)

# Do a GET on service root resource
response = REDFISH_OBJ.get("/redfish/v1")

# Print out the response
sys.stdout.write("%s\n" % response)
```

```http Response headers
HTTP/1.1 200 OK
Date: Tue, 17 Apr 2018 05:33:52 GMT
Server: Apache
Allow: GET, HEAD
OData-Version: 4.0
Link: </json/schema/ServiceRoot.json>; rel=describedby
ETag: W/"4A1C99B7"
Content-Length: 1254
X-Frame-Options: sameorigin
Set-Cookie: HttpOnly;Secure
Content-Type: application/json
```

```json JSON response
{
    "@odata.context": "/redfish/v1/$metadata#ServiceRoot.ServiceRoot",
    "@odata.etag": "W/\"4A1C99B7\"",
    "@odata.id": "/redfish/v1",
    "@odata.type": "#ServiceRoot.v1_1_1.ServiceRoot",
    "AccountService": {
        "@odata.id": "/redfish/v1/AccountService"
    },
    "Chassis": {
        "@odata.id": "/redfish/v1/Chassis"
    },
    "Id": "v1",
    "JsonSchemas": {
        "@odata.id": "/redfish/v1/Schemas"
    },
    "Links": {
        "Sessions": {
            "@odata.id": "/redfish/v1/SessionService/Sessions"
        }
    },
    "Managers": {
        "@odata.id": "/redfish/v1/Managers"
    },
    "Name": "HPE RESTful Root Service",
    "Oem": {
        "Hpe": {
            "@odata.etag": "W/\"8D7A95D7\"",
            "@odata.type": "#HpeWfmServiceExt.v1_1_0.HpeWfmServiceExt",
            "Links": {
                "AggregatorService": {
                    "@odata.id": "/redfish/v1/AggregatorService"
                }
            },
            "Manager": [
                {
                    "ManagerFirmwareVersion": "1.25",
                    "ManagerFirmwareVersionPass": "8",
                    "Model": "iLO Amplifier Pack"
                }
            ],
            "Sessions": {
                "LoginHint": {
                    "Hint": "POST to /SessionService/Sessions to login using the following JSON object:",
                    "HintPOSTData": {
                        "Password": "password",
                        "UserName": "username"
                    }
                }
            }
        }
    },
    "RedfishVersion": "1.0.1",
    "Registries": {
        "@odata.id": "/redfish/v1/Registries"
    },
    "SessionService": {
        "@odata.id": "/redfish/v1/SessionService"
    },
    "Systems": {
        "@odata.id": "/redfish/v1/Systems"
    },
    "Tasks": {
        "@odata.id": "/redfish/v1/TaskService"
    },
    "UUID": "00000000-0000-6e2d-e5a8-000000000000"
}
```

## HTTP Resource Operations

Operation | HTTP Command | Description
-------------- | -------------- | --------------
Create | POST resource URI (payload = resource data) | Creates a new resource or invokes a custom action. A synchronous POST returns the newly created resource.
Read | GET resource URI | Returns the requested resource representation.
Update | PATCH or PUT resource URI (payload = update data) | Updates an existing resource. You can only PATCH properties that are marked readonly = false in the schema.
Delete | DELETE resource URI | Deletes the specified resource.

## HTTP Status Return Codes

Return Status | Description
-------------- | --------------
2xx | Successful operation.
308 | The resource has moved
400 | Bad Request -- Request is invalid.
401 | Unauthorized -- Provided credentials are incorrect or is not authorized to perform the operation.
403 | Forbidden -- The request is hidden for administrators only.
404 | Not Found -- The specified request or URI could not be found.
405 | Method Not Allowed -- The requested method is not allowed.
406 | Not Acceptable -- The requested format is not correct.
410 | Gone -- The requested URI has been removed.
429 | Too Many Requests -- Too many requests to the server! Slow down!
500 | Internal Server Error -- A problem occurred within the server. Try again later.
503 | Service Unavailable -- Temporarily offline for maintenance. Please try again later.

:::info NOTE
If an error indicated by a return code 4xx or 5xx occurs, an ExtendedError or ExtendedInfo JSON response is returned. The expected resource is not returned.
:::
