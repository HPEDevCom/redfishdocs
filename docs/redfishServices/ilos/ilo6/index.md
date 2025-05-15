---
seo:
  title: HPE iLO 6 documentation overview
sidebar:
  hide: false
markdown:
  toc:
    hide: true
  lastUpdatedBlock:
    hide: true
  breadcrumbs:
    hide: true
---

# HPE iLO 6 Redfish documentation overview

The HPE iLO 6 Redfish documentation contains several sections summarized below.

## Adapting from iLO 5

The [adapting from iLO 5](ilo6_adaptation) section is a guide to help Redfish client code adapt from the iLO 5 RESTful API to the iLO 6 RESTful API.

## Changelog

The [Changelog](/docs/redfishservices/ilos/ilo6/ilo6_changelog/) section contains the list of changes between the different versions of the HPE iLO Redfish service.

## Reference documents

HPE iLO Redfish
{% link-internal href=concat("/docs/redfishservices/ilos/ilo6/ilo6_", $env.PUBLIC_LATEST_ILO6_FW_VERSION) %} reference documents {% /link-internal %}
contains all the needed API information related to published iLO firmware versions, for writing efficient Redfish clients.

## Supplement documents

The [supplement documents section](/docs/redfishservices/ilos/supplementdocuments/) provides useful technical information with practical examples that should work against all versions of iLO firmware (if not, it provides the exact working firmware version). As an example, the [OData query options](/docs/redfishservices/ilos/supplementdocuments/odataqueryoptions/) page explains briefly the concept of OData query options and provides examples that can be used to simplify Redfish client requests and associated response parsing.

{% admonition type="info" name="INFO" %}
Supplement documents are regularly updated. You should check the last update date in the upper left corner of the main pane of each document.
{% /admonition %}

### Supplement documents organization

The supplement documents menu (left pane) contains two types of entries:

- Sub-menu entries (i.e. [Security](/docs/redfishservices/ilos/supplementdocuments/securityservice/)) in which several documents are grouped together, all referring to a single theme.
- Plain entries (ex: [Log services](/docs/redfishservices/ilos/supplementdocuments/securityservice/), [Storage data models](/docs/redfishservices/ilos/supplementdocuments/storage/), etc.).
