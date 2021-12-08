---
seo:
  title: Concepts | Navigating the Data Model
disableLastModified: true
toc:
  enable: true
---

# Navigating the Data Model

The Redfish API is designed to be implemented on many different models of servers and other IT infrastructure devices for years to come.  These devices may be quite different from one another.  For this reason, the Redfish API does not specify the URIs to various resources. For example, a client cannot assume the BIOS version information is always at a particular URI.

This is more complex for the client, but is necessary to make sure the data model can change to accommodate various future server architectures without requiring specification changes. As an example, if the BIOS version is at `/redfish/v1/Systems/1`, and a client assumed it is always there, the client would then break when the interface is implemented on a different type of architecture with many compute nodes, each with its own BIOS version, or on other vendor implementations. 

## Redfish 1.6 (iLO 5 1.40 or later) URI Templates

As of Redfish 1.6, a number of resource types have URI template specifications to be compatible with OpenAPI 3.0.  Please see the Redfish 1.6 CSDL schema for details on URI templates for specific types.

A client must still perform GET operations on a Redfish API service in order to discover what resources are available.  For instance, just because a Chassis has a template of `/redfish/v1/Chassis/{ChassisId}` means that a client must still GET `/redfish/v1/Chassis` in order to find the valid values of `{ChassisId}`.

## Iterating Collections

Many operations will require you to locate the resource you wish to use.  Most of these resources are members of "collections" (arrays of similar items).  The method to find collections members is consistent for compute nodes, chassis, management processors, and many other resources in the data model.

```shell cURL
curl --include --insecure --location   \
    -u username:password  \
   https://{iLO}/redfish/v1/systems/ 
```

```Python
import sys
import redfish

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
iLO_host = "https://{iLO}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.RedfishClient(base_url=iLO_host,username=login_account, \
                          password=login_password, default_prefix='/redfish/v1')

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems/", None)

# Print out the response
sys.stdout.write("%s\n" % response)

# Logout of the current session
REDFISH_OBJ.logout()
```

```json JSON response example
{
    "@odata.id": "/redfish/v1/systems/",
    "@odata.context": "/redfish/v1/$metadata/",
    "@odata.type": "#ComputerSystemCollection.ComputerSystemCollection",
    "Members@odata.count": 1,
    "Members": [
        {
            "@odata.id": "/redfish/v1/systems/1/"
        }
    ]
}
```

## Find a Compute Node

A Compute node represents a logical computer system with attributes such as processors, memory, BIOS, power state, firmware version, etc.  To find a compute node `GET /redfish/v1/systems` and iterate the "Members" array in the returned JSON.  Each member has a link to a compute node.

Find a compute node by iterating the systems collection at `/redfish/v1/systems/`.

You can then GET the compute node, PATCH values, or perform Actions.

```shell cURL
curl --include --insecure --location   \
      -u username:password \
      https://{host}/redfish/v1/systems/{item}
```

```python
import sys
import redfish

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
iLO_host = "https://{iLO}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.RedfishClient(base_url=iLO_host,username=login_account, \
                          password=login_password, default_prefix='/redfish/v1')

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/systems/{item}/", None)

# Print out the response
sys.stdout.write("%s\n" % response)

# Logout of the current session
REDFISH_OBJ.logout()
```

```json JSON response example
{
	"@odata.context": "/redfish/v1/$metadata#Systems/Members/$entity",
	"@odata.id": "/redfish/v1/Systems/1/",
	"@odata.type": "#ComputerSystem.1.0.1.ComputerSystem",
	...
	
	...
	"SerialNumber": "Kappa",
	"Status": {
		"Health": "Warning",
		"State": "Enabled"
	},
	"SystemType": "Physical",
	"UUID": "00000000-0000-614B-7070-610000000000"
}
```

## Find a Chassis

A Chassis represents a physical or virtual container of compute resources with attributes such as FRU information, power supplies, temperature, etc.  To find a chassis `GET /redfish/v1/chassis` and iterate the "Members" array in the returned JSON.  Each member has a link to a chassis.

Find a chassis by iterating the chassis collection at `/redfish/v1/chassis`.

You can then GET the chassis, PATCH values, or perform Actions.

```shell cURL
curl  --include --insecure --location  \
    -u username:password   \
    https://{host}/redfish/v1/chassis/{item} 
```

```python
import sys
import redfish

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
iLO_host = "https://{iLO}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.RedfishClient(base_url=iLO_host,username=login_account, \
                          password=login_password, default_prefix='/redfish/v1')

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/chassis/{item}/", None)

# Print out the response
sys.stdout.write("%s\n" % response)

# Logout of the current session
REDFISH_OBJ.logout()
```

```json JSON response example
{
	"@odata.context": "/redfish/v1/$metadata#Chassis/Members/$entity",
	"@odata.id": "/redfish/v1/Chassis/1/",
	"@odata.type": "#Chassis.1.0.0.Chassis",
	"ChassisType": "RackMount",
	...
	
	...
	"Status": {
		"Health": "Warning",
		"State": "Enabled"
	},
	"Thermal": {
		"@odata.id": "/redfish/v1/Chassis/1/Thermal/"
	}
}
```

