---
seo:
  title: Error Codes
toc:
  enable: false
disableLastModified: true
---

# Error Codes

<aside class="notice">The error codes listed below are returned by the RESTful Interface Tool, not from iLO. Verbose (-v usage) will provide verbose output of HTTP, CHIF and iLO response messages. The error codes listed below are relegated to client side errors or specifically translated from errors received through iLO response messages.</aside>

<aside class="notice">Use the included optional argument flag '-v or -vv' for verbose command console output and the ilorest.debug log '-d' to assist in troubleshooting and evaluating errors and anomalies. For further details, see Global Options.</aside>

<aside class="warning">You might encounter the following error message: <b>Missing token required for operation</b>. <b>Please add the proper token</b>. To resolve this error, add the BIOS password for the server when executing the commands.</aside>

The RESTful Interface Tool uses the following error codes:

Error Code | Error Name | Description | Resolution
---------- | ---------- | ---------- | ----------
1| CONFIGURATION_FILE_ERROR | An error occurred while reading the iLOREST configuration file. | Verify 'redfish.conf' is valid and located in the path for ilorest or referenceable by environment variables.
2| COMMAND_NOT_ENABLED_ERROR | Error occurred when user tried to invoke a command that isn't enabled. | Some commands may not be available on certain platforms. If the error is not clear in scriptable mode, try 'ilorest' in interactive mode to view disabled commands (just below the logo section).
3| INVALID_COMMAND_LINE_ERROR | Invalid iLOREST command line syntax. | Use the **-h** optional argument for a complete list of command line positional and optional arguments per command.
4| INVALID_FILE_FORMATTING_ERROR | The input JSON file is invalid. | Evaluate the JSON file is properly delimited or validate with a JSON 'linting' utility.
5| USER_NOT_ADMIN | Command Console does not have administrative level privileges. | Validate UAC privileges on Windows. Root level permissions must be used on Linux when executing iLORest commands.
6| NO_CONTENTS_FOUND_FOR_OPERATION | Data was not returned for the specified GET operation. | Normal in some use cases; some types may not contain populated data fields. Otherwise, report this issue for further review.
7| INVALID_FILE_INPUT_ERROR | Invalid file input error. | Check the file path is valid and read/write permissions are relevant for the associated iLOREST operation.
8| NO_CHANGES_MADE_OR_FOUND | No changes were made (POST, PATCH). | Verify system state. Utilize '-v or -vv' to review response information from iLO for the command in question.
9| NO_VALID_INFO_ERROR | Information for the selected type and queried property is not valid.| Schema may be invalid or missing for the relevant property. Verify the property name is correct, otherwise report this issue for further review.
10| UI_CLI_ERROR_EXCEPTION | An error occurred while parsing command line user input. | See the error message for further details. Use '-v, -vv and/or '-d' to clarify.
11| UI_CLI_WARN_EXCEPTION | Warning occurred while parsing command line user input. | See the error message for further details. Use '-v, -vv and/or '-d' to clarify.
12| UI_CLI_USAGE_EXCEPTION (see INVALID_COMMAND_LINE_ERROR) | Invalid command usage. | Use the **-h** optional argument for a complete list of command line positional and optional arguments per command.
13| UI_CLI_COMMAND_NOT_FOUND_EXCEPTION (see COMMAND_NOT_ENABLED_ERROR) | An error occurred when the user tries to invoke a command that doesn&apos;t exist. | Some commands may not be available on certain platforms. If the error is not clear in scriptable mode, try 'ilorest' in interactive mode to view disabled commands (just below the logo section).
21| RIS_UNDEFINED_CLIENT_ERROR | Occurs when there are no clients active (usually when user hasn't logged in). | Verify a valid iLO system login.
22| RIS_CURRENTLY_LOGGED_IN_ERROR | Error occurred when attempting to operate on another instance while logged in. | Log out on the current system and log in on the new system. Two systems can not share the same cache.
23| RIS_INSTANCE_NOT_FOUND_ERROR | An error occurred when attempting to select an instance that does not exist. | Verify the type intended for selection is available on the platform. Use the command 'Types' to list all available types on the iLO platform.
24| RIS_NOTHING_SELECTED_ERROR | Error occurred when attempting to access an object type without first selecting it. | Verify a type has been selected. Use the command 'Types' to list all available types identified on the iLO platform.
25| RIS_NOTHING_SELECTED_FILTER_ERROR (see RIS_NOTHING_SELECTED_ERROR) | An error occurred when attempting to access an object type without first selecting it while using filters. | Verify a type has been selected. Use the command 'Types' to list all available types identified on the iLO platform. Verify the command's optional argument filter is properly isolating the relevant data (if applicable). Use the **-h** optional argument for usage of the filter (if applicable).
26| RIS_NOTHING_SELECTED_SET_ERROR (see RIS_NOTHING_SELECTED_ERROR)| An error occurred when attempting to set an object type without first selecting it. | Verify a type has been selected when using the set command. Use the command 'Types' to list all available types identified on the iLO platform.
27| RIS_INVALID_SELECTION_ERROR (see RIS_NOTHING_SELECTED_ERROR) | Error occurs when selection argument fails to match a valid type. | Verify the type intended for selection is available on the platform. Use the command 'Types' to list all available types on the iLO platform.
28| RIS_VALIDATION_ERROR | Error occurs when validating user input against schema files. | Verify properties to be configured are valid for the system's defined schema using the iLOREST 'INFO' command. Report this issue for further review.
29| RIS_MISSING_ID_TOKEN | Missing ID token. | Report this issue for further review.
30| RIS_SESSION_EXPIRED | Session expired. | iLO session is no longer valid; perform a logout and login.
31| V1_RETRIES_EXHAUSTED_ERROR (see V1_SERVER_DOWN_OR_UNREACHABLE_ERROR) | Error occurs when retry attempts to reach the selected server have been exhausted. | Verify the server's IPv4, IPv6 are reachable or the FQDN is resolvable.
32| V1_INVALID_CREDENTIALS_ERROR | Occurs when invalid iLO credentials have been provided. | Verify user account credentials are valid for iLO.
33| V1_SERVER_DOWN_OR_UNREACHABLE_ERROR | Error occurs when incorrect credentials have been provided and server is unresponsive. | Server is unreachable.
34| V1_CHIF_DRIVER_MISSING_ERROR | Channel interface driver is missing. | Verify the location of chif.dll on Windows and chif.so on Linux (normally installed by iLOREST). The CHIF driver will need to be manually installed on Windows versions which did not include the HPE Service ProLiant Pack. While most common distributions of Linux will include the driver, some may need to be manually installed.
35| REST_ILOREST_CHIF_DLL_MISSING_ERROR | CHIF missing DLL. | Verify the location of chif.dll on Windows. The CHIF driver will need to be manually installed on Windows versions which did not include the HPE Service ProLiant Pack.
36| REST_ILOREST_UNEXPECTED_RESPONSE_ERROR (see REST_ILOREST_ILO_ERROR) | An error occurred due to an unexpected response. | Utilize '-v or -vv' to review response information from iLO for the command in question. Reset iLO, logout and retry after login. Report this issue for further review.
37| REST_ILOREST_ILO_ERROR | An iLO error occurred. | Utilize '-v or -vv' to review response information from iLO for the command in question. Reset iLO, logout and retry after login. Report this issue for further review.
38| REST_ILOREST_CREATE_BLOB_ERROR | An error occurred while trying to create Blobstore handle in CHIF. | Reset iLO, logout and retry after login. Report this issue for further review.
39| REST_ILOREST_READ_BLOB_ERROR | An error occurred while trying to read Blobstore data from CHIF. | Reset iLO, logout and retry after login. Report this issue for further review.
40| SAME_SETTINGS_ERROR | Same settings error. | The settings intended to be applied to iLO and are presently configured are one in the same. If this is not the case, it is suggested to perform a 'get --refresh'. This error may occur from a cache concurrency issue; please report the problem for further review if repeated attempts come to the same conclusion.
41| FIRMARE_UPDATE_ERROR | A firmware update error occurred. | See details of the error including usage of '-v or -vv' to review detailed response information from iLO. Verify firmware compatibility.
42| BOOT_ORDER_ENTRY_ERROR | A boot order entry error occurred. | An invalid boot order entry has occurred. Verify the set or load applied to the boot object property is consistent with the iLO schema. Check '-v or -vv' for details in the iLO error response codes.
43| NIC_MISSING_OR_INVALID_ERROR | NIC missing or invalid error. | An invalid property or collection of properties has been provided to iLO which are not consistent with the defined schema. Check '-v or -vv' for details in the iLO error response codes.
44| NO_CURRENT_SESSION_ESTABLISHED | No current session established. | Verify iLO system login and current valid session.
45| FAILURE_DURING_COMMIT_OPERATION | A failure occurred during a commit operation. | Retry the commit, refresh cache and attempt to set/commit data again.
46| USERNAME_PASSWORD_REQUIRED_ERROR | Login failure where username and password missing | Retry login by providing username and password. 
51| MULTIPLE_SERVER_CONFIG_FAIL | Multiple server configuration failure. | Verify current session is only for a single targeted server. Separate cache directories must be used or '--no-cache' should be added to eliminate cache use.
52| MULTIPLE_SERVER_INPUT_FILE_ERROR | Multiple server input file error. | Verify current session is only for a single targeted server. Separate cache directories must be used or '--no-cache' should be added to eliminate cache use.
53| LOAD_SKIP_SETTING_ERROR | A load skip setting error occurred. | Certain properties are considered read-only or are not to be modified. Those properties should be removed during a save; however, this error may occur if referenced during a load. Report this issue for further review.
54| INCOMPATIBLE_ILO_VERSION_ERROR | Incompatible iLO version error. | Occurs when attempting to access or modify a system with incompatible settings. Generally iLO 4 2.00 and greater, all iLO 5 releases are compatible; however, some anomalies may occur on HPE Apollo and HPE Edgeline products. Report these issues for further review if the iLO version and platform is expected to be supported.
55| INVALID_CLIST_FILE_ERROR | Invalid command list file error. | Report this issue to the developers.
56| UNABLE_TO_MOUNT_BB_ERROR | Unable to mount BB error. | Black box is unable to be mounted. Verify Absaroka storage space is available for mounting.
57| BIRTHCERT_PARSE_ERROR | Birth certificate parse error. | Invalid server birth certificate.
58| INCOMPATIBLE_SERVER_TYPE | Incompatible server type. | The command(s) may not be supported on the server type. Verify with developers if the command should be supported on the target system.
59| ILO_LICENSE_ERROR | iLO license error. | Verify a valid iLO license has been provided. See details of the error including usage of '-v or -vv' to review detailed response information from iLO.
60| RESOURCE_EXISTS_ERROR | Account exists error. | iLO Management account or iLO Federation Account already exists on the target platform.
61| RIS_VALUE_CHANGED_ERROR | Error occurred when trying to change a value. | A value has changed due to a dependency or an ETag has been otherwise updated, indicating a difference from the cached value.
62| RIS_REF_PATH_NOT_FOUND | Reference path not found error. | Verify the Redfish API endpoint for the resource is available.
63| RIS_iLO_RESPONSE_ERROR | An iLO response error occurred. | See details of the error including usage of '-v or -vv' to review detailed response information from iLO.
64| RIS_ILO_INIT_ERROR | Unable to open a channel with iLO. | Verify the location of chif.dll on Windows and chif.so on Linux (normally installed by iLOREST). The CHIF driver will need to be manually installed on Windows versions which did not include the HPE Service ProLiant Pack. While most common distributions of Linux will include the driver, some may need to be manually installed.
65| RIS_SCHEMA_PARSE_ERROR | An error occurred parsing the type schema. | Try running with the "--latestschema flag". Report this issue for further review.
66| RIS_ILO_CHIF_ACCESS_DENIED_ERROR | An access denied error occurred during chif communication. | Try running with the "-d" option. Report this issue for further review.
67| RIS_CREATE_AND_PREPARE_CHANNEL_ERROR | A create channel error occurred during chif communication. | Try running with the "-d" option. Report this issue for further review.
68| REST_ILOREST_BLOB_DELETE_ERROR | Error occurred while trying to delete BLOB data. | Blobstore is unavailable, blob can not be deleted or does not exist. Attempt to reset iLO as well as cycle logout and login operations. Review the ilorest.debug log using '-d'. Report this issue for further investigation.
69| RIS_ILO_CHIF_NO_DRIVER_ERROR | No chif driver error during chif communication. | Check that OS chif driver exist. Report this issue for further review.
70| REST_ILOREST_WRITE_BLOB_ERROR | An error occurred while trying to write BLOB data. | Blobstore may not be available or the size of the data may exceed 15KB. Attempt to reset iLO as well as cycle logout and login operations. Review the ilorest.debug log using '-d'. Report this issue for further investigation.
71| RIS_ILO_CHIF_PACKET_EXCHANGE_ERROR | A packet exchage error occurred during chif communication. | Try running with the "-d" option. Report this issue for further review.
72| REST_ILOREST_BLOB_FINALIZE_ERROR | Error occurred while trying to finalize BLOB. | Blobstore may not be available or the size of the data may exceed 15KB. Attempt to reset iLO as well as cycle logout and login operations. Review the ilorest.debug log using '-d'. Report this issue for further investigation.
73| REST_ILOREST_BLOB_NOT_FOUND_ERROR | BLOB could not be found. | Blobstore or Blob does not exist.
74| JSON_DECODE_ERROR | JSON decoder error. | JSON data could not be decoded. Review the ilorest.debug log using '-d'. Report this issue for further investigation.
75| V1_SECURITY_STATE_ERROR | Security state error. | Verify iLO security state.
76| REST_ILOREST_BLOB_OVERRIDE_ERROR (see REST_ILOREST_WRITE_BLOB_ERROR) | iLO RESTful API BLOB override error. | Blobstore may not be available or the size of the data may exceed 15KB. Attempt to reset iLO as well as cycle logout and login operations. Review ilorest.debug log using '-d'. Report this issue for further investigation.
77| REST_BLOB_RETRIES_EXHAUSTED_ERROR | Error occurred during the blob operation after maximum retries. | Blobstore may not be available or the size of the data may exceed 15KB if writing. Attempt to reset iLO as well as cycle logout and login operations. Review ilorest.debug log using '-d'. Report this issue for further investigation. Check Absaroka flash status.
80| RESOURCE_ALLOCATION_ISSUES_ERROR | An error occurred allocating resources for an object. | See ilorest.debug log using '-d'.
81| ENCRYPTION_ERROR | An error occured during encryption. | Check file encodings.
82| DRIVE_MISSING_ERROR | Drive missing error. | Drive referenced in smart storage controller is missing or unavailable. Check smart array controller, drive power drive status.
83| PATH_UNAVAILABLE_ERROR | The requested path is unavailable. | The requested Redfish API endpoint does not exist on the target server.
84| ILO_RIS_CORRUPTION_ERROR | RIS database seems corrupted | The requested Redfish resource is corrupted and may need a reboot of the server.
100| RIS_RIS_BIOS_UNREGISTERED_ERROR | BIOS provider is unregistered. | Verify the HP/HPE BIOS firmware is validated and authentic. Report this issue for further investigation.
101| FAILED_TO_DOWNLOAD_COMPONENT | Failed to download component error. | Verify desired component is available in Absaroka with 'List Component Command'. Retry operation. Verify network connectivity and sufficient bandwidth.
102| UPDATE_SERVICE_BUSY | Update service is busy. | Verify iLO update service status. Try the operation after the current update service job has been completed.
103| TASKQUEUE_ERROR | An error occurred executing one or more items of the current task queue. | Verify the task queue parameters are correct. Retry the job.
104| FAILED_TO_UPLOAD_COMPONENT | Failed to upload component. | Verify the iLO update service status. Verify the component is of the correct type and is authentic (as per the settings of your system). Verify sufficient space is available on Absaroka for the component.
255| GENERAL_ERROR | A general error occurred while manipulating server settings. See the error message for details. | Retry the operation. Report this issue for further investigation.
