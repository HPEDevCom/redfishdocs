---
markdown:
  toc:
    hide: true
    depth: 
  lastUpdateBlock:
    hide: true
  breadcrumbs:
    hide: true
seo:
  title: HPE iLO 6 v1.11 reference documents
---

# HPE iLO 6 v1.11 reference documents overview

{% admonition type="info" name="Note" %}
HPE iLO 6 version 1.11 is officially certified by the Common Criteria Certification program.
The report of this certification is
<a href="https://commoncriteriaportal.org/nfs/ccpfiles/files/epfiles/642-LSS%20CT%20v1.0.pdf" target="_blank">publicly available</a>
on the Common Criteria Portal.
{% /admonition %}

HPE iLO Redfish reference documents consist of three documents bound to a specific iLO firmware version:

- [Resource map](/docs/redfishservices/ilos/ilo6/ilo6_111/ilo6_resmap111/)
- Resource definitions (i.e. [ServiceRoot](/docs/redfishservices/ilos/ilo6/ilo6_111/ilo6_serviceroot_resourcedefns111/))
- [Error messages](/docs/redfishservices/ilos/ilo6/ilo6_111/ilo6_msgregs111/)

The Resource map reference document provides the list of [data types and collection](/docs/concepts/datatypesandcollections/) URIs implemented in the iLo firmware. For each data type, it provides a the link to the associated detailed description in the resource definition section.

The resource definitions documents contain the detailed description of all Redfish resources and properties. Those definitions can be grouped under a single menu entry. For example, the [Manager](/docs/redfishservices/ilos/ilo6/ilo6_111/ilo6_manager_resourcedefns111/) resource definitions entry contains definitions of the `ManagerCollection`, `Manager`, `ManagerAccountCollection`, etc. Similarly the [HPE OEM extensions](/docs/redfishservices/ilos/ilo6/ilo6_111/ilo6_hpe_resourcedefns111/) contains the description of all the HPE OEM extensions.

However, other resource definitions documents can contain the definitions of a single resource (i.e. [Bios](/docs/redfishservices/ilos/ilo6/ilo6_111/ilo6_bios_resourcedefns111)).

{% admonition type="success" name="Tip" %}
Use the search box in the upper right corner of the main pane to find all the sections containing a specific keyword.
{% /admonition %}

The Error Messages section contains the description, format, severity and (if applicable) a resolution hint of the HTTP response bodies.
