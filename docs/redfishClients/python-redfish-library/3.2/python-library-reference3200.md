---
seo:
title: HPE Python Redfish library
disableLastModified: false
toc:
 enable: true
 maxDepth: 3
---

# HPE Python Redfish library v3.2 reference documentation

This section describes the TBD

## redfish.rest 

Base interface to simplify interaction with LegacyRest/Redfish data and Remote/Local
connections.

### redfish.rest.v1 

Direct module for working with Redfish/REST technology.

_class_ `redfish.rest.v1.AuthMethod `

Bases: `<span class="pre">object</span>`

AUTH Method class

**BASIC**, **SESSION**, **CERTIFICATE** variables translate to their string counterparts
basic, session, certificate.

_exception_ `redfish.rest.v1.JsonDecodingError `

Bases: `<span class="pre">Exception</span>`

Raised when there is an error in json data.

_class_ `redfish.rest.v1.LegacyRestClient(**client_kwargs)`

<!-- Bases: [`<span class="pre">redfish.rest.v1.RestClient</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClient "redfish.rest.v1.RestClient")-->
Bases: [redfish.rest.v1.RestClient](http://hewlettpackard.github.io#redfish.rest.v1.RestClient "redfish.rest.v1.RestClient")


Class for a **Legacy REST** client instance.
Instantiates appropriate Rest object based on existing configuration.
Use this to retrieve a pre-configured Legacy Rest Class.

Basic arguments include (These can be omitted for most local connections):

- **base\_url**: The IP or Hostname of the server to perform operations on.

- **username**: The username of the account to login with.

- **password**: The username of the account to login with.


For full description of the arguments allowed see [`<span class="pre">RestClient</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClient "redfish.rest.v1.RestClient")

_class_ `redfish.rest.v1.RedfishClient(**client_kwargs)`

Bases: [`<span class="pre">redfish.rest.v1.RestClient</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClient "redfish.rest.v1.RestClient")

Class for a **Redfish** client instance.
Instantiates appropriate Redfish object based on existing configuration.
Use this to retrieve a pre-configured Redfish Class.

Basic arguments include (These can be omitted for most local connections):

- **base\_url**: The IP or Hostname of the server to perform operations on. None for local.

- **username**: The username of the account to login with.

- **password**: The username of the account to login with.


For full description of the arguments allowed see [`<span class="pre">RestClient</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClient "redfish.rest.v1.RestClient")

_class_ `redfish.rest.v1.RestClient( _default\_prefix='/redfish/v1/'_, _is\_redfish=True_, _username=None_, _password=None_, _auth=None_, _\*\*client\_kwargs_) `

Bases: [`<span class="pre">redfish.rest.v1.RestClientBase</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClientBase "redfish.rest.v1.RestClientBase")

REST client with Redfish and LegacyRest support built on top.

Parameters

- **default\_prefix** ( _str_) – The root of the REST API, either /redfish/v1/ or /rest/v1.

- **is\_redfish** ( _bool_) – Flag to force redfish conformance, even on LegacyRest clients.

- **username** ( _str_) – The username of the account to login with.

- **password** ( _str_) – The password of the account to login with.

- **auth** (str or [`<span class="pre">AuthMethod</span>`](http://hewlettpackard.github.io#redfish.rest.v1.AuthMethod "redfish.rest.v1.AuthMethod") class variable.) – The authentication type to force.

- **\*\*client\_kwargs** – Arguments to create a [`<span class="pre">RestClientBase</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClientBase "redfish.rest.v1.RestClientBase") instance.


_property_ `<span class="pre">base_url</span>` 

The connection’s URL to make calls against

_property_ `<span class="pre">basic_auth</span>` 

The Client’s basic auth header, if any.

`<span class="pre">login</span>`( _auth='session'_) 

Login to a Redfish or LegacyRest server.
If auth is not supplied login will intelligently
choose the authentication mode based on the arguments passed.
Basic authentication MUST be specified with auth.

Parameters

