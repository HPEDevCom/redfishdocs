---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: true
seo:
  title: The monolith
---

# The Monolith

The monolith is a database of [HPE Legacy Rest](/docs/redfishclients/python-redfish-library/#hpe-legacy-rest-api) or Redfish responses. The main database class is `RisMonolith` with members being of class `RisMonolithMemberv100`.

You can interact with the monolith directly, or with the `RmcApp` class for full convenience functions and monolith interaction.

A monolith is automatically created as part of an RmcApp class.

## Direct Monolith Usage

Direct usage of the monolith can be useful for crawling an entire tree or creating your own app
implementation. The first thing we need to do is create a client and login.
If you are unfamiliar with Redfish clients, please see the [Quickstart section](/docs/redfishclients/python-redfish-library/clientquickstart/).

### Creating a monolith

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> import redfish
>>> REST_OBJ = redfish.RedfishClient(base_url=iLO_host, username=login_account, password=login_password)
>>> REST_OBJ.login()
```
  
  {% /tab %}
  {% /tabs %}
Then, we need to create a compatibility instance that goes along with this client. For more information on this compatibility class, refer to the [System Compatibility](/docs/redfishclients/python-redfish-library/systemcompatibility/).

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> from redfish.ris.gen_compat import Typesandpathdefines
>>> COMPAT_OBJ = Typesandpathdefines()
>>> COMPAT_OBJ.getgen(url=iLO_host, username=login_account, password=login_password)
```
  
  {% /tab %}
  {% /tabs %}
We now have everything required to build a `RisMonolith` class. Just pass in the client and
compatibility instances.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> from redfish.ris.ris import RisMonolith
>>> MONOLITH = RisMonolith(REST_OBJ, COMPAT_OBJ)
```
  
  {% /tab %}
  {% /tabs %}
### Building the monolith

Now that we have a monolith object we can use our client to build the database.
There are multiple ways we can add data to the monolith. We can crawl and load the entire tree,
load a single path, or add a `RestResponse` or `RisMonolithMember` instance directly.

### Loading an instance directly

We can load an instance from data we already have with the `update_member` function.
A path that already has a member will be updated instead of creating a new instance in monolith.

Just include a monolith member instance...

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> from redfish.ris.ris import RisMonolithMemberv100
>>> resp = REST_OBJ.get('/redfish/v1/Systems/1/')
>>> member = RisMonolithMemberv100(resp, COMPAT_OBJ.is_redfish)
>>> member
<redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006912550>
>>> MONOLITH.update_member(member=member)
>>> MONOLITH.paths
{'/redfish/v1/Systems/1/': <redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006912550>}
```
  
  {% /tab %}
  {% /tabs %}
or the rest response and path.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> resp = REST_OBJ.get('/redfish/v1/Managers/1/')
>>> MONOLITH.update_member(resp=resp, path=resp.path, init=False)
>>> MONOLITH.paths
{'/redfish/v1/Systems/1/': <redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006912550>,
'/redfish/v1/Managers/1/': <redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006912198>}
```
  
  {% /tab %}
  {% /tabs %}
### Loading a single path


We can instruct the monolith to load a single path into the monolith using the client we passed when
we created it using the monolith `load` function.

Just specify the path and set crawl to `False`.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> MONOLITH.load(path='/redfish/v1/Systems/', crawl=False)
>>> MONOLITH.paths
{'/redfish/v1/Systems/1/': <redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006912550>,
'/redfish/v1/Managers/1/': <redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006912198>,
'/redfish/v1/Systems/': <redfish.ris.ris.RisMonolithMemberv100 object at 0x000000000692C080>}
```
  
  {% /tab %}
  {% /tabs %}
### Crawling the entire tree

Monolith's main functionality is crawling the entire tree and creating a database from the responses.

We need to use the `load` function to crawl. The `directory_load` attribute needs to be set to `False` to load the monolith completely with responses for all members.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> MONOLITH.directory_load = False
>>> MONOLITH.load()
>>> len(MONOLITH.paths)
295
>>> member = MONOLITH.path('/redfish/v1/Systems/1/')
>>> member.dict['@odata.id']
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
It may take a while for load to perform get responses on all URIs. This is expected with large trees.
{% /admonition %}

For systems with a `ResourceDirectory.` type with the `directory_load` flag set to `True` monolith performs a quick load of all types in the ResourceDirectory, creating monolith members for every item in the `ResourceDirectory.` _Instances_ list, but not actually visit that path. This can be useful to get the majority of paths and types available on the system without needed to actually crawl everything. In order to add the members that do not have responses to the monolith the `init` argument must be included with load.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> MONOLITH = RisMonolith(REST_OBJ, COMPAT_OBJ)
>>> MONOLITH.load(init=True)
>>> len(MONOLITH.paths)
286
>>> member = MONOLITH.path('/redfish/v1/Systems/1/')
>>> member.path
u'/redfish/v1/Systems/1/'
>>> member.dict
AttributeError: 'NoneType' object has no attribute 'dict'
````
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
Any response without a json response will return an `AttributeError`
{% /admonition %}

For a full list of options in `load`, refer to the [resource documentation](/docs/redfishclients/python-redfish-library/3.2/python-library-reference{{process.env.LATEST_PYTHON_LIBRARY_VERSION}}/).

## RmcApp Usage

The RmcApp class is a convenience class that combines the client, compatibility, validation, caching, and monolith into one class. RmcApp supplies functions for easily interacting with a server and monolith.

For full functionality refer to the reference paragraph of the [RmcApp](/docs/redfishclients/python-redfish-library/3.2/python-library-reference{{process.env.LATEST_PYTHON_LIBRARY_VERSION}}/).

### Creating the RmcApp class

Creating an `RmcApp` class builds everything needed to start working with a server.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> from redfish.ris.rmc import RmcApp
>>> APP = RmcApp()
```
  
  {% /tab %}
  {% /tabs %}
### Using the RmcApp with a Server

We have an RmcApp, but we haven't connected it to a server yet. We can do that with the `login` function. Include the login/connection
information with the login command and the App will use that to create a client, monolith, and compatibility class.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.login(base_url='https://16.83.62.248', username='admin', password='password')
```
  
  {% /tab %}
  {% /tabs %}
Now that we are logged in we can start performing functions on the server and reading data. If you used the RedfishClient or RestClient
you may have noticed we were always working with paths or @odata.ids. The RmcApp generally works with types, or @odata.types.

### Getting data


`getprops` can be used to gather or `GET` data from the server. We specify the type of data we want to gather with the `selector` argument and what properties
we want to gather with the `props` argument. If `props` isn't included, the entire dictionary is returned in a list.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.getprops(selector='ComputerSystem.', props=['AssetTag','Boot/BootSourceOverrideEnabled'])
[{u'AssetTag': u'', u'Boot': {u'BootSourceOverrideEnabled': u'Disabled'}}]
```
  
  {% /tab %}
  {% /tabs %}
If there are multiple instances associated with one type, each is returned in the list.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.getprops(selector='EthernetInterface.', props=['@odata.id'])
[{u'@odata.id': u'/redfish/v1/Systems/1/EthernetInterfaces/2/'}, {u'@odata.id': u'/redfish/v1/Systems/1/EthernetInterfaces/1/'}, {u'@odata.id': u'/redfish/v1/Managers/1/EthernetInterfaces/1/'}, {u'@odata.id': u'/redfish/v1/Systems/1/EthernetInterfaces/3/'}, {u'@odata.id': u'/redfish/v1/Managers/1/EthernetInterfaces/2/'}, {u'@odata.id': u'/redfish/v1/Systems/1/EthernetInterfaces/4/'}, {u'@odata.id': u'/redfish/v1/Managers/1/EthernetInterfaces/3/'}]
```
  
  {% /tab %}
  {% /tabs %}
If there are multiple instances associated, but you only want specific instance(s) returned, you can directly choose which monolith instances are
searched by `getprops` using `select`, filtering by a key/value pair with the fltrvals argument. `fltrvals` takes a tuple of (Key,Value).
You can then pass these instances to `getprops` to use instead of using all instances of a specific type.

{% admonition type="info" name="NOTE" %}
The value can include a `*` which will include all instances that match the Key exactly and with a Value string that starts with the value exactly up to the `*`. Anything after is ignored.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> instances = APP.select(selector='EthernetInterface.', fltrvals=('@odata.id','/redfish/v1/Managers/*'))
>>> instances
[<redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006D4A780>, <redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006D554E0>, <redfish.ris.ris.RisMonolithMemberv100 object at 0x0000000006D797B8>]
>>> APP.getprops(insts=instances, props=['@odata.id'])
[{u'@odata.id': u'/redfish/v1/Managers/1/EthernetInterfaces/1/'}, {u'@odata.id': u'/redfish/v1/Managers/1/EthernetInterfaces/2/'}, {u'@odata.id': u'/redfish/v1/Managers/1/EthernetInterfaces/3/'}]
```
  
  {% /tab %}
  {% /tabs %}
### Getting schema data


If schema data is available on the system, we can get schema data with the `info` function. Just include the `selector` for the schema you wish to return.

{% admonition type="info" name="NOTE" %}
`info` is optimized for HPE servers, but it should work for any schema which is on the system. If a specific system does not return schema data, please open a GitHub issue.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> schema = APP.info(selector='ComputerSystem.')
>>> schema['AssetTag']
{u'readonly': False, u'etag': True, u'type': [u'string', u'null'], u'description': u'A user-definable tag that is used to track this system for inventory or other client purposes.'}
```
  
  {% /tab %}
  {% /tabs %}
Instead of querying the entire schema, you can get specific schema keys using the `props` argument.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> assettag_schema = APP.info(selector='ComputerSystem.', props=['AssetTag'])
>>> assettag_schema
{u'readonly': False, u'etag': True, u'type': [u'string', u'null'], u'description': u'A user-definable tag that is used to track this system for inventory or other client purposes.'}
```
  
  {% /tab %}
  {% /tabs %}
### Modifying data


`loadset` can be used to set or `PATCH` data to the server. Data modified with `loadset` requires a `commit` to be updated on the server.

First we need to get the dictionary we want to modify. We will use `getprops`.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> system = APP.getprops(selector='ComputerSystem.')
>>> system[0]['AssetTag']
u''
>>> system[0]['AssetTag']='newtag'
>>> system[0]['AssetTag']
'newtag'
```
  
  {% /tab %}
  {% /tabs %}
You can also pass partial dictionaries to `loadset`. So you can use `getprops` to only gather the properties that you want to modify.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> assettag = APP.getprops(selector='ComputerSystem.', props=['AssetTag'])
>>> assettag[0]['AssetTag']
u'
>>> assettag[0]['AssetTag']='newtag'
>>> assettag[0]['AssetTag']
'newtag'
```
  
  {% /tab %}
  {% /tabs %}
Now that we have a modified dictionary, we can pass it to `loadset` to set patches. Loadset will return a list of changes that occurred. Remember to pass the dictionary, not the list returned from `getprops`.

{% admonition type="info" name="NOTE" %}
`fltrvals`, much like in getprops, can be used to filter out instances of the same type so that you only make changes to specific instances, instead of all instances of a type.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.loadset(seldict=system[0], selector='ComputerSystem.')
[{u'AssetTag': 'newtag'}]
```
  
  {% /tab %}
  {% /tabs %}
You can also use `status` to see all of the pending patches. Even if they are from multiple types.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.status()
[{u'ComputerSystem.v1_4_0(/redfish/v1/Systems/1/)': [{u'path': u'/AssetTag', u'value': 'newtag', u'op': u'replace'}]}]
```
  
  {% /tab %}
  {% /tabs %}
Finally, we apply our pending changes to the server with `commit`. Commit is a generator, so we need to loop through to confirm the settings applied.

{% admonition type="info" name="NOTE" %}
False means no error occurred for that path. True means an error occurred.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> for commit in APP.commit():
	print commit
/redfish/v1/Systems/1/
False
```
  
  {% /tab %}
  {% /tabs %}
We can double check our setting applied with another getprops call.

{% admonition type="info" name="NOTE" %}
We don't need to reload the monolith because it knows changes were made and auto reloads the path!
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> assettag = APP.getprops(selector='ComputerSystem.', props=['AssetTag'])
>>> assettag
[{u'AssetTag': u'newtag'}]
```
  
  {% /tab %}
  {% /tabs %}
### Performing Actions


Actions are just `POST` operations. They can be performed with the RmcApp handlers for raw HTTP commands. Refer to the [post\_handler](#post-handler).

### HTTP handlers

RmcApp supplies handlers for the raw HTTP methods `GET`, `PATCH`, `POST`, `DELETE`, `PUT`, and `HEAD`. On top of standard request and response returns, the handlers also allow for either printing or logging of full error message strings from registries if the registries are available on the system.

TODO: ADD info about showwarnings once it's fixed.

### GET Handler


The `get_handler` is the equivalent of HTTP `GET` and returns a `RestResponse` object. Simply add the path to GET as an argument.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.get_handler('/redfish/v1/systems/1/')
<redfish.rest.containers.RestResponse object at 0x00000000067070B8>
```
  
  {% /tab %}
  {% /tabs %}
### PATCH Handler

The `patch_handler` is the equivalent of HTTP `PATCH` and returns a `RestResponse` object. Simply add the path to PATCH and the body as arguments.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.patch_handler('/redfish/v1/systems/1/', {'AssetTag': 'TAG'})
<redfish.rest.containers.RestResponse object at 0x0000000006707898>
```
  
  {% /tab %}
  {% /tabs %}
### POST handler

The `post_handler` is the equivalent of HTTP `POST` and returns a `RestResponse` object. Simply add the path to POST and the body as arguments.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.post_handler('/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/', {'ResetType': 'On'})
<redfish.rest.containers.RestResponse object at 0x0000000006707978>
```
  
  {% /tab %}
  {% /tabs %}
### DELETE handler

The `delete_handler` is the equivalent of HTTP `DELETE` and returns a `RestResponse` object. Simply add the path to DELETE as an argument.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> resp = APP.delete_handler('/redfish/v1/systems/1/')
<redfish.rest.containers.RestResponse object at 0x0000000006707978>
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
We did not actually delete /redfish/v1/systems/1/. If you were to read the RestResponse you would see that an error returned.
{% /admonition %}

### PUT handler

The `put_handler` is the equivalent of HTTP `PUT` and returns a `RestResponse` object. Simply add the path to PUT and the body as arguments.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.put_handler('/redfish/v1/systems/1/', {'test': 'data'})
<redfish.rest.containers.RestResponse object at 0x0000000006707978>
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
We did not actually PUT to /redfish/v1/systems/1/. If you were to read the RestResponse, you would see that an error returned.
{% /admonition %}

### HEAD handler

The `head_handler` is the equivalent of HTTP `HEAD` and returns a `RestResponse` object. Simply add the path to gather headers from.
Note there is no body response of a head. Headers are available by the `getheaders()` function of RestResponse.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> resp = APP.head_handler('/redfish/v1/Systems/1/')
>>> resp.getheaders()
{'Content-Length': '0', 'ETag': 'W/"44499A19"', 'Link': '</redfish/v1/SchemaStore/en/ComputerSystem.json/>; rel=describedby', 'Allow': 'GET, HEAD, POST, PATCH', 'Date': 'Fri, 03 Jan 2020 19:21:53 GMT', 'OData-Version': '4.0', 'X-Frame-Options': 'sameorigin'}
```
  
  {% /tab %}
  {% /tabs %}
### Ending A Session

After finishing operations on a server, it's important to logout using `logout` to free sessions.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> APP.logout()
```
  
  {% /tab %}
  {% /tabs %}
