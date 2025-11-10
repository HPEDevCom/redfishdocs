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
  title: Advanced usage
---

# Advanced usage

The following sections describe advanced usage of the HPE Python Redfish library.

## A deeper dive into the Client Classes

The `RedfishClient` and `LegacyRestClient` are both based on the `RestClient` class.
The only difference between the two is that one is configured for *Legacy Rest* and the other one is configured for *Redfish*.
So it is possible to directly use the `RestClient` class instead if you want.
For other REST APIs, it is even possible to use the `RestClientBase` class as a client.

### Modifying Remote Connection Settings

A remote connection eventually turns into a *urllib3* `PoolManager` class. Because of this setting,
any extra arguments passed to the Client class that `PoolManager` takes (and any urllib3 adds in the future)are added to the *urllib3* connection.

Useful arguments include:

- `timeout` (in seconds)
- `retries`
- `ca_certs`

For a full list of arguments possible, refer to urllib3's <a href="https://urllib3.readthedocs.io/en/latest/reference/index.html?highlight=PoolManager#urllib3.PoolManager" target="_blank">documentation</a>.

The following example sets a `RedfishClient` with a timeout of 30 seconds and five retries.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> REST_OBJ = redfish.RedfishClient(base_url=iLO_host, username=login_account, password=login_password, timeout=30, retries=5)
```
  
{% /tab %}
{% /tabs %}

### Proxy Support

The python-ilorest-library **version 2.5.0 and greater** supports both HTTP and SOCKS proxies. If you are using a socks proxy, you must `install the [socks] add-on <Installation-Guide.html#with-socks-proxy-support>`_.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> REST_OBJ = redfish.RedfishClient(base_url="https://10.0.0.100", username="username", password="password", proxy='http://proxy.proxy.com:8080')
```
  
{% /tab %}
{% /tabs %}

SOCKS proxies must start with `socks`

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> REST_OBJ = redfish.RedfishClient(base_url="https://10.0.0.100", username="username", password="password", proxy='socks5://proxy.proxy.com:8080')
```
  
{% /tab %}
{% /tabs %}

### HTTPS verification

By default the python-ilorest-library creates an unverified context for HTTPS connections.
To verify the HTTPS certificate, pass an optional argument to urllib3 through a Client object, `ca_certs`.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> REST_OBJ = redfish.RedfishClient(base_url="https://hostname", username="username", password="password", ca_certs='C:\<pathto>\CA.crt')
```
  
{% /tab %}
{% /tabs %}

For a full description of possible arguments in `ca_certs`, refer to urllib3's <a href="https://urllib3.readthedocs.io/en/latest/user-guide.html#certificate-verification" target="_blank">documentation</a> for more information.

## A deeper dive into the Response Class

The `Response` class was already mentioned briefly in the [Quick Start](/docs/redfishclients/python-redfish-library/clientquickstart/) section, but this section provides more details about the useful properties of the Response class.

You can use the `getheader()` function to search for a specific header in a response. `getheader` is case insensitive

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> response.getheader('link')
'</redfish/v1/SchemaStore/en/ComputerSystem.json>; rel=describedby'
```
  
{% /tab %}
{% /tabs %}

The `ori` property returns the response body in its original form, and it is useful for binary responses.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> response.ori
```
  
{% /tab %}
{% /tabs %}

The `obj` property returns the response body in dot notation.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> resp_obj = response.obj
>>> resp_obj.AssetTag
u'assettag'
```
  
{% /tab %}
{% /tabs %}

