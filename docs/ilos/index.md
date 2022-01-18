---
seo:
  title: HPE Redfish service on iLOs
disableLastModified: true
toc:
  enable: false
---

# Redfish® on HPE iLO based compute nodes

The following HPE iLO 4 and iLO 5 based compute nodes implements the Redfish(r) standard:

* ProLiant and Synergy Gen9 servers running iLO 4 2.00 or later
* ProLiant and Synergy Gen10 servers running iLO 5 1.10 or later with the iLO Standard license, 
* Moonshot
* Apollo

:::attention Note
Some features might not be available without an Advanced license on Gen9 and Gen10 servers.
:::

To access the Redfish service on iLOs, you need an HTTPS-capable client, such as a web browser with a REST Client plugin extension, Python or PowerShell scripts or a command line tool like cURL, a popular command line HTTP utility. An overview of several Redfish clients is published in this <a href="https://youtu.be/ur9UKRV_0S8" target="_blank">video</a>.

## Redfish schema supplements and API reference documents

Redfish schema supplements is a complement to the associated reference document. They provide a different rendering of resources and properties, as well as specific information like the links reachable from resources.

Reference documents are [OpenAPI documents](https://oai.github.io/Documentation/start-here.html) (aka [swagger](https://swagger.io/specification/) files) describing the API in a standard manner.

Select an API Reference document section in the left navigation menu or continue to browse to the next page  using the link located in the bottom right corner of this page.
