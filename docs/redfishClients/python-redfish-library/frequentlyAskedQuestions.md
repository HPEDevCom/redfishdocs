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
  title: Frequently asked questions
---

# Frequently asked questions

Q1: What is the difference between REST and Redfish API?
--------------------------------------------------------

Representational State Transfer(REST) is a web-based software architectural style consisting of a set of constraints that focus on a system's resource. The HPE REST library performs the basic HTTP operations GET, POST, PUT, PATCH and DELETE on resources using the HATEOS (Hypermedia as the Engine of Application) REST architecture. RESTful typically refers to web services implementing REST architecture.

Redfish API uses a hypermedia data model OData(Open Data Protocol) v4 represented within a RESTful interface. OData is a specific implementation of REST architecture that allows resources identified using URIs and defined in an abstract data model. Since the Redfish implementation is based on OData v4, it requires the starting metadata OData header to be version 4. Redfish changes the linking between resources. Where the HPE Restful URIs places all link as "href" inside a "links" sub-object, Redfish changes "**href**" to "**@odata.id**", "**links**" sub-objects to "**Links**". For more information on iLO's implementation of Redfish, click `here <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA6-1727ENW.pdf?>`_.

More information on Redfish can be found on the `DMTF Redfish Website <https://www.dmtf.org/standards/redfish>`_.
