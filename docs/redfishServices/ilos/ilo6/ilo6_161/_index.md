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
  title: HPE iLO 6 v1.61 reference documents
---

# HPE iLO 6 v1.61 reference documents overview

HPE iLO Redfish reference documents consist of three documents bound to a specific iLO firmware version:

- [Resource map](/docs/redfishservices/ilos/ilo6/ilo6_161/ilo6_resmap161/)
- Resource definitions (i.e. [ServiceRoot](/docs/redfishservices/ilos/ilo6/ilo6_161/ilo6_serviceroot_resourcedefns161/))
- [Error messages](/docs/redfishservices/ilos/ilo6/ilo6_161/ilo6_msgregs161/)

The Resource map reference document provides the list of [data types and collection](/docs/concepts/datatypesandcollections/) URIs implemented in the iLo firmware. For each data type, it provides a the link to the associated detailed description in the resource definition section.

The resource definitions documents contain the detailed description of all Redfish resources and properties. Those definitions can be grouped under a single menu entry. For example, the [Manager](/docs/redfishservices/ilos/ilo6/ilo6_161/ilo6_manager_resourcedefns161/) resource definitions entry contains definitions of the `ManagerCollection`, `Manager`, `ManagerAccountCollection`, etc. Similarly the [HPE OEM extensions](/docs/redfishservices/ilos/ilo6/ilo6_161/ilo6_hpe_resourcedefns161/) contains the description of all the HPE OEM extensions.

However, other resource definitions documents can contain the definitions of a single resource (i.e. [Bios](/docs/redfishservices/ilos/ilo6/ilo6_161/ilo6_bios_resourcedefns161)).

{% admonition type="success" name="TIP" %}
Use the search box in the upper right corner of the main pane to find all the sections containing a specific keyword.
{% /admonition %}

The Error Messages section contains the description, format, severity and (if applicable) a resolution hint of the HTTP response bodies.

