---
markdown:
  toc:
    hide: false
    depth: 3
  lastUpdateBlock:
    hide: true
breadcrumbs:
  hide: true
seo:
  title: Setting iLO in high security modes
---

# Setting iLO in high security modes

This section describes how to set a managed HPE iLO into a high security
state and how to use the RESTful Interface Tool in these modes.
For more information about the security states of HPE iLO, refer to
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#hpesecurityservice") %} Security Service {% /link-internal %}
section.

{% admonition type="info" name="NOTE" %}
The content of this page is only related to iLO 5 and iLO 6 based servers.

Refer to this
[documentation section](/docs/redfishservices/ilos/supplementdocuments/securityservice/#transitioning-to-hpe-ilo-7)
for iLO 7 and later.
{% /admonition %}

## Setting iLO in a high security mode

To modify the security mode of a managed iLO with iLOrest, select the
`HpeSecurityService.` [data type](/docs/concepts/datatypesandcollections/#data-types),
and then set the `SecurityState`
property to one of the
{% link-internal href=concat("/docs/redfishservices/ilos/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_", $env.PUBLIC_LATEST_FW_VERSION, "/", $env.PUBLIC_LATEST_ILO_GEN_VERSION, "_hpe_resourcedefns", $env.PUBLIC_LATEST_FW_VERSION, "#securitystateredfishallowablevalues-array") %} allowed values {% /link-internal %}
and commit.

![Set Security 1](images/Security_1.png "Set Security 1")

{% admonition type="info" name="NOTE" %}
After the commit operation has been completed, iLO resets to apply the changes.
{% /admonition %}

## Using HPE iLOrest in iLO high security modes

HPE iLOrest, in remote mode (out-of-band), continues to function normally in high security modes.

![Set Security 2](images/Security_2.png "Set Security 2")

To use HPE iLOrest locally (in-band) in a high security mode, you must pass credentials along with your commands. Refer to this <a href="https://developer.hpe.com/blog/chif-driver-not-found/" target="_blank">blog post</a> for more information about in-band management.

![Set Security 3](images/Security_3.png "Set Security 3")

{% admonition type="warning" name="Warning" %}
In interactive mode, you only need to pass your credentials during the login
command. In command line mode, you must pass credentials for EACH COMMAND,
even if you are already logged in.
{% /admonition %}

If you do not pass the proper credentials in local mode, you receive and error.

![Set Security 4](images/Security_4.png "Set Security 4")

## Operating system FIPS modes

iLOrest version 2.2 and greater have OS FIPS support. If an OS is set to
enforce FIPS, RESTful Interface Tool uses a FIPS version of OpenSSL.

For users running from source that would like FIPS support, please refer to
<a href="https://developer.hpe.com/blog/creating-a-python-version-that-enforces-fips"
target="_blank">this article</a> for information on including this feature.