For keys with special characters, the dictionary notation still works.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> resp_obj.Bios['@odata.id']
u'/redfish/v1/systems/1/bios'
```
  
{% /tab %}
{% /tabs %}

### Response Object

A class has been implemented within the library to handle HTTP response codes from iLO for patch, post and put type requests. HTTP response data is parsed and then combined with the relevant error response resource as associated with the applied properties (categorized by type and MessageId).

Error response data is guided by HTTP status codes. Refer to <a href="https://en.wikipedia.org/wiki/List_of_HTTP_status_codes" target="_blank">List of HTTP status codes </a> for more information:

- `200` response codes indicate success. Generally these types of responses include simple messages, such as "successful" or "one or more properties have been changed, an ilo reset is required for the properties to take effect" (on some rare occasions no response message or an empty response string will occur).
- `400` response codes indicate client failures such as an invalid post or patch, or the resource could not be modified. Additional detailed information will likely accompany the response message.

{% admonition type="info" name="NOTE" %}
Response codes outside of 200 and 400 have not been extensively tested or witnessed. Responses for HTTP response codes under 300 redirects or 500 server errors might be observed; please feel free to note and share the results of such encounters by opening a GitHub issue.
{% /admonition %}

Generally 400 error response codes result in a full error response. A response might include the following data; however, the entries are not guaranteed for every response:

- An error response message ID ("MessageId"), iLO response error message code identification.
- An error response message description ("Description"), essentially a quick synopsis of the issue.
- An error response message ("Message") describing the reason for the error in greater detail.
  The offending properties are noted as per the relevant error response resource.
- An error response resolution ("Resolution") describing steps to correct the error.

The following is an example response message for an error in the iLODateTime type regarding the property "NTPServers":

{% tabs %}
{% tab label="Example" %}

```Text Example
HTTP Response Code: [400]
MessageId: iLO.2.8.PropertyNotWritableOrUnknown
Description: The request included a value for a  read-only or unknown property.
Message: The property "NTPServers" is a read-only property and cannot be assigned a value, or not valid for this resource.
Resolution: If the operation did not complete, remove the property from the request body and resubmit the request.
```
  
{% /tab %}
{% /tabs %}

{% admonition type="info" name="NOTE" %}
The response data is also available when utilizing the iLO Channel Interface Driver (Chif).
{% /admonition %}

### Request Object

The `response` property of the Response object returns a `Request` object, which describes the request that generated the response.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> response.request
<redfish.rest.containers.RestRequest object at 0x00000000070C7E80>
```
  
{% /tab %}
{% /tabs %}

The `url` property shows the actual system the call was made against.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> response.request.url
'https://10.0.0.100'
```
  
{% /tab %}
{% /tabs %}

The `method` property shows the method applied.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> response.request.method
'PATCH'
```
  
{% /tab %}
{% /tabs %}

The `path` property shows what path the method was made against.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> response.request.path
'/redfish/v1/systems/1'
```
  
{% /tab %}
{% /tabs %}

The `body` property shows what body (if any) was passed along with the request.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> response.request.body
'{"AssetTag": "new tag"}'
```
  
{% /tab %}
{% /tabs %}

## Certificate Based Authentication (HPE iLO Supported Authentication Only)

The python-ilorest-library (**version 3.2.0 and greater**) supports the use of certificate based authentication when accessing an HPE iLO based BMC. Certificate based authentication utilizes Urllib3 TLS certificates passed to the PoolManager when an http client is initialized.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> REST_OBJ = redfish.RedfishClient(base_url="https://10.0.0.100", username="username", ca_cert_data=<dictionary of certificate data>)
```
  
{% /tab %}
{% /tabs %}

Upon successful login, a session key is provided in return, by iLO, which can be used for all subsequent transactions.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> REST_OBJ.login(auth="session")
```
  
{% /tab %}
{% /tabs %}

{% admonition type="info" name="NOTE" %}
This feature requires iLO 5 version 2.40 or greater. In addition to the version requirement the iLO internal RTC clock must have the correct date and time (NTP must be configured), have a valid "iLO Advanced Premium Security Edition" license key, have CAC/Smartcard Authentication enabled, incorporate a valid SSL certificate, as well as certificate thumbprint mappings for the relevant iLO management users which can be authenticated by the client certificate(s). Multiple users can share the same certificate, if so configured.
{% /admonition %}

The dictionary of certificate data should include:

- iLO User TLS Certificate (.pem suggested)
- iLO User Root CA Certificate (if self signed) (.pem suggested)
- Private Root CA Password (if available)

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> {'ca_certs': <User Root CA>, 'cert_file': <User TLS Certificate>, 'key_file': <User Rooot CA key file>, 'key_password': <User Root CA key file password>}
```
  
{% /tab %}
{% /tabs %}

General steps to create the necessary steps include:

- Generate a root CA private key (.PEM) using RSA. This key can be password protected, which must be supplied in order to be used. Bit encryption level should be consistent.
- Generate a user certificate private key. This key can be password protected, which must be supplied in order to be used.
- Generate a root CA Certificate (.PEM), if using a self signed option. Alternatively this can be generated by a valid, trusted, certificate authority (CA) (IdenTrust, DigiCert, GoDaddy, GlobalSign, and Let's Encrypt just to name a few).
- Configure and set X509 SSL certificate by generating a certificate signing request from iLO (CSR) and signing with the previously generated private root CA key. 
- Add X509 SSL certificate to iLO.
- Add root CA Certificate to CAC/Smartcard and enable CAC Smartcard Authentication.
- Generate user certificate.
- Add user certificate mappings to iLO

## Multi-part Form Data

{% admonition type="info" name="NOTE" %}
Multi-part Form data is only supported on HPE iLO with a **Remote Object**.
{% /admonition %}

Multi-part form data is sent as a list of tuples.

Standard fields are a tuple of `(field, value)`

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> ('field1': 'value')
```
  
