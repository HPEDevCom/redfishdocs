---
seo:
  title: iLOrest changelog
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# HPE iLOrest changelog

The latest iLOrest packages can be freely downloaded from
<a href="https://github.com/HewlettPackard/python-redfish-utility/releases/latest" target="_blank">GitHub</a>.

## Version 5.0.0.0

**Fixes:**

- Fixed an issue with the
`get` [command](/docs/redfishclients/ilorest-userguide/globalcommands/#get-command).
A `get licensekey` in the `HpeiLOLicense` schema was
not displaying the license key appropriately.
- Fixed an issue with the `get`
[command](/docs/redfishclients/ilorest-userguide/globalcommands/#get-command).
A `get Oem/Hpe/thermalconfiguration` in the `Thermal`
schema was not displaying the thermal configuration information.
- Fixed an issue with the `directory` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#directory-command).
The `kerberos` sub-command output was empty even when configured.
- Fixed an issue with the `flashfwpkg`
[command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command)
and its `forceupload` option.
- Fixed an issue with the `virtualmedia`
[command](/docs/redfishclients/ilorest-userguide/ilocommands/#virtualmedia-command).
The output had misplaced data for CD and Floppy media types.
- Fixed an issue with the `Backuprestore`
[command](/docs/redfishclients/ilorest-userguide/ilocommands/#backuprestore-command)
in in-band/local mode. The output was different, depending on the
[iLO security state](/docs/redfishservices/ilos/supplementdocuments/securityservice/#ilo-security-state).
- Fixed an issue with the `storagecontroller`
[command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#storagecontroller-command-former-smartarray-command)
where the output was empty for invalid controller and volume IDs.
- Fixed an issue with the `serverlogs`
[command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverlogs-command)
where AHS download in Intelligent Provisioning environment was failing.

**Enhancements:**

- Enhanced the `serverclone`
[command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverclone-command)
to check the [server power state](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_computersystem_resourcedefns{{process.env.LATEST_FW_VERSION}}/#powerstate)
before issuing a reboot.
- Availability of an <a href="https://pypi.org/project/ilorest" target="_blank">iLOrest PyPI package</a>.
fully equivalent to <a href="https://github.com/HewlettPackard/python-redfish-utility/releases/latest" target="_blank">other iLOrest packages</a>.

:::info NOTES

- Python3 is required prior to the installation.
- The iLOrest PyPI package cannot coexist with the
[DMTF's Python Redfish Library](/docs/redfishclients/python-redfish-library/installationguide/#pip-install)
- This version supports only x86_64 systems.
- Support on ARM based systems will be announced in a future release.

:::

:::success TIP

Refer to the [installation section](../installation/#installing-the-ilorest-pypi-package) for additional information.

:::

## Version 4.9.0.0

**Fixes:**

- Fixed an issue with `Serverclone`[command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverclone-command) load where updating recovery privilege for iLO user accounts had an issue.
- Fixed an issue with `ServerInfo`[command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverinfo-command) `power` option,where power supply data was incomplete.
- Fixed an issue with `MakeInstallset`[command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#makeinstallset-command) by correcting the input json format.
- Fixed an issue with `IscsiConfig`[command](/docs/redfishclients/ilorest-userguide/bioscommands/#iscsiconfig-command) where changing the iscsi boot network interface failed.
- Fixed an issue with `Installset` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#installset-command) where add and remove of recovery install set threw exception.
- Fixed an issue with `MakeInstallset`[command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#makeinstallset-command) to correct the response to include firmware version.
- Fixed an issue with `Ethernet`[command](/docs/redfishclients/ilorest-userguide/ilocommands/#ethernet-command) where setting iPv4 address failed.
- Fixed an issue with `Uploadcomp`[command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#uploadcomp-command) where wrong error code was returned in high security mode.
- Fixed an issue with `Directory`[command](/docs/redfishclients/ilorest-userguide/ilocommands/#directory-command) `ldap --addrolemap` where customer faced issue with adding customized privileges.
- Fixed an issue where in RHEL 9 and above error 8 was caught for `login`[command](/docs/redfishclients/ilorest-userguide/globalcommands/#login-command)
- Fixed an issue with `Taskqueue`[command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#taskqueue-command) `-r` where removal of recovery task in FIPS mode threw error.
- Fixed an issue with `iloreset`[command](/docs/redfishclients/ilorest-userguide/ilocommands/#iloreset-command), `list`[command](/docs/redfishclients/ilorest-userguide/globalcommands/#list-command), `save`[command](/docs/redfishclients/ilorest-userguide/globalcommands/#save-command) where commands were not able to locate the service. 
- Fixed an issue with AHS log filename to have vendor name along.
- Fixed an issue w.r.t sha 256 signing in case of iLOrest Linux product.

## Version 4.8.0.0

**Fixes:**

- Fixed an issue with the `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command) where locked components were not flashing.
- Fixed an issue with `list --json --selector HpeSecurityService.` not displaying in JSON format. Same is fixed with `get` [command](/docs/redfishclients/ilorest-userguide/globalcommands/#get-command) as well.
- Device discovery checks in `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command) are removed as it is taken care by iLO.
- Fixed an issue with `firmwareupdate` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#firmwareupdate-command) failing with [error code](/docs/redfishclients/ilorest-userguide/errors/) 41 (FIRMWARE\_UPDATE\_ERROR) when server enabled with TPM.
- Fixed as issue where `ilorest` rpm not installing on FIPS enabled Linux OS.

**Enhancements:**

- Enhanced the `ethernet` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#ethernet-command) with new option `--force_network_config` to apply iLO network configuration.
- Enhanced `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command) with `--targets` option for targetted firmware update feature.
- Upgraded OpenSSL from version 1.0.2zf to 3.0.12.

## Version 4.7.0.0

**Fixes:**

- Fixed an AHS download issue in local in-band mode in the `serverlog` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverlogs-command).
- Fixed an issue where powercap is not able to be set.
- Fixed the `installset` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#installset-command) where it was not deleting or creating recovery install sets.
- Fixed an issue with `createvolume` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#createvolume-command-former-createlogicaldrive-command) options quickdrive and customedrive w.r.t iLO 5.
- Fixed an issue with `deletevolume` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#deletevolume-command-former-deletelogicaldrive-command) w.r.t iLO 5.
- Fixed an issue in the `serverclone` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverclone-command) where iLO account changes were not cloned. 
- Fixed an issue where `SecurityService` [instance](/docs/redfishservices/ilos/supplementdocuments/securityservice/#hpe-security-service) was not found occasionally.
- Fixed an issue with `storagecontroller` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#storagecontroller-command-former-smartarray-command) was not working when resources were not loaded in iLO.

**Enhancements:**

- Enhanced the `load` [command](/docs/redfishclients/ilorest-userguide/globalcommands/#load-command) with new option `--force_network_config` to apply iLO network configuration.
- Enhanced the `installset` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#installset-command) with mandatory `--user` and `--password` parameters while creating and deleting recovery install sets during a [local in-band sessions](/docs/redfishclients/ilorest-userguide/globalcommands/#login-command).

## Version 4.6.0.0

**Fixes:**

- Fixed an issue in the `directory` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#directory-command) where option `--addrolemap` role delimiter was not working.
- Fixed an unhandled error when `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command) executed with `--update_srs` for a user without the Recovery Set privilege.
- Included a message in `drivesanitize` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#drivesanitize-command) for HPE iLO 5 for not supporting `--drivereset` and `--status` features.

**Enhancements:**

- Enhanced the `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command) to flash the firmware of type .HPB ([HPE signed Public Binary](/docs/etc/glossaryterms)) images.
- Added support for RHEL 9.2 ARM64 Operating System.

## Version 4.5.0.0

**Fixes:**

- Fixed an issue where `serverinfo` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#serverinfo-command) did not return memory and CPU information in Gen9 servers. Note memory capacity is still not printed.
- Fixed an issue in `directory ldap` [command](/docs/redfishclients/ilorest-userguide/ilocommands/#directory-command) where search domain delimiter was not working.
- Fixed issues with `createvolume` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#createvolume-command-former-createlogicaldrive-command) not working with HPE iLO 5 with Storage URI.
- Included a message in `drivesanitize` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#drivesanitize-command) for HPE iLO 5 for not supporting `--drivereset` and `--status` features.
- Fixed an intermittent issue of instance not found error in `storagecontroller` [command](/docs/redfishclients/ilorest-userguide/smartarraycommands/#storagecontroller-command-former-smartarray-command).

**Enhancements:**

- Enhanced `flashfwpkg` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#flashfwpkg-command) and `uploadcomponent` [command](/docs/redfishclients/ilorest-userguide/ilorepositorycommands/#uploadcomp-command) to handle both direct attached drives as well as controller connected drives.
- Added support for [TFA](/docs/redfishclients/ilorest-userguide/ilocommands/#settwofactorauthentication-command) (Two Factor Authentication) for remote out-of-band login.
- Added [error code](/docs/redfishclients/ilorest-userguide/errors/) 85 when iLO is busy and sends back a resource not ready message.
- Added support for deletion of JBOD volumes before [creating](/docs/redfishclients/ilorest-userguide/smartarraycommands/#createvolume-command-former-createlogicaldrive-command) RAID volumes.
- Migrated HPE iLOrest documentation from slate to redocly.

## Version 4.3.0.0

**Fixes:**

- Fixed an issue where BIOS Settings not saved using iLOrest `save` and `load` commands
- Firmware Flashing via local CHIF timeout increased from 300 to 1800 seconds to facilitate multiple UBM3 backplane firmware flash.
- Fixed an issue with `deletevolume` command to ask for confirmation when deleting all volumes using `--all` option.
- Fixed an issue with `virtualdrive` command where the exception did not trigger the eject/unmount media.
- Fixed an issue where No error message displayed when Invalid/Non-existing drive or controller is passed while creating a logical drive using `quickdrive`.
- Fixed an issue where server does not reboot when virtual media is added along with reboot parameter.
- Fixed an issues with help options of some of the commands.
- Fixed metadata information for ESXi 8 ilorest component.

**Enhancements:**

- Added new code for iLO6 MR controller to get allowable values capabilities section during creation of volumes.
- Device Discovery check is added in `flashfwpkg` for PLDM component firmware flash.

## Version 4.2.0.0

**Fixes:**

- Fixed an issue with `--nameservers` option in `ethernet` command.
- Fixed an issue with `ilolicense` command where the exception did not trigger for invalid license.
- Fixed an issue with `bootorder` command not working for iLO6.
- Fixed an issue with `serverinfo` command not displaying MAC address in iLO5.

**Enhancements:**

- Added a new option `--storageid` to all storage commands, allowing for filtering by both storage id and controller id.
- Added a new option `-sf` to the `serverclone` command to save storage configurations in a custom file.
- Modified the `--activationkey` parameter in the `computeopsmanagement` command from mandatory to optional.
- All subcommands from the `unifiedcertificate` command have been merged into the `certificate` command. The `unifiedcertificate` command is now deprecated.

## Version 4.1.0.0

**Fixes:**

- Fixed an issue in save where NVMe drives are getting saved 2 times.
- Fixed an issue `set` command for `Oem/Hpe/ThermalConfiguration`.
- Fixed several issues with `storagecontroller` command which is an alias to `smartarray` command.
- Fixed an issue with logging in and logging out with `sessionid` option in `login` command.
- Fixed minor issues with `createvolume` and `deletevolume` command.
- Fixed an issue fetching storage controller details using location details.
- Fixed an issue in `clearcontroller` command by specifying the location details.
- Fixed an issue in `login` command by specifying the proxy details.
- Fixed a github reported issue by giving `--nologout` option for reboot command.

**Enhancements:**

- Added support for server cloning storage controller configurations in Gen11 (HPE iLO 6) servers.

## Version 4.0.0.0

**Fixes:**

- Fixed several customer issues reported in github.
- Upgraded OpenSSL to 1.0.2zf

**Enhancements:**

- Added support for new storage RDE URLs for iLO6 (Gen11)
- iLOLicense command is enhanced with install, uninstall and check license options.
- `certificate` command has new option to support SCEP (Simple Certificate Enrollment Protocol)

## Version 3.6.0.0

**Fixes:**

- Fixed several issues related to command and subcommand help.
- Fixed an issue in `ipprofiles` command to push HVT profile to Intelligent Provisioning page when server is off or in POST mode.
- Fixed issues with `setpassword` command when resetting password to blank in both Gen9 and Gen10 servers.
- Fixed several issues with `serverclone` command.
- Fixed several customer issues reported in github.
- Fixed issues in `serverinfo` command w.r.t. json formatting and filtering.
- Upgraded OpenSSL to 1.0.2zd

**Enhancements:**

- Added support for ESXi 8.0.
- Introduced `smartnic` command to manage Pensando and other Smart NICs

## Version 3.5.1.0

**Fixes:**

- Changed `computeopsmanager` command to `computeopsmanagement`
- Fixed an issue in `ipprofiles` command to push HVT profile to Intelligent Provisioning page. Added new option -t/`--sleeptime` to specify the wait time to enter Intelligent Provisioning page. Default is set to 320s(4 min).
- Fixed an InvalidFileInputError exception when deleting `ipprofiles`.
- Fixed an issue where login command did not prompt for password when just username is given.
- Fixed an issue where ethernet command did not display data completely.
- Fixed an issue where `serverinfo --system` command did not display NIC ports with iLO FW 2.70.

**Enhancements:**

- Added support for Red Hat Enterprise Linux(RHEL) version 9
- Added new option `-t`/`--sleeptime` to specify the wait time to enter Intelligent Provisioning page with default value to (4 min).

## Version 3.5.0

**Fixes:**

- Fixed issues `serverclone` command w.r.t automatic cloning of password.
- Fixed incorrect json outputs for `installset` and `serverinfo` commands to help in automation scripts.
- Fixed issues in `ipprofiles` command to aid in Intelligent Provisioning Job execution.
- Fixed issues in `iscsiconfig --list` command.
- Fixed an issue in directory show command to correctly show iLO Object Distinguished Name.
- Fixed an issue in `securitystatus` command with credentials security.

**Feature Enhancements:**

- Added support to manage ComputeOpsManagement which abstracts and orchestrates infrastructure and compute workflows.
- Added support to enable/disable enhanced download capability to ethernet command.

## Version 3.3.0

**Fixes:**

- Fixed issues in `uniqueoverride` option for SerialNumber and ProductId in set and load commands.
- Fixed issues related to Save and Load commands.
- Fixed incorrect json outputs for `Smartarray` commands to help in automation scripts.
- Fixed issues with `uploadcomp` w.r.t FWPKG files.
- Fixed issues with `showabsent` option in `serverinfo` command.
- Fixed issue with `taskqueue` command output as json format.
- Fixed issue of `rawget` command involving session id parameter.

**Enhancements:**

- Added Virtual NIC login option along with Chif for local login.
- Added Certificate login options using user-based certificates in iLO.
- Added enable\_vnic and disable\_vnic options in ethernet command.
- Added NVMe drive type for `smartarray` commands
- New error code RIS\_ILO\_CHIF\_ACCESS\_DENIED\_ERROR(66) is returned if iLO denies Chif Access.
- New error codes RIS\_CREATE\_AND\_PREPARE\_CHANNEL\_ERROR(67) or RIS\_ILO\_CHIF\_PACKET\_EXCHANGE\_ERROR(71) is returned if there is any Chif Channel errors.
- New error code RIS\_ILO\_CHIF\_NO\_DRIVER\_ERROR(69) is returned if Chif driver not found.

## Version 3.2.2

**Fixes:**

- Help command missing issue.
- Command outputs in Json format when used with `-j` or `--json` option.
- Key Error issue when saving Bios using save command.
- Multiple keys get/set related issues w.r.t. FcPorts.
- Console error issue when `--logdir` option used.
- Multiple help text related issues.

**Enhancements:**

- New Error code 84 (ILO\_RIS\_CORRUPTION\_ERROR) is returned if RIS is found to corrupted.
- New Error code 46 (USERNAME\_PASSWORD\_REQUIRED\_ERROR) is returned if username and password not passed when iLO is in High Security Mode
- Partition Mounting Error return text enhanced to reflect actual error.

## Version 3.2.1

**What's New:**

- Codebase migrated to Python3 from Python2.
- Upgraded OpenSSL version to 1.0.2r.
- `setpassword` able to set empty password.
- Introduced Ethernet command. The Ethernet command handles the Ethernet related set and get parameters like IP, DNS, and so on. This also has save and load features.
- `serverclone` options `--silent` and `--quiet` replaced with `--auto`.

**Fixes:**

- Enhanced `smartarray` functionalities for creating, deleting and clearing logical drives.
- Addressed `drivesanitize` not formatting the drive.
- `serverclone` save and load related issues.
- `bootorder` and `iscsiconfig` related fixes
- Persistent memory related bug fixes.
- Miscellaneous bug fixes in `rawpatch`, get, set and `flashfwpkg` commands.

## Version 3.1.1

**What's New:**

- Provided an option to input session\_key for the RedfishClient class.
- The `iloaccounts` command now provides the output in JSON format.
- The `createlogicaldrive quickdrive` command now successfully runs.
- BIOS and the `poweron` passwords can now be set without any password.

**Fixes:**

- AHS data failing to download sometimes.
- An issue with downloading AHS when iLOrest is running locally on a server.
- The privilege modification of an iLO user account that was incorrectly applied on another user.
- The body of the `onebuttonerase` command, so that it could POST successfully.

## Version 3.1.0

- Argument Parsing utilized for command line help functionality
- All commands utilize '-h' in interactive or scriptable modes. iLOrest -h can be utilized to query global help.
- Optional arguments can be supplied in any order as applicable to the relevant command or subcommand.
- iLO firmware component update command timeout increased from 420 seconds to 1200 seconds.
- `serverclone` command fixes:
  1. Optional argument change:
     - `silentcopy` (`--auto`) -> automatic copy (`--autocopy`)
  2. iLO Federation Groups
     - Privilege changes are now performed regardless of add or modify password operations. If something happens an exception is thrown and logged.
- FWPKG TypeC packages upload only .ZIP archive.
- Results command updated to utilize revised response handler from python ilorest library (response handler changes incorporated in 3.0.0).
