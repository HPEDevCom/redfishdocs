---
seo:
  title: iLOrest changelog
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# HPE iLOrest changelog

## Version 4.3.0.0

**Fixes:**

* Fixed an issue where BIOS Settings not saved using iLOrest `save` and `load` commands
* Firmware Flashing via local CHIF timeout increased from 300 to 1800 seconds to facilitate multiple UBM3 backplane firmware flash.
* Fixed an issue with `deletevolume` command to ask for confirmation when deleting all volumes using `--all` option.
* Fixed an issue with `virtualdrive` command where the exception did not trigger the eject/unmount media.
* Fixed an issue where No error message displayed when Invalid/Non-existing drive or controller is passed while creating a logical drive using `quickdrive`.
* Fixed an issue where server does not reboot when virtual media is added along with reboot parameter.
* Fixed an issues with help options of some of the commands.

**Enhancements:**

* Added new code for iLO6 MR controller to get allowable values capabilities section during creation of volumes.
* Device Discovery check is added in `flashfwpkg` for PLDM component firmware flash.

## Version 4.2.0.0

**Fixes:**

* Fixed an issue with `--nameservers` option in `ethernet` command.
* Fixed an issue with `ilolicense` command where the exception did not trigger for invalid license.
* Fixed an issue with `bootorder` command not working for iLO6.
* Fixed an issue with `serverinfo` command not displaying MAC address in iLO5.

**Enhancements:**

* Added a new option `--storageid` to all storage commands, allowing for filtering by both storage id and controller id.
* Added a new option `-sf` to the `serverclone` command to save storage configurations in a custom file.
* Modified the `--activationkey` parameter in the `computeopsmanagement` command from mandatory to optional.
* All subcommands from the `unifiedcertificate` command have been merged into the `certificate` command. The `unifiedcertificate` command is now deprecated.

## Version 4.1.0.0

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

## Version 4.0.0.0

**Fixes:**

* Fixed several customer issues reported in github.
* Upgraded OpenSSL to 1.0.2zf

**Enhancements:**

* Added support for new storage RDE URLs for iLO6 (Gen11)
* iLOLicense command is enhanced with install, uninstall and check license options.
* `certificate` command has new option to support SCEP (Simple Certificate Enrollment Protocol)

## Version 3.6.0.0

**Fixes:**

* Fixed several issues related to command and subcommand help.
* Fixed an issue in `ipprofiles` command to push HVT profile to Intelligent Provisioning page when server is off or in POST mode.
* Fixed issues with `setpassword` command when resetting password to blank in both Gen9 and Gen10 servers.
* Fixed several issues with `serverclone` command.
* Fixed several customer issues reported in github.
* Fixed issues in `serverinfo` command w.r.t. json formatting and filtering.
* Upgraded OpenSSL to 1.0.2zd

**Enhancements:**

* Added support for ESXi 8.0.
* Introduced `smartnic` command to manage Pensando and other Smart NICs

## Version 3.5.1.0

**Fixes:**

* Changed `computeopsmanager` command to `computeopsmanagement`
* Fixed an issue in `ipprofiles` command to push HVT profile to Intelligent Provisioning page.  Added new option -t/`--sleeptime` to specify the wait time to enter Intelligent Provisioning page. Default is set to 320s(4 min).
* Fixed an InvalidFileInputError exception when deleting `ipprofiles`.
* Fixed an issue where login command did not prompt for password when just username is given.
* Fixed an issue where ethernet command did not display data completely.
* Fixed an issue where `serverinfo --system` command did not display NIC ports with iLO FW 2.70.

**Enhancements:**

* Added support for Red Hat Enterprise Linux(RHEL) version 9
* Added new option `-t`/`--sleeptime` to specify the wait time to enter Intelligent Provisioning page with default value to (4 min).

## Version 3.5.0

**Fixes:**

* Fixed issues `serverclone` command w.r.t automatic cloning of password.  
* Fixed incorrect json outputs for `installset` and `serverinfo` commands to help in automation scripts.  
* Fixed issues in `ipprofiles` command to aid in Intelligent Provisioning Job execution.  
* Fixed issues in `iscsiconfig --list` command.  
* Fixed an issue in directory show command to correctly show iLO Object Distinguished Name.  
* Fixed an issue in `securitystatus` command with credentials security.
  
