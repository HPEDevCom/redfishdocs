---
seo:
  title: HPE iLO 5 v2.98 reference documents
disableLastModified: true
toc:
   enable: false
---

# HPE iLO 5 v2.98 reference documents overview

HPE iLO Redfish reference documents consist of three documents bound to a specific iLO firmware version:


- [Resource map](/docs/redfishservices/ilos/ilo5/ilo5_{{process.env.LATEST_ILO5_FW_VERSION}}/ilo5_resmap{{process.env.LATEST_ILO5_FW_VERSION}}/)
- Resource definitions (i.e. [ServiceRoot](/docs/redfishservices/ilos/ilo5/ilo5_{{process.env.LATEST_ILO5_FW_VERSION}}/ilo5_serviceroot_resourcedefns{{process.env.LATEST_ILO5_FW_VERSION}}/))
- [Error messages](/docs/redfishservices/ilos/ilo5/ilo5_{{process.env.LATEST_ILO5_FW_VERSION}}/ilo5_msgregs{{process.env.LATEST_ILO5_FW_VERSION}}/)


The Resource map reference document provides the list of [data types and collection](/docs/concepts/datatypesandcollections/) URIs implemented in the iLo firmware. For each data type, it provides a the link to the associated detailed description in the resource definition section.

The resource definitions documents contain the detailed description of all Redfish resources and properties. Those definitions can be grouped under a single menu entry. For example, the [Manager](/docs/redfishservices/ilos/ilo5/ilo5_{{process.env.LATEST_ILO5_FW_VERSION}}/ilo5_manager_resourcedefns{{process.env.LATEST_ILO5_FW_VERSION}}/) resource definitions entry contains definitions of the `ManagerCollection`, `Manager`, `ManagerAccountCollection`, etc. Similarly the [HPE OEM extensions](/docs/redfishservices/ilos/ilo5/ilo5_{{process.env.LATEST_ILO5_FW_VERSION}}/ilo5_other_resourcedefns{{process.env.LATEST_ILO5_FW_VERSION}}/) contains the description of all the HPE OEM extensions.

However, other resource definitions documents can contain the definitions of a single resource (i.e. [Bios](/docs/redfishservices/ilos/ilo5/ilo5_{{process.env.LATEST_ILO5_FW_VERSION}}/ilo5_bios_resourcedefns{{process.env.LATEST_ILO5_FW_VERSION}}/)).

:::success TIP
Use the search box in the upper right corner of the main pane to find all the sections containing a specific keyword.
:::

The Error Messages section contains the description, format, severity and (if applicable) a resolution hint of the HTTP response bodies.
