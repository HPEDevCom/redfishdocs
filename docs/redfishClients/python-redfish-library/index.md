---
seo:
  title: HPE Python Redfish library
disableLastModified: false
toc:
  enable: false
---

<!--
Original doc sources: https://github.com/HewlettPackard/python-ilorest-library/tree/master/docs
Original rendered doc: https://hewlettpackard.github.io/python-ilorest-library/API-Overview.html 
-->

# HPE Python Redfish® library

The <a href="https://github.com/HewlettPackard/python-ilorest-library" target="_blank">HPE Python Redfish® library</a> is built for interacting with systems that implement the <a href="https://redfish.dmtf.org/" target="_blank">Redfish API</a>, which includes the [HPE iLO RESTful API](/docs).
The library is the platform on which the [HPE iLOrest tool](/docs/redfishclients/ilorest-userguide/) was built on.

:::info NOTE
HPE iLOrest sources are accessible on <a href="https://github.com/HewlettPackard/python-redfish-utility" target="_blank">GitHub</a>. Online [documentation](/docs/redfishclients/ilorest-userguide) is also freely available.
:::

The library can connect **remotely** to any BMC that implements a Redfish API via HTTPS or **locally** to an HPE server using the HPE CHIF interface and implements Redfish or Legacy Rest APIs.

On top of this functionality, the library also offers remote and local support for the Legacy HPE iLO RESTful API that was the starting point for the DMTF Redfish standard.

For more information on the HPE iLO RESTful API and Redfish see the [API overview](/docs/redfishservices/ilos/)

## HPE Legacy Rest API

- HPE's Legacy Rest API is available starting in **HPE iLO 4 2.00**. Refer to <a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/quickstart_legacy_rest.py" target="_blank">quick_start_legacy_rest.py</a> for more detail.
- iLO 4 is Redfish conformant starting with **HPE iLO 4 2.30**.
- HPE iLO 5 and above are Redfish conformant only.