**Feature Enhancements:**

* Added support to manage ComputeOpsManagement which abstracts and orchestrates infrastructure and compute workflows.
* Added support to enable/disable enhanced download capability to ethernet command.  

## Version 3.3.0

**Fixes:**

* Fixed issues in `uniqueoverride` option for SerialNumber and ProductId in set and load commands.
* Fixed issues related to Save and Load commands.
* Fixed incorrect json outputs for `Smartarray` commands to help in automation scripts.
* Fixed issues with `uploadcomp` w.r.t FWPKG files.
* Fixed issues with `showabsent` option in `serverinfo` command.
* Fixed issue with `taskqueue` command output as json format.
* Fixed issue of `rawget` command involving session id parameter.

**Enhancements:**

* Added Virtual NIC login option along with Chif for local login.
* Added Certificate login options using user-based certificates in iLO.
* Added enable\_vnic and disable\_vnic options in ethernet command.
* Added NVMe drive type for `smartarray` commands
* New error code RIS\_ILO\_CHIF\_ACCESS\_DENIED\_ERROR(66) is returned if iLO denies Chif Access.
* New error codes RIS\_CREATE\_AND\_PREPARE\_CHANNEL_ERROR(67) or RIS\_ILO\_CHIF\_PACKET\_EXCHANGE\_ERROR(71) is returned if there is any Chif Channel errors.
* New error code RIS\_ILO\_CHIF\_NO\_DRIVER\_ERROR(69) is returned if Chif driver not found.
  
## Version 3.2.2

**Fixes:**

* Help command missing issue.
* Command outputs in Json format when used with `-j` or `--json` option.
* Key Error issue when saving Bios using save command.
* Multiple keys get/set related issues w.r.t. FcPorts.
* Console error issue when `--logdir` option used.
* Multiple help text related issues.
  
**Enhancements:**

* New Error code 84 (ILO\_RIS\_CORRUPTION\_ERROR) is returned if RIS is found to corrupted.
* New Error code 46 (USERNAME\_PASSWORD\_REQUIRED\_ERROR) is returned if username and password not passed when iLO is in High Security Mode  
* Partition Mounting Error return text enhanced to reflect actual error.

## Version 3.2.1

**What's New:**

* Codebase migrated to Python3 from Python2.
* Upgraded OpenSSL version to 1.0.2r.
* `setpassword` able to set empty password.
* Introduced Ethernet command. The Ethernet command handles the Ethernet related set and get parameters like IP, DNS, and so on. This also has save and load features.
* `serverclone` options `--silent` and `--quiet` replaced with `--auto`.

**Fixes:**

* Enhanced `smartarray` functionalities for creating, deleting and clearing logical drives.
* Addressed `drivesanitize` not formatting the drive.
* `serverclone` save and load related issues.
* `bootorder` and `iscsiconfig` related fixes
* Persistent memory related bug fixes.
* Miscellaneous bug fixes in `rawpatch`, get, set and `flashfwpkg` commands.

## Version 3.1.1

**What's New:**  

* Provided an option to input session_key for the RedfishClient class.
* The `iloaccounts` command now provides the output in JSON format.
* The `createlogicaldrive quickdrive` command now successfully runs.
* BIOS and the `poweron` passwords can now be set without any password.

**Fixes:**  

* AHS data failing to download sometimes.
* An issue with downloading AHS when iLOREST is running locally on a server.
* The privilege modification of an iLO user account that was incorrectly applied on another user.
* The body of the `onebuttonerase` command, so that it could POST successfully.

## Version 3.1.0

* Argument Parsing utilized for command line help functionality
* All commands utilize '-h' in interactive or scriptable modes. iLORest -h can be utilized to query global help.
* Optional arguments can be supplied in any order as applicable to the relevant command or subcommand.
* iLO firmware component update command timeout increased from 420 seconds to 1200 seconds.
* `serverclone` command fixes:
    1. Optional argument change:
        * `silentcopy`  (`--auto`) -> automatic copy (`--autocopy`)
    2. iLO Federation Groups
        * Privilege changes are now performed regardless of add or modify password operations. If something happens an exception is thrown and logged.
* FWPKG TypeC packages upload only .ZIP archive.
* Results command updated to utilize revised response handler from python ilorest library (response handler changes incorporated in 3.0.0).
