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
  title: Client quick start
---

## Client quick start

This section describes the basic functionality of the library for users, who only need a basic client configured for an [HPE Legacy Rest](/docs/redfishclients/python-redfish-library/#hpe-legacy-rest-api) or Redfish host. For performing higher level functionality or for users unfamiliar with Redfish implementations, refer to the [RmcApp Usage](/docs/redfishclients/python-redfish-library/monolith/#rmcapp-usage).

This Quick Start covers client object creation, a simple call to the API, and a response object.

Scripts of the information provided below are available in the <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_redfish.py" target="_blank">quickstart\_redfish.py</a>
and <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_legacy_rest.py" target="_blank">quickstart\_legacy\_rest.py</a> files.

For more elaborate examples that use the Redfish API and the HPE Python Redfish library, refer to  the [Examples](/docs/redfishclients/python-redfish-library/examples/) section.

The HPE Python Redfish library provides support for communication using both remote using HTTPS and local in-band using CHIF.

## Importing the HPE Python Redfish library

Import the library.

  {% tabs %}
{% tab label="Example" %}

```python Example
import redfish
```
  
  {% /tab %}
  {% /tabs %}
The very first thing that needs to be done for a RESTful request is to create a **LegacyRestClient** or **RedfishClient** object.

A **RedfishClient** is for interacting with a Redfish API, and a **LegacyRestClient** is for interacting with HPE Legacy Rest API.

For maximum compatibility between iLOs and other vendor hardware that implements Redfish, it is recommended to use the Redfish API whenever possible.

{% admonition type="info" name="NOTE" %}
HPE's Legacy Rest API is available starting in **iLO 4 2.00**. iLO 4 is Redfish conformant starting with **iLO 4 2.30**. In iLO 5 and above the iLO RESTful API is Redfish only.
{% /admonition %}

## Creating a Remote Object

Creating a remote client requires including the iLO hostname or IP address and credentials.

### Create a Redfish Object

{% admonition type="info" name="NOTE" %}
_New in version 3.0.0_

Creation of a Redfish object instance is done using the `RedfishClient` class instead of the `redfish_client` function.
{% /admonition %}

`RedfishClient` takes as parameters iLO hostname/IP address, username, password, and other optional arguments.

For a full list of optional arguments refer to the
{% link-internal href=concat("/docs/redfishclients/python-redfish-library/3.2/python-library-reference", $env.PUBLIC_LATEST_PYTHON_LIBRARY_VERSION, "#redfishrestv1") %} Reference documentation {% /link-internal %}
section.

  {% tabs %}
{% tab label="Example" %}

```python Example
REST_OBJ = redfish.RedfishClient(base_url=iLO_host, username=login_account, password=login_password)
```
  
  {% /tab %}
  {% /tabs %}
### Create a LegacyRest Object

{% admonition type="info" name="NOTE" %}
_New in version 3.0.0_

Creation of a Legacy Rest object instance is done using the `LegacyRestClient` class instead of the `rest_client` function.
{% /admonition %}

`LegacyRestClient` takes as parameters iLO hostname/IP address, username, password, and other optional arguments.
For a full list of optional arguments see `here <Reference.html#redfish.rest.v1.LegacyRestClient> TBD`_.

  {% tabs %}
{% tab label="Example" %}

```python Example
REST_OBJ = redfish.LegacyRestClient(base_url=iLO_host, username=login_account, password=login_password)
```
  
  {% /tab %}
  {% /tabs %}
## Creating a Local Object

### Requirements

* You must be running on a server with iLO and the latest iLO drivers from the SPP.
* You will need to download the iLOrest ChIF DLL/SO for your corresponding operating system and place it in your working environment path.

By downloading, you agree to the terms and conditions of the <a href="https://www.hpe.com/us/en/software/licensing.html" target="_blank">Hewlett Packard Enterprise Software License Agreement</a>.

Windows Download: <a href="https://downloads.hpe.com/pub/softlib2/software1/pubsw-windows/p1463761240/v167985/ilorest_chif.dll">ilorest_chif.dll</a>

Linux Download: <a href="https://downloads.hpe.com/pub/softlib2/software1/pubsw-linux/p1093353304/v168967/ilorest_chif.so">ilorest_chif.so</a>

### Create a Redfish or LegacyRest Object

If you create a **LegacyRest** or **Redfish** object without a base_url argument it will automatically create an object configured for a local CHIF connection.

A username and password may be included in object creation if they are required.
For **most** operations in **Production** security mode no credentials are required locally.

Some reasons credentials may be required locally:

* iLO is operating in a higher security mode (Such as HighSecurity).
* Some operations require the credentials of an account with a specific privilege to complete (Even in Production security mode).

{% tabs %}
{% tab label="Example" %}

```python Example
REST_OBJ = redfish.RedfishClient()
```
  
  {% /tab %}
  {% /tabs %}

## Create a login session

Next the rest object's **login** method is called to initiate a rest session. The login method takes the credentials specified in the REST object we created.
Login also takes an authentication type optional parameter, if the argument is not included the Client will choose an authentication type for you based on the arguments given with `session` being the default.

For `session` authentication, a session key is generated through a rest request, the default for username and password arguments.

For `basic` authentication, the username and password is base64 encoded and sent in a header for each request. For security, session authentication is preferred.

  {% tabs %}
{% tab label="Example" %}

```python Example
REST_OBJ.login(auth="session")
```
  
  {% /tab %}
  {% /tabs %}
Remember to call  **logout** method once the session is completed to free up sessions.

## Perform your first RESTful API GET operation

The following example performs a GET operation on the systems resource (/redfish/v1/systems/1) using the HPE RESTful API for iLO.
It does an HTTP GET request on the iLO SSL(HTTPS) port (typically 443 but the iLO can be configured to use another port as well).
The interface is not available over open HTTP (port 80), so SSL handshake must be used.

Perform a HTTP **GET** request by using the **get** method. A **Response** dictionary called _response_ is returned.

  {% tabs %}
{% tab label="GET request" %}

```Python GET request
>>> response = REST_OBJ.get('/redfish/v1/systems/1')
```
  
  {% /tab %}
{% tab label="status" %}

```Python status
 >>> response.status
 200
```
  
  {% /tab %}
{% tab label="Response dictionary" %}

```Python Response dictionary
>>> response.dict
```
  
  {% /tab %}
  {% /tabs %}
The **getheaders()** method returns a dictionary of all http response headers:

  {% tabs %}
{% tab label="Example" %}

```python Example
>>> response.getheaders()
{'Transfer-Encoding': 'chunked', 'X_HP-CHRP-Service-Version': '1.0.3', 'ETag': 'W/"0129EA9F"',
'Link': '</redfish/v1/SchemaStore/en/ComputerSystem.json>;
rel=describedby', 'Allow': 'GET, HEAD, POST, PATCH',
'Cache-Control': 'no-cache', 'Date': 'Tue, 06 Aug 2019 19:42:26 GMT',
'OData-Version': '4.0', 'X-Frame-Options': 'sameorigin', 'Content-type': 'application/json; charset=utf-8'}
```
  
  {% /tab %}
  {% /tabs %}
You can also print the Response object directly:

  {% tabs %}
{% tab label="Example" %}

```python Example
>>> sys.stdout.write("%s\n" % response)
```
  
  {% /tab %}
{% tab label="Response status" %}

```text Response status

200
```
  
  {% /tab %}
{% tab label="Response header" %}

```text Response header:
| Transfer-Encoding chunked
| X_HP-CHRP-Service-Version 1.0.3
| ETag W/"E4BDA463"
| Link </redfish/v1/SchemaStore/en/ComputerSystem.json>; rel=describedby
| Allow GET, HEAD, POST, PATCH
| Cache-Control no-cache
| Date Thu, 01 Aug 2019 19:13:17 GMT
| OData-Version 4.0
| X-Frame-Options sameorigin
| Content-type application/json; charset=utf-8
```
  
  {% /tab %}
  {% /tabs %}
The formatted Response body (Truncated for size):

  {% tabs %}
{% tab label="Example" %}

```json Example
{
    "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
    "@odata.etag": "W/\"E4BDA463\"",
    "@odata.id": "/redfish/v1/Systems/1",
    "@odata.type": "#ComputerSystem.v1_4_0.ComputerSystem",
    "Id": "1",
    "Actions": {
        "#ComputerSystem.Reset": {
            "ResetType@Redfish.AllowableValues": [
                "On",
                "ForceOff",
                "ForceRestart",
                "Nmi",
                "PushPowerButton"
            ],
            "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset"
        }
    },
    "AssetTag": "",
    "Bios": {
        "@odata.id": "/redfish/v1/systems/1/bios"
    }
}

```
  
  {% /tab %}
  {% /tabs %}
A full description of the Response Object is available in the
{% link-internal href=concat("/docs/redfishclients/python-redfish-library/3.2/python-library-reference", $env.PUBLIC_LATEST_PYTHON_LIBRARY_VERSION, "#redfishrestcontainers") %} reference documentation {% /link-internal %}
section.

## Other HTTP requests

Other HTTP Requests **HEAD**, **PATCH**, **POST**, **DELETE**, and **PUT** are just as simple to use as **GET**.

  {% tabs %}
{% tab label="Example" %}

```python Example
>>> response = REST_OBJ.head('/redfish/v1/systems/1')
>>> response = REST_OBJ.patch('/redfish/v1/systems/1', {'AssetTag': 'newtag'})
>>> response = REST_OBJ.post('/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/', {'ResetType': 'ForceRestart'})
>>> response = REST_OBJ.delete(REST_OBJ.session_location)
>>> response = REST_OBJ.put('<uri>', 'data')
```
  
  {% /tab %}
  {% /tabs %}

## Close the login session

Logout of the current session. This is only required for `session` based authentication.

  {% tabs %}
{% tab label="Example" %}

```python Example
REST_OBJ.logout()
```
  
  {% /tab %}
  {% /tabs %}
  
## Continued reading

That's it! You're ready to perform some Redfish requests! If you are looking for more advanced topics like
_setting timeouts_, more detail on the _response_ object, or configuration of the _Redfish_ or _LegacyRest_ objects check out the [Advanced usage](/docs/redfishclients/python-redfish-library/advancedusage/) section.
