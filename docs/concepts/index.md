---
markdown:
  toc:
    hide: true
    depth: 3
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
seo:
  title: Redfish concepts
---

# Redfish concepts

This section explains Redfish generic concepts (i.e. authentication mechanisms), terminology and best practices.
It provides as well numerous generic [examples](/docs/examples/redfishExamples.md).

{% admonition type="info" name="Notes" %}

Information and examples provided in this section are generic and not tight to a specific
Redfish service or client implementation, unless clearly mentioned.

{% /admonition %}

## Redfish at a glance

As per the
<a href="https://redfish.dmtf.org/education"
target="_blank">Distributed Management Task Force</a>
(DMTF), *Redfish® is a standard designed to deliver simple and secure
management for converged, hybrid IT and the
Software Defined Data Center (SDDC).*

### Key benefits of the Redfish RESTful API

The Redfish RESTful API is the main management interface for
Hewlett Packard Enterprise servers. Its feature set is larger than the
previous iLO XML API (RIBCL) and IPMI interfaces. Using the
Redfish RESTful API, you can take full inventory of the server, control power
and reset, configure BIOS and management controller (i.e. iLO) settings,
fetch event logs, as well as many other functions.

The Redfish RESTful API follows the trend of the Internet in moving to a
common pattern for new software interfaces. Many web services in a variety
of industries use REST APIs because they are easy to implement,
easy to consume, and offer flexibility and scalability advantages
over previous technologies.

HPE OneView, OpenStack, the HPE Compute Ops Management and many other
server management applications offer now REST APIs. Most
Hewlett Packard Enterprise Management software offerings,
as well as the entire Software Defined Infrastructure,
are built upon REST APIs.

The Redfish RESTful API has the additional advantage of consistency
across all present and projected server architectures. The same data
model works for traditional rack-mount servers, blades, as well as
newer types of systems. This advantage comes because the data model
is designed to self-describe the service’s capabilities to the client
and has room for flexibility designed in from the start.
