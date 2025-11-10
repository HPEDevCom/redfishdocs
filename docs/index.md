---
seo:
  title: Introduction to the HPE server management portal
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

# Introduction to the HPE server management portal

Welcome to the HPE server management portal. This portal contains helpful
information about how to interact with the
<a href="https://www.dmtf.org/standards/redfish" target="_blank">Redfish</a>
RESTful APIs implemented in HPE hardware.

It contains three main sections:

- [Redfish concepts](/docs/concepts/index.md):
  This section explains Redfish generic concepts (i.e. authentication mechanisms), terminology and best practices.
  It provides as well numerous generic [examples](/docs/examples/redfishExamples.md).
  not tight to any particular platform unless clearly mentioned. In addition, you can use its
  [glossary](/docs/etc/glossaryterms.md) to better understand acronyms mentioned throughout the portal.
- [Services](/docs/redfishServices/index.md):
  This section contains helpful information about different Redfish services implemented by HPE.
- [Clients](/docs/redfishClients/index.md):
  This section contains helpful information about different Redfish clients provided by HPE
  to better interact with Redfish services.

Choose your path from the left navigation menus or continue to browse to the
next page using the link located in the bottom right corner of this page. For a
quick access to documents containing specific words or expression, use the
search box in the top right corner of the main window.

{% admonition type="success" name="Tips" %}

- You can quickly access the portal search box by just typing the `/` character.
- Filter the list of documents by selecting the sections (facet) you want the search to happen.
- It is possible to search the portal from remote, by sending a POST request to
  `/_search` endpoint and a payload similar to the one in the following example.

{% /admonition %}

{% tabs %}
{% tab label="cURL request" %}

```shell
curl --insecure --silent                  \
      --request POST --data '@data.json'  \
      'https://servermanagementportal.redocly.app/_search' | jq .
```

{% /tab %}
{% tab label="Payload" %}

```json
{
    "query": "spdm",
    "filter": [
        {
            "field": "redocly_category",
            "values": [
                "iLO Supplement documents"
            ],
            "isQuickFilter": true
        }
    ],
    "locale": "default_locale"
}

```

{% /tab %}
{% tab label="JSON output (truncated)" %}

```json
{
    "facets": {},
    "documents": {
        "iLO Supplement documents": [
            {
                "document": {
                    "title": "HPE security service",
                    "url": "/docs/redfishservices/ilos/supplementdocuments/securityservice",
                    "path": [
                        "HPE security service"
                    ],
                    "facets": {
                        "redocly_category": "iLO Supplement documents"
                    },
                    "text": "The  HpeSecurityService   subsystem   is the main entry point to the different security mechanisms protecting  the iLO and the platform (chassis and components). The integrity of components (i.e. add-on cards, adapters) is discussed in the  iLO and the SPDM  section. Operating system protection is described in the  HTTPS Boot TLS configuration  and the  Secure Boot Databases  sections.",
                    "id": "/docs/redfishservices/ilos/supplementdocuments/securityservice#hpe-security-service",
                    "redocly::teams-rbac": {},
                    "redocly::route-rbac": {
                        "slug": "/docs/redfishservices/ilos/supplementdocuments/securityservice",
                        "fsPath": "docs/redfishServices/ilos/supplementDocuments/securityService.md"
                    },
                    "tags": [
                        "iLO Supplement documents",
                        "anonymous",
                        "authenticated",
                        "redfish-writers",
                        "redfish-maintainers",
                        "redfish-react-markdoc",
                        "redfish-admins",
                        "v:default"
                    ],
                    "rbacTeams": [
                        "anonymous",
                        "authenticated",
                        "redfish-writers",
                        "redfish-maintainers",
                        "redfish-react-markdoc",
                        "redfish-admins"
                    ]
                },
                "highlight": {
                    "text": "... of components (i.e. add-on cards, adapters) is discussed in the  iLO and the<mark> SPDM</mark>  section. Operating system protection is described in the  HTTPS Boot TLS co..."
                }
            },
            {
                "document": {
                    "title": "iLO and the Security Protocol and Data Model (SPDM)",
                    "url": "/docs/redfishservices/ilos/supplementdocuments/spdm",
                    "path": [
                        "iLO and the Security Protocol and Data Model (SPDM)"
                    ],
                    "facets": {
                        "redocly_category": "iLO Supplement documents"
                    },
                    "text": "The Security Protocol and Data Model (SPDM) enables zero trust between the  server management controller and option cards. It uses the  DMTF standard specification  to verify and authenticate option cads. SPDM provides message exchange between the management controller and internal  server components, sequence diagrams, message formats, and other relevant  semantics for authentication and measurements of components and options cards. Redfish defines the Component Integrity service which allows redfish clients  to view SPDM details. In HPE iLO 6 version 1.10 and later, the  ComponentIntegrityCollection  URI is at  /redfish/v1/ComponentIntegrity/ . HPE iLO uses SPDM to authenticate and verify the integrity of the following  component types within HPE servers: PCIe Option Cards (PCIe, OCP, Mezz slots) NVMe Drives attached directly to CPU The authentication results are reported through: Integrate Management Log  ( IML ) Security Log  ( SL ) Redfish Alerts SNMP  traps iLO GUI (System Information-->Device Inventory) Redfish API (see next paragraph) You can control the SPDM functionality through the iLO GUI  (Security-->Access Settings-->iLO) and the Redfish API of  the following resources: Global Component Integrity Component Integrity Policy  Security Dashboard Security Parameter  Device   Component Integrity Enablement   (Boolean) Device Component Integrity policy Certificate Management  ( Import ,  Revoke ,  Delete  and  View )  Measurements  control and monitor Refer the HPE iLO 6 1.10 (or later)  User Guide  for detail on accessing the above resources via the iLO  Graphical User Interface.",
                    "id": "/docs/redfishservices/ilos/supplementdocuments/spdm#ilo-and-the-security-protocol-and-data-model-spdm",
                    "redocly::teams-rbac": {},
                    "redocly::route-rbac": {
                        "slug": "/docs/redfishservices/ilos/supplementdocuments/spdm",
                        "fsPath": "docs/redfishServices/ilos/supplementDocuments/spdm.md"
                    },
                    "tags": [
                        "iLO Supplement documents",
                        "anonymous",
                        "authenticated",
                        "redfish-writers",
                        "redfish-maintainers",
                        "redfish-react-markdoc",
                        "redfish-admins",
                        "v:default"
                    ],
                    "rbacTeams": [
                        "anonymous",
                        "authenticated",
                        "redfish-writers",
                        "redfish-maintainers",
                        "redfish-react-markdoc",
                        "redfish-admins"
                    ]
                },
                "highlight": {
                    "text": "...ses the  DMTF standard specification  to verify and authenticate option cads.<mark> SPDM</mark> provides message exchange between the management controller and internal  se...",
                    "title": "iLO and the Security Protocol and Data Model (SPDM)",
                    "path": [
                        "iLO and the Security Protocol and Data Model (SPDM)"
                    ]
                }
            },
         ....
        ]
    }
}

```

{% /tab %}
{% /tabs %}