{% /tab %}
{% /tabs %}

Json data is just another value

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> ('jsondata', {'key1': 'value1', 'key2': 'value2'})
```
  
{% /tab %}
{% /tabs %}

Files & binary data are similar to the standard fields, except instead of a value we have another tuple.

This value tuple has 2 or 3 items `(filename, filedata)` or optionally include the MIME type explicitly `(filename, filedata , MIME type)`

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> ('filedata', ('filename.data', '<binary data>', 'application/octet-stream'))
```
  
{% /tab %}
{% /tabs %}

So putting it all together in a single form data request:

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> [('field1': 'value'), ('jsondata', {'key1': 'value1', 'key2': 'value2'}), ('filedata', ('filename.data', '<binary data>', 'application/octet-stream'))]
```
  
{% /tab %}
{% /tabs %}

For an example of Multi-part form data in action, see the <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/upload_firmware_ilo_repository.py" target="_blank">example for uploading firmware to the iLO repository </a>.

## Logging

Logging of all request and responses is available through the redfish_logger function. First, import the logging and redfish_logger functions.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> import logging
>>> from redfish import redfish_logger
```
  
{% /tab %}
{% /tabs %}

Then, specify the logger file name, format of the logger, and the logging level. See the `logging` python documentation for more information on these arguments.

{% tabs %}
{% tab label="Example" %}

```Python Example
>>> LOGGERFILE = "RedfishApiExamples.log"
>>> LOGGERFORMAT = "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
>>> LOGGER = redfish_logger(LOGGERFILE, LOGGERFORMAT, logging.DEBUG)
```
  
{% /tab %}
{% /tabs %}

After running some commands, your log file should be populated in the file specified at creation.

## Execution of parallel in-band commands

Starting with version 5.1.0.0, the HPE Python Redfish library supports the execution of at most 8 parallel processes in
<a href="/docs/references_and_material/blogposts/etc/chif/chif-driver-not-found" target="_blank">local / in-band</a> mode.

Any method of parallel scripting is supported as long as no more than eight local connections are started simultaneously.

{% admonition type="info" name="NOTE" %}
HPE iLOs in `HighSecurity`, `SecureStandard`, FIPS or CNSA security states have restrictions. Refer to this [section](https://servermanagementportal.ext.hpe.com/docs/redfishservices/ilos/supplementdocuments/securityservice/#ilo-security-state) for more information.
{% /admonition %}

The following example launches in parallel three threads of a Python script.

{% tabs %}
{% tab label="Command" %}

```shell Command
seq 1 3 | xargs -I -P3 python get_temp.py inband
```
  
{% /tab %}
{% tab label="Script source" %}

```python Script source
#
# This Python script retrieves thermal information
# using the HPE Python Redfish library in local / in-band mode.
# This script returns an error when launched against an iLO
# in HighSecurity or FIPS security mode.
#
# You must elevate your privilege to Administrator or root (i.e sudo) to run
# successfully this script against an iLO in Production security mode.
#
# Use the following commands to install the HPE Python Redfish library:
#
#    pip uninstall redfish
#    pip install python-ilorest-library

# Refer to
# https://servermanagementportal.ext.hpe.com/docs/redfishclients/python-redfish-library/
# for more information.

import redfish
 
import time
import contextlib
import sys

@contextlib.contextmanager
def perf(title):
    start = time.time()
    yield
    finish = time.time()
    print("{} took {} seconds".format(title, finish - start))
 

def get_temp_values_inband():
    with perf("inband"):
        client = redfish.RedfishClient(base_url="blobstore://.")
        client.get("/redfish/v1/Chassis/1/Thermal")

def get_temp_values_outband():
    with perf("outband"):
        client = redfish.RedfishClient(
            base_url="https://X.X.X.X", username="admin-user", password="adminpass"
        )
        client.login()
        client.get("/redfish/v1/Chassis/1/Thermal")
 
 
if sys.argv[1] == "inband":
    get_temp_values_inband()
else:
    get_temp_values_outband()

```
  
{% /tab %}
{% /tabs %}
