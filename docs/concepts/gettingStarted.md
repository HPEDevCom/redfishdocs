---
seo:
  title: Getting started
toc:
  enable: true
  maxDepth: 2
disableLastModified: true
---


# Getting started

## Tips for Using the Redfish RESTful API

To access the Redfish RESTful API, you need an HTTPS-capable client, such the <a href="https://www.postman.com/" target="_blank"> Postman</a> development platform, cURL (a popular command line HTTP utility), PowerShell or a web browser with a REST client extension. This <a href="https://youtu.be/ur9UKRV_0S8" target="_blank"> video </a> presents several Redfish clients tools, including script languages like Ansible.

## RESTful Interface Tool and Python Examples

Although not a requirement, you can use iLOrest, a **RESTful Interface Tool** with the RESTful API. This command line tool provides a level of abstraction and convenience above direct access to the RESTful API. For details see: <a href="http://www.hpe.com/info/resttool" target="_blank"> this link </a>.

Also, Hewlett Packard Enterprise published example Python code that implements a number of common operations in a RESTful API client. This code can be downloaded at <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> https://github.com/HewlettPackard/python-ilorest-library </a>.

## Example REST API operation with cURL

```shell cURL
curl --include --insecure --locaion \
     https://{iLO}/redfish/v1/ 

where

    --include returns HTTP response headers
    --insecure bypasses TLS/SSL certification verification
    --location follows HTTP redirect
```

```json Response body (truncated)

{
    "@odata.context": "/redfish/v1/$metadata#ServiceRoot",
    "@odata.etag": "W/\"B869D8CC\"",
    "@odata.id": "/redfish/v1/",
    "@odata.type": "#ServiceRoot.v1_1_0.ServiceRoot",
    "AccountService": {
        "@odata.id": "/redfish/v1/AccountService/"
    },
    "Chassis": {
        "@odata.id": "/redfish/v1/Chassis/"
    },
    "EventService": {
        "@odata.id": "/redfish/v1/EventService/"
    },
    "Id": "v1",
    "JsonSchemas": {
        "@odata.id": "/redfish/v1/Schemas/"
    },
    "Links": {
        "Sessions": {
            "@odata.id": "/redfish/v1/SessionService/Sessions/"
        }
    },
    "Managers": {
        "@odata.id": "/redfish/v1/Managers/"
    },
    "Name": "HPE RESTful Root Service",
    "Oem": {
        "Hpe": {
            "@odata.type": "#HpeiLOServiceExt.v2_0_0.HpeiLOServiceExt",
            "Links": {
                "ResourceDirectory": {
                    "@odata.id": "/redfish/v1/ResourceDirectory/"
                }
            },
            "Manager": [
                {
                    "DefaultLanguage": "en",
                    "FQDN": "edited",
                    "HostName": "ILO",
                    "Languages": [
                        {
                            "Language": "en",
                            "TranslationName": "English",
                            "Version": "1.10"
                        }
                    ],
                    "ManagerFirmwareVersion": "1.10",
                    "ManagerType": "iLO 5"
                }
            ],
            ...
            ...

    },
    "RedfishVersion": "1.0.0",
    "Registries": {
        "@odata.id": "/redfish/v1/Registries/"
    },
    "SessionService": {
        "@odata.id": "/redfish/v1/SessionService/"
    },
    "Systems": {
        "@odata.id": "/redfish/v1/Systems/"
    },
    "UUID": "edited",
    "UpdateService": {
        "@odata.id": "/redfish/v1/UpdateService/"
    }
}
```

Let???s perform our first GET operation using the RESTful API. We will do an HTTP GET on the iLO HTTPS port, typically port 443 (although it could be different if you have previously configured iLO to use another port). Your client should be prepared to handle the HTTPS certificate challenge. The interface is not available over open HTTP (port 80), so you must use HTTPS.

Our GET operation will be against a resource at `/redfish/v1/` (with a trailing slash):

It is best to perform this initial GET with a tool like the CURL or the Postman REST Client mentioned above. Later you will want to do this with your own scripting code, but for now it???s useful to see the HTTP header information exchanged using a browser.

CURL is a command line utility available for many Operating Systems that enables easy access to the RESTful API. CURL is available at [http://curl.haxx.se/](http://curl.haxx.se/). Note that all the CURL examples will use a flag ???insecure. This causes CURL to bypass validation of the HTTPS certificate. In real use iLO should be configured to use a user-supplied certificate and this option is not necessary. Notice also that we use the ???L option to force CURL to follow HTTP redirect responses. If iLO changes URI locations for various items, it can indicate to the client where the new location is and automatically follow the new link.

In JSON, there is no strong ordering of property names, so iLO may return JSON properties in any order. Likewise, iLO cannot assume the order of properties in any submitted JSON. This is why the best scripting data structure for a RESTful client is a dictionary: a simple set of unordered key/value pairs. This lack of ordering is also the reason you see embedded structure within objects (objects within objects). This allows us to keep related data together that is more logically organized, aesthetically pleasing to view, and helps avoid property name conflicts or ridiculously long property names. It also allows us to use identical blocks of JSON in many places in the data model, like status.

## HTTP Resource Operations

Operation | HTTP Command | Description
-------------- | -------------- | --------------
Create | POST resource URI (payload = resource data) | Creates a new resource or invokes a custom action. A synchronous POST returns the newly created resource.
Read | GET resource URI | Returns the requested resource representation.
Update | PATCH or PUT resource URI (payload = update data) | Updates an existing resource. You can only PATCH properties that are marked readonly = false in the schema.
Delete | DELETE resource URI | Deletes the specified resource.

## HTTP Status Return Codes

Return Status | Description
-------------- | -------------- | --------------
2xx | Successful operation.
308 | The resource has moved
4xx | Client-side error with message returned
5xx | iLO error with error message returned

:::attention Attention
If an error occurs, indicated by a return code 4xx or 5xx, an ExtendedError or ExtendedInfo JSON response is returned. The expected resource is not returned.
:::
