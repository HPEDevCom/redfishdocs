# Change Log

## Version 3.2.2

**Fixes:**

* Help command fixed.
* Get/Set Multiple Attributes.
* Key Error issue when saving Bios using save command.
* Issue with select command output 
* Multiple keys retrieval related issues w.r.t. FcPorts.
* Console error when –logdir option used.
* Multiple help related fixes
  
**Enhancements:**

* Additional return codes and enhancements of existing return code messages.

## Version 3.2.1

**What's New:**

* Codebase migrated to Python3 from Python2.
* Upgraded OpenSSL version to 1.0.2r.
* Setpassword able to set empty password.
* Introduced Ethernet command. The Ethernet command handles the Ethernet related set and get parameters like IP, DNS, and so on. This also has save and load features.
* Serverclone options –silent and –quiet replaced with –auto.

**Fixes:**

* Enhanced smartarray functionalities for creating, deleting and clearing logical drives.
* Addressed drivesanitize not formatting the drive.
* Serverclone save and load related issues.
* Bootorder and iscsiconfig related fixes
* Persistent memory related bug fixes.
* Miscellaneous bug fixes in rawpatch, get, set and flashfwpkg commands.

## Version 3.1.1

**What's New:**
* Provided an option to input session_key for the REDfishClient class.
* The iloaccounts command now provides the output in JSON format.
* The createlogicaldrive quickdrive command now successfully runs.
* BIOS and the poweron passwords can now be set without any password.

**Fixes:**
* AHS data failing to download sometimes.
* An issue with downloading AHS when iLOREST is running locally on a server.
* The privilege modification of an iLO user account that was incorrectly applied on another user.
* The body of the onebuttonerase command, so that it could POST successfully.

## Version 3.1.0

* Argument Parsing utilized for command line help functionality
* All commands utilize '-h' in interactive or scriptable modes. iLORest -h can be utilized to query global help.
* Optional arguments can be supplied in any order as applicable to the relevant command or subcommand.
* iLO firmware component update command timeout increased from 420 seconds to 1200 seconds.
* Serverclone command fixes:
    1. Optional argument change:
        * silentcopy  (--auto) -> automatic copy (--autocopy)
    2. iLO Federation Groups
        * Privilege changes are now performed regardless of add or modify password operations. If something happens an exception is thrown and logged.
* FWPKG TypeC packages upload only .ZIP archive.
* Results command updated to utilize revised response handler from python ilorest library (response handler changes incorporated in 3.0.0).
