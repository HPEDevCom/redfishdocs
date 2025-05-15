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
  title: System compatibility
---

# System Compatibility

Compatibility can be hard to maintain if you have many different systems with different firmware versions and system generations on each of them.
{% link-internal href=concat("/docs/redfishclients/python-redfish-library/3.2/python-library-reference", $env.PUBLIC_LATEST_PYTHON_LIBRARY_VERSION) %} gen_compat {% /link-internal %}
tries to help alleviate the headaches associated with this. It can automatically detect what type of system you are using and provide useful string values of key property keys, paths, types, and Booleans to check what the system type is.

A compatibility class is automatically created as part of an RmcApp class.

{% admonition type="info" name="NOTE" %}
While currently `gen_compat` only specifically supports HPE iLO systems, the
{% link-internal href=concat("/docs/redfishclients/python-redfish-library/3.2/python-library-reference", $env.PUBLIC_LATEST_PYTHON_LIBRARY_VERSION) %} Definevalstenplus {% /link-internal %}
class defines are mostly Redfish standard values. `gen_compat` can also easily be extended to provide strings for any system type.
{% /admonition %}

## Creating a Compatibility Class

To create a compatibility class we first need to import the relevant module and create an empty class.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> from redfish.ris.gen_compat import Typesandpathdefines
>>> COMPAT_OBJ = Typesandpathdefines()
```
  
  {% /tab %}
  {% /tabs %}
## Using a Compatibility Class

Now if you try to read any defines you will find the values are all empty. We need to point the compatibility class to a system in order to detect its API type, iLO version, and generation if necessary. This is done with the `getgen` function. If any other connection requirements are needed they can also be added now.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> COMPAT_OBJ.getgen(url=iLO_host, username=login_account, password=login_password)
```
  
  {% /tab %}
  {% /tabs %}
After running the `getgen` function, if no connection errors occurred, you should be able to see information on the system as well as a list of string defines you can use in place of direct strings. That way you guarantee no matter the system you will have the correct key, type, or path value.

{% admonition type="info" name="NOTE" %}
The following example defines are from an iLO 5 system.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> COMPAT_OBJ.ilogen
5
>>> COMPAT_OBJ.defs.hrefstring
'@odata.id'
>>> COMPAT_OBJ.defs.collectionstring
'Members`
>>> COMPAT_OBJ.defs.biostype
'Bios.'
```
  
  {% /tab %}
  {% /tabs %}
Here is the compatibility class in action on a RedfishClient. The following code would work the same for LegacyRest due to the use of the compatibility class instead of hard coding paths and keys.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> REST_OBJ = RestClient(base_url=iLO_host, username=login_account, password=login_password)
>>> resp = REST_OBJ.get(COMPAT_OBJ.defs.startpath)
>>> resp.path
'/redfish/v1/'
>>> resp.obj.Chassis[COMPAT_OBJ.defs.hrefstring]
u'/redfish/v1/Chassis/'
```
  
  {% /tab %}
  {% /tabs %}
## Updating a Compatibility Class

On some iLO 4 systems both Redfish and LegacyRest are available for use for backwards compatibility. The compatibility class will automatically assume LegacyRest in this instance. In order to use Redfish on these systems you will need to update the defines.

First create a new object with the redfish flag added.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> COMPAT_OBJ = Typesandpathdefines()
>>> COMPAT_OBJ.getgen(url=iLO_host, username=login_account, password=login_password, isredfish=True)
```
  
  {% /tab %}
  {% /tabs %}
The initial `isredfish` flag will ensure we load redfish paths when performing the initial detection. We still need to call `updatedefinesflag` to update our defines to Redfish.

  {% tabs %}
{% tab label="Example" %}

```Python Example
>>> COMPAT_OBJ.defs.startpath
'/rest/v1'
>>> COMPAT_OBJ.updatedefinesflag(redfishflag=True)
True
>>> COMPAT_OBJ.defs.startpath
'/redfish/v1/'
```
  
  {% /tab %}
  {% /tabs %}
{% admonition type="info" name="NOTE" %}
This will not do anything on Redfish only systems, so it is safe to use in all cases to ensure Redfish is used if that is desired.
{% /admonition %}