**auth** (str or [`<span class="pre">AuthMethod</span>`](http://hewlettpackard.github.io#redfish.rest.v1.AuthMethod "redfish.rest.v1.AuthMethod") class variable) – The auth type to login with.

_property_ `<span class="pre">login_url</span>` 

The login URI from the root response. This is where we post the
credentials for a login.

`<span class="pre">logout</span>`() 

Logout of session.

YOU MUST CALL THIS WHEN YOU ARE DONE TO FREE UP SESSIONS

_property_ `<span class="pre">password</span>` 

The password, if any. Once a login function has been called the credentials are removed
from memory for security and this will return None.

_property_ `<span class="pre">proxy</span>` 

The connection’s proxy, if any.

_property_ `<span class="pre">session_key</span>` 

The Client’s session key, if any.

_property_ `<span class="pre">session_location</span>` 

The session URI. Used for deleting the session when we logout.

_property_ `<span class="pre">username</span>` 

The username, if any. Once a login function has been called the credentials are removed
from memory for security and this will return None.

_class_ `redfish.rest.v1.RestClientBase( _biospassword=None_, _\*\*client\_kwargs_) `

Bases: `<span class="pre">object</span>`

Base REST client. Each RestClientBase has a connection object built by parsing the
client\_kwargs. This connection is used for communicating remotely or locally.

Parameters

- **biospassword** ( _str_) – The iLO Gen9 bios password. See [`<span class="pre">bios_password()</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClientBase.bios_password "redfish.rest.v1.RestClientBase.bios_password")

- **\*\*client\_kwargs** – Arguments to pass to the client argument. For possible values see
[`<span class="pre">redfish.rest.connections.Blobstore2Connection</span>`](http://hewlettpackard.github.io#redfish.rest.connections.Blobstore2Connection "redfish.rest.connections.Blobstore2Connection") for a local
connection or [`<span class="pre">redfish.rest.connections.HttpConnection</span>`](http://hewlettpackard.github.io#redfish.rest.connections.HttpConnection "redfish.rest.connections.HttpConnection")
for remote connection.


_property_ `<span class="pre">bios_password</span>` 

Property for the biospassword. Only required on Gen9 iLO 4 when RBSU bios password is set
and modifying bios settings

`<span class="pre">delete</span>`( _path_, _headers=None_) 

Perform a DELETE request

Parameters

- **path** ( _str_) – The URI path.

- **args** ( _dict_) – Any query to add to the URI. (Can also be directly added to the URI)


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

`<span class="pre">get</span>`( _path_, _args=None_, _headers=None_) 

Perform a GET request

Parameters

- **path** ( _str_) – The URI path.

- **args** ( _dict_) – Any query to add to the URI. (Can also be directly added to the URI)

- **headers** ( _dict_) – Any extra headers to add to the request.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

`<span class="pre">head</span>`( _path_, _headers=None_) 

Perform a HEAD request

Parameters

- **path** ( _str_) – The URI path.

- **headers** ( _dict_) – Any extra headers to add to the request.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

`<span class="pre">patch</span>`( _path_, _body_, _args=None_, _headers=None_) 

Perform a PATCH request

Parameters

- **path** ( _str_) – The URI path.

- **body** ( _dict_) – The body to pass with the request.

- **args** ( _dict_) – Any query to add to the URI. (Can also be directly added to the URI)

- **headers** ( _dict_) – Any extra headers to add to the request.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

`<span class="pre">post</span>`( _path_, _body_, _args=None_, _headers=None_) 

Perform a POST request

Parameters

- **path** ( _str_) – The URI path.

- **body** ( _dict_) – The body to pass with the request.

- **args** ( _dict_) – Any query to add to the URI. (Can also be directly added to the URI)

- **headers** ( _dict_) – Any extra headers to add to the request.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

`<span class="pre">put</span>`( _path_, _body_, _args=None_, _headers=None_) 

Perform a PUT request

Parameters

- **path** ( _str_) – The URI path.

- **body** ( _dict_) – The body to pass with the request.

- **args** ( _dict_) – Any query to add to the URI. (Can also be directly added to the URI)

- **headers** ( _dict_) – Any extra headers to add to the request.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

_exception_ `redfish.rest.v1.ServerDownOrUnreachableError `

Bases: `<span class="pre">Exception</span>`

Raised when server is unreachable.

### redfish.rest.connections 

All Connections for interacting with REST.

_class_ `redfish.rest.connections.Blobstore2Connection( _\*\*conn\_kwargs_) `

Bases: `<span class="pre">object</span>`

A connection for communicating locally with HPE servers

Parameters

**\*\*conn\_kwargs** – Arguments to pass to the connection initialization.

Possible arguments for _\*\*conn\_kwargs_ include:

Username

The username to login with

Password

The password to login with

`<span class="pre">cert_login</span>`() 

Login using a certificate.

`<span class="pre">rest_request</span>`( _path=''_, _method='GET'_, _args=None_, _body=None_, _headers=None_) 

Rest request for blobstore client

Parameters

- **path** ( _str_) – The URI path to perform the operation on.

- **method** ( _str_) – method to perform on the path.

- **args** ( _dict_) – Any query to add to the URI. (Can also be directly added to the URI)

- **body** ( _dict_) – body payload to include in the request if needed.

- **headers** ( _dict_) – Any extra headers to add to the request.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

_exception_ `redfish.rest.connections.ChifDriverMissingOrNotFound `

Bases: `<span class="pre">Exception</span>`

Raised when CHIF driver is missing or not found.

_exception_ `redfish.rest.connections.DecompressResponseError `

Bases: `<span class="pre">Exception</span>`

Raised when decompressing the response failed.

_class_ `redfish.rest.connections.HttpConnection( _base\_url_, _\*\*client\_kwargs_) `

Bases: `<span class="pre">object</span>`

HTTP connection capable of authenticating with HTTPS and Http/Socks Proxies

Parameters

- **base\_url** ( _str_) – The URL to make HTTP calls against

- **\*\*client\_kwargs** – Arguments to pass to the connection initialization. These are passed to a urllib3 [PoolManager](https://urllib3.readthedocs.io/en/latest/reference/index.html?highlight=PoolManager#urllib3.PoolManager). All arguments that can be passed to a PoolManager are valid arguments.


`<span class="pre">cert_login</span>`() 

Login using a certificate.

_property_ `<span class="pre">proxy</span>` 

The proxy, if any.

`<span class="pre">rest_request</span>`( _path_, _method='GET'_, _args=None_, _body=None_, _headers=None_) 

Format and do HTTP Rest request

Parameters

- **path** ( _str_) – The URI path to perform the operation on.

- **method** ( _str_) – method to perform on the path.

- **args** ( _dict_) – Any query to add to the URI. (Can also be directly added to the URI)

- **body** ( _dict_) – body payload to include in the request if needed.

- **headers** ( _dict_) – Any extra headers to add to the request.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

_exception_ `redfish.rest.connections.InvalidCertificateError `

Bases: `<span class="pre">Exception</span>`

Raised when a invalid certificate has been provided.

_exception_ `redfish.rest.connections.InvalidCredentialsError `

Bases: `<span class="pre">Exception</span>`

Raised when invalid credentials have been provided.

_exception_ `redfish.rest.connections.RetriesExhaustedError `

Bases: `<span class="pre">Exception</span>`

Raised when retry attempts have been exhausted.

_exception_ `redfish.rest.connections.SecurityStateError `

Bases: `<span class="pre">Exception</span>`

Raised when there is a strict security state without authentication.

### redfish.rest.containers 

Containers used for REST requests and responses.

_class_ `redfish.rest.containers.RestRequest( _path_, _method='GET'_, _data=''_, _url=None_) `

Bases: `<span class="pre">object</span>`

Holder for Request information

Parameters

- **path** ( _str_) – The URI path.

- **method** ( _str_) – method to be implemented

- **data** ( _dict_) – body payload for the rest call


_property_ `<span class="pre">body</span>` 

The body to pass along with the request, if any.

_property_ `<span class="pre">method</span>` 

The method to implement.

_property_ `<span class="pre">path</span>` 

The path the request is made against.

_class_ `redfish.rest.containers.RestResponse( _rest\_request_, _http\_response_) `

Bases: `<span class="pre">object</span>`

Returned by Rest requests

Parameters

- **rest\_request** ( [`<span class="pre">RestRequest</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestRequest "redfish.rest.containers.RestRequest") object) – Holder for request information

- **http\_response** ( `<span class="pre">HTTPResponse</span>` object) – Response from HTTP


_property_ `<span class="pre">dict</span>` 

The response body data as an dict

`<span class="pre">getheader</span>`( _name_) 

Case-insensitive search for an individual header

Parameters

**name** ( _str_) – The header name to retrieve.

Returns

returns a header from HTTP response or None if not found.

`<span class="pre">getheaders</span>`() 

Get all headers included in the response.

`<span class="pre">loaddict</span>`( _newdict_) 

Property for setting JSON data. Used during initialization.

Parameters

**newdict** ( _str_) – The string data to set as JSON data.

_property_ `<span class="pre">obj</span>` 

The response body data as an object

_property_ `<span class="pre">ori</span>` 

The original response body data

_property_ `<span class="pre">path</span>` 

The path the request was made against.

_property_ `<span class="pre">read</span>` 

The response body, attempted to be translated into json, else is a string.

_property_ `<span class="pre">request</span>` 

The saved http request the response was generated by.

_property_ `<span class="pre">session_key</span>` 

The saved session key for the connection.

_property_ `<span class="pre">session_location</span>` 

The saved session location, used for logging out.

_property_ `<span class="pre">status</span>` 

The status code of the request.

## redfish.ris 

Expanded LegacyREST/Redfish interface for schema validation, database for responses, caching,
and error registries.

### redfish.ris.gen\_compat 

Compatibility functionality in between iLO versions and generic Redfish/LegacyRest servers.
Used to provide convenient string variables that are usable on any iLO irrespective of version or
API type.

_class_ `redfish.ris.gen_compat.Definevals `

Bases: `<span class="pre">object</span>`

Base class for setting platform dependent variables.

_class_ `redfish.ris.gen_compat.DefinevalsNine `

Bases: [`<span class="pre">redfish.ris.gen_compat.Definevals</span>`](http://hewlettpackard.github.io#redfish.ris.gen_compat.Definevals "redfish.ris.gen_compat.Definevals")

Platform dependent variables for iLO 4 LegacyRest (Gen 9).

`<span class="pre">redfishchange</span>`() 

Function to update redfish variables from LegacyRest to iLO 4 Redfish (Gen 9).

_class_ `redfish.ris.gen_compat.Definevalstenplus `

Bases: [`<span class="pre">redfish.ris.gen_compat.Definevals</span>`](http://hewlettpackard.github.io#redfish.ris.gen_compat.Definevals "redfish.ris.gen_compat.Definevals")

Platform dependent variables for iLO 5+ (Gen 10).

`<span class="pre">redfishchange</span>`() 

Empty function to update redfish variables (unneeded when the system is already redfish).

_class_ `redfish.ris.gen_compat.Typesandpathdefines `

Bases: `<span class="pre">object</span>`

The global types and path definitions class. Holds information on a system and automatically
creates the correct type strings along with some generic paths. Paths are meant to be used with
iLO systems. Paths may be different on generic Redfish systems. Self variables are created when
the getgen function is called.

Useful self variables that are created include:

- **url**: The url of the system that the defines were created for.

- **defs**: The string defines for the system that was passed to getgen. Includes key
property keys, paths, types, and flags to check what the system type is.

- **ilogen**: The iLO generation of the system that the defines were created for. For non-iLO
Redfish systems this is set to **5**.

- **iloversion**: The iLO version of the system that the defines were created for.

- **flagiften**: Flag is set to true if the system is Gen 10 or a non-iLO Redfish system.


`<span class="pre">defineregschemapath</span>`( _rootobj_) 

Defines the schema and registry paths using data in root path.

Parameters

**rootobj** ( _dict._) – The root path data.

`<span class="pre">getgen</span>`( _gen=None_, _url=None_, _username=None_, _password=None_, _logger=None_, _proxy=None_, _ca\_cert\_data={}_, _isredfish=True_) 

Function designed to verify the servers platform. Will generate the Typeandpathdefines
variables based on the system type that is detected.

Parameters

- **url** ( _str_) – The URL to perform the request on.

- **username** ( _str_) – The username to login with.

- **password** ( _str_) – The password to login with.

- **proxy** ( _str_) – The proxy to connect to the system with.

- **ca\_certs** ( _dict_) – Dictionary including the TLS certificate information of user based
authentication

- **isredfish** ( _bool_) – The flag to force redfish conformance on iLO 4 systems. You will still
need to call updatedefinesflag to update the defines to Redfish.

- **logger** ( _str_) – The logger handler to log data too uses the default if none is provided.


`<span class="pre">modifyselectorforgen</span>`( _sel_) 

Changes the select to match the Generation’s HP string based to the correct type for
specific iLO versions.

Parameters

**sel** ( _str_) – query to be changed to match Generation’s HP string

Returns

A modified selector matching the Generation’s HP string.

Return type

string

`<span class="pre">updatedefinesflag</span>`( _redfishflag=None_) 

Updates the redfish and rest flag depending on system and redfishflag input. On an iLO 5
system or another Redfish system, this will do nothing. On an iLO 4 system with both Redfish
and LegacyRest this will update the defines to redfish if the _redfishflag_ is set to True
and stay with the LegacyRest defines otherwise.

Parameters

**redfishflag** ( _bool_) – User input for redfish

Returns

True if the system should use Redfish, False for legacy Rest.

Return type

bool

### redfish.ris.ris 

Monolith database implementation. Crawls Redfish and Legacy REST implementations
and holds all data retrieved. The created database is called the **monolith** and referenced as
such in the code documentation.

_exception_ `redfish.ris.ris.BiosUnregisteredError `

Bases: `<span class="pre">Exception</span>`

Raised when BIOS has not been registered correctly in iLO

_exception_ `redfish.ris.ris.RisInstanceNotFoundError `

Bases: `<span class="pre">Exception</span>`

Raised when attempting to select an instance that does not exist

_class_ `redfish.ris.ris.RisMonolith( _client_, _typepath_, _directory\_load=True_) `

Bases: `<span class="pre">redfish.ris.sharedtypes.Dictable</span>`

Monolithic cache of RIS data. This takes a [`<span class="pre">redfish.rest.v1.RestClient</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClient "redfish.rest.v1.RestClient") and uses it to
gather data from a server and saves it in a modifiable database called monolith.

Parameters

- **client** ( [`<span class="pre">redfish.rest.v1.RestClient</span>`](http://hewlettpackard.github.io#redfish.rest.v1.RestClient "redfish.rest.v1.RestClient")) – client to use for data retrieval. Client is saved as a weakref, using it requires
parenthesis and will not survive if the client used in init is removed.

- **typepath** ( `<span class="pre">redfish.rest.ris.Typesandpathdefines</span>`) – The compatibility class to use for differentiating between Redfish/LegacyRest.

- **directory\_load** ( _bool_) – The flag to quick load using resource directory if possible.
When set to True this will load paths, etags, and types, but not create responses for
every monolith member. When responses are needed, they will need to be loaded separately.


`<span class="pre">capture</span>`( _redmono=False_) 

Crawls the server specified by the client and returns the entire monolith.

Parameters

**redmono** ( _bool_) – Flag to return only the headers and responses instead of the entire monolith
member data.

Return type

dict

`<span class="pre">checkmodified</span>`( _opath_, _path=None_, _modpaths=None_) 

Check if the path or its children are modified. When calling this
function you only need to include opath.

Parameters

**opath** ( _str_) – original path which has been modified

_property_ `<span class="pre">client</span>` 

Returns the current client object reference

Return type

class object

_property_ `<span class="pre">directory_load</span>` 

The flag to gather information about a tree without downloading every path. Only usable
on HPE systems with a ResourceDirectory. type

`<span class="pre">gettypename</span>`( _types_) 

Takes a full type response and returns all major types associated.
Example: #Type.v1\_0\_0.Type will return iter(Type.1)

Parameters

**types** ( _str_) – The type of the requested response.

Return type

iter of major types

`<span class="pre">iter</span>`( _typeval=None_) 

An iterator that yields each member of monolith associated with a specific type. In the
case that no type is included this will yield all members in the monolith.

Return type

[RisMonolithMemberv100](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100 "redfish.ris.ris.RisMonolithMemberv100")

`<span class="pre">itertype</span>`( _typeval_) 

Iterator that yields member(s) of given type in the monolith and raises an error if no
member of that type is found.

Parameters

**typeval** ( _str_) – type name of the requested member.

Return type

[RisMonolithMemberv100](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100 "redfish.ris.ris.RisMonolithMemberv100")

`<span class="pre">killthreads</span>`() 

Function to kill threads on logout

`<span class="pre">load</span>`( _path=None_, _includelogs=False_, _init=False_, _crawl=True_, _loadtype='href'_, _loadcomplete=False_, _path\_refresh=False_) 

Walks the entire data model and caches all responses or loads an individual path into
the monolith. Supports both threaded and sequential crawling.

Parameters

- **path** ( _str._) – The path to start the crawl from the provided path if crawling or
loads the path into monolith. If path is not included, crawl will start with
the default. The default is _/redfish/v1/_ or _/rest/v1_ depending on if the
system is Redfish or LegacyRest.

- **includelogs** ( _bool_) – Flag to determine if logs should be downloaded as well in the crawl.

- **init** ( _bool_) – Flag to determine if this is the initial load.

- **crawl** ( _bool_) – Flag to determine if load should crawl through found links.

- **loadtype** ( _str._) – Flag to determine if loading standard links: _href_ or schema links: _ref_.

- **loadcomplete** ( _bool_) – Flag to download the entire data model including registries and
schemas.

- **path\_refresh** ( _bool_) – Flag to reload the path specified, clearing any patches and overwriting the
current data in the monolith.


`<span class="pre">load_from_dict</span>`( _src_) 

Load data to monolith from a dict. This is the reverse of [`<span class="pre">to_dict()</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolith.to_dict "redfish.ris.ris.RisMonolith.to_dict").

Parameters

**src** ( _str_) – data receive from rest operation.

`<span class="pre">markmodified</span>`( _opath_, _path=None_, _modpaths=None_) 

Mark the paths to be modifed which are connected to current path. When calling this
function you only need to include opath.

Parameters

**opath** ( _str_) – original path which has been modified

`<span class="pre">path</span>`( _path_) 

Provides the member corresponding to the path specified. Case sensitive.

Parameters

**path** ( _str_) – path of the monolith member to return

Return type

[RisMonolithMemberv100](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100 "redfish.ris.ris.RisMonolithMemberv100")

`<span class="pre">removepath</span>`( _path_) 

Remove a given path from the cache

Parameters

**path** ( _str_) – path which is to be checked if modified

`<span class="pre">to_dict</span>`() 

Convert data to a dict from monolith. This is the reverse of [`<span class="pre">load_from_dict()</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolith.load_from_dict "redfish.ris.ris.RisMonolith.load_from_dict").

_property_ `<span class="pre">type</span>` 

Return monolith version type

`<span class="pre">typecheck</span>`( _types_) 

Check if a member of given type exists in the monolith

Parameters

**types** ( _str_) – type to check.

Return type

bool

_property_ `<span class="pre">types</span>` 

Returns list of types for members in the monolith

Return type

list

`<span class="pre">update_member</span>`( _member=None_, _resp=None_, _path=None_, _init=True_) 

Adds member to the monolith. If the member already exists the
data is updated in place. Takes either a RisMonolithMemberv100 instance or a
[`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") along with that responses path.

Parameters

- **member** ( [_RisMonolithMemberv100_](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100 "redfish.ris.ris.RisMonolithMemberv100")) – The monolith member to add to the monolith.

- **resp** ( [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse")) – The rest response to add to the monolith.

- **path** ( _str_) – The path correlating to the response.

- **init** ( _bool_) – Flag if addition is part of the initial load. Set this to false if you are
calling this by itself.


_property_ `<span class="pre">visited_urls</span>` 

The urls visited by the monolith

_class_ `redfish.ris.ris.RisMonolithMemberBase `

Bases: `<span class="pre">redfish.ris.sharedtypes.Dictable</span>`

RIS monolith member base class

_class_ `redfish.ris.ris.RisMonolithMemberv100( _restresp=None_, _isredfish=True_) `

Bases: [`<span class="pre">redfish.ris.ris.RisMonolithMemberBase</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberBase "redfish.ris.ris.RisMonolithMemberBase")

Class used by [`<span class="pre">RisMonolith</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolith "redfish.ris.ris.RisMonolith") for holding information on a response and adds extra data
for monolith usage. A member can be marked as _modified_ which means another operation may have
rendered this member out of date. It should be reloaded before continuing to ensure data is
up to date.

Parameters

- **restresp** ( [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse")) – RestResponse to create a member from.

- **isredfish** ( _bool_) – Flag if the response is redfish or not


_property_ `<span class="pre">dict</span>` 

Get the dictionary of the monolith member’s response

_property_ `<span class="pre">etag</span>` 

Get the etag of the response

`<span class="pre">load_from_dict</span>`( _src_) 

Load variables to a monolith member from a dictionary.
This is the reverse of [`<span class="pre">to_dict()</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100.to_dict "redfish.ris.ris.RisMonolithMemberv100.to_dict").

Parameters

**src** ( _dict_) – Source to load member data from.

_property_ `<span class="pre">maj_type</span>` 

Get major type of the monolith member’s response

_property_ `<span class="pre">patches</span>` 

Get patches for the monolith member

_property_ `<span class="pre">path</span>` 

Get path of the monolith member’s response

`<span class="pre">popdefs</span>`( _typename_, _pathval_, _etagval_) 

Populate the default values in the class

Parameters

- **typename** ( _str_) – The default **Type** string. Example: @odata.type

- **pathval** ( _str_) – The default **Path** string. Example: @odata.id

- **etagval** ( _str_) – The default **ETag** value.


_property_ `<span class="pre">resp</span>` 

Get the entire response of the monolith member

`<span class="pre">to_dict</span>`() 

Converts Monolith Member to a dictionary. This is the reverse of [`<span class="pre">load_from_dict()</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100.load_from_dict "redfish.ris.ris.RisMonolithMemberv100.load_from_dict").

Returns

returns the Monolith Member in dictionary form

_property_ `<span class="pre">type</span>` 

Get type of the monolith member’s response

_exception_ `redfish.ris.ris.SchemaValidationError `

Bases: `<span class="pre">Exception</span>`

Schema Validation Class Error

_exception_ `redfish.ris.ris.SessionExpired `

Bases: `<span class="pre">Exception</span>`

Raised when session has expired

### redfish.ris.ris\_threaded 

A threaded version of RIS \_load for quicker searching

_class_ `redfish.ris.ris_threaded.LoadWorker( _queue_) `

Bases: `<span class="pre">threading.Thread</span>`

A threaded implementation of \_load for quicker crawling

`<span class="pre">get_exception</span>`() 

Get any exception from the thread

`<span class="pre">run</span>`() 

Main worker function

### redfish.ris.utils 

Utility functions for internal and external use. Contains general json navigating functions as
well as some monolith utility functions.

`redfish.ris.utils.checkallowablevalues( _newdict=None_, _oridict=None_) `

Validate dictionary changes with Redfish allowable values. This will raise an
[`<span class="pre">redfish.ris.rmc_helper.IncorrectPropValue</span>`](http://hewlettpackard.github.io#redfish.ris.rmc_helper.IncorrectPropValue "redfish.ris.rmc_helper.IncorrectPropValue") error if the dictionary is not valid.

Parameters

- **newdict** ( _dict_) – dictionary with only the properties that have changed.

- **oridict** ( _dict_) – Full dictionary with current state. (Includes @Redfish.AllowableValues)


`redfish.ris.utils.diffdict( _newdict=None_, _oridict=None_, _settingskipped=[False]_) `

Diff two dictionaries, returning only the values that are different between the two.

Parameters

- **newdict** ( _dict_) – The first dictionary to check for differences.

- **oridict** ( _dict_) – The second dictionary to check for differences.

- **settingskipped** ( _list_) – Flag to determine if any settings were missing.


Returns

dictionary with only the properties that have changed.

Return type

dict

`redfish.ris.utils.filter_output( _output_, _sel_, _val_) `

Filters a list of dictionaries based on a key:value pair only returning the dictionaries
that include the key and value.

Parameters

- **output** ( _list_) – List of dictionaries to check for the key:value.

- **sel** ( _str_) – the key for the property to be filtered by.

- **val** ( _str_) – value for the property be filtered by.


Returns

A filtered list from output parameter

Return type

list

`redfish.ris.utils.get_errmsg_type( _results_) `

Return the registry type of a response.

Parameters

**results** ( [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse")) – rest response.

Returns

A Registry Id type string, None if not match is found, or no\_id if the
response is not an error message

Return type

None or string

`redfish.ris.utils.getattributeregistry( _instances_, _adict=None_) `

Gets an attribute registry in given monolith instances.

Parameters

- **instances** ( _list_) – list of [`<span class="pre">redfish.ris.ris.RisMonolithMemberv100</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100 "redfish.ris.ris.RisMonolithMemberv100") instances to be
checked for attribute registry.

- **adict** ( _dict_) – A dictionary containing an AttributeRegistry


Returns

returns a dictionary containing the attribute registry string(s)

Return type

dict

`redfish.ris.utils.iterateandclear( _dictbody_, _proplist_) `

Iterate over a dictionary and remove listed properties.

Parameters

- **dictbody** ( _dict_ _or_ _list_) – json body

- **proplist** ( _list_) – property list


`redfish.ris.utils.json_traversal( _data_, _key\_to\_find_, _ret\_dict=False_) `

PENDING MODIFICATION TO MORE GENERALIZED NOTATION

Recursive function to traverse a JSON resposne object and retrieve the array of
relevant data (value or full key/value pair). Only a single key needs to be found within the
dictionary in order to return a valid dictionary or value.

#Intended Usage:
\- Error response message parsing
\- Checkreadunique in Validation

Parameters

- **data** ( _JSON error response object_) – json data to be parsed

- **key\_to\_find** ( _String_) – JSON key to be found

- **ret\_dict** ( _boolean_) – return dictionary instead of just value


Returns

value or dictionary containing ‘key\_to\_find’
(and all additional keys at the same level).

`redfish.ris.utils.json_traversal_delete_empty( _data_, _old\_key=None_, _\_iter=None_, _remove\_list=None_) `

Recursive function to traverse a dictionary and delete things which
match elements in the remove\_list
:param data: to be truncated
:type data: list or dict
:param old\_key: key from previous recursive call (higher in stack)
:type old\_key: dictionary key
:param \_iter: iterator tracker for list (tracks iteration across
recursive calls)
:type \_iter: numerical iterator
:param remove\_list: list of items to be removed
:type: list
:returns: none

`redfish.ris.utils.merge_dict( _currdict_, _newdict_) `

Merges dictionaries together.

Parameters

- **currdict** ( _dict_) – Dictionary that will absorb the second.

- **newdict** ( _dict_) – Dictionary to merge into the first.


`redfish.ris.utils.navigatejson( _selector_, _currdict_, _val=None_) `

Function for navigating the json dictionary. Searches a dictionary for specific keys
and possibly values, returning only the dictionary sections for the requested keys and values.

Parameters

- **selector** ( _list_) – the property required from current dictionary.

- **val** ( _str_ _or_ _int_ _or_ _bool_) – value to be filtered by.

- **currdict** ( _json dictionary/list_) – json dictionary of list to be filtered


Returns

returns a dictionary of selected items

`redfish.ris.utils.skipnonsettingsinst( _instances_) `

Removes non /settings sections. Useful for only returning settings monolith members.
Example: Members with paths /redfish/v1/systems/1/bios/ and
/redfish/v1/systems/1/bios/settings
will return only the /redfish/v1/systems/1/bios/settings member.

Parameters

**instances** ( _list_) – list of [`<span class="pre">redfish.ris.ris.RisMonolithMemberv100</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100 "redfish.ris.ris.RisMonolithMemberv100")
instances to check for settings paths.

Returns

list of [`<span class="pre">redfish.ris.ris.RisMonolithMemberv100</span>`](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100 "redfish.ris.ris.RisMonolithMemberv100") setting instances

Return type

list

`redfish.ris.utils.validate_headers( _instance_, _verbose=False_) `

Validates an instance is patchable.

Parameters

- **instance** ( `<span class="pre">redfish.ris.RisMonolithMemberv100</span>`) – Instance of the property to check.

- **verbose** ( _bool_) – Flag to print or log more information.


Returns

True if the setting is not patchable, False if it is.

`redfish.ris.utils.warning_handler( _msg_) `

Helper function for handling warning messages appropriately. If LOGGER level is set to 40
print out the warnings, else log them as a warning.

Parameters

**msg** ( _str_) – The warning message.

### redfish.ris.rmc 

A convenience layer that combines multiple lower level classes and functions into one.

_class_ `redfish.ris.rmc.RmcApp( _showwarnings=False_, _cache\_dir=None_) `

Bases: `<span class="pre">object</span>`

A convenience class that combines the client, compatibility, validation, caching,
and monolith into one class.

Parameters

- **showwarnings** ( _bool_) – Flag to print warnings to std.out (True) or log in log file (False)

- **cache\_dir** ( _str_) – Cache directory to save cache data to, if None, RmcApp will not cache data.
Cache can allow your RmcApp to persist between scripts.


_property_ `<span class="pre">cache</span>` 

True if we are caching data, False if we are not

_property_ `<span class="pre">cachedir</span>` 

The cache directory that is used to cache app data to a file,
None if not caching data.

`<span class="pre">commit</span>`() 

Applies all pending json patches to the server.

Yields

Two strings.

1. Path being PATCHed

2. True if an error occurred during the PATCH, False if no error.


`<span class="pre">create_save_header</span>`() 

Adds save file headers to show what server the data came from.

Parameters

- **selector** ( _str._) – The type selection for the get save operation.

- **selectignore** ( _boolean_) – Return the save header even if there isn’t a selection to add it to.


Returns

returns an header ordered dictionary

_property_ `<span class="pre">current_client</span>` 

Get the current client

`<span class="pre">delete_handler</span>`( _put\_path_, _headers=None_, _silent=False_, _service=False_) 

Performs the client HTTP DELETE operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.

Parameters

- **put\_path** ( _str_) – The REST path to perform the delete operation on.

- **headers** ( _dict_) – Any additional headers to be added to the request.

- **silent** ( _bool_) – If False response will be parsed based on service flag and output to a log or
stdout. If True response will not be parsed and no message output or error
messages raised from the response handler.

- **service** ( _bool_) – When handling the response, if True registries will be gathered and a full,
response will be output if False they will not and response handler will
instead return a generic message.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object containing response data

`<span class="pre">download_path</span>`( _paths_, _crawl=True_, _path\_refresh=False_) 

Loads paths into the monolith.

Parameters

- **paths** ( _list_) – list of paths to download

- **path\_refresh** ( _bool._) – Flag to reload the paths or not.

- **crawl** ( _boolean._) – Flag to determine if load should traverse found links.


`<span class="pre">get_handler</span>`( _put\_path_, _silent=False_, _uncache=False_, _headers=None_, _service=False_) 

Performs the client HTTP GET operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.

Parameters

- **put\_path** ( _str_) – The REST path to perform the get operation on.

- **uncache** ( _bool_) – flag to not store the data downloaded into monolith.

- **headers** ( _dict_) – Any additional headers to be added to the request.

- **silent** ( _bool_) – If False response will be parsed based on service flag and output to a log or
stdout. If True response will not be parsed and no message output or error
messages raised from the response handler.

- **service** ( _bool_) – When handling the response, if True registries will be gathered and a full,
response will be output if False they will not and response handler will
instead return a generic message.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object

`<span class="pre">get_model</span>`( _currdict_, _attributeregistry_, _latestschema=None_, _newarg=None_, _proppath=None_) 

Returns a model and possibly a bios model for the current instance’s schema/registry.
This model can be used to read schema data and validate patches.

Parameters

- **currdict** ( _dict_) – The dictionary to gather the schema model from.

- **attributeregistry** ( _dict_) – The current systems attribute registry. If not gathering a bios
registry this can be set to None.

- **latestschema** ( _bool_) – Flag to determine if we should drop the schema version when we try to
match schema information. If True, the version will be dropped.

- **newargs** ( _list_) – List of multi level properties to be gathered.

- **proppath** ( _str_) – The path of the schema you want to validate (from Location header).


Returns

model and bios model

`<span class="pre">get_selection</span>`( _selector=None_, _setenable=False_, _path\_refresh=False_) 

Gathers instances and optionally the attributeregistry based on selector.

Parameters

- **selector** ( _str._) – The type selection for the get operation.

- **setenable** ( _boolean._) – Flag to determine if registry should also be returned.

- **path\_refresh** ( _boolean._) – Flag to reload the selected instances.


Returns

returns a list of selected items

`<span class="pre">getbiosfamilyandversion</span>`() 

Function that returns the current BIOS version information.

`<span class="pre">getcollectionmembers</span>`( _path_, _fullresp=False_) 

Returns collection/item lists of the provided path.

Parameters

- **path** ( _bool._) – path to return.

- **fullresp** – Return full json data instead of only members.


Returns

list of collection members

`<span class="pre">getidbytype</span>`( _tpe_) 

Return a list of URIs that correspond to the supplied type string.

Parameters

**tpe** ( _string._) – type string to search for.

`<span class="pre">getiloversion</span>`( _skipschemas=False_) 

Function that returns the current iLO version.

Parameters

**skipschemas** ( _bool_) – flag to determine whether to skip schema download. If False, this will
also verify if schemas are available.

Returns

returns current iLO version

`<span class="pre">getprops</span>`( _selector=None_, _props=None_, _nocontent=None_, _skipnonsetting=True_, _remread=False_, _insts=None_) 

Gets properties from a specified selector. If no selector is specified, uses the selector
property in the app class. Instead of a selector a list of instances to search can be used
instead. If both **selector** and **insts** are passed, **insts** is used.

Specific values for multi-level dictionaries can be returned by passing each key
separated by a “/” Ex: Key/Sub-Key/Sub-Sub-Key

Parameters

- **selector** ( _str_) – The type selection for the get operation.

- **skipnonsetting** ( _bool_) – Flag to remove non settings path.

- **nocontent** ( _list_) – Keys not found are added to the list provided.

- **remread** ( _bool_) – Flag to remove readonly properties.

- **props** ( _list_) – The keys to search for within current selection.

- **insts** ( _list_) – List of RisMonolithMemberv100 to be searched for specific keys.


Returns

A list of properties found in dictionary form.

Return type

list

`<span class="pre">head_handler</span>`( _put\_path_, _silent=False_, _service=False_) 

Performs the client HTTP HEAD operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.

Parameters

- **put\_path** ( _str_) – The REST path to perform the head operation on.

- **silent** ( _bool_) – If False response will be parsed based on service flag and output to a log or
stdout. If True response will not be parsed and no message output or error
messages raised from the response handler.

- **service** ( _bool_) – When handling the response, if True registries will be gathered and a full,
response will be output if False they will not and response handler will
instead return a generic message.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object containing response data

`<span class="pre">info</span>`( _selector=None_, _props=None_, _dumpjson=True_, _latestschema=False_) 

Gets schema information for properties from a specified selector. If no selector is
specified, uses the selector property in the app class. If no properties are specified
the entire schema dictionary is returned in a list.

Parameters

- **selector** ( _str_) – The type selection for the info operation.

- **props** ( _str_ _or_ _list_) – The keys to gather schema data for within current selection.

- **dumpjson** ( _bool_) – Flag to determine if output should be human readable or json schema.

- **latestschema** ( _bool_) – Flag to determine if we should drop the schema version when we try to
match schema information. If True, the version will be dropped.


Returns

A list of property schema information if dumpjson is True or string if dumpjson is
False.

Return type

list or string

`<span class="pre">loadset</span>`( _seldict=None_, _fltrvals=(None,None)_, _diffonly=False_, _latestschema=False_, _uniqueoverride=False_, _selector=None_) 

Creates json patches in monolith if the supplied dictionary passes schema validation.
In the event schemas are unavailable the patches are always added. Patches that are created
this way are not sent to the server until the [`<span class="pre">commit()</span>`](http://hewlettpackard.github.io#redfish.ris.rmc.RmcApp.commit "redfish.ris.rmc.RmcApp.commit") function is called, sending the
patches to the server. A list of patches that have not been sent to the server can be
returned with the [`<span class="pre">status()</span>`](http://hewlettpackard.github.io#redfish.ris.rmc.RmcApp.status "redfish.ris.rmc.RmcApp.status") function.

Parameters

- **selector** ( _str_) – The type selection for the loadset operation.

- **seldict** ( _dict_) – Dictionary with the patches to apply to the selected instances.

- **fltrvals** ( _tuple_) – The filter values for the operation (Key,Val). If a selector returns
multiple instances fltrvals can filter the instances by a key/value pair,
limiting the returned instances to the one you want. If no filter is
supplied the patch dictionary will be applied to all instances.

- **latestschema** ( _bool_) – Flag to determine if we should drop the schema version when we try to
match schema information. If True, the version will be dropped.

- **diffonly** ( _bool_) – flag to differentiate only existing properties.

- **uniqueoverride** ( _bool_) – Flag to determine if system unique properties should also be patched.
If this is True, then unique properties will be patched.


Returns

returns a list of properties that have successfully been set

`<span class="pre">login</span>`( _username=None_, _password=None_, _base\_url='blobstore://.'_, _path=None_, _skipbuild=False_, _includelogs=False_, _biospassword=None_, _is\_redfish=False_, _proxy=None_, _ssl\_cert=None_, _user\_ca\_cert\_data=None_) 

Performs a login on a the server specified by the keyword arguments. Will also create
a monolith, client, and update the compatibility classes for the app instance. If base\_url
is not included the login is assumed to be locally on the OS.

Parameters

- **username** – The user name required to login to server.

- **password** ( _str_) – The password credentials required to login.

- **base\_url** ( _str_) – The redfish host name or ip address to login to.

- **path** ( _str_) – The path to initiate the monolith crawl from. If None, it will start from the
root. See monolith documentation on how the path is used.

- **proxy** ( _str_) – The proxy required for connection (if any).

- **ssl\_cert** ( _str_) – The path to the CA bundle or SSL certificate to use with connection
(if any).

- **user\_ca\_cert\_data** – Dictionary of user certificate data for iLO Certificate-based
authentication including iLO User TLS certificate, iLO User CA Root Key, iLO User CA Root Key Password (for encrypted CAs)

- **skipbuild** ( _bool_) – The flag to determine monolith download. If True, monolith will be
initiated empty, if False will build the monolith.

- **includelogs** ( _bool_) – The flag to determine id logs should be downloaded in the crawl.

- **biospassword** ( _str_) – The BIOS password for the server if set.

- **is\_redfish** ( _bool_) – If True, a Redfish specific header (OData) will be
added to every request. Only required if the system has both LegacyREST and Redfish.


Type

str

Type

user\_ca\_pass: str

`<span class="pre">logout</span>`( _url=None_) 

Performs a logout of the server and prepares the app for another system, setting app
variables to default values.

Parameters

**url** ( _str_) – The URL for the logout request. Only needed when using a cache.

_property_ `<span class="pre">monolith</span>` 

Get the monolith from the current client

`<span class="pre">patch_handler</span>`( _put\_path_, _body_, _headers=None_, _silent=False_, _service=False_, _optionalpassword=None_) 

Performs the client HTTP PATCH operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.

Parameters

- **put\_path** ( _str_) – The REST path to perform the patch operation on.

- **body** ( _dict_) – the body to perform the operation with.

- **headers** ( _dict_) – Any additional headers to be added to the request.

- **optionalpassword** ( _str_) – The bios password if it is required for the operation.

- **silent** ( _bool_) – If False response will be parsed based on service flag and output to a log or
stdout. If True response will not be parsed and no message output or error
messages raised from the response handler.

- **service** ( _bool_) – When handling the response, if True registries will be gathered and a full,
response will be output if False they will not and response handler will
instead return a generic message.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object containing response data

`<span class="pre">post_handler</span>`( _put\_path_, _body_, _headers=None_, _silent=False_, _service=False_) 

Performs the client HTTP POST operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.

Parameters

- **put\_path** ( _str_) – The REST path to perform the post operation on.

- **body** ( _dict_) – the body to perform the operation with.

- **headers** ( _dict_) – Any additional headers to be added to the request.

- **silent** ( _bool_) – If False response will be parsed based on service flag and output to a log or
stdout. If True response will not be parsed and no message output or error
messages raised from the response handler.

- **service** ( _bool_) – When handling the response, if True registries will be gathered and a full,
response will be output if False they will not and response handler will
instead return a generic message.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object containing response data

`<span class="pre">put_handler</span>`( _put\_path_, _body_, _headers=None_, _silent=False_, _optionalpassword=None_, _service=False_) 

Performs the client HTTP PUT operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.

Parameters

- **put\_path** ( _str_) – The REST path to perform the put operation on.

- **body** ( _dict_) – the body to perform the operation with.

- **headers** ( _dict_) – Any additional headers to be added to the request.

- **optionalpassword** ( _str_) – The bios password if it is required for the operation.

- **silent** ( _bool_) – If False response will be parsed based on service flag and output to a log or
stdout. If True response will not be parsed and no message output or error
messages raised from the response handler.

- **service** ( _bool_) – When handling the response, if True registries will be gathered and a full,
response will be output if False they will not and response handler will
instead return a generic message.


Returns

A [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse") object containing response data

`<span class="pre">removereadonlyprops</span>`( _currdict_, _emptyraise=False_, _removeunique=True_, _specify\_props=None_) 

Remove read only properties from a dictionary. Requires schemas to be available.

Parameters

- **currdict** ( _dictionary_) – The dictionary to remove read only properties from.

- **emptyraise** ( _boolean_) – Flag to raise an empty error for handling and failure to parse.


Parm specify\_props

Optionally set list of properties to be removed instead of the default.

`<span class="pre">restore</span>`( _creds=None_, _enc=False_) 

Restores the monolith from cache. Used to load a monolith data back into a new app
class. Keyword arguments are only needed in a local client when in a high security mode.

Parameters

- **creds** ( _str_) – Credentials to create the client with.

- **enc** ( _bool_) – Flag to determine if encoding functions are being used. True if being used false
if not.


`<span class="pre">save</span>`() 

Updates the cache with the latest monolith data.

`<span class="pre">select</span>`( _selector=None_, _fltrvals=(None,None)_, _path\_refresh=False_) 

Selects instances based on selector and filter values. The select specified is saved in
the app for further use. If another selector is sent, it overwrites the current one.

Parameters

- **selector** ( _str_) – The type (@odata.type for Redfish) to select.

- **fltrvals** ( _tuple_) – The filter values for the select operation (Key,Val). If a selector returns
multiple instances fltrvals can filter the instances by a key/value pair,
limiting the returned instances to the one you want.

- **path\_refresh** ( _bool_) – The flag to reload the selected instances. If True, each instance will be
grabbed again from the server to make sure responses are up to date.


Returns

A list of selected monolith member instances.

Return type

[RisMonolithMemberv100](http://hewlettpackard.github.io#redfish.ris.ris.RisMonolithMemberv100 "redfish.ris.ris.RisMonolithMemberv100")

_property_ `<span class="pre">selector</span>` 

The selector that will be used to gather data if no selector or instance argument is
passed.

`<span class="pre">set_decode_funct</span>`( _funct_) 

Set the decoding function for cache to use. Is used in conjunction with the
set\_encode\_funct to turn the encoded data back into a usable string.

Parameters

**funct** ( _function_) – The function to use for decoding data

`<span class="pre">set_encode_funct</span>`( _funct_) 

Set the encoding function for cache to use. Can be used to protect sensitive data when
it is at rest.

Parameters

**funct** ( _function_) – The function to use for encoding data

`<span class="pre">status</span>`() 

Returns all pending changes that have not been committed yet.

`<span class="pre">types</span>`( _fulltypes=False_) 

Returns a list of types available to be queried and selected with monolith.

Parameters

**fulltypes** ( _bool_) – Flag to determine if types return Redfish full name, if False will return
a shortened version of the type string.

Returns

A list of type strings.

Return type

list

_property_ `<span class="pre">validationmanager</span>` 

Get the valdation manager

### redfish.ris.rmc\_helper 

RMC helper file. Includes RMC errors and caching functionality for monolith.

_exception_ `redfish.ris.rmc_helper.CurrentlyLoggedInError `

Bases: `<span class="pre">Exception</span>`

Raised when attempting to select an instance that does not exist

_exception_ `redfish.ris.rmc_helper.EmptyRaiseForEAFP `

Bases: `<span class="pre">Exception</span>`

Raised when you need to check for issues and take different action.

_exception_ `redfish.ris.rmc_helper.FailureDuringCommitError( _message_) `

Bases: [`<span class="pre">redfish.ris.rmc_helper.RdmcError</span>`](http://hewlettpackard.github.io#redfish.ris.rmc_helper.RdmcError "redfish.ris.rmc_helper.RdmcError")

Raised when there is an error while committing.

_exception_ `redfish.ris.rmc_helper.IdTokenError `

Bases: `<span class="pre">Exception</span>`

Raised when user is not authorized to complete the operation.

_exception_ `redfish.ris.rmc_helper.IloResponseError `

Bases: `<span class="pre">Exception</span>`

Raised when iLO returns with a non 2XX response.

_exception_ `redfish.ris.rmc_helper.IncompatibleiLOVersionError `

Bases: `<span class="pre">Exception</span>`

Raised when the iLO version is above or below the required version.

_exception_ `redfish.ris.rmc_helper.IncorrectPropValue `

Bases: `<span class="pre">Exception</span>`

Raised when you pass an incorrect value to for the associated property.

_exception_ `redfish.ris.rmc_helper.InstanceNotFoundError `

Bases: `<span class="pre">Exception</span>`

Raised when attempting to select an instance that does not exist.

_exception_ `redfish.ris.rmc_helper.InvalidCommandLineError( _message_) `

Bases: [`<span class="pre">redfish.ris.rmc_helper.RdmcError</span>`](http://hewlettpackard.github.io#redfish.ris.rmc_helper.RdmcError "redfish.ris.rmc_helper.RdmcError")

Raised when user enter incorrect command line arguments

_exception_ `redfish.ris.rmc_helper.InvalidPathError `

Bases: `<span class="pre">Exception</span>`

Raised when requested path is not found.

_exception_ `redfish.ris.rmc_helper.InvalidSelectionError `

Bases: `<span class="pre">Exception</span>`

Raised when selection argument fails to match anything.

_exception_ `redfish.ris.rmc_helper.LoadSkipSettingError `

Bases: `<span class="pre">Exception</span>`

Raised when one or more settings are absent in given server.

_exception_ `redfish.ris.rmc_helper.NothingSelectedError `

Bases: `<span class="pre">Exception</span>`

Raised when attempting to access an object without first selecting it.

_exception_ `redfish.ris.rmc_helper.NothingSelectedFilterError `

Bases: `<span class="pre">Exception</span>`

Raised when the filter applied doesn’t match any selection (general).

_exception_ `redfish.ris.rmc_helper.NothingSelectedSetError `

Bases: `<span class="pre">Exception</span>`

Raised when attempting to access an object without first selecting it (In set).

_exception_ `redfish.ris.rmc_helper.RdmcError( _message_) `

Bases: `<span class="pre">Exception</span>`

Base class for all RDMC Exceptions

_class_ `redfish.ris.rmc_helper.RmcCacheManager( _rmc_) `

Bases: `<span class="pre">object</span>`

Manages caching/uncaching of data for RmcApp.

Parameters

**rmc** ( [`<span class="pre">redfish.ris.rmc.RmcApp</span>`](http://hewlettpackard.github.io#redfish.ris.rmc.RmcApp "redfish.ris.rmc.RmcApp")) – RmcApp to be managed

_class_ `redfish.ris.rmc_helper.RmcFileCacheManager( _rmc_) `

Bases: [`<span class="pre">redfish.ris.rmc_helper.RmcCacheManager</span>`](http://hewlettpackard.github.io#redfish.ris.rmc_helper.RmcCacheManager "redfish.ris.rmc_helper.RmcCacheManager")

RMC file cache manager.

Parameters

**rmc** ( [`<span class="pre">redfish.ris.rmc.RmcApp</span>`](http://hewlettpackard.github.io#redfish.ris.rmc.RmcApp "redfish.ris.rmc.RmcApp")) – RmcApp to be managed

`<span class="pre">cache_rmc</span>`() 

Saves monolith data to the file path specified in RmcApp.

`<span class="pre">logout_del_function</span>`( _url=None_) 

Searches for a specific url in cache or returns all urls and returns them for RmcApp
to run logout on, clearing the session.

Parameters

**url** ( _str_) – The URL to pass back for logout.

`<span class="pre">uncache_rmc</span>`( _creds=None_, _enc=False_) 

Uncaches monolith data from cache location specified by RmcApp.

Parameters

- **creds** ( _dict_) – Dictionary of username and password.
Only required for restoring high security local calls.

- **enc** ( _bool_) – Flag if credentials passed are encoded.


_exception_ `redfish.ris.rmc_helper.UnableToObtainIloVersionError `

Bases: `<span class="pre">Exception</span>`

Raised when iloversion is missing from default path.

_exception_ `redfish.ris.rmc_helper.UndefinedClientError `

Bases: `<span class="pre">Exception</span>`

Raised when there are no clients active (usually when user hasn’t logged in).

_exception_ `redfish.ris.rmc_helper.UserNotAdminError( _message_) `

Bases: [`<span class="pre">redfish.ris.rmc_helper.RdmcError</span>`](http://hewlettpackard.github.io#redfish.ris.rmc_helper.RdmcError "redfish.ris.rmc_helper.RdmcError")

Raised when user doesn’t have admin priviledges, but they are required.

_exception_ `redfish.ris.rmc_helper.ValidationError( _errlist_) `

Bases: `<span class="pre">Exception</span>`

Raised when there is a problem with user input.

`<span class="pre">get_errors</span>`() 

Returns error list.

_exception_ `redfish.ris.rmc_helper.ValueChangedError `

Bases: `<span class="pre">Exception</span>`

Raised if user tries to set/commit a value when monolith has older data.

### redfish.ris.resp\_handler 

Error response handler for Redfish or LegacryRest responses. Extended information only available
with registries available on system, otherwise will return generic error responses.

_class_ `redfish.ris.resp_handler.ResponseHandler( _validaition\_mgr_, _msg\_type_) `

Bases: `<span class="pre">object</span>`

Class to handle error responses from the server.

Parameters

- **validation\_mgr** ( [_ValidationManager_](http://hewlettpackard.github.io#redfish.ris.validation.ValidationManager "redfish.ris.validation.ValidationManager")) – ValidationManager instance to gather registries if needed. Available
in an RmcApp class as an attribute.

- **msg\_reg\_type** ( _str_) – Redfish (#MessageRegistry.) or LegacyRest (MessageRegistry.)
message registry string. Available in Typesandpathdefines class.


`<span class="pre">get_error_messages</span>`( _regtype=None_) 

Returns registry error messages. Can specify a specific registry to return by Id.

Parameters

**regtype** ( _str_) – Id of registry type to add to list.

Returns

A list of error messages.

`<span class="pre">get_message_data</span>`( _resp\_data_, _dl\_reg=False_) 

Obtain relevant keys from rest response.

Parameters

**resp** ( [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse")) – response

Returns

list of error response dictionaries

`<span class="pre">message_handler</span>`( _response\_data_, _verbosity=0_, _message\_text='NoResponse'_, _dl\_reg=False_) 

Prints or logs parsed MessageId response based on verbosity level and returns the
following message information in a list:

- MessageArgs

- MessageId

- RestResponse status

- Resolution

- Full error message text


Parameters

- **response\_data** ( [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse")) – message response of a call.

- **verbosity** ( _int_) – Optional verbosity level. Only modifies what is output to log or screen.

- **message\_text** ( _str_) – Response message text. If not provided, message\_handler will attempt to
parse it from the RestResponse and registries.

- **dl\_reg** ( _bool_) – Flag to download registry. If this is set to True a generic message response
will be returned instead of gathered from registries.


Returns

List of error response dictionaries.

`<span class="pre">output_resp</span>`( _response_, _dl\_reg=False_, _verbosity=1_) 

Prints or logs parsed MessageId response. Will raise an IloResponseError or return
a list of message response data which includes the information returned from
message\_handler.

Parameters

- **response** ( [`<span class="pre">redfish.rest.containers.RestResponse</span>`](http://hewlettpackard.github.io#redfish.rest.containers.RestResponse "redfish.rest.containers.RestResponse")) – message response of a call.

- **dl\_reg** ( _bool_) – Flag to download registry. If this is set to True a generic message response
will be returned instead of gathered from registries.

- **verbosity** ( _int_) – Optional verbosity level. Only modifies what is output to log or screen.


Returns

List of error response dictionaries.

`<span class="pre">verbosity_levels</span>`( _message_, _messageid=''_, _description=''_, _resolution=''_, _response\_status=None_, _verbosity=0_, _dl\_reg=False_) 

Formatting based on verbosity level.

Parameters

- **message** ( _str_) – Message from BMC response combined with the registry model/schema.

- **messageid** ( _str_) – Error code as classified by the BMC’s error code registry.

- **resolution** ( _str_) – Message from BMC registry model/schema with the suggested
resolution for the given error.

- **resposne\_status** – HTTP response status code.

- **verbosity** ( _int_) – Option to set/control output message (stderr) verbosity.


Returns

Message to be returned to caller.

### redfish.ris.validation 

Handles schema and registry gathering as well as schema parsing and validation.

_class_ `redfish.ris.validation.BaseValidator( _d_) `

Bases: `<span class="pre">redfish.rest.containers.RisObject</span>`

Base class for all validators.

`<span class="pre">common_print_help</span>`( _name_) 

Common human readable schema data.

Parameters

**name** ( _str_) – clean name for outputting.

Returns

A human readable string of schema data.

`<span class="pre">is_array</span>`( _attrentry_, _arrval_, _name_) 

Validate that the given value is an array type.

Parameters

- **attrentry** ( _dict_) – Registry model entry used for validation.

- **attrval** ( _str_) – Value of Key to validate.


Returns

A boolean based on whether type is array and the value is valid for array type.

`<span class="pre">is_arrtype</span>`( _attrentry_) 

Validate that the type is an array.

Parameters

**attrentry** ( _dict_) – Registry model entry used for validation.

Returns

A boolean based on whether type is an array.

`<span class="pre">validate</span>`() 

Overridable function for validation

_class_ `redfish.ris.validation.BoolValidator( _d_) `

Bases: [`<span class="pre">redfish.ris.validation.BaseValidator</span>`](http://hewlettpackard.github.io#redfish.ris.validation.BaseValidator "redfish.ris.validation.BaseValidator")

Bool validator class

_static_ `<span class="pre">is_type</span>`( _attrentry_) 

Validate that the type is boolean.

Parameters

**attrentry** ( _dict_) – Registry model entry used for validation.

Returns

A boolean based on whether type is boolean.

`<span class="pre">print_help</span>`( _name_) 

Human readable schema information specific to Boolean data.

Parameters

**name** ( _str_) – Clean name for outputting human readable info.

Returns

A human readable string of schema data.

`<span class="pre">validate</span>`( _newval_, _name_) 

Validate against schemas.

Parameters

- **newval** ( _list_) – New value to be used for validation in a list

- **name** ( _str_) – Clean name for outputting human readable info.


Returns

An error if value is invalid.

_class_ `redfish.ris.validation.EnumValidator( _d_) `

Bases: [`<span class="pre">redfish.ris.validation.BaseValidator</span>`](http://hewlettpackard.github.io#redfish.ris.validation.BaseValidator "redfish.ris.validation.BaseValidator")

Enum validator class

_static_ `<span class="pre">is_type</span>`( _attrentry_) 

Validate that the type is enumeration.

Parameters

**attrentry** ( _dict_) – Registry model entry used for validation.

Returns

A boolean based on whether type is eneumeration.

`<span class="pre">print_help</span>`( _name_) 

Human readable schema information specific to Enum data.

Parameters

**name** ( _str_) – Clean name for outputting human readable info.

Returns

A human readable string of schema data.

`<span class="pre">validate</span>`( _keyval_, _name_) 

Validate against schemas.

Parameters

- **keyval** ( _list_) – New value to be used for validation in a list

- **name** ( _str_) – Clean name for outputting human readable info.


Returns

An error if validation fails.

_class_ `redfish.ris.validation.HpPropertiesRegistry( _d_) `

Bases: `<span class="pre">redfish.rest.containers.RisObject</span>`

Models a schema or bios attribute registry. Registry model.

`<span class="pre">get_validator</span>`( _attrname_, _newargs=None_, _oneof=None_) 

Returns attribute validator type.

Parameters

- **attrname** ( _str_) – attribute name to validate. Ex: In A/B/C, this will be A.

- **newargs** ( _list_) – List of multi level properties to be modified. Ex: In A/B/C this will be
a list of B and C.

- **oneof** ( _string_) – Special string for “oneof” options within validation.


Returns

The validator type class for the property passed.

`<span class="pre">nulltypevalidationcheck</span>`( _attrval=None_, _attrentry=None_) 

Function to validate null attributes against iLO schema

Parameters

- **attrentry** ( _str_) – Key of property to validate.

- **attrval** ( _str_) – Value of Key to validate.


Returns

True if entry is null and valid.

`<span class="pre">validate_attribute</span>`( _attrentry_, _attrvallist_, _name_) 

Function to validate attribute against its schema.

Parameters

- **attrentry** ( _str_) – Key of property to validate.

- **attrval** ( _str_) – Value of Key to validate.

- **name** ( _str_) – Clean name for outputting information to users.


Returns

returns list with validated attributes

`<span class="pre">validate_attribute_values</span>`( _tdict_) 

Look for tdict in the attribute list and attempt to validate its value.

Parameters

**tdict** ( _dict_) – the dictionary to test against.

Returns

A validated list

_class_ `redfish.ris.validation.IntegerValidator( _d_) `

Bases: [`<span class="pre">redfish.ris.validation.BaseValidator</span>`](http://hewlettpackard.github.io#redfish.ris.validation.BaseValidator "redfish.ris.validation.BaseValidator")

Interger validator class

_static_ `<span class="pre">is_type</span>`( _attrentry_) 

Validate that the type is integer.

Parameters

**attrentry** ( _dict_) – Registry model entry used for validation.

Returns

A boolean based on whether type is integer.

`<span class="pre">print_help</span>`( _name_) 

Human readable schema information specific to Integer data.

Parameters

**name** ( _str_) – Clean name for outputting human readable info.

Returns

A human readable string of schema data.

`<span class="pre">validate</span>`( _newvallist_, _\__) 

Validate against schemas.

Parameters

**newvallist** ( _list_) – New value to be used for validation in a list

Returns

An error if validation fails criteria.

_exception_ `redfish.ris.validation.InvalidPathsError `

Bases: `<span class="pre">Exception</span>`

Raised when requested path is not found

_class_ `redfish.ris.validation.ObjectValidator( _d_) `

Bases: [`<span class="pre">redfish.ris.validation.BaseValidator</span>`](http://hewlettpackard.github.io#redfish.ris.validation.BaseValidator "redfish.ris.validation.BaseValidator")

Object validator class

_static_ `<span class="pre">is_type</span>`( _attrentry_) 

Validate that the type is object.

Parameters

**attrentry** ( _dict_) – Registry model entry used for validation.

Returns

A boolean based on whether type is object.

`<span class="pre">print_help</span>`( _name_) 

Human readable schema information specific to Object data.

Parameters

**name** ( _str_) – Clean name for outputting human readable info.

Returns

A human readable string of schema data.

`<span class="pre">validate</span>`( _newval_, _name_) 

Validate against schemas.

Parameters

- **newval** ( _list_) – New value to be used for validation in a list

- **name** ( _str_) – Clean name for outputting human readable info.


Returns

An error if value is invalid.

_class_ `redfish.ris.validation.PasswordValidator( _d_) `

Bases: [`<span class="pre">redfish.ris.validation.BaseValidator</span>`](http://hewlettpackard.github.io#redfish.ris.validation.BaseValidator "redfish.ris.validation.BaseValidator")

Password validator class

_static_ `<span class="pre">is_type</span>`( _attrentry_) 

Validate that the type is a password.

Parameters

**attrentry** ( _dict_) – Registry model entry used for validation.

Returns

A boolean based on whether type is a password.

`<span class="pre">print_help</span>`( _name_) 

Human readable schema information specific to Password data.

Parameters

**name** ( _str_) – Clean name for outputting human readable info.

Returns

A human readable string of schema data.

`<span class="pre">validate</span>`( _newvallist_, _\__) 

Validate against schemas.

Parameters

**newvallist** ( _list_) – New value to be used for validation in a list

Returns

An error if validation fails criteria.

_exception_ `redfish.ris.validation.RegistryValidationError( _msg_, _regentry=None_, _selector=None_) `

Bases: `<span class="pre">Exception</span>`

Registration Validation Class Error

_class_ `redfish.ris.validation.StringValidator( _d_) `

Bases: [`<span class="pre">redfish.ris.validation.BaseValidator</span>`](http://hewlettpackard.github.io#redfish.ris.validation.BaseValidator "redfish.ris.validation.BaseValidator")

Constructor

_static_ `<span class="pre">is_type</span>`( _attrentry_) 

Validate that the type is string.

Parameters

**attrentry** ( _dict_) – Registry model entry used for validation.

Returns

A boolean based on whether type is string.

`<span class="pre">print_help</span>`( _name_) 

Human readable schema information specific to String data.

Parameters

**name** ( _str_) – Clean name for outputting human readable info.

Returns

A human readable string of schema data.

`<span class="pre">validate</span>`( _newvallist_, _\__) 

Validate against schemas.

Parameters

**newvallist** ( _list_) – New value to be used for validation in a list

Returns

An error if validation fails criteria.

_class_ `redfish.ris.validation.Typepathforval( _typepathobj_) `

Bases: `<span class="pre">object</span>`

Way to store the typepath defines object.

_exception_ `redfish.ris.validation.UnknownValidatorError `

Bases: `<span class="pre">Exception</span>`

Raised when we find an attribute type that we don’t know how to validate.

_class_ `redfish.ris.validation.ValidationManager( _monolith_, _defines=None_) `

Bases: `<span class="pre">object</span>`

Keeps track of all the schemas and registries and provides helpers
to simplify validation.

`<span class="pre">checkreadunique</span>`( _tdict_, _tkey_, _searchtype=None_, _reg=None_, _warnings=None_, _unique=None_) 

Check for and remove the readonly and unique attributes if required.

Parameters

- **tdict** ( _dict._) – the dictionary to test against.

- **tkey** ( _str._) – The attribute key value to be tested.

- **warnings** ( _list._) – list containing found warnings.

- **unique** ( _str._) – flag to determine override for unique properties.

- **reg** ( _dict._) – Registry entry of the given attribute.


Returns

returns boolean.

_property_ `<span class="pre">errors</span>` 

All errors found by the last validation.

`<span class="pre">find_prop</span>`( _propname_, _latestschema=False_, _proppath=None_) 

Searches through all locations and returns the first schema
found for the provided type.

Parameters

- **propname** ( _str_) – String containing the schema name.

- **proppath** ( _str_) – String containing the schema path if you wish to use that instead.

- **latestschema** ( _bool_) – Flag to determine if we should drop the schema version when we try to
match schema information. If True, the version will be dropped.


`<span class="pre">find_property</span>`( _propname_, _cls=None_, _latestschema=False_) 

Returns iLO/BIOS registries/schemas

Parameters

- **propname** ( _str_) – string containing the registry/schema name.

- **cls** ( _list_) – self.\_classes list of dictionaries.

- **latestschema** ( _bool._) – flag to drop the versioning in the type string.


Returns

iLO/BIOS registries/schemas that match the supplied name.

`<span class="pre">get_registry_model</span>`( _currtype=None_, _proppath=None_, _getmsg=False_, _searchtype=None_, _newarg=None_, _latestschema=False_) 

Loads the schema file and find the registry model if available. A registry model is a
object built for schema/bios registry data.

Parameters

- **currtype** ( _dict._) – Type selection string.

- **proppath** ( _str_) – String containing the schema path if you wish to use that instead.

- **getmsg** ( _bool_) – Flag to determine if commit should be skipped.

- **searchtype** ( _str_) – Include the attribute registry of you are validating a bios registry.

- **newarg** ( _list_) – List of multi level properties to be modified.

- **latestschema** ( _bool_) – Flag to determine if we should drop the schema version when we try to
match schema information. If True, the version will be dropped.


Returns

Schema in object form called a registry object.

`<span class="pre">geturidict</span>`( _locationobj_) 

Return the external reference link.

Parameters

**locationobj** ( _dict_) – Dictionary to get the URI reference from.

`<span class="pre">itermems</span>`( _membername=None_) 

Searches through all locations and yields each entry.

Parameters

**membername** ( _str_) – string containing the registry name. If not passed we use the typedefines
string by default.

`<span class="pre">iterregmems</span>`( _membername=None_) 

Searches through all registries and yields each entry.

Parameters

**membername** ( _str_) – string containing the registry name. If not passed we use the typedefines
string by default.

`<span class="pre">iterschemamems</span>`( _membername=None_) 

Searches through all schemas and yields each entry

Parameters

**membername** ( _str_) – string containing the registry name. If not passed we use the typedefines
string by default.

`<span class="pre">nestedreg</span>`( _reg=None_, _args=None_) 

Go through the registry entry to find the required nested attribute.

Parameters

- **reg** ( _dict_) – Registry entry of the given attribute.

- **args** ( _list_) – List of multi level properties to be modified.


Returns

dict of Registry entry

`<span class="pre">reset_errors_warnings</span>`() 

Resets warnings and errors, getting ready for the next validation.

`<span class="pre">updatevalidationdata</span>`() 

Loads the types into the validation manager from monolith.

`<span class="pre">validatedict</span>`( _tdict_, _currtype=None_, _proppath=None_, _latestschema=False_, _searchtype=None_, _monolith=None_, _reg=None_, _unique=None_) 

Load the schema file and validate tdict against it.

Parameters

- **tdict** ( _dict_) – the dictionary to test against.

- **currtype** ( _str_) – String containing the type the tdict dictionary is.

- **proppath** ( _str_) – String containing the schema path of the tdict dictionary if you wish to
use that instead.

- **latestschema** ( _bool_) – Flag to determine if we should drop the schema version when we try to
match schema information. If True, the version will be dropped.

- **searchtype** ( _str_) – Include the attribute registry of you are validating a bios registry.

- **monolith** ( _dict_) – Full data model retrieved from server.

- **unique** ( _bool_) – Flag to override for skipping unique properties.

- **reg** ( _dict._) – Registry entry of the given attribute. If this is not provided we will attempt
to search based on the searchtype and currtype/proppath arguments.


Returns

returns an error list.

_property_ `<span class="pre">warnings</span>` 

All warnings found by the last validation.

`redfish.ris.validation.checkattr( _aobj_, _prop_) `

Check if an attribute exists

[Previous](http://hewlettpackard.github.io/Frequently-Asked-Questions.html "Frequently Asked Questions")

* * *

© Copyright Copyright 2020 Hewlett Packard Enterprise Development LP.



Other Versions

Versions[latest](https://pages.github.hpe.com/intelligent-provisioning/python-redfish-library/)[3.0](https://pages.github.hpe.com/intelligent-provisioning/python-redfish-library/3.0/)

