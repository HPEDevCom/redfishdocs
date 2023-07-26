---
seo:
  title: HPE Python Redfish library changelog
disableLastModified: false
toc:
  enable: true
  maxDepth: 2
---

# Changelog for the HPE Python Redfish library

:::info NOTE
The HPE Python Redfish library is used by the [HPE iLOrest](/docs/redfishclients/ilorest-userguide/) RESTful interface tool. For this reason, they both share the same changelog information.
:::

## Version 4.1

**Fixes:**

* Fixed an issue in save where NVMe drives are getting saved 2 times.
* Fixed an issue `set` command for `Oem/Hpe/ThermalConfiguration`.
* Fixed several issues with `storagecontroller` command which is an alias to `smartarray` command.
* Fixed an issue with logging in and logging out with `sessionid` option in `login` command.
* Fixed minor issues with `createvolume` and `deletevolume` command.
* Fixed an issue fetching storage controller details using location details.
* Fixed an issue in `clearcontroller` command by specifying the location details.
* Fixed an issue in `login` command by specifying the proxy details.
* Fixed a github reported issue by giving `--nologout` option for reboot command.

**Enhancements:**

* Added support for server cloning storage controller configurations in Gen11 (HPE iLO 6) servers.
