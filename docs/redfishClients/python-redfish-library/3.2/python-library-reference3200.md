---
seo:
title: HPE Python Redfish library
disableLastModified: false
toc:
 enable: true
 maxDepth: 3
---

# HPE Python Redfish library v3.2 reference documentation

This section describes the HPE Python Library that you can use for writing your own Redfish clients. It is an alternative to the <a href="https://github.com/DMTF/python-redfish-library" target="_blank">DMTF Python Redfish Library</a>

## redfish.rest

Base interface to simplify interaction with LegacyRest/Redfish data and Remote/Local
connections.

### redfish.rest.v1

Direct module for working with Redfish/REST technology.

#### class redfish.rest.v1.AuthMethod()

Bases: `object`

AUTH Method class

**BASIC**, **SESSION**, **CERTIFICATE** variables translate to their string counterparts
basic, session, certificate.

#### exception redfish.rest.v1.JsonDecodingError()

Bases: `Exception`

Raised when there is an error in json data.

#### class redfish.rest.v1.LegacyRestClient(\*\*client_kwargs)

Bases: `RestClient`

Class for a **Legacy REST** client instance.
Instantiates appropriate Rest object based on existing configuration.
Use this to retrieve a pre-configured Legacy Rest Class.

Basic arguments include (These can be omitted for most local connections):
- **base_url**: The IP or Hostname of the server to perform operations on.
- **username**: The username of the account to login with.
- **password**: The username of the account to login with.

For full description of the arguments allowed see `RestClient`

#### class redfish.rest.v1.RedfishClient(\*\*client_kwargs)

Bases: `RestClient`

Class for a **Redfish** client instance.
Instantiates appropriate Redfish object based on existing configuration.
Use this to retrieve a pre-configured Redfish Class.

Basic arguments include (These can be omitted for most local connections):
- **base_url**: The IP or Hostname of the server to perform operations on. None for local.
- **username**: The username of the account to login with.
- **password**: The username of the account to login with.

For full description of the arguments allowed see `RestClient`

#### class redfish.rest.v1.RestClient(default_prefix='/redfish/v1/', is_redfish=True, username=None, password=None, sessionid=None, base_url=None, auth=None, ca_cert_data=None, \*\*client_kwargs)

Bases: `RestClientBase`

