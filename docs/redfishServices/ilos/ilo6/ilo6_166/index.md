---
markdown:
  toc:
    hide: true
    depth: 3
  lastUpdateBlock:
    hide: true
breadcrumbs:
  hide: false
seo:
  title: HPE iLO 6 v1.66 reference documents
---

# HPE iLO 6 v1.66 reference documents overview

HPE iLO Redfish reference documents consist of three documents bound to a specific iLO firmware version:

- [Resource map](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_resmap166/)
- Resource definitions (i.e. [ServiceRoot](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_serviceroot_resourcedefns166/))
- [Error messages](/docs/redfishservices/ilos/ilo6/ilo6_166/ilo6_msgregs166/)

The Resource map reference document provides the list of [data types and collection](/docs/concepts/datatypesandcollections/) URIs implemented in the iLo firmware. For each data type, it provides a the link to the associated detailed description in the resource definition section.

The resource definitions documents contain the detailed description of all Redfish resources and properties. Those definitions can be grouped under a single menu entry. For example, the
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "/", "ilo6_manager_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION) %} Manager {% /link-internal %}
contains the description of all the HPE OEM extensions.

However, other resource definitions documents can contain the definitions of a single resource (i.e.
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION, "/", "ilo6_bios_resourcedefns", $env.PUBLIC_LATEST_ILO6_FW_VERSION) %} Bios{% /link-internal %}).

{% admonition type="success" name="TIP" %}
Use the search box in the upper right corner of the main pane to find all the sections containing a specific keyword.
{% /admonition %}

The Error Messages section contains the description, format, severity and (if applicable) a resolution hint of the HTTP response bodies.