## Find the Management Processor

A Manager represents a management processor or Baseboard Management Card (BMC) that manages chassis and compute resources.  For HPE Gen10 Servers, the manager is iLO 5.  Managers contain attributes such as networking state and configuration, management services, security configuration, etc.  To find a manager `GET /redfish/v1/managers` and iterate the `Members` array in the returned JSON.  Each member has a link to a chassis.

Find a manager by iterating the manager collection at `/redfish/v1/managers/`.

You can then GET the manager, PATCH values, or perform Actions.

```shell cURL
curl --include --insecure --location \
  -u username:password \
   https://{host}/redfish/v1/managers/{item} 
```

```python
import sys
import redfish

# When running remotely connect using the iLO address, iLO account name, 
# and password to send https requests
iLO_host = "https://{iLO}"
login_account = "admin"
login_password = "password"

## Create a REDFISH object
REDFISH_OBJ = redfish.RedfishClient(base_url=iLO_host,username=login_account, \
                          password=login_password, default_prefix='/redfish/v1')

# Login into the server and create a session
REDFISH_OBJ.login(auth="session")

# Do a GET on a given path
response = REDFISH_OBJ.get("/redfish/v1/managers/{item}/", None)

# Print out the response
sys.stdout.write("%s\n" % response)

# Logout of the current session
REDFISH_OBJ.logout()
```

```json JSON response example
{
	"@odata.context": "/redfish/v1/$metadata#Managers/Members/$entity",
	"@odata.id": "/redfish/v1/Managers/1/",
	"@odata.type": "#Manager.1.0.0.Manager",
	...
	
	...
	"Status": {
		"State": "Enabled"
	},
	"UUID": null,
	"VirtualMedia": {
		"@odata.id": "/redfish/v1/Managers/1/VirtualMedia/"
	}
}
```

## BIOS resources and attribute registry overview

BIOS resources are formatted differently than most other resources. BIOS resources do conform to a schema type as all objects do. However, BIOS settings vary widely across server types and BIOS revisions, so it is  extremely difficult to publish a standard schema defining all the possible BIOS setting properties. Furthermore, it is not possible to communicate some of the advanced settings such as inter-setting dependencies, and menu structure in json-schema. Therefore, BIOS uses an **Attribute Registry.**

### Attribute registry

The [BIOS current configuration resource](/docs/examples/biosexamples.md#reading-bios-current-settings) has a property called `AttributeRegistry`. This property indicates the name and version of a registry file that defines the properties in the BIOS configuration. It also includes information about interdependencies between settings.

Due to their size, BIOS Attribute Registries are compressed JSON resources (gzip), so the returned HTTP headers indicate a content-encoding of `gzip.` The REST client will need to decompress the resource. This is done automatically in many web clients (like the Postman
plugin).

### BIOS attribute registry structure

The BIOS attribute registries contains three top-level arrays:

* **Menus:** Array containing the BIOS attributes menus and their hierarchy. This can be used
(for instance) to build a user interface that resembles the local BIOS Setup, or to group
properties that are related such as `ProcessorOptions` and `UsbOptions.`
* **Attributes:** Array containing BIOS attributes and information about the attributes such as type, values, etc.
* **Dependencies:** Array containing a list of dependencies of BIOS attributes on this server.
This includes inter-setting dependencies that might cause one BIOS setting to change its
value or its `ReadOnly` property based on the value of another BIOS setting.
* **BaseConfigs:** Array containing a list of default manufacturing settings of BIOS attributes.
This is equivalent to reading the BaseConfigs resource and parsing the object named
`default.`

### BIOS attributes

Each BIOS attribute in the attribute registry includes:

* Type of each BIOS attribute (enum, string, numeric, or Boolean).
* Possible values for enum type attributes.
* Display strings (localized to the registry language) for the attributes and their possible values.
* Help text and warning text (localized).
* Location and display order information, including menu hierarchy for an attribute.
* Value limits, including maximum, minimum, and step values for numeric attributes, and
minimum and maximum character lengths, as well as regular expressions for string attributes.
* And other meta-data.

## Changing BIOS settings and understanding @Redfish.Settings

Redfish enables UEFI BIOS configuration.

The current settings configuration object for BIOS is read-only. This object contains a link to a `SettingsObject` resource that you can perform a PATCH operation on. This is the "pending settings". If you GET the `Settings` resource, the returned information shows that you can perform PATCH operations. You can change properties and then perform a PATCH operation using the `Settings` URI. Changes to pending settings do not take effect until the server is reset. Before the server is reset, the current and pending settings are independently available. After the server is reset, the pending settings are applied and you can view any errors in the `@Redfish.Settings` property on the main object.

There are benefits to handling BIOS settings in this way:

* Enables offline components (for example, BIOS) to process changes to settings in a deferred manner.
* Allows current and pending values to remain available for review until the offline component processes the pending settings.
* Avoids the need for complex job queues.

See the BIOS modification [examples](/docs/examples/biosexamples.md) for more information.
