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
  title: HPE Python Redfish library changelog
---

# Changelog for the HPE Python Redfish library

{% admonition type="info" name="NOTE" %}

The HPE Python Redfish library is used by the
[HPE iLOrest](/docs/redfishclients/ilorest-userguide/) RESTful interface tool.

For this reason, they both share the same changelog information.

Refer to the **[iLOrest changelog](/docs/redfishclients/ilorest-userguide/changelog/)**
for versions greater than 4.8.0.0

{% /admonition %}

## Version 4.8.0.0

**Fixes:**

- Fixed an issue with the `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command)
  where locked components were not flashing.
- Fixed an issue with `list --json --selector HpeSecurityService.` not
  displaying in JSON format. Same is fixed with
  `get` [command](/docs/redfishclients/ilorest-userguide/globalcommands/#get-command) as well.
- Device discovery checks in
  `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command)
  are removed as it is taken care by iLO.
- Fixed an issue with `firmwareupdate` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#firmwareupdate-command)
  failing with [error code](/docs/redfishclients/ilorest-userguide/errors/)
  41 (FIRMWARE\_UPDATE\_ERROR) when server enabled with TPM.
- Fixed as issue where `ilorest` rpm not installing on FIPS enabled Linux OS.

**Enhancements:**

- Enhanced the `ethernet` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#ethernet-command)
  with new option `--force_network_config` to apply iLO network configuration.
- Enhanced `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command)
  with `--targets` option for targeted firmware update feature.
- Upgraded OpenSSL from version 1.0.2zf to 3.0.12.

## Version 4.7.0.0

**Fixes:**

- Fixed an AHS download issue in local in-band mode in the
  `serverlog` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverlogs-command).
- Fixed an issue where powercap is not getting set
  with `set` [command](/docs/redfishclients/ilorest-userguide/globalcommands/#set-command).
- Fixed the `installset` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#installset-command)
  where it was not deleting or creating recovery install sets.
- Fixed an issue with `createvolume` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#createvolume-command-former-createlogicaldrive-command)
  options quickdrive and customedrive w.r.t iLO 5.
- Fixed an issue with `deletevolume` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#deletevolume-command-former-deletelogicaldrive-command)
  w.r.t iLO 5.
- Fixed an issue in the `serverclone` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverclone-command)
  where iLO account changes were not cloned.
- Fixed an issue where `SecurityService` [instance](/docs/redfishservices/ilos/supplementdocuments/securityservice/#hpe-security-service)
  was not found occasionally.
- Fixed an issue with `storagecontroller` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#storagecontroller-command-former-smartarray-command)
  was not working when resources were not loaded in iLO.

**Enhancements:**

- Enhanced the `load` [command](/docs/redfishclients/ilorest-userguide/globalcommands/#load-command)
  with new option `--force_network_config` to apply iLO network configuration.
- Enhanced the `installset` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#installset-command)
  with mandatory `--user` and `--password` parameters
  while creating and deleting recovery
  install sets during a
  [local in-band sessions](/docs/redfishclients/ilorest-userguide/globalcommands/#login-command).

## Version 4.6.0.0

**Fixes:**

- Fixed an issue in the
  `directory` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#directory-command)
  where option `--addrolemap` role delimiter was not working.
- Fixed an unhandled error when
  `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command)
  executed with `--update_srs` for a user without the
  Recovery Set Privilege.
- Included a message in `drivesanitize`
  [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#drivesanitize-command)
  for HPE iLO 5 for not supporting `--drivereset` and `--status` features.

**Enhancements:**

- Enhanced the `flashfwpkg`
  [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command)
  to flash the firmware of type .HPB ([HPE signed Public Binary](/docs/etc/glossaryterms))
  images.
- Added support for RHEL 9.2 ARM64 Operating System.

## Version 4.5.0.0

**Fixes:**

- Fixed an issue where `serverinfo` command did not return
  memory and CPU information in Gen9 servers.
  Note memory capacity is still not printed.
- Fixed an issue in `directory ldap` command where
  search domain delimiter was not working.
- Fixed issues with `createvolume` command not
  working with HPE iLO 5 with Storage URI.
- Included a message in `drivesanitize` command for
  HPE iLO 5 for not supporting `--drivereset` and `--status` features.

**Enhancements:**

- Enhanced `flashfwpkg` and `uploadcomponent`
  commands to handle both direct attached drives
  as well as controller connected drives.
- Added support for TFA (Two Factor Authentication) for remote
  out-of-band login.
- Added a new return code 85 when iLO is busy and sends
  back resource not ready message.
- Added support for deletion of JBOD volumes before
  [creating](/docs/redfishclients/ilorest-userguide/smartarraycommands/#createvolume-command-former-createlogicaldrive-command) RAID volumes.
- Migrated HPE iLOrest documentation from slate to redocly.

## Version 4.3.0.0

**Fixes:**

- Fixed an issue where BIOS Settings not saved using
  iLOrest `save` and `load` commands
- Firmware Flashing via local CHIF timeout
  increased from 300 to 1800 seconds to facilitate multiple
  UBM3 backplane firmware flash.
- Fixed an issue with `deletevolume` command to ask
  for confirmation when deleting all volumes using `--all` option.
- Fixed an issue with `virtualdrive` command where the exception
  did not trigger the eject/unmount media.
- Fixed an issue where No error message displayed when
  Invalid/Non-existing drive or controller is passed while
  creating a logical drive using `quickdrive`.
- Fixed an issue where server does not reboot when virtual
  media is added along with reboot parameter.
- Fixed an issues with help options of some of the commands.
- Fixed metadata information for ESXi 8 ilorest component.

**Enhancements:**

- Added new code for iLO6 MR controller to get allowable
  values capabilities section during creation of volumes.
- Device Discovery check is added in `flashfwpkg` for
  PLDM component firmware flash.

## Version 4.2.0.0

**Fixes:**

- Fixed an issue with `--nameservers` option in `ethernet` command.
- Fixed an issue with `ilolicense` command where the exception
  did not trigger for invalid license.
- Fixed an issue with `bootorder` command not working for iLO6.
- Fixed an issue with `serverinfo` command not displaying MAC address in iLO5.

**Enhancements:**

- Added a new option `--storageid` to all storage commands,
  allowing for filtering by both storage id and controller id.
- Added a new option `-sf` to the `serverclone` command to save
  storage configurations in a custom file.
- Modified the `--activationkey` parameter in the
  `computeopsmanagement` command from mandatory to optional.
- All subcommands from the `unifiedcertificate` command have
  been merged into the `certificate` command. The `unifiedcertificate`
  command is now deprecated.

## Version 4.1

**Fixes:**

- Fixed an issue in save where NVMe drives are getting saved 2 times.
- Fixed an issue `set` command for `Oem/Hpe/ThermalConfiguration`.
- Fixed several issues with `storagecontroller` command
  which is an alias to `smartarray` command.
- Fixed an issue with logging in and logging out with
  `sessionid` option in `login` command.
- Fixed minor issues with `createvolume` and `deletevolume` command.
- Fixed an issue fetching storage controller details using location details.
- Fixed an issue in `clearcontroller` command by specifying the location
  details.
- Fixed an issue in `login` command by specifying the proxy details.
- Fixed a github reported issue by giving `--nologout` option for reboot
  command.

**Enhancements:**

- Added support for server cloning storage controller configurations
  in Gen11 (HPE iLO 6) servers.
