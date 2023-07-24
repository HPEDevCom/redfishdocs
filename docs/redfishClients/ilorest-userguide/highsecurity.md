---
seo:
  title: Setting iLO in high security modes
toc:
  enable: true
  maxDepth: 3
disableLastModified: true
---

# Setting iLO in high security modes

This section describes how to set a managed iLO into a high security mode and how to use the RESTful Interface Tool in these modes. For more information about the high security modes of iLO, refer to [Security Service](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpesecurityservice) section.

:::info NOTE
High security settings are only available in HPE Gen10 servers and later.
:::

## Setting iLO in a high security mode

To modify the security mode of a managed iLO with iLOrest, select the `HpeSecurityService.` [data type](/docs/concepts/datatypesandcollections/#data-types), and then set the `SecurityState` property to one of the [allowed values](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#securitystateredfishallowablevalues-array) and commit.

![Set Security 1](images/Security_1.png "Set Security 1")

:::info NOTE
After the commit operation has been completed, iLO resets to apply the changes.
:::

## Using HPE iLOrest in iLO high security modes

HPE iLOrest, in remote mode, continues to function normally in high security modes.

![Set Security 2](images/Security_2.png "Set Security 2")

To use HPE iLOrest locally in a high security mode, you must pass credentials along with your commands.

![Set Security 3](images/Security_3.png "Set Security 3")

:::warning Warning
In interactive mode, you only need to pass your credentials during the login command. In command line mode, you must pass credentials for EACH COMMAND, even if you are already logged in.
:::

If you do not pass the proper credentials in local mode, you receive and error.

![Set Security 4](images/Security_4.png "Set Security 4")

## Operating system FIPS modes

iLOrest version 2.2 and greater have OS FIPS support. If an OS is set to enforce FIPS, RESTful Interface Tool uses a FIPS version of OpenSSL.

For users running from source that would like FIPS support, please refer to <a href="https://developer.hpe.com/blog/creating-a-python-version-that-enforces-fips" target="_blank">this article</a> for information on including this feature.