REST client with Redfish and LegacyRest support built on top.
- **Parameters**

    
    - **default_prefix** (*str*) – The root of the REST API, either /redfish/v1/ or /rest/v1.
    - **is_redfish** (*bool*) – Flag to force redfish conformance, even on LegacyRest clients.
    - **username** (*str*) – The username of the account to login with.
    - **password** (*str*) – The password of the account to login with.
    - **auth** (str or `AuthMethod` class variable.) – The authentication type to force.
    - **ca_cert_data** (*dict*) – Dictionary containing the certificate authority data (user CA,                          user root CA, user root CA key
    - **\*\*client_kwargs** – Arguments to create a `RestClientBase` instance.


#### property base_url()

The connection’s URL to make calls against

#### property basic_auth()

The Client’s basic auth header, if any.
#### login(auth='session')
Login to a Redfish or LegacyRest server.
If auth is not supplied login will intelligently
choose the authentication mode based on the arguments passed.
Basic authentication MUST be specified with auth.
- **Parameters**

    **auth** (str or `AuthMethod` class variable) – The auth type to login with.


#### property login_url()

The login URI from the root response. This is where we post the
credentials for a login.
#### logout()
Logout of session.

YOU MUST CALL THIS WHEN YOU ARE DONE TO FREE UP SESSIONS

#### property password()

The password, if any. Once a login function has been called the credentials are removed
from memory for security and this will return None.

#### property proxy()

The connection’s proxy, if any.

#### property session_key()

The Client’s session key, if any.

#### property session_location()

The session URI. Used for deleting the session when we logout.

#### property username()

The username, if any. Once a login function has been called the credentials are removed
from memory for security and this will return None.

#### class redfish.rest.v1.RestClientBase(biospassword=None, \*\*client_kwargs)

Bases: `object`

Base REST client. Each RestClientBase has a connection object built by parsing the
client_kwargs. This connection is used for communicating remotely or locally.
- **Parameters**

    
    - **biospassword** (*str*) – The iLO Gen9 bios password. See `bios_password()`
    - **\*\*client_kwargs** – Arguments to pass to the client argument. For possible values see
    `redfish.rest.connections.Blobstore2Connection` for a local
    connection or `redfish.rest.connections.HttpConnection`
    for remote connection.


#### property bios_password()

Property for the biospassword. Only required on Gen9 iLO 4 when RBSU bios password is set
and modifying bios settings
#### delete(path, headers=None)
Perform a DELETE request
- **Parameters**

    
    - **path** (*str*) – The URI path.
    - **args** (*dict*) – Any query to add to the URI. (Can also be directly added to the URI)

- **Returns**

    A `redfish.rest.containers.RestResponse` object

#### get(path, args=None, headers=None)
Perform a GET request
- **Parameters**

    
    - **path** (*str*) – The URI path.
    - **args** (*dict*) – Any query to add to the URI. (Can also be directly added to the URI)
    - **headers** (*dict*) – Any extra headers to add to the request.

- **Returns**

    A `redfish.rest.containers.RestResponse` object

#### head(path, headers=None)
Perform a HEAD request
- **Parameters**

    
    - **path** (*str*) – The URI path.
    - **headers** (*dict*) – Any extra headers to add to the request.

- **Returns**

    A `redfish.rest.containers.RestResponse` object

#### patch(path, body, args=None, headers=None)
Perform a PATCH request
- **Parameters**

    
    - **path** (*str*) – The URI path.
    - **body** (*dict*) – The body to pass with the request.
    - **args** (*dict*) – Any query to add to the URI. (Can also be directly added to the URI)
    - **headers** (*dict*) – Any extra headers to add to the request.

- **Returns**

    A `redfish.rest.containers.RestResponse` object

#### post(path, body, args=None, headers=None)
Perform a POST request
- **Parameters**

    
    - **path** (*str*) – The URI path.
    - **body** (*dict*) – The body to pass with the request.
    - **args** (*dict*) – Any query to add to the URI. (Can also be directly added to the URI)
    - **headers** (*dict*) – Any extra headers to add to the request.

- **Returns**

    A `redfish.rest.containers.RestResponse` object

#### put(path, body, args=None, headers=None)
Perform a PUT request
- **Parameters**

    
    - **path** (*str*) – The URI path.
    - **body** (*dict*) – The body to pass with the request.
    - **args** (*dict*) – Any query to add to the URI. (Can also be directly added to the URI)
    - **headers** (*dict*) – Any extra headers to add to the request.

- **Returns**

    A `redfish.rest.containers.RestResponse` object


#### exception redfish.rest.v1.ServerDownOrUnreachableError()

Bases: `Exception`

Raised when server is unreachable.

### redfish.rest.connections

All Connections for interacting with REST.

#### class redfish.rest.connections.Blobstore2Connection(\*\*conn_kwargs)

Bases: `object`

A connection for communicating locally with HPE servers
- **Parameters**

    **\*\*conn_kwargs** – Arguments to pass to the connection initialization.
Possible arguments for *\*\*conn_kwargs* include:
- **Username**

    The username to login with

- **Password**

    The password to login with

#### cert_login()
Login using a certificate.
#### rest_request(path='', method='GET', args=None, body=None, headers=None)
Rest request for blobstore client
- **Parameters**

    
    - **path** (*str*) – The URI path to perform the operation on.
    - **method** (*str*) – method to perform on the path.
    - **args** (*dict*) – Any query to add to the URI. (Can also be directly added to the URI)
    - **body** (*dict*) – body payload to include in the request if needed.
    - **headers** (*dict*) – Any extra headers to add to the request.

- **Returns**

    A `redfish.rest.containers.RestResponse` object


#### exception redfish.rest.connections.ChifDriverMissingOrNotFound()

Bases: `Exception`

Raised when CHIF driver is missing or not found.

#### exception redfish.rest.connections.DecompressResponseError()

Bases: `Exception`

Raised when decompressing the response failed.

#### class redfish.rest.connections.HttpConnection(base_url, cert_data, \*\*client_kwargs)

Bases: `object`

HTTP connection capable of authenticating with HTTPS and Http/Socks Proxies
- **Parameters**

    
    - **base_url** (*str*) – The URL to make HTTP calls against
    - **\*\*client_kwargs** – Arguments to pass to the connection initialization. These are passed to a urllib3 [PoolManager](https://urllib3.readthedocs.io/en/latest/reference/index.html?highlight=PoolManager#urllib3.PoolManager). All arguments that can be passed to a PoolManager are valid arguments.

#### cert_login()
Login using a certificate.

#### property proxy()

The proxy, if any.
#### rest_request(path, method='GET', args=None, body=None, headers=None)
Format and do HTTP Rest request
- **Parameters**

    
    - **path** (*str*) – The URI path to perform the operation on.
    - **method** (*str*) – method to perform on the path.
    - **args** (*dict*) – Any query to add to the URI. (Can also be directly added to the URI)
    - **body** (*dict*) – body payload to include in the request if needed.
    - **headers** (*dict*) – Any extra headers to add to the request.

- **Returns**

    A `redfish.rest.containers.RestResponse` object


#### exception redfish.rest.connections.InvalidCertificateError()

Bases: `Exception`

Raised when a invalid certificate has been provided.

#### exception redfish.rest.connections.InvalidCredentialsError()

Bases: `Exception`

Raised when invalid credentials have been provided.

#### exception redfish.rest.connections.RetriesExhaustedError()

Bases: `Exception`

Raised when retry attempts have been exhausted.

#### exception redfish.rest.connections.SecurityStateError()

Bases: `Exception`

Raised when there is a strict security state without authentication.

#### exception redfish.rest.connections.VnicNotEnabledError()

Bases: `Exception`

Raised when retry attempts have been exhausted when VNIC is not enabled.

### redfish.rest.containers

Containers used for REST requests and responses.

#### class redfish.rest.containers.RestRequest(path, method='GET', data='', url=None)

Bases: `object`

Holder for Request information
- **Parameters**

    
    - **path** (*str*) – The URI path.
    - **method** (*str*) – method to be implemented
    - **data** (*dict*) – body payload for the rest call


#### property body()

The body to pass along with the request, if any.

#### property method()

The method to implement.

#### property path()

The path the request is made against.

#### class redfish.rest.containers.RestResponse(rest_request, http_response)

Bases: `object`

Returned by Rest requests
- **Parameters**

    
    - **rest_request** (`RestRequest` object) – Holder for request information
    - **http_response** (`HTTPResponse` object) – Response from HTTP


#### property dict()

The response body data as an dict
#### getheader(name)
Case-insensitive search for an individual header
- **Parameters**

    **name** (*str*) – The header name to retrieve.

- **Returns**

    returns a header from HTTP response or None if not found.

#### getheaders()
Get all headers included in the response.
#### loaddict(newdict)
Property for setting JSON data. Used during initialization.
- **Parameters**

    **newdict** (*str*) – The string data to set as JSON data.


#### property obj()

The response body data as an object

#### property ori()

The original response body data

#### property path()

The path the request was made against.

#### property read()

The response body, attempted to be translated into json, else is a string.

#### property request()

The saved http request the response was generated by.

#### property session_key()

The saved session key for the connection.

#### property session_location()

The saved session location, used for logging out.

#### property status()

The status code of the request.

## redfish.ris

Expanded LegacyREST/Redfish interface for schema validation, database for responses, caching,
and error registries.

### redfish.ris.gen_compat

Compatibility functionality in between iLO versions and generic Redfish/LegacyRest servers.
Used to provide convenient string variables that are usable on any iLO irrespective of version or
API type.

#### class redfish.ris.gen_compat.Definevals()

Bases: `object`

Base class for setting platform dependent variables.

#### class redfish.ris.gen_compat.DefinevalsNine()

Bases: `Definevals`

Platform dependent variables for iLO 4 LegacyRest (Gen 9).
#### redfishchange()
Function to update redfish variables from LegacyRest to iLO 4 Redfish (Gen 9).

#### class redfish.ris.gen_compat.Definevalstenplus()

Bases: `Definevals`

Platform dependent variables for iLO 5+ (Gen 10).
#### redfishchange()
Empty function to update redfish variables (unneeded when the system is already redfish).

#### class redfish.ris.gen_compat.Typesandpathdefines()

Bases: `object`

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
#### defineregschemapath(rootobj)
Defines the schema and registry paths using data in root path.
- **Parameters**

    **rootobj** (*dict.*) – The root path data.

#### getgen(gen=None, url=None, username=None, password=None, sessionid=None, logger=None, proxy=None, ca_cert_data={}, isredfish=True)
Function designed to verify the servers platform. Will generate the Typeandpathdefines
variables based on the system type that is detected.
- **Parameters**

    
    - **url** (*str*) – The URL to perform the request on.
    - **username** (*str*) – The username to login with.
    - **password** (*str*) – The password to login with.
    - **proxy** (*str*) – The proxy to connect to the system with.
    - **ca_certs** (*dict*) – Dictionary including the TLS certificate information of user based
    authentication
    - **isredfish** (*bool*) – The flag to force redfish conformance on iLO 4 systems. You will still
    need to call updatedefinesflag to update the defines to Redfish.
    - **logger** (*str*) – The logger handler to log data too uses the default if none is provided.

#### modifyselectorforgen(sel)
Changes the select to match the Generation’s HP string based to the correct type for
specific iLO versions.
- **Parameters**

    **sel** (*str*) – query to be changed to match Generation’s HP string

- **Returns**

    A modified selector matching the Generation’s HP string.

- **Return type**

    string

#### updatedefinesflag(redfishflag=None)
Updates the redfish and rest flag depending on system and redfishflag input. On an iLO 5
system or another Redfish system, this will do nothing. On an iLO 4 system with both Redfish
and LegacyRest this will update the defines to redfish if the *redfishflag* is set to True
and stay with the LegacyRest defines otherwise.
- **Parameters**

    **redfishflag** (*bool*) – User input for redfish

- **Returns**

    True if the system should use Redfish, False for legacy Rest.

- **Return type**

    bool
### redfish.ris.ris

Monolith database implementation. Crawls Redfish and Legacy REST implementations
and holds all data retrieved. The created database is called the **monolith** and referenced as
such in the code documentation.

#### exception redfish.ris.ris.BiosUnregisteredError()

Bases: `Exception`

Raised when BIOS has not been registered correctly in iLO

#### exception redfish.ris.ris.RisInstanceNotFoundError()

Bases: `Exception`

Raised when attempting to select an instance that does not exist

#### class redfish.ris.ris.RisMonolith(client, typepath, directory_load=True)

Bases: `Dictable`

Monolithic cache of RIS data. This takes a `redfish.rest.v1.RestClient` and uses it to
gather data from a server and saves it in a modifiable database called monolith.
- **Parameters**

    
    - **client** (`redfish.rest.v1.RestClient`) – client to use for data retrieval. Client is saved as a weakref, using it requires
    parenthesis and will not survive if the client used in init is removed.
    - **typepath** (`redfish.rest.ris.Typesandpathdefines`) – The compatibility class to use for differentiating between Redfish/LegacyRest.
    - **directory_load** (*bool*) – The flag to quick load using resource directory if possible.
    When set to True this will load paths, etags, and types, but not create responses for
    every monolith member. When responses are needed, they will need to be loaded separately.

#### capture(redmono=False)
Crawls the server specified by the client and returns the entire monolith.
- **Parameters**

    **redmono** (*bool*) – Flag to return only the headers and responses instead of the entire monolith
    member data.

- **Return type**

    dict

#### checkmodified(opath, path=None, modpaths=None)
Check if the path or its children are modified. When calling this
function you only need to include opath.
- **Parameters**

    **opath** (*str*) – original path which has been modified


#### property client()

Returns the current client object reference
- **Return type**

    class object


#### property directory_load()

The flag to gather information about a tree without downloading every path. Only usable
on HPE systems with a ResourceDirectory. type
#### gettypename(types)
Takes a full type response and returns all major types associated.
Example: #Type.v1_0_0.Type will return iter(Type.1)
- **Parameters**

    **types** (*str*) – The type of the requested response.

- **Return type**

    iter of major types

#### iter(typeval=None)
An iterator that yields each member of monolith associated with a specific type. In the
case that no type is included this will yield all members in the monolith.
- **Return type**

    RisMonolithMemberv100

#### itertype(typeval)
Iterator that yields member(s) of given type in the monolith and raises an error if no
member of that type is found.
- **Parameters**

    **typeval** (*str*) – type name of the requested member.

- **Return type**

    RisMonolithMemberv100

#### killthreads()
Function to kill threads on logout
#### load(path=None, includelogs=False, init=False, crawl=True, loadtype='href', loadcomplete=False, path_refresh=False, json_out=False)
Walks the entire data model and caches all responses or loads an individual path into
the monolith. Supports both threaded and sequential crawling.
- **Parameters**

    
    - **path** (*str.*) – The path to start the crawl from the provided path if crawling or
    loads the path into monolith. If path is not included, crawl will start with
    the default. The default is */redfish/v1/* or */rest/v1* depending on if the
    system is Redfish or LegacyRest.
    - **includelogs** (*bool*) – Flag to determine if logs should be downloaded as well in the crawl.
    - **init** (*bool*) – Flag to determine if this is the initial load.
    - **crawl** (*bool*) – Flag to determine if load should crawl through found links.
    - **loadtype** (*str.*) – Flag to determine if loading standard links: *href* or schema links: *ref*.
    - **loadcomplete** (*bool*) – Flag to download the entire data model including registries and
    schemas.
    - **path_refresh** (*bool*) – Flag to reload the path specified, clearing any patches and overwriting the
    current data in the monolith.

#### load_from_dict(src)
Load data to monolith from a dict. This is the reverse of `to_dict()`.
- **Parameters**

    **src** (*str*) – data receive from rest operation.

#### markmodified(opath, path=None, modpaths=None)
Mark the paths to be modifed which are connected to current path. When calling this
function you only need to include opath.
- **Parameters**

    **opath** (*str*) – original path which has been modified

#### path(path)
Provides the member corresponding to the path specified. Case sensitive.
- **Parameters**

    **path** (*str*) – path of the monolith member to return

- **Return type**

    RisMonolithMemberv100

#### removepath(path)
Remove a given path from the cache
- **Parameters**

    **path** (*str*) – path which is to be checked if modified

#### to_dict()
Convert data to a dict from monolith. This is the reverse of `load_from_dict()`.

#### property type()

Return monolith version type
#### typecheck(types)
Check if a member of given type exists in the monolith
- **Parameters**

    **types** (*str*) – type to check.

- **Return type**

    bool


#### property types()

Returns list of types for members in the monolith
- **Return type**

    list

#### update_member(member=None, resp=None, path=None, init=True)
Adds member to the monolith. If the member already exists the
data is updated in place. Takes either a RisMonolithMemberv100 instance or a
`redfish.rest.containers.RestResponse` along with that responses path.
- **Parameters**

    
    - **member** (*RisMonolithMemberv100*) – The monolith member to add to the monolith.
    - **resp** (`redfish.rest.containers.RestResponse`) – The rest response to add to the monolith.
    - **path** (*str*) – The path correlating to the response.
    - **init** (*bool*) – Flag if addition is part of the initial load. Set this to false if you are
    calling this by itself.


#### property visited_urls()

The urls visited by the monolith

#### class redfish.ris.ris.RisMonolithMemberBase()

Bases: `Dictable`

RIS monolith member base class

#### class redfish.ris.ris.RisMonolithMemberv100(restresp=None, isredfish=True)

Bases: `RisMonolithMemberBase`

Class used by `RisMonolith` for holding information on a response and adds extra data
for monolith usage. A member can be marked as *modified* which means another operation may have
rendered this member out of date. It should be reloaded before continuing to ensure data is
up to date.
- **Parameters**

    
    - **restresp** (`redfish.rest.containers.RestResponse`) – RestResponse to create a member from.
    - **isredfish** (*bool*) – Flag if the response is redfish or not


#### property dict()

Get the dictionary of the monolith member’s response

#### property etag()

Get the etag of the response
#### load_from_dict(src)
Load variables to a monolith member from a dictionary.
This is the reverse of `to_dict()`.
- **Parameters**

    **src** (*dict*) – Source to load member data from.


#### property maj_type()

Get major type of the monolith member’s response

#### property patches()

Get patches for the monolith member

#### property path()

Get path of the monolith member’s response
#### popdefs(typename, pathval, etagval)
Populate the default values in the class
- **Parameters**

    
    - **typename** (*str*) – The default **Type** string. Example: @odata.type
    - **pathval** (*str*) – The default **Path** string. Example: @odata.id
    - **etagval** (*str*) – The default **ETag** value.


#### property resp()

Get the entire response of the monolith member
#### to_dict()
Converts Monolith Member to a dictionary. This is the reverse of `load_from_dict()`.
- **Returns**

    returns the Monolith Member in dictionary form


#### property type()

Get type of the monolith member’s response

#### exception redfish.ris.ris.SchemaValidationError()

Bases: `Exception`

Schema Validation Class Error

#### exception redfish.ris.ris.SessionExpired()

Bases: `Exception`

Raised when session has expired

### redfish.ris.ris_threaded

A threaded version of RIS _load for quicker searching

#### class redfish.ris.ris_threaded.LoadWorker(queue)

Bases: `Thread`

A threaded implementation of _load for quicker crawling
#### get_exception()
Get any exception from the thread
#### run()
Main worker function

### redfish.ris.utils

Utility functions for internal and external use. Contains general json navigating functions as
well as some monolith utility functions.
### redfish.ris.utils.checkallowablevalues(newdict=None, oridict=None)
Validate dictionary changes with Redfish allowable values. This will raise an
`redfish.ris.rmc_helper.IncorrectPropValue` error if the dictionary is not valid.
- **Parameters**

    
    - **newdict** (*dict*) – dictionary with only the properties that have changed.
    - **oridict** (*dict*) – Full dictionary with current state. (Includes @Redfish.AllowableValues)

### redfish.ris.utils.diffdict(newdict=None, oridict=None, settingskipped=[False])
Diff two dictionaries, returning only the values that are different between the two.
- **Parameters**

    
    - **newdict** (*dict*) – The first dictionary to check for differences.
    - **oridict** (*dict*) – The second dictionary to check for differences.
    - **settingskipped** (*list*) – Flag to determine if any settings were missing.

- **Returns**

    dictionary with only the properties that have changed.

- **Return type**

    dict

### redfish.ris.utils.filter_output(output, sel, val)
Filters a list of dictionaries based on a key:value pair only returning the dictionaries
that include the key and value.
- **Parameters**

    
    - **output** (*list*) – List of dictionaries to check for the key:value.
    - **sel** (*str*) – the key for the property to be filtered by.
    - **val** (*str*) – value for the property be filtered by.

- **Returns**

    A filtered list from output parameter

- **Return type**

    list

### redfish.ris.utils.get_errmsg_type(results)
Return the registry type of a response.
- **Parameters**

    **results** (`redfish.rest.containers.RestResponse`) – rest response.

- **Returns**

    A Registry Id type string, None if not match is found, or no_id if the
    response is not an error message

- **Return type**

    None or string

### redfish.ris.utils.getattributeregistry(instances, adict=None)
Gets an attribute registry in given monolith instances.
- **Parameters**

    
    - **instances** (*list*) – list of `redfish.ris.ris.RisMonolithMemberv100` instances to be
    checked for attribute registry.
    - **adict** (*dict*) – A dictionary containing an AttributeRegistry

- **Returns**

    returns a dictionary containing the attribute registry string(s)

- **Return type**

    dict

### redfish.ris.utils.iterateandclear(dictbody, proplist)
Iterate over a dictionary and remove listed properties.
- **Parameters**

    
    - **dictbody** (*dict** or **list*) – json body
    - **proplist** (*list*) – property list

### redfish.ris.utils.json_traversal(data, key_to_find, ret_dict=False)
PENDING MODIFICATION TO MORE GENERALIZED NOTATION

Recursive function to traverse a JSON resposne object and retrieve the array of
relevant data (value or full key/value pair). Only a single key needs to be found within the
dictionary in order to return a valid dictionary or value.

Intended Usage:
- Error response message parsing
- Checkreadunique in Validation
- **Parameters**

    
    - **data** (*JSON error response object*) – json data to be parsed
    - **key_to_find** (*String*) – JSON key to be found
    - **ret_dict** (*boolean*) – return dictionary instead of just value

- **Returns**

    value or dictionary containing ‘key_to_find’
    (and all additional keys at the same level).

### redfish.ris.utils.json_traversal_delete_empty(data, old_key=None, _iter=None, remove_list=None)
Recursive function to traverse a dictionary and delete things which
match elements in the remove_list
- **Parameters**

    
    - **data** (*list** or **dict*) – to be truncated
    - **old_key** (*dictionary key*) – key from previous recursive call (higher in stack)
    - **_iter** – iterator tracker for list (tracks iteration across
recursive calls)
:type _iter: numerical iterator
:param remove_list: list of items to be removed
:type: list
:returns: none
### redfish.ris.utils.merge_dict(currdict, newdict)
Merges dictionaries together.
- **Parameters**

    
    - **currdict** (*dict*) – Dictionary that will absorb the second.
    - **newdict** (*dict*) – Dictionary to merge into the first.

### redfish.ris.utils.navigatejson(selector, currdict, val=None)
Function for navigating the json dictionary. Searches a dictionary for specific keys
and possibly values, returning only the dictionary sections for the requested keys and values.
- **Parameters**

    
    - **selector** (*list*) – the property required from current dictionary.
    - **val** (*str** or **int** or **bool*) – value to be filtered by.
    - **currdict** (*json dictionary/list*) – json dictionary of list to be filtered

- **Returns**

    returns a dictionary of selected items

### redfish.ris.utils.print_handler(msg)
Helper function for handling warning messages appropriately. If LOGGER level is set to 40
print out the warnings, else log them as a warning.
- **Parameters**

    **msg** (*str*) – The warning message.

### redfish.ris.utils.skipnonsettingsinst(instances)
Removes non /settings sections. Useful for only returning settings monolith members.
Example: Members with paths /redfish/v1/systems/1/bios/ and
/redfish/v1/systems/1/bios/settings
will return only the /redfish/v1/systems/1/bios/settings member.
- **Parameters**

    **instances** (*list*) – list of `redfish.ris.ris.RisMonolithMemberv100`
    instances to check for settings paths.

- **Returns**

    list of `redfish.ris.ris.RisMonolithMemberv100` setting instances

- **Return type**

    list

### redfish.ris.utils.validate_headers(instance, verbose=False)
Validates an instance is patchable.
- **Parameters**

    
    - **instance** (`redfish.ris.RisMonolithMemberv100`) – Instance of the property to check.
    - **verbose** (*bool*) – Flag to print or log more information.

- **Returns**

    True if the setting is not patchable, False if it is.

### redfish.ris.utils.warning_handler(msg, override=False)
Helper function for handling warning messages appropriately. If LOGGER level is set to 40
print out the warnings, else log them as a warning.
- **Parameters**

    **msg** (*str*) – The warning message.
### redfish.ris.rmc

A convenience layer that combines multiple lower level classes and functions into one.

#### class redfish.ris.rmc.RmcApp(showwarnings=False, cache_dir=None)

Bases: `object`

A convenience class that combines the client, compatibility, validation, caching,
and monolith into one class.
- **Parameters**

    
    - **showwarnings** (*bool*) – Flag to print warnings to std.out (True) or log in log file (False)
    - **cache_dir** (*str*) – Cache directory to save cache data to, if None, RmcApp will not cache data.
    Cache can allow your RmcApp to persist between scripts.


#### property cache()

True if we are caching data, False if we are not

#### property cachedir()

The cache directory that is used to cache app data to a file,
None if not caching data.
#### commit()
Applies all pending json patches to the server.
- **Yields**

    Two strings.
    1. Path being PATCHed
    2. True if an error occurred during the PATCH, False if no error.

#### create_save_header()
Adds save file headers to show what server the data came from.
- **Parameters**

    
    - **selector** (*str.*) – The type selection for the get save operation.
    - **selectignore** (*boolean*) – Return the save header even if there isn’t a selection to add it to.

- **Returns**

    returns an header ordered dictionary


#### property current_client()

Get the current client
#### delete_handler(put_path, headers=None, silent=False, service=False)
Performs the client HTTP DELETE operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.
- **Parameters**

    
    - **put_path** (*str*) – The REST path to perform the delete operation on.
    - **headers** (*dict*) – Any additional headers to be added to the request.
    - **silent** (*bool*) – If False response will be parsed based on service flag and output to a log or
    stdout. If True response will not be parsed and no message output or error
    messages raised from the response handler.
    - **service** (*bool*) – When handling the response, if True registries will be gathered and a full,
    response will be output if False they will not and response handler will
    instead return a generic message.

- **Returns**

    A `redfish.rest.containers.RestResponse` object containing response data

#### download_path(paths, crawl=True, path_refresh=False)
Loads paths into the monolith.
- **Parameters**

    
    - **paths** (*list*) – list of paths to download
    - **path_refresh** (*bool.*) – Flag to reload the paths or not.
    - **crawl** (*boolean.*) – Flag to determine if load should traverse found links.

#### get_handler(get_path, sessionid=None, silent=False, uncache=False, headers=None, service=False, username=None, password=None, base_url=None)
Performs the client HTTP GET operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.
- **Parameters**

    
    - **put_path** (*str*) – The REST path to perform the get operation on.
    - **uncache** (*bool*) – flag to not store the data downloaded into monolith.
    - **headers** (*dict*) – Any additional headers to be added to the request.
    - **silent** (*bool*) – If False response will be parsed based on service flag and output to a log or
    stdout. If True response will not be parsed and no message output or error
    messages raised from the response handler.
    - **service** (*bool*) – When handling the response, if True registries will be gathered and a full,
    response will be output if False they will not and response handler will
    instead return a generic message.

- **Returns**

    A `redfish.rest.containers.RestResponse` object

#### get_model(currdict, attributeregistry, latestschema=None, newarg=None, proppath=None)
Returns a model and possibly a bios model for the current instance’s schema/registry.
This model can be used to read schema data and validate patches.
- **Parameters**

    
    - **currdict** (*dict*) – The dictionary to gather the schema model from.
    - **attributeregistry** (*dict*) – The current systems attribute registry. If not gathering a bios
    registry this can be set to None.
    - **latestschema** (*bool*) – Flag to determine if we should drop the schema version when we try to
    match schema information. If True, the version will be dropped.
    - **newargs** (*list*) – List of multi level properties to be gathered.
    - **proppath** (*str*) – The path of the schema you want to validate (from Location header).

- **Returns**

    model and bios model

#### get_selection(selector=None, setenable=False, path_refresh=False)
Gathers instances and optionally the attributeregistry based on selector.
- **Parameters**

    
    - **selector** (*str.*) – The type selection for the get operation.
    - **setenable** (*boolean.*) – Flag to determine if registry should also be returned.
    - **path_refresh** (*boolean.*) – Flag to reload the selected instances.

- **Returns**

    returns a list of selected items

#### getbiosfamilyandversion()
Function that returns the current BIOS version information.
#### getcollectionmembers(path, fullresp=False)
Returns collection/item lists of the provided path.
- **Parameters**

    
    - **path** (*bool.*) – path to return.
    - **fullresp** – Return full json data instead of only members.

- **Returns**

    list of collection members

#### getidbytype(tpe)
Return a list of URIs that correspond to the supplied type string.
- **Parameters**

    **tpe** (*string.*) – type string to search for.

#### getiloversion(skipschemas=False)
Function that returns the current iLO version.
- **Parameters**

    **skipschemas** (*bool*) – flag to determine whether to skip schema download. If False, this will
    also verify if schemas are available.

- **Returns**

    returns current iLO version

#### getprops(selector=None, props=None, nocontent=None, skipnonsetting=True, remread=False, insts=None)
Gets properties from a specified selector. If no selector is specified, uses the selector
property in the app class. Instead of a selector a list of instances to search can be used
instead. If both **selector** and **insts** are passed, **insts** is used.

Specific values for multi-level dictionaries can be returned by passing each key
separated by a “/” Ex: Key/Sub-Key/Sub-Sub-Key
- **Parameters**

    
    - **selector** (*str*) – The type selection for the get operation.
    - **skipnonsetting** (*bool*) – Flag to remove non settings path.
    - **nocontent** (*list*) – Keys not found are added to the list provided.
    - **remread** (*bool*) – Flag to remove readonly properties.
    - **props** (*list*) – The keys to search for within current selection.
    - **insts** (*list*) – List of RisMonolithMemberv100 to be searched for specific keys.

- **Returns**

    A list of properties found in dictionary form.

- **Return type**

    list

#### head_handler(put_path, silent=False, service=False)
Performs the client HTTP HEAD operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.
- **Parameters**

    
    - **put_path** (*str*) – The REST path to perform the head operation on.
    - **silent** (*bool*) – If False response will be parsed based on service flag and output to a log or
    stdout. If True response will not be parsed and no message output or error
    messages raised from the response handler.
    - **service** (*bool*) – When handling the response, if True registries will be gathered and a full,
    response will be output if False they will not and response handler will
    instead return a generic message.

- **Returns**

    A `redfish.rest.containers.RestResponse` object containing response data

#### info(selector=None, props=None, dumpjson=True, latestschema=False)
Gets schema information for properties from a specified selector. If no selector is
specified, uses the selector property in the app class. If no properties are specified
the entire schema dictionary is returned in a list.
- **Parameters**

    
    - **selector** (*str*) – The type selection for the info operation.
    - **props** (*str** or **list*) – The keys to gather schema data for within current selection.
    - **dumpjson** (*bool*) – Flag to determine if output should be human readable or json schema.
    - **latestschema** (*bool*) – Flag to determine if we should drop the schema version when we try to
    match schema information. If True, the version will be dropped.

- **Returns**

    A list of property schema information if dumpjson is True or string if dumpjson is
    False.

- **Return type**

    list or string

#### loadset(seldict=None, fltrvals=(None, None), diffonly=False, latestschema=False, uniqueoverride=False, selector=None)
Creates json patches in monolith if the supplied dictionary passes schema validation.
In the event schemas are unavailable the patches are always added. Patches that are created
this way are not sent to the server until the `commit()` function is called, sending the
patches to the server. A list of patches that have not been sent to the server can be
returned with the `status()` function.
- **Parameters**

    
    - **selector** (*str*) – The type selection for the loadset operation.
    - **seldict** (*dict*) – Dictionary with the patches to apply to the selected instances.
    - **fltrvals** (*tuple*) – The filter values for the operation (Key,Val). If a selector returns
    multiple instances fltrvals can filter the instances by a key/value pair,
    limiting the returned instances to the one you want. If no filter is
    supplied the patch dictionary will be applied to all instances.
    - **latestschema** (*bool*) – Flag to determine if we should drop the schema version when we try to
    match schema information. If True, the version will be dropped.
    - **diffonly** (*bool*) – flag to differentiate only existing properties.
    - **uniqueoverride** (*bool*) – Flag to determine if system unique properties should also be patched.
    If this is True, then unique properties will be patched.

- **Returns**

    returns a list of properties that have successfully been set

#### login(username=None, password=None, sessionid=None, base_url='blobstore://.', path=None, skipbuild=False, includelogs=False, biospassword=None, is_redfish=False, proxy=None, ssl_cert=None, user_ca_cert_data=None, json_out=False)
Performs a login on a the server specified by the keyword arguments. Will also create
a monolith, client, and update the compatibility classes for the app instance. If base_url
is not included the login is assumed to be locally on the OS.
- **Parameters**

    
    - **username** – The user name required to login to server.
    - **password** (*str*) – The password credentials required to login.
    - **base_url** (*str*) – The redfish host name or ip address to login to.
    - **path** (*str*) – The path to initiate the monolith crawl from. If None, it will start from the
    root. See monolith documentation on how the path is used.
    - **proxy** (*str*) – The proxy required for connection (if any).
    - **ssl_cert** (*str*) – The path to the CA bundle or SSL certificate to use with connection
    (if any).
    - **user_ca_cert_data** – Dictionary of user certificate data for iLO Certificate-based
    authentication including iLO User TLS certificate, iLO User CA Root Key,           iLO User CA Root Key Password (for encrypted CAs)
    - **skipbuild** (*bool*) – The flag to determine monolith download. If True, monolith will be
    initiated empty, if False will build the monolith.
    - **includelogs** (*bool*) – The flag to determine id logs should be downloaded in the crawl.
    - **biospassword** (*str*) – The BIOS password for the server if set.
    - **is_redfish** (*bool*) – If True, a Redfish specific header (OData) will be
    added to every request. Only required if the system has both LegacyREST and Redfish.

- **Type**

    str

- **Type**

    user_ca_pass: str

#### logout(url=None)
Performs a logout of the server and prepares the app for another system, setting app
variables to default values.
- **Parameters**

    **url** (*str*) – The URL for the logout request. Only needed when using a cache.


#### property monolith()

Get the monolith from the current client
#### patch_handler(put_path, body, headers=None, silent=False, service=False, optionalpassword=None)
Performs the client HTTP PATCH operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.
- **Parameters**

    
    - **put_path** (*str*) – The REST path to perform the patch operation on.
    - **body** (*dict*) – the body to perform the operation with.
    - **headers** (*dict*) – Any additional headers to be added to the request.
    - **optionalpassword** (*str*) – The bios password if it is required for the operation.
    - **silent** (*bool*) – If False response will be parsed based on service flag and output to a log or
    stdout. If True response will not be parsed and no message output or error
    messages raised from the response handler.
    - **service** (*bool*) – When handling the response, if True registries will be gathered and a full,
    response will be output if False they will not and response handler will
    instead return a generic message.

- **Returns**

    A `redfish.rest.containers.RestResponse` object containing response data

#### post_handler(put_path, body, headers=None, silent=False, service=False)
Performs the client HTTP POST operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.
- **Parameters**

    
    - **put_path** (*str*) – The REST path to perform the post operation on.
    - **body** (*dict*) – the body to perform the operation with.
    - **headers** (*dict*) – Any additional headers to be added to the request.
    - **silent** (*bool*) – If False response will be parsed based on service flag and output to a log or
    stdout. If True response will not be parsed and no message output or error
    messages raised from the response handler.
    - **service** (*bool*) – When handling the response, if True registries will be gathered and a full,
    response will be output if False they will not and response handler will
    instead return a generic message.

- **Returns**

    A `redfish.rest.containers.RestResponse` object containing response data

#### put_handler(put_path, body, headers=None, silent=False, optionalpassword=None, service=False)
Performs the client HTTP PUT operation with monolith and response handling support.
Response handling will output to logger or string depending on showmessages app argument.
- **Parameters**

    
    - **put_path** (*str*) – The REST path to perform the put operation on.
    - **body** (*dict*) – the body to perform the operation with.
    - **headers** (*dict*) – Any additional headers to be added to the request.
    - **optionalpassword** (*str*) – The bios password if it is required for the operation.
    - **silent** (*bool*) – If False response will be parsed based on service flag and output to a log or
    stdout. If True response will not be parsed and no message output or error
    messages raised from the response handler.
    - **service** (*bool*) – When handling the response, if True registries will be gathered and a full,
    response will be output if False they will not and response handler will
    instead return a generic message.

- **Returns**

    A `redfish.rest.containers.RestResponse` object containing response data

#### removereadonlyprops(currdict, emptyraise=False, removeunique=True, specify_props=None)
Remove read only properties from a dictionary. Requires schemas to be available.
- **Parameters**

    
    - **currdict** (*dictionary*) – The dictionary to remove read only properties from.
    - **emptyraise** (*boolean*) – Flag to raise an empty error for handling and failure to parse.

- **Parm specify_props**

    Optionally set list of properties to be removed instead of the default.

#### restore(creds=None, enc=False)
Restores the monolith from cache. Used to load a monolith data back into a new app
class. Keyword arguments are only needed in a local client when in a high security mode.
- **Parameters**

    
    - **creds** (*str*) – Credentials to create the client with.
    - **enc** (*bool*) – Flag to determine if encoding functions are being used. True if being used false
    if not.

#### save()
Updates the cache with the latest monolith data.
#### select(selector=None, fltrvals=(None, None), path_refresh=False)
Selects instances based on selector and filter values. The select specified is saved in
the app for further use. If another selector is sent, it overwrites the current one.
- **Parameters**

    
    - **selector** (*str*) – The type (@odata.type for Redfish) to select.
    - **fltrvals** (*tuple*) – The filter values for the select operation (Key,Val). If a selector returns
    multiple instances fltrvals can filter the instances by a key/value pair,
    limiting the returned instances to the one you want.
    - **path_refresh** (*bool*) – The flag to reload the selected instances. If True, each instance will be
    grabbed again from the server to make sure responses are up to date.

- **Returns**

    A list of selected monolith member instances.

- **Return type**

    RisMonolithMemberv100


#### property selector()

The selector that will be used to gather data if no selector or instance argument is
passed.
#### set_decode_funct(funct)
Set the decoding function for cache to use. Is used in conjunction with the
set_encode_funct to turn the encoded data back into a usable string.
- **Parameters**

    **funct** (*function*) – The function to use for decoding data

#### set_encode_funct(funct)
Set the encoding function for cache to use. Can be used to protect sensitive data when
it is at rest.
- **Parameters**

    **funct** (*function*) – The function to use for encoding data

#### status()
Returns all pending changes that have not been committed yet.
#### types(fulltypes=False)
Returns a list of types available to be queried and selected with monolith.
- **Parameters**

    **fulltypes** (*bool*) – Flag to determine if types return Redfish full name, if False will return
    a shortened version of the type string.

- **Returns**

    A list of type strings.

- **Return type**

    list


#### property validationmanager()

Get the valdation manager

### redfish.ris.rmc_helper

RMC helper file. Includes RMC errors and caching functionality for monolith.

#### exception redfish.ris.rmc_helper.CurrentlyLoggedInError()

Bases: `Exception`

Raised when attempting to select an instance that does not exist

#### exception redfish.ris.rmc_helper.EmptyRaiseForEAFP()

Bases: `Exception`

Raised when you need to check for issues and take different action.

#### exception redfish.ris.rmc_helper.FailureDuringCommitError(message)

Bases: `RdmcError`

Raised when there is an error while committing.

#### exception redfish.ris.rmc_helper.IdTokenError()

Bases: `Exception`

Raised when user is not authorized to complete the operation.

#### exception redfish.ris.rmc_helper.IloLicenseError()

Bases: `Exception`

Raised when the proper iLO license is not available for a command

#### exception redfish.ris.rmc_helper.IloResponseError()

Bases: `Exception`

Raised when iLO returns with a non 2XX response.

#### exception redfish.ris.rmc_helper.IncompatibleiLOVersionError()

Bases: `Exception`

Raised when the iLO version is above or below the required version.

#### exception redfish.ris.rmc_helper.IncorrectPropValue()

Bases: `Exception`

Raised when you pass an incorrect value to for the associated property.

#### exception redfish.ris.rmc_helper.InstanceNotFoundError()

Bases: `Exception`

Raised when attempting to select an instance that does not exist.

#### exception redfish.ris.rmc_helper.InvalidCommandLineError(message)

Bases: `RdmcError`

Raised when user enter incorrect command line arguments

#### exception redfish.ris.rmc_helper.InvalidPathError()

Bases: `Exception`

Raised when requested path is not found.

#### exception redfish.ris.rmc_helper.InvalidSelectionError()

Bases: `Exception`

Raised when selection argument fails to match anything.

#### exception redfish.ris.rmc_helper.LoadSkipSettingError()

Bases: `Exception`

Raised when one or more settings are absent in given server.

#### exception redfish.ris.rmc_helper.NothingSelectedError()

Bases: `Exception`

Raised when attempting to access an object without first selecting it.

#### exception redfish.ris.rmc_helper.NothingSelectedFilterError()

Bases: `Exception`

Raised when the filter applied doesn’t match any selection (general).

#### exception redfish.ris.rmc_helper.NothingSelectedSetError()

Bases: `Exception`

Raised when attempting to access an object without first selecting it (In set).

#### exception redfish.ris.rmc_helper.RdmcError(message)

Bases: `Exception`

Base class for all RDMC Exceptions

#### class redfish.ris.rmc_helper.RmcCacheManager(rmc)

Bases: `object`

Manages caching/uncaching of data for RmcApp.
- **Parameters**

    **rmc** (`redfish.ris.rmc.RmcApp`) – RmcApp to be managed


#### class redfish.ris.rmc_helper.RmcFileCacheManager(rmc)

Bases: `RmcCacheManager`

RMC file cache manager.
- **Parameters**

    **rmc** (`redfish.ris.rmc.RmcApp`) – RmcApp to be managed

#### cache_rmc()
Saves monolith data to the file path specified in RmcApp.
#### logout_del_function(url=None)
Searches for a specific url in cache or returns all urls and returns them for RmcApp
to run logout on, clearing the session.
- **Parameters**

    **url** (*str*) – The URL to pass back for logout.

#### uncache_rmc(creds=None, enc=False)
Uncaches monolith data from cache location specified by RmcApp.
- **Parameters**

    
    - **creds** (*dict*) – Dictionary of username and password.
    Only required for restoring high security local calls.
    - **enc** (*bool*) – Flag if credentials passed are encoded.


#### exception redfish.ris.rmc_helper.ScepenabledError()

Bases: `Exception`

Raised when the generation csr or deletion of https cert is issues when scep is enabled

#### exception redfish.ris.rmc_helper.UnableToObtainIloVersionError()

Bases: `Exception`

Raised when iloversion is missing from default path.

#### exception redfish.ris.rmc_helper.UndefinedClientError()

Bases: `Exception`

Raised when there are no clients active (usually when user hasn’t logged in).

#### exception redfish.ris.rmc_helper.UserNotAdminError(message)

Bases: `RdmcError`

Raised when user doesn’t have admin priviledges, but they are required.

#### exception redfish.ris.rmc_helper.ValidationError(errlist)

Bases: `Exception`

Raised when there is a problem with user input.
#### get_errors()
Returns error list.

#### exception redfish.ris.rmc_helper.ValueChangedError()

Bases: `Exception`

Raised if user tries to set/commit a value when monolith has older data.

### redfish.ris.resp_handler

Error response handler for Redfish or LegacryRest responses. Extended information only available
with registries available on system, otherwise will return generic error responses.

#### class redfish.ris.resp_handler.ResponseHandler(validaition_mgr, msg_type)

Bases: `object`

Class to handle error responses from the server.
- **Parameters**

    
    - **validation_mgr** (*ValidationManager*) – ValidationManager instance to gather registries if needed. Available
    in an RmcApp class as an attribute.
    - **msg_reg_type** (*str*) – Redfish (#MessageRegistry.) or LegacyRest (MessageRegistry.)
    message registry string. Available in Typesandpathdefines class.

#### get_error_messages(regtype=None)
Returns registry error messages. Can specify a specific registry to return by Id.
- **Parameters**

    **regtype** (*str*) – Id of registry type to add to list.

- **Returns**

    A list of error messages.

#### get_message_data(resp_data, dl_reg=False)
Obtain relevant keys from rest response.
- **Parameters**

    **resp** (`redfish.rest.containers.RestResponse`) – response

- **Returns**

    list of error response dictionaries

#### message_handler(response_data, verbosity=0, message_text='No Response', dl_reg=False)
Prints or logs parsed MessageId response based on verbosity level and returns the
following message information in a list:
* MessageArgs
* MessageId
* RestResponse status
* Resolution
* Full error message text
- **Parameters**

    
    - **response_data** (`redfish.rest.containers.RestResponse`) – message response of a call.
    - **verbosity** (*int*) – Optional verbosity level. Only modifies what is output to log or screen.
    - **message_text** (*str*) – Response message text. If not provided, message_handler will attempt to
    parse it from the RestResponse and registries.
    - **dl_reg** (*bool*) – Flag to download registry. If this is set to True a generic message response
    will be returned instead of gathered from registries.

- **Returns**

    List of error response dictionaries.

#### output_resp(response, dl_reg=False, verbosity=1)
Prints or logs parsed MessageId response. Will raise an IloResponseError or return
a list of message response data which includes the information returned from
message_handler.
- **Parameters**

    
    - **response** (`redfish.rest.containers.RestResponse`) – message response of a call.
    - **dl_reg** (*bool*) – Flag to download registry. If this is set to True a generic message response
    will be returned instead of gathered from registries.
    - **verbosity** (*int*) – Optional verbosity level. Only modifies what is output to log or screen.

- **Returns**

    List of error response dictionaries.

#### verbosity_levels(message, messageid=' ', description=' ', resolution=' ', response_status=None, verbosity=0, dl_reg=False)
Formatting based on verbosity level.
- **Parameters**

    
    - **message** (*str*) – Message from BMC response combined with the registry model/schema.
    - **messageid** (*str*) – Error code as classified by the BMC’s error code registry.
    - **resolution** (*str*) – Message from BMC registry model/schema with the suggested
    resolution for the given error.
    - **response_status** (*int*) – HTTP response status code.
    - **verbosity** (*int*) – Option to set/control output message (stderr) verbosity.

- **Returns**

    Message to be returned to caller.
### redfish.ris.validation

Handles schema and registry gathering as well as schema parsing and validation.

#### class redfish.ris.validation.BaseValidator(d)

Bases: `RisObject`

Base class for all validators.
#### common_print_help(name)
Common human readable schema data.
- **Parameters**

    **name** (*str*) – clean name for outputting.

- **Returns**

    A human readable string of schema data.

#### is_array(attrentry, arrval, name)
Validate that the given value is an array type.
- **Parameters**

    
    - **attrentry** (*dict*) – Registry model entry used for validation.
    - **attrval** (*str*) – Value of Key to validate.

- **Returns**

    A boolean based on whether type is array and the value is valid for array type.

#### is_arrtype(attrentry)
Validate that the type is an array.
- **Parameters**

    **attrentry** (*dict*) – Registry model entry used for validation.

- **Returns**

    A boolean based on whether type is an array.

#### validate()
Overridable function for validation

#### class redfish.ris.validation.BoolValidator(d)

Bases: `BaseValidator`

Bool validator class
#### _static_ is_type(attrentry)
Validate that the type is boolean.
- **Parameters**

    **attrentry** (*dict*) – Registry model entry used for validation.

- **Returns**

    A boolean based on whether type is boolean.

#### print_help(name)
Human readable schema information specific to Boolean data.
- **Parameters**

    **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    A human readable string of schema data.

#### validate(newval, name)
Validate against schemas.
- **Parameters**

    
    - **newval** (*list*) – New value to be used for validation in a list
    - **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    An error if value is invalid.


#### class redfish.ris.validation.EnumValidator(d)

Bases: `BaseValidator`

Enum validator class
#### _static_ is_type(attrentry)
Validate that the type is enumeration.
- **Parameters**

    **attrentry** (*dict*) – Registry model entry used for validation.

- **Returns**

    A boolean based on whether type is eneumeration.

#### print_help(name)
Human readable schema information specific to Enum data.
- **Parameters**

    **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    A human readable string of schema data.

#### validate(keyval, name)
Validate against schemas.
- **Parameters**

    
    - **keyval** (*list*) – New value to be used for validation in a list
    - **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    An error if validation fails.


#### class redfish.ris.validation.HpPropertiesRegistry(d)

Bases: `RisObject`

Models a schema or bios attribute registry. Registry model.
#### get_validator(attrname, newargs=None, oneof=None)
Returns attribute validator type.
- **Parameters**

    
    - **attrname** (*str*) – attribute name to validate. Ex: In A/B/C, this will be A.
    - **newargs** (*list*) – List of multi level properties to be modified. Ex: In A/B/C this will be
    a list of B and C.
    - **oneof** (*string*) – Special string for “oneof” options within validation.

- **Returns**

    The validator type class for the property passed.

#### nulltypevalidationcheck(attrval=None, attrentry=None)
Function to validate null attributes against iLO schema
- **Parameters**

    
    - **attrentry** (*str*) – Key of property to validate.
    - **attrval** (*str*) – Value of Key to validate.

- **Returns**

    True if entry is null and valid.

#### validate_attribute(attrentry, attrvallist, name)
Function to validate attribute against its schema.
- **Parameters**

    
    - **attrentry** (*str*) – Key of property to validate.
    - **attrval** (*str*) – Value of Key to validate.
    - **name** (*str*) – Clean name for outputting information to users.

- **Returns**

    returns list with validated attributes

#### validate_attribute_values(tdict)
Look for tdict in the attribute list and attempt to validate its value.
- **Parameters**

    **tdict** (*dict*) – the dictionary to test against.

- **Returns**

    A validated list


#### class redfish.ris.validation.IntegerValidator(d)

Bases: `BaseValidator`

Interger validator class
#### _static_ is_type(attrentry)
Validate that the type is integer.
- **Parameters**

    **attrentry** (*dict*) – Registry model entry used for validation.

- **Returns**

    A boolean based on whether type is integer.

#### print_help(name)
Human readable schema information specific to Integer data.
- **Parameters**

    **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    A human readable string of schema data.

#### validate(newvallist, _)
Validate against schemas.
- **Parameters**

    **newvallist** (*list*) – New value to be used for validation in a list

- **Returns**

    An error if validation fails criteria.


#### exception redfish.ris.validation.InvalidPathsError()

Bases: `Exception`

Raised when requested path is not found

#### class redfish.ris.validation.ObjectValidator(d)

Bases: `BaseValidator`

Object validator class
#### _static_ is_type(attrentry)
Validate that the type is object.
- **Parameters**

    **attrentry** (*dict*) – Registry model entry used for validation.

- **Returns**

    A boolean based on whether type is object.

#### print_help(name)
Human readable schema information specific to Object data.
- **Parameters**

    **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    A human readable string of schema data.

#### validate(newval, name)
Validate against schemas.
- **Parameters**

    
    - **newval** (*list*) – New value to be used for validation in a list
    - **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    An error if value is invalid.


#### class redfish.ris.validation.PasswordValidator(d)

Bases: `BaseValidator`

Password validator class
#### _static_ is_type(attrentry)
Validate that the type is a password.
- **Parameters**

    **attrentry** (*dict*) – Registry model entry used for validation.

- **Returns**

    A boolean based on whether type is a password.

#### print_help(name)
Human readable schema information specific to Password data.
- **Parameters**

    **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    A human readable string of schema data.

#### validate(newvallist, _)
Validate against schemas.
- **Parameters**

    **newvallist** (*list*) – New value to be used for validation in a list

- **Returns**

    An error if validation fails criteria.


#### exception redfish.ris.validation.RegistryValidationError(msg, regentry=None, selector=None)

Bases: `Exception`

Registration Validation Class Error

#### class redfish.ris.validation.StringValidator(d)

Bases: `BaseValidator`

Constructor
#### _static_ is_type(attrentry)
Validate that the type is string.
- **Parameters**

    **attrentry** (*dict*) – Registry model entry used for validation.

- **Returns**

    A boolean based on whether type is string.

#### print_help(name)
Human readable schema information specific to String data.
- **Parameters**

    **name** (*str*) – Clean name for outputting human readable info.

- **Returns**

    A human readable string of schema data.

#### validate(newvallist, _)
Validate against schemas.
- **Parameters**

    **newvallist** (*list*) – New value to be used for validation in a list

- **Returns**

    An error if validation fails criteria.


#### class redfish.ris.validation.Typepathforval(typepathobj)

Bases: `object`

Way to store the typepath defines object.

#### exception redfish.ris.validation.UnknownValidatorError()

Bases: `Exception`

Raised when we find an attribute type that we don’t know how to validate.

#### class redfish.ris.validation.ValidationManager(monolith, defines=None)

Bases: `object`

Keeps track of all the schemas and registries and provides helpers
to simplify validation.
#### checkreadunique(tdict, tkey, reg=None, warnings=None, unique=None, searchtype=None)
Check for and remove the readonly and unique attributes if required.
- **Parameters**

    
    - **tdict** (*dict.*) – the dictionary to test against.
    - **tkey** (*str.*) – The attribute key value to be tested.
    - **warnings** (*list.*) – list containing found warnings.
    - **unique** (*str.*) – flag to determine override for unique properties.
    - **reg** (*dict.*) – Registry entry of the given attribute.

- **Returns**

    returns boolean.


#### property errors()

All errors found by the last validation.
#### find_prop(propname, latestschema=False, proppath=None)
Searches through all locations and returns the schema
found for the provided propname type.
- **Parameters**

    
    - **propname** (*str*) – String containing the schema name.
    - **proppath** (*str*) – String containing the schema path if you wish to use that instead.
    - **latestschema** (*bool*) – Flag to determine if we should drop the schema version when we try to
    match schema information. If True, the version will be dropped.

#### find_property(propname, cls=None, latestschema=False)
Returns iLO/BIOS registries/schemas
- **Parameters**

    
    - **propname** (*str*) – string containing the registry/schema name.
    - **cls** (*list*) – self._classes list of dictionaries.
    - **latestschema** (*bool.*) – flag to drop the versioning in the type string.

- **Returns**

    iLO/BIOS registries/schemas that match the supplied name.

#### get_registry_model(currtype=None, proppath=None, getmsg=False, searchtype=None, newarg=None, latestschema=False)
Loads the schema file and find the registry model if available. A registry model is a
object built for schema/bios registry data.
- **Parameters**

    
    - **currtype** (*dict.*) – Type selection string.
    - **proppath** (*str*) – String containing the schema path if you wish to use that instead.
    - **getmsg** (*bool*) – Flag to determine if commit should be skipped.
    - **searchtype** (*str*) – Include the attribute registry of you are validating a bios registry.
    - **newarg** (*list*) – List of multi level properties to be modified.
    - **latestschema** (*bool*) – Flag to determine if we should drop the schema version when we try to
    match schema information. If True, the version will be dropped.

- **Returns**

    Schema in object form called a registry object.

#### geturidict(locationobj)
Return the external reference link.
- **Parameters**

    **locationobj** (*dict*) – Dictionary to get the URI reference from.

#### itermems(membername=None)
Searches through all locations and yields each entry.
- **Parameters**

    **membername** (*str*) – string containing the registry name. If not passed we use the typedefines
    string by default.

#### iterregmems(membername=None)
Searches through all registries and yields each entry.
- **Parameters**

    **membername** (*str*) – string containing the registry name. If not passed we use the typedefines
    string by default.

#### iterschemamems(membername=None)
Searches through all schemas and yields each entry
- **Parameters**

    **membername** (*str*) – string containing the registry name. If not passed we use the typedefines
    string by default.

#### nestedreg(reg=None, args=None)
Go through the registry entry to find the required nested attribute.
- **Parameters**

    
    - **reg** (*dict*) – Registry entry of the given attribute.
    - **args** (*list*) – List of multi level properties to be modified.

- **Returns**

    dict of Registry entry

#### reset_errors_warnings()
Resets warnings and errors, getting ready for the next validation.
#### updatevalidationdata()
Loads the types into the validation manager from monolith.
#### validatedict(tdict, currtype=None, proppath=None, latestschema=False, searchtype=None, monolith=None, reg=None, unique=None)
Load the schema file and validate tdict against it.
- **Parameters**

    
    - **tdict** (*dict*) – the dictionary to test against.
    - **currtype** (*str*) – String containing the type the tdict dictionary is.
    - **proppath** (*str*) – String containing the schema path of the tdict dictionary if you wish to
    use that instead.
    - **latestschema** (*bool*) – Flag to determine if we should drop the schema version when we try to
    match schema information. If True, the version will be dropped.
    - **searchtype** (*str*) – Include the attribute registry of you are validating a bios registry.
    - **monolith** (*dict*) – Full data model retrieved from server.
    - **unique** (*bool*) – Flag to override for skipping unique properties.
    - **reg** (*dict.*) – Registry entry of the given attribute. If this is not provided we will attempt
    to search based on the searchtype and currtype/proppath arguments.

- **Returns**

    returns an error list.


#### property warnings()

All warnings found by the last validation.
### redfish.ris.validation.checkattr(aobj, prop)
Check if an attribute exists
