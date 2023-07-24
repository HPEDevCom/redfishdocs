---
seo:
  title: Getting started
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Getting started

Hewlett Packard Enterprise implements a Redfish RESTful API service in most of its compute nodes and servers (ProLiant, Synergy compute nodes, Edgeline, Superdome Flex 280....). Concerning HPE iLO based servers, customers can use this service with the iLO Standard license, although some features or data might not be available without an Advanced license. Features and data requiring Advanced license are listed in the <a href="https://www.hpe.com/support/ilo6" target="_blank">HPE iLO User Guide</a>.

Prior to the first Redfish standard publication (August 2015) and the HPE <a href="https://en.wikipedia.org/wiki/Hewlett_Packard_Enterprise" target="_blank">spin-off from HP</a>, iLO based servers were providing a proprietary RESTful interface. Since then, HPE is conformant to the Redfish standard and provides backward compatibilities as well as documentation to minimize the impact of this evolution in programs and scripts. Refer to [Adapting from pre-Redfish and pre-HPE](#adapting-from-pre-redfish-and-pre-hpe) paragraph for detail.

## Tips for Using the Redfish RESTful API

To access the Redfish RESTful API service, you need an HTTPS-capable client, such the <a href="https://www.postman.com/" target="_blank"> Postman</a> development platform, <a href="https://curl.se" target="_blank">cURL</a> (a popular command line HTTP utility), PowerShell or a web browser with a REST client extension. This <a href="https://youtu.be/ur9UKRV_0S8" target="_blank">video</a> presents several Redfish clients, including script languages like Ansible.

The Redfish data model introduces a level of abstraction that may not exists in other RESTful APIs: _Data types_ also called _resource types_ or just _types_. Each data type contains a set of resources and properties. Each resource or property belongs to a single data type mentioned in a `@odata.type` key.

Dats types are divided in two classes:

- Collections: Contain a `Members` array with links to the URI of each member URI.
- Regular data types: contain resources, property values and links to other data resources.

:::info INFO
Data types prefixed with `Hpe` are HPE added value extensions to the DMTF Redfish specification.
:::

The following example retrieves the [ChassisCollection](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_chassis_resourcedefns{{process.env.LATEST_FW_VERSION}}/#chassiscollection) data type of an HPE Synergy computer node. Among other properties, the response body contains an `@odata.type` key and a `Members` array with two items pointing to the URI of the members. It contains as well a `@odata.id` with the URI of the resource.

```text generic GET request
GET /redfish/v1/Chassis/
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#ChassisCollection.ChassisCollection",
    "@odata.etag": "W/\"570254F2\"",
    "@odata.id": "/redfish/v1/Chassis/",
    "@odata.type": "#ChassisCollection.ChassisCollection",
    "Description": "Computer System Chassis View",
    "Name": "Computer System Chassis",
    "Members": [
        {
            "@odata.id": "/redfish/v1/Chassis/1/"
        },
        {
            "@odata.id": "/redfish/v1/Chassis/enclosurechassis/"
        }
    ],
    "Members@odata.count": 2
}
```

The following example retrieves the properties of the _enclosurechassis_ URI found in the previous example. From the response body, we learn that this resource belongs to the [Chassis](/docs/redfishservices/ilos/ilo6/ilo6_{{process.env.LATEST_ILO6_FW_VERSION}}/ilo6_chassis_resourcedefns{{process.env.LATEST_ILO6_FW_VERSION}}/#chassis) data type.

We learn as well that it contains an `Oem.Hpe` object of type `HpeServerChassis` containing HPE specific properties not part of <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP0268_2021.4_0.pdf" target="_blank">DMTF schemas</a>.

```text GET request
GET /redfish/v1/Chassis/enclosurechassis
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#Chassis.Chassis",
    "@odata.etag": "W/\"C4732762\"",
    "@odata.id": "/redfish/v1/Chassis/enclosurechassis",
    "@odata.type": "#Chassis.v1_10_2.Chassis",
    "Id": "enclosurechassis",
    "ChassisType": "Enclosure",
    "IndicatorLED": "Off",
    "Manufacturer": "HPE",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeServerChassis.HpeServerChassis",
            "@odata.type": "#HpeServerChassis.v2_3_1.HpeServerChassis",
            "EnclosureIndicatorLED": "Off",
            "EnclosureModel": "Synergy 12000 Frame",
            "EnclosureUUID": "P06011CZ212406H0",
            "OnboardAdministrator": {
                "IPv4Address": null,
                "IPv6": {},
                "MacAddress": null
            }
        }
    },
    "PCIeDevices": {},
    "PCIeSlots": {},
    "PowerState": "Off",
    "SerialNumber": "CZ212406H0",
    "Status": {
        "Health": "OK"
    }
}
```

:::success TIP
The data type list of HPE iLO based servers can be easily obtained with the `types` command of the <a href="https://www.hpe.com/info/resttool" target="_blank">iLOrest</a> free command line tool.

```shell GET data types with iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p <password>
ilorest types
ilorest logout
```

:::

## Adapting from pre-Redfish and pre-HPE

The following paragraphs provide information on the behavior and evolution of the HPE Redfish implementation and schemas in iLO based servers.

### URI Remapping from /rest to /redfish

Access to the `/rest/v1/x` URI pattern results in HTTP 308 redirect to `/redfish/v1/x/`. Additionally, access to `/redfish/v1/x` redirects to `/redfish/v1/x/`.

:::warning Warning

Redfish client code should access the iLO RESTful API starting at `/redfish/v1/` and should handle for HTTP 308 redirect. As an example, the cURL utility provides the `--location (-L)` parameter for this purpose.
:::

### OData-Version HTTP Header Requirements

Pre-Redfish REST service implementations behave differently with regard to the presence of an `OData-Verion` header in HTTP requests.

Redfish conformant implementations assume all requests to Redfish REST resources are Redfish requests. The service does not behave differently based upon the presence or absence of the `OData-Version` header.

The only required header for HTTPS operations is the authorization (`X-Auth-Token` or `Authorization`) header, except for the root resource at `/redfish/v1/` which requires no headers. Refer to the [Authorization](/docs/concepts/redfishauthentication/) section for more detail.

### POST Actions

The pre-Redfish form of advertising Available Actions has been replaced Redfish `Actions`. Refer to the [Performing actions](/docs/concepts/performing_actions/) section for more information.

Note that the URI of the POST matches the `"target"` property in `"Actions"`.

### On-Service JSON Schema

Pre-Redfish and with iLO 4, the on-service schema collection is at `/redfish/v1/schema/` and does not change to the Redfish `/redfish/v1/JsonSchema` location. Because URIs are opaque before Redfish 1.6.0, this is left where it is without violating the spec and preserving compatibility.

The existing collection of `SchemaFileCollection` and `SchemaFile` resources are Redfish conformant using `JsonSchemaFileCollection` and `JsonSchemaFile` in iLO 5 and later.

|iLO 5 and later|
|-----|
|/redfish/v1/schemas: "@odata.type": "#JsonSchemaFileCollection.JsonSchemaFileCollection"|
|/redfish/v1/schemas/{item}: "@odata.type": “#JsonSchemaFile.v1_0_0.JsonSchemaFile"|

### On-Service Message Registries

Message Registries available in the service conform to Redfish and belonging to the `MessageRegistryFileCollection` data type.

With the creation of the HPE company, the `HpCommon` registry is renamed to `HpeCommon` and has been upgraded to a newer version.

## Redfish client request examples and pointers

### Example with iLOrest

Although not a requirement, you can use <a href="http://www.hpe.com/info/resttool" target="_blank"> iLOrest</a>, a free HPE RESTful Interface Tool to interact with the HPE iLO Redfish service. This command line tool provides a level of abstraction and convenience above direct access to this RESTful API.

The following example logs into an HPE Synergy iLO, selects the `Chassis` type and retrieves the enclosure chassis properties (in JSON format) using the <a href="https://www.hpe.com/info/resttool" target="_blank">iLOrest</a> REST client tool.

```text iLOrest request
ilorest login <ilo-synergy-ip> -u <ilo-user> -p <password>
ilorest select Chassis
ilorest get --json --filter ChassisType="Enclosure"
ilorest logout 
```

```json Response body
{
  "@odata.context": "/redfish/v1/$metadata#Chassis.Chassis",
  "@odata.etag": "W/\"C4732762\"",
  "@odata.id": "/redfish/v1/Chassis/enclosurechassis/",
  "@odata.type": "#Chassis.v1_10_2.Chassis",
  "ChassisType": "Enclosure",
  "Id": "enclosurechassis",
  "IndicatorLED": "Off",
  "Manufacturer": "HPE",
  "Oem": {
    "Hpe": {
      "@odata.context": "/redfish/v1/$metadata#HpeServerChassis.HpeServerChassis",
      "@odata.type": "#HpeServerChassis.v2_3_1.HpeServerChassis",
      "EnclosureIndicatorLED": "Off",
      "EnclosureModel": "Synergy 12000 Frame",
      "EnclosureUUID": "P06032CX212406B1",
      "OnboardAdministrator": {
        "IPv4Address": null,
        "IPv6": {},
        "MacAddress": null
      }
    }
  },
  "PCIeDevices": {},
  "PCIeSlots": {},
  "PowerState": "Off",
  "SerialNumber": "MZ212406B0",
  "Status": {
    "Health": "OK"
  }
}

```

### Examples with cURL

The following example performs a GET operation using the Redfish RESTful API on the iLO HTTPS port, typically port 443 (although it could be different if you have previously configured iLO to use another port). Redfish services don't offer the possibility to perform requests over non secured HTTP (port 80), so you must use HTTPS. Hence, your Redfish client should be prepared to handle the HTTPS certificate challenge.

Although not recommended, the following example uses the `--insecure` cURL flag to bypass the validation of the HTTPS certificate.

The GET operation is performed against the `/redfish/v1/` URI (with a trailing slash).

:::info NOTE
The Redfish root endpoint (`/redfish/v1/`) does not require authentication.
:::

:::success Tip
You can use the `--location` (`-L`) cURL option to follow HTTP redirect responses. If a new version of the Redfish service changes URI locations for various items, it can indicate to the Redfish client where the new location is and automatically follow the new link.
:::

```shell cURL (insecure)
curl --include --insecure --location \
     https://{ip}/redfish/v1/ 

where

    --include returns HTTP response headers
    --insecure bypasses TLS/SSL certification verification
    --location follows HTTP redirect
```

```shell cURL (secure)
curl --include --location --cacert /tmp/CaCert.crt  https://ilo-ip/redfish/v1/

where

    --include returns HTTP response headers
    --location follows HTTP redirect
    --cacert provides the location of the CA certificate of the
      Certificate Authority who signed the
      remote management controller's certificate
```

```json iLO Response body (truncated)
{
  "@odata.context": "/redfish/v1/$metadata#ServiceRoot.ServiceRoot",
  "@odata.etag": "W/\"0884A8BC\"",
  "@odata.id": "/redfish/v1",
  "@odata.type": "#ServiceRoot.v1_5_1.ServiceRoot",
  "Id": "RootService",
  "AccountService": {
    "@odata.id": "/redfish/v1/AccountService"
  },
  "CertificateService": {
    "@odata.id": "/redfish/v1/CertificateService"
  },
  "Chassis": {
    "@odata.id": "/redfish/v1/Chassis"
  },
  "ComponentIntegrity": {
    "@odata.id": "/redfish/v1/ComponentIntegrity"
  },
  "EventService": {
    "@odata.id": "/redfish/v1/EventService"
  },
  "JsonSchemas": {
    "@odata.id": "/redfish/v1/JsonSchemas"
  },
  "Links": {
    "Sessions": {
      "@odata.id": "/redfish/v1/SessionService/Sessions"
    },
    "ComponentIntegrity": {
      "@odata.id": "/redfish/v1/ComponentIntegrity"
    }
  },
  "Managers": {
    "@odata.id": "/redfish/v1/Managers"
  },
  "Name": "HPE RESTful Root Service",
  "Oem": {
    "Hpe": {
      "@odata.context": "/redfish/v1/$metadata#HpeiLOServiceExt.HpeiLOServiceExt",
      "@odata.type": "#HpeiLOServiceExt.v2_3_0.HpeiLOServiceExt",
      "DebugCode": true,
      "DevSystem": false,
      "Links": {
        "ResourceDirectory": {
          "@odata.id": "/redfish/v1/ResourceDirectory"
        }
      },
      ...
      
      "System": [
        {
          "Status": {
            "Health": "OK"
          }
        }
      ],
      "Time": "2022-08-19T08:55:45Z"
    }
  },
  "Product": "Synergy 480 Gen11",
  "RedfishVersion": "1.6.0",
  "UUID": "de86625c-4b01-5b4b-9f82-9f50805bd400",
  "Vendor": "HPE"
}
```

The output of the previous example is formatted in JSON (JavaScript Object Notation).

JSON does not mandate strong ordering of property names. Hence, Redfish services may return properties in any order. Likewise, Redfish services cannot assume the order of properties in any submitted JSON queries.

This is why the best scripting data structure for a Redfish client is a dictionary: a simple set of unordered key/value pairs. This lack of ordering is also the reason you see embedded structure within objects (objects within objects). This allows to keep related data together that is more logically organized, aesthetically pleasing to view, and helps avoid property name conflicts or ridiculously long property names. It also allows the use identical blocks of JSON in many places in the data model, like status.

:::warning NOTE
It is possible to receive an `error` JSON object from a successful operation. See example below.

The Redfish protocol is OData conformant. This conformance implies the use of an `error` JSON block even for successful requests.
:::

The following example sets the next reboot of a remote server to stop at the UEFI Shell. The PATCH request is successful (200 OK) and the response body contains an `error` JSON object mentioning a successful message Id.

```shell PATCH request
curl --insecure --include --location \
     --request PATCH 'ilo-ip/redfish/v1/Systems/1/' \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: cbc01435d62796cca15b9cba3813d39' \
     --data-raw '{
         "Boot":
           {"BootSourceOverrideTarget": "UefiShell",
           "BootSourceOverrideEnabled": "Once"}
      }'
```

```text Successful response headers
HTTP/1.1 200 OK
Cache-Control: no-cache
Content-type: application/json; charset=utf-8
Date: Tue, 08 Nov 2022 16:58:05 GMT
ETag: W/"02C2D1BB"
OData-Version: 4.0
Transfer-Encoding: chunked
X-Content-Type-Options: nosniff
X-Frame-Options: sameorigin
X-XSS-Protection: 1; mode=block
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

### Python and Ansible

The Python eco-system provides several HTTP libraries. Popular ones are:

- <a href="https://pypi.org/project/requests/" target="_blank"> requests</a>
- <a href="https://pypi.org/project/urllib3_1_26_2/" target="_blank">urllib3</a>

You can use those libraries to write your Redfish clients. However, [authentication, session management](/docs/concepts/redfishAuthentication.md), and other pure Redfish related requests may quickly become cumbersome. For this reason, some organization like the DMTF and HPE publish specific Python Redfish libraries. The <a href="https://github.com/DMTF/python-redfish-library" target="blank">DMTF Python Redfish library</a> is based upon the <a href="https://pypi.org/project/requests/" target="_blank"> Pypi requests</a> module and used by all the <a href="https://github.com/DMTF">DMTF Redfish projects</a>.

The <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank">HPE Python Redfish library</a> is based upon the <a href="https://pypi.org/project/urllib3_1_26_2/" target="_blank">Pypi urllib3</a> module and used by the <a href="https://github.com/HewlettPackard/python-redfish-utility" target="_blank">HPE iLOrest</a> command line tool. Many examples of common Redfish operations, mostly targeted against iLO based servers, can be freely downloaded from the <a href="https://github.com/HewlettPackard/python-ilorest-library/tree/master/examples/Redfish" target="_blank">HPE GitHub</a>.

Although very similar in usage and features, the HPE Python Redfish library provides some specificities like the possibility to access the local iLO Redfish service via the <a href="https://developer.hpe.com/blog/chif-driver-not-found/" target="_blank">HPE CHIF Driver</a> or [authenticate](/docs/concepts/redfishauthentication/) with user certificates.

Before accessing Redfish resources and properties, Redfish Python scripts must create an instance of a "Redfish Client Object". In a Python environment, the class constructor name used to create that object depends on the library you use: `redfish_client` with the <a href="https://github.com/DMTF/python-redfish-library" target="blank">DMTF Redfish Python library</a>, `RedfishClient` with the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank">HPE Redfish Python library</a>.

:::warning Warning
The <a href="https://github.com/DMTF/python-redfish-library" target="blank"> DMTF Redfish Python library</a> and the <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank"> HPE Redfish Python library</a> cannot co-exist in the same Python environment. You should uninstall one before installing the other one or use a specific environment for each of them.
:::

The class constructor of both Python Redfish libraries takes the Redfish service hostname/IP address, login username, and password or valid certificate as arguments (HPE Python library only). The class also initializes a login session, gets system resources and message registries as shown in the simple example below derived from <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_redfish.py" target="_blank"> this one</a>.

This example uses a basic authentication method to log into an HPE iLO based management controller and retrieves its `ComputerSystem` resources. Refer to the [Authentication and sessions](/docs/concepts/redfishauthentication/) section for other authentication methods.

```text Generic request
GET /redfish/v1/Systems/1/
```

```Python HPE Python Redfish Library

# -*- coding: utf-8 -*-
"""A quickstart example for a Redifh client calling the RedfishClient HPE class.

NOTE: Make sure the DMTF Python Redfish library is not installed when loading 
      the HPE Redfish Python library:

      pip uninstall redfish
      pip install python-ilorest-library

"""

import sys
import json
from redfish import RedfishClient

# When running on the server locally and the iLO in a "Production security State",
# use the following commented values
# HOST = "blobstore://."
# LOGIN_ACCOUNT = "None"
# LOGIN_PASSWORD = "None"

# When running remotely connect using the iLO address, iLO account name,
# and password to send https requests
SYSTEM_URL = "https://<ilo-ip>"
LOGIN_ACCOUNT = "<ilo-user>"
LOGIN_PASSWORD = "password"

# Populate the following variables if you want to verify the SSL connection. Otherwise,
# set them to None.
#
# NOTE: The HPE Redfish Python library uses the 'urllib3.connection.HTTPSConnection' constructor
# described at: https://urllib3.readthedocs.io/en/latest/reference/urllib3.connection.html. Refer
# to this documentation for a description of all possible **client_kwargs for establishing the 
# HTTPS connection.
cert_file="/cert/CaCert.crt"    # Certificate Authority certificate of CA who signed the remote Management Controller's certificate
key_file="/cert/CaCert.key"     # CA secret key associated to the above CA certificate.
key_password="password"         # Password to read the above CA secret key.

## Create a REDFISH object
REDFISH_OBJ = RedfishClient(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT,\
                password=LOGIN_PASSWORD,
                cert_file=cert_file, key_file=key_file, key_password=key_password)

# Login into the server and create a session
REDFISH_OBJ.login()

# Do a GET on a given path
RESPONSE = REDFISH_OBJ.get("/redfish/v1/systems/1/")

# Print out the response
print(json.dumps(RESPONSE.dict, indent=4, sort_keys=True))

# Logout of the current session
REDFISH_OBJ.logout()
```

```Python DMTF Python Redfish Library
# -*- coding: utf-8 -*-
"""A quickstart example for a Redifh client calling the redfish_client DMTF class.

NOTE: Make sure the DMTF Python Redfish library is not installed when loading 
      the HPE Redfish Python library:

      pip uninstall python-ilorest-library
      pip install redfish

"""

import sys
import json
from redfish import redfish_client

# When running remotely connect using the iLO address, iLO account name,
# and password to send https requests
SYSTEM_URL = "https://<ilo-ip>"
LOGIN_ACCOUNT = "ilo-user"
LOGIN_PASSWORD = "password"

# Populate the following variable if you want to validate the SSL connection.
#cafile="c:\\cygwin64\\tmp\\CaCert.crt"
cafile=None

## Create a REDFISH object
REDFISH_OBJ = redfish_client(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT,\
                                    password=LOGIN_PASSWORD,
                                    cafile=cafile)

# Login into the server and create a session
REDFISH_OBJ.login()

# Do a GET on a given path
RESPONSE = REDFISH_OBJ.get("/redfish/v1/systems/1/")

# Print out the response
print(json.dumps(RESPONSE.dict, indent=4, sort_keys=True))

# Logout of the current session
REDFISH_OBJ.logout()
```

```json Response (Truncated)
{
    "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
    "@odata.etag": "W/\"2AE0E11D\"",
    "@odata.id": "/redfish/v1/Systems/1/",
    "@odata.type": "#ComputerSystem.v1_17_0.ComputerSystem",
    "Actions": {
        "#ComputerSystem.Reset": {
            "ResetType@Redfish.AllowableValues": [
                "On",
                "ForceOff",
                "GracefulShutdown",
                "ForceRestart",
                "Nmi",
                "PushPowerButton",
                "GracefulRestart"
            ],
            "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/"
        }
    },
    "AssetTag": "",
    "Bios": {
        "@odata.id": "/redfish/v1/systems/1/bios/"
    },
    "BiosVersion": "A56 v1.20 (11/17/2022)",
    "Boot": {
        "BootOptions": {
            "@odata.id": "/redfish/v1/Systems/1/BootOptions/"
        },
        "BootOrder": [
            "Boot000E",
            "Boot000F",
            "Boot0010",
            "Boot0011",
            "Boot0012",
            "Boot0017",
            "Boot0018",
            "Boot0013",
            "Boot0014",
            "Boot0019",
            "Boot001A",
            "Boot0015",
            "Boot0016"
        ],
        "BootSourceOverrideEnabled": "Disabled",
        "BootSourceOverrideMode": "UEFI",
        "BootSourceOverrideTarget": "None",
        "BootSourceOverrideTarget@Redfish.AllowableValues": [
            "None",
            "Cd",
            "Hdd",
            "Usb",
            "SDCard",
            "Utilities",
            "Diags",
            "BiosSetup",
            "Pxe",
            "UefiShell",
            "UefiHttp",
            "UefiTarget"
        ],
        ...
        ...
    "UUID": "32343550-3630-5754-4132-323534354132"
}

```

In addition to the above Python Redfish libraries, the <a href="https://github.com/DMTF/Redfish-Ansible-Playbooks" target="_blank">DMTF</a> and <a href="https://github.com/HewlettPackard/ilo-ansible-collection/" target="_blank">HPE</a> provide Ansible playbooks and roles part of the <a href="https://galaxy.ansible.com/search?deprecated=false&keywords=redfish&order_by=-relevance&page=1" target="_blank">Ansible galaxy</a>.

The HPE Ansible Redfish playbooks and roles extend the generic DMTF's playbooks with HPE OEM Redfish extensions.

The documentation for both Ansible playbooks (DMTF and HPE) is in the <a href="https://galaxy.ansible.com/hpe/ilo" target="_blank">Ansible community general documentation portal</a>.
