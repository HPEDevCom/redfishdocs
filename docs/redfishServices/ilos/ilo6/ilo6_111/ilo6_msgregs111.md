---
excludeFromSearch: true
seo:
  title: iLO 6 v111 Error messages
markdown:
  toc:
    hide: false
    depth: 2
  lastUpdateBlock:
    hide: false
breadcrumbs:
  hide: false
---

# Response message definitions of iLO 6 v1.11

This section is a reference for the defined message registry entries in HPE iLO 6 version 1.11. Redfish responses are discussed in the [error responses](/docs/concepts/errorresponses.md) section.

## Base

### Base.1.12.AccessDenied

While attempting to access, connect to, or transfer to/from another resource, the service was denied access.

| | |
|:---|:---|
|Message Format|"While attempting to establish a connection to %1, the service was denied access."|
|Severity|Critical|
|Resolution|Verify that the URI is correct and that the service has the appropriate credentials.|

### Base.1.12.AccountForSessionNoLongerExists

The account for the current session is removed, and the current session is also removed.

| | |
|:---|:---|
|Message Format|"The account for the current session is removed, and the current session is also removed."|
|Severity|OK|
|Resolution|Attempt to connect using a valid account.|

### Base.1.12.AccountModified

The account was modified successfully.

| | |
|:---|:---|
|Message Format|"The account was modified successfully."|
|Severity|OK|
|Resolution|None.|

### Base.1.12.AccountNotModified

The request was unable to modify the account.

| | |
|:---|:---|
|Message Format|"The account modification request did not complete."|
|Severity|Warning|
|Resolution|If the operation did not complete, check the authorization or the request body for issues and resubmit the request.|

### Base.1.12.AccountRemoved

The account was removed successfully.

| | |
|:---|:---|
|Message Format|"The account was removed successfully."|
|Severity|OK|
|Resolution|None.|

### Base.1.12.ActionNotSupported

The action supplied in the POST operation is not supported by the resource.

| | |
|:---|:---|
|Message Format|"The action %1 is not supported by the resource."|
|Severity|Critical|
|Resolution|The action was invalid or the wrong resource was the target. See the implementation documentation for assistance.|

### Base.1.12.ActionParameterDuplicate

The action was submitted with a duplicate parameter in the request body.

| | |
|:---|:---|
|Message Format|"The action %1 was submitted with more than one value for the parameter %2."|
|Severity|Warning|
|Resolution|Resubmit the action with only one instance of the parameter in the request body.|

### Base.1.12.ActionParameterMissing

The requested action is missing a parameter that is required to process the action.

| | |
|:---|:---|
|Message Format|"The action %1 requires that the parameter %2 be present in the request body."|
|Severity|Critical|
|Resolution|Resubmit the action with the required parameter in the request body.|

### Base.1.12.ActionParameterNotSupported

The action parameter is not supported on the target resource.

| | |
|:---|:---|
|Message Format|"The parameter %1 for the action %2 is not supported on the target resource."|
|Severity|Warning|
|Resolution|If the operation did not complete, remove the parameter and resubmit the request.|

### Base.1.12.ActionParameterUnknown

An action was submitted, but a supplied parameter did not match any of the known parameters.

| | |
|:---|:---|
|Message Format|"The action %1 was submitted with the invalid parameter %2."|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the invalid parameter and resubmit the request.|

### Base.1.12.ActionParameterValueFormatError

The value type is correct, but the format is not supported or the size/length is exceeded.

| | |
|:---|:---|
|Message Format|"The value %1 for the parameter %2 in the action %3 is in a format that is not supported by the parameter."|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the parameter value in the request body and resubmit the request.|

### Base.1.12.ActionParameterValueTypeError

The parameter contains an incorrect value type. For example, a number value for a string parameter type.

| | |
|:---|:---|
|Message Format|"The value %1 for the parameter %2 in the action %3 is the incorrect parameter type."|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the parameter value in the request body and resubmit the request.|

### Base.1.12.CouldNotEstablishConnection

An attempt to access the resource, image, or file at the URI was unsuccessful because a session could not be established.

| | |
|:---|:---|
|Message Format|"The service was unable to establish a connection with the URI %1."|
|Severity|Critical|
|Resolution|Verify that the URI contains a valid and reachable node name, protocol information, and other URI components.|

### Base.1.12.CreateFailedMissingReqProperties

A create operation was attempted on a resource, but a required property was missing from the request.

| | |
|:---|:---|
|Message Format|"The create operation did not complete because the required property %1 was missing from the request."|
|Severity|Critical|
|Resolution|If the operation did not complete, include the required property with a valid value in the request body and resubmit the request.|

### Base.1.12.CreateLimitReachedForResource

Additional resources cannot be created.

| | |
|:---|:---|
|Message Format|"Additional resources cannot be created."|
|Severity|Critical|
|Resolution|If the operation did not complete, delete resources and resubmit the request.|

### Base.1.12.Created

The resource has been created successfully.

| | |
|:---|:---|
|Message Format|"The resource has been created successfully."|
|Severity|OK|
|Resolution|None|

### Base.1.12.EmptyJSON

Indicates that the request body contained an empty JSON object when one or more properties are expected in the body.

| | |
|:---|:---|
|Message Format|"The request body submitted contained an empty JSON object and the service is unable to process it."|
|Severity|Warning|
|Resolution|Add properties in the JSON object and resubmit the request.|

### Base.1.12.EventSubscriptionLimitExceeded

The event subscription establishment has been requested, but the operation did not complete. The number of simultaneous subscriptions exceeded the maximum number allowed by the implementation.

| | |
|:---|:---|
|Message Format|"The event subscription did not complete because the number of simultaneous subscriptions exceeded the maximum number allowed by the implementation."|
|Severity|Critical|
|Resolution|Before attempting to establish the event subscription, reduce the number of subscriptions or increase the maximum number of simultaneous subscriptions allowed (if supported).|

### Base.1.12.GeneralError

Indicates that a general error has occurred.  Use in ExtendedInfo is discouraged.  When used in ExtendedInfo, implementations are expected to include a Resolution property with this error to indicate how to resolve the problem.

| | |
|:---|:---|
|Message Format|"A general error has occurred. See Resolution for information on how to resolve the error."|
|Severity|Critical|
|Resolution|None.|

### Base.1.12.InsufficientPrivilege

The account or credentials associated with the current session are not authorized to perform the requested operation.

| | |
|:---|:---|
|Message Format|"The account or credentials associated with the current session are not authorized to perform the requested operation."|
|Severity|Critical|
|Resolution|Retry the operation with an authorized account or credentials.|

### Base.1.12.InternalError

The request did not complete due to an unknown internal error, but the service is still operational.

| | |
|:---|:---|
|Message Format|"The request failed due to an internal service error, but the service is still operational."|
|Severity|Critical|
|Resolution|Resubmit the request. If the problem persists, consider resetting the service.|

### Base.1.12.InvalidIndex

The Index is not valid.

| | |
|:---|:---|
|Message Format|"The Index %1 is not a valid offset into the array."|
|Severity|Warning|
|Resolution|Verify the index value provided is within the bounds of the array.|

### Base.1.12.InvalidObject

The object is not valid.

| | |
|:---|:---|
|Message Format|"The object at %1 is not valid."|
|Severity|Critical|
|Resolution|If the operation did not complete, the object is malformed or the URI is incorrect. Make the appropriate corrections and resubmit the request.|

### Base.1.12.MalformedJSON

The request body contains malformed JSON.

| | |
|:---|:---|
|Message Format|"The request body submitted is malformed JSON and cannot be parsed by the receiving service."|
|Severity|Critical|
|Resolution|Verify that the request body is valid JSON and resubmit the request.|

### Base.1.12.NoOperation

Indicates that the requested operation will not perform any changes on the service.

| | |
|:---|:---|
|Message Format|"The request body submitted contain no data to act upon and no changes to the resource took place."|
|Severity|Warning|
|Resolution|Add properties in the JSON object and resubmit the request.|

### Base.1.12.NoValidSession

The operation did not complete because a valid session is required in order to access resources.

| | |
|:---|:---|
|Message Format|"There is no valid session established with the implementation."|
|Severity|Critical|
|Resolution|Establish a session before attempting any operations.|

### Base.1.12.PropertyDuplicate

A duplicate property is in the request body.

| | |
|:---|:---|
|Message Format|"The property %1 is duplicated in the request."|
|Severity|Warning|
|Resolution|If the operation did not complete, remove the duplicate property from the request body and resubmit the request.|

### Base.1.12.PropertyMissing

The request does not include a required property.

| | |
|:---|:---|
|Message Format|"The property %1 is a required property and must be included in the request."|
|Severity|Warning|
|Resolution|If the operation did not complete, verify the property is in the request body and has a valid value.|

### Base.1.12.PropertyNotWritable

The request included a value for a read-only property.

| | |
|:---|:---|
|Message Format|"The property %1 is a read-only property and cannot be assigned a value."|
|Severity|Warning|
|Resolution|If the operation did not complete, remove the property from the request body and resubmit the request.|

### Base.1.12.PropertyUnknown

An unknown property is in the request body.

| | |
|:---|:---|
|Message Format|"The property %1 is not valid for this resource."|
|Severity|Warning|
|Resolution|If the operation did not complete, remove the unknown property from the request body and resubmit the request.|

### Base.1.12.PropertyValueFormatError

The value type is correct, but the format is not supported or the size/length is exceeded.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 is in a format that is not supported by the property."|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the property value in the request body and resubmit the request.|

### Base.1.12.PropertyValueModified

Indicates that a property was given the correct value type but the value of that property was modified.  Examples are truncated or rounded values.

| | |
|:---|:---|
|Message Format|"The property %1 was assigned the value %2 due to modification by the service."|
|Severity|Warning|
|Resolution|No resolution is required.|

### Base.1.12.PropertyValueNotInList

The value type is correct, but the value is not supported.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 is not valid."|
|Severity|Warning|
|Resolution|If the operation did not complete, choose a value from the enumeration list and resubmit your request.|

### Base.1.12.PropertyValueTypeError

The property value contains an incorrect property type. For example, a number value for a string property type.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 is the incorrect property type."|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the property value in the request body and resubmit the request.|

### Base.1.12.QueryNotSupported

The query is not supported by the implementation.

| | |
|:---|:---|
|Message Format|"Querying is not supported by the implementation."|
|Severity|Warning|
|Resolution|If the operation did not complete, remove the query parameter and resubmit the request.|

### Base.1.12.QueryNotSupportedOnResource

The query is not supported on the resource. For example, a start/count query is attempted on a resource that is not a collection.

| | |
|:---|:---|
|Message Format|"Querying is not supported on the requested resource."|
|Severity|Warning|
|Resolution|If the operation did not complete, remove the query parameters and resubmit the request.|

### Base.1.12.QueryParameterOutOfRange

The query parameter value is out of range for the resource. For example, a page is requested that is outside the valid page range.

| | |
|:---|:---|
|Message Format|"The value %1 for the query parameter %2 is out of range %3."|
|Severity|Warning|
|Resolution|Specify a query parameter value that is within range. For example, a page that is within the valid range of pages.|

### Base.1.12.QueryParameterValueError

Indicates that a query parameter was given an invalid value.

| | |
|:---|:---|
|Message Format|"The value for the parameter %1 is invalid."|
|Severity|Warning|
|Resolution|Correct the value for the query parameter in the request and resubmit the request if the operation failed.|

### Base.1.12.QueryParameterValueFormatError

The value type is correct, but the format is not supported or the size/length was exceeded.

| | |
|:---|:---|
|Message Format|"The value %1 for the parameter %2 is in a format that is not supported by the parameter."|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the value for the query parameter in the request body and resubmit the request.|

### Base.1.12.QueryParameterValueTypeError

The query parameter contains an incorrect value type. For example, a number supplied for a query parameter that requires a string.

| | |
|:---|:---|
|Message Format|"The value %1 for the query parameter %2 is the incorrect type of value for the query parameter."|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the value for the query parameter in the request body and resubmit the request.|

### Base.1.12.ResourceAlreadyExists

Indicates that a resource change or creation was attempted but that the operation cannot proceed because the resource already exists.

| | |
|:---|:---|
|Message Format|"The requested resource of type %1 with the property %2 with the value %3 already exists."|
|Severity|Critical|
|Resolution|Do not repeat the create operation as the resource has already been created.|

### Base.1.12.ResourceAtUriInUnknownFormat

The URI is valid, but the resource or image at that URI is in a format that is not supported by the service.

| | |
|:---|:---|
|Message Format|"The resource at %1 is in a format that is not supported by the service."|
|Severity|Critical|
|Resolution|Place a resource, image, or file that is supported by the service at the URI.|

### Base.1.12.ResourceAtUriUnauthorized

An attempt to access the resource, image, or file at the URI is unauthorized.

| | |
|:---|:---|
|Message Format|"While accessing the resource at %1, the service received an authorization error %2."|
|Severity|Critical|
|Resolution|Verify that the appropriate access is provided for the service to access the URI.|

### Base.1.12.ResourceCannotBeDeleted

A delete operation was attempted on a resource that cannot be deleted.

| | |
|:---|:---|
|Message Format|"The delete request did not complete because the resource cannot be deleted."|
|Severity|Critical|
|Resolution|Do not attempt to delete a resource that does not support the REST API DELETE operation.|

### Base.1.12.ResourceExhaustion

Indicates that a resource could not satisfy the request due to some unavailability of resources.  An example is that available capacity has been allocated.

| | |
|:---|:---|
|Message Format|"The resource %1 was unable to satisfy the request due to unavailability of resources."|
|Severity|Critical|
|Resolution|Ensure that the resources are available and resubmit the request.|

### Base.1.12.ResourceInStandby

Indicates that the request could not be performed because the resource is in standby.

| | |
|:---|:---|
|Message Format|"The request could not be performed because the resource is in standby."|
|Severity|Critical|
|Resolution|Ensure that the resource is in the correct power state and resubmit the request.|

### Base.1.12.ResourceInUse

The request to change the resource was rejected because the resource was in use or in transition.

| | |
|:---|:---|
|Message Format|"The change to the resource did not complete because the resource is in use or in transition."|
|Severity|Warning|
|Resolution|If the operation did not complete, wait until the resource is free and resubmit the request.|

### Base.1.12.ResourceMissingAtURI

The operation expected an image or resource at the provided URI, but found none.

| | |
|:---|:---|
|Message Format|"The resource at the URI %1 was not found."|
|Severity|Critical|
|Resolution|Place a valid resource at the URI or correct the URI and resubmit the request.|

### Base.1.12.ResourceNotFound

Indicates that the operation expected a resource identifier that corresponds to an existing resource but one was not found.

| | |
|:---|:---|
|Message Format|"The requested resource of type %1 named %2 was not found."|
|Severity|Critical|
|Resolution|Provide a valid resource identifier and resubmit the request.|

### Base.1.12.ResourceTypeIncompatible

Indicates that the resource type of the operation does not match that for the operation destination.  Examples of when this can happen include during a POST to a collection using the wrong resource type, an update where the @odata.types do not match or on a major version incompatibility.

| | |
|:---|:---|
|Message Format|"The @odata.type of the request body %1 is incompatible with the @odata.type of the resource which is %2."|
|Severity|Critical|
|Resolution|Resubmit the request with a payload compatible with the resource's schema.|

### Base.1.12.ServiceInUnknownState

The operation did not complete because the service is in an unknown state and cannot take incoming requests.

| | |
|:---|:---|
|Message Format|"The operation did not complete because the service is in an unknown state and cannot take incoming requests."|
|Severity|Critical|
|Resolution|If the operation did not complete, restart the service and resubmit the request.|

### Base.1.12.ServiceShuttingDown

The operation did not complete because the service is shutting down.

| | |
|:---|:---|
|Message Format|"The operation did not complete because the service is shutting down and cannot take incoming requests."|
|Severity|Critical|
|Resolution|If the operation did not complete, resubmit the request when the service is available.|

### Base.1.12.ServiceTemporarilyUnavailable

The service is temporarily unavailable.

| | |
|:---|:---|
|Message Format|"The service is temporarily unavailable.  Retry in %1 seconds."|
|Severity|Critical|
|Resolution|Wait for the indicated retry duration and retry the operation.|

### Base.1.12.SessionLimitExceeded

Session establishment has been requested, but the operation did not complete because the number of simultaneous sessions exceeded the maximum number allowed by the implementation.

| | |
|:---|:---|
|Message Format|"The session establishment did not complete because the number of simultaneous sessions exceeded the maximum number allowed by the implementation."|
|Severity|Critical|
|Resolution|Before attempting to establish the session, reduce the number of sessions or increase the maximum number of simultaneous sessions allowed (if supported).|

### Base.1.12.SessionTerminated

Indicates that the DELETE operation on the Session resource resulted in the successful termination of the session.

| | |
|:---|:---|
|Message Format|"The session was successfully terminated."|
|Severity|OK|
|Resolution|No resolution is required.|

### Base.1.12.SourceDoesNotSupportProtocol

While attempting to access, connect to, or transfer from another location, the other end of the connection did not support the specified protocol.

| | |
|:---|:---|
|Message Format|"The other end of the connection at %1 does not support the specified protocol %2."|
|Severity|Critical|
|Resolution|Change protocols or URIs. |

### Base.1.12.StringValueTooLong

Indicates that a string value passed to the given resource exceeded its length limit. An example is when a shorter limit is imposed by an implementation than that allowed by the specification.

| | |
|:---|:---|
|Message Format|"The string %1 exceeds the length limit %2."|
|Severity|Warning|
|Resolution|Resubmit the request with an appropriate string length.|

### Base.1.12.Success

The operation completed successfully.

| | |
|:---|:---|
|Message Format|"The operation completed successfully."|
|Severity|OK|
|Resolution|None|

### Base.1.12.UnrecognizedRequestBody

The service detected a request body with malformed JSON.

| | |
|:---|:---|
|Message Format|"The service detected a request body with malformed JSON."|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the request body and resubmit the request.|

## HpeCommon

### HpeCommon.2.1.ArrayPropertyOutOfBound

The items in the array exceed the maximum  number supported.

| | |
|:---|:---|
|Message Format|"An array %1 was supplied with %2 items that exceeds the maximum supported count of %3."|
|Severity|Warning|
|Resolution|Retry the operation using the correct number of items for the array.|

### HpeCommon.2.1.ConditionalSuccess

A property value was successfully changed but the change may be reverted upon system reset.

| | |
|:---|:---|
|Message Format|"The property %1 was successfully changed to %2, but the change may be reverted upon system reset."|
|Severity|Warning|
|Resolution|Check the "SettingsResult" messages after the system has reset for errors referring to the corresponding property.|

### HpeCommon.2.1.InternalErrorWithParam

The operation was not successful due to an internal service error (shown), but the service is still operational.

| | |
|:---|:---|
|Message Format|"The operation was not successful due to an internal service error (%1), but the service is still operational."|
|Severity|Critical|
|Resolution|Retry the operation. If the problem persists, consider resetting the service.|

### HpeCommon.2.1.InvalidConfigurationSpecified

The specified configuration is not valid.

| | |
|:---|:---|
|Message Format|"The specified configuration is not valid."|
|Severity|Warning|
|Resolution|Correct the configuration, and then retry the operation.|

### HpeCommon.2.1.PropertyValueExceedsMaxLength

The value for the property exceeds the maximum length.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 exceeds the maximum length of %3."|
|Severity|Warning|
|Resolution|Correct the value for the property in the request body, and then retry the operation.|

### HpeCommon.2.1.PropertyValueIncompatible

The value for the property is the correct type, but this value is incompatible with the current value of another property.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 is incompatible with the value for property %3."|
|Severity|Warning|
|Resolution|Correct the value for the property in the request body, and then retry the operation.|

### HpeCommon.2.1.PropertyValueOutOfRange

The value for the property is out of range.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 is out of range %3."|
|Severity|Warning|
|Resolution|Correct the value for the property in the request body, and then retry the operation.|

### HpeCommon.2.1.ResetInProgress

A device or service reset is in progress.

| | |
|:---|:---|
|Message Format|"A reset on %1 is in progress."|
|Severity|Warning|
|Resolution|Wait for device or service reset to complete, and then retry the operation.|

### HpeCommon.2.1.ResetRequired

One or more properties were changed, but these changes will not take effect until the device or service is reset.

| | |
|:---|:---|
|Message Format|"One or more properties were changed, but these changes will not take effect until %1 is reset."|
|Severity|Warning|
|Resolution|To enable the changed properties, reset the device or service.|

### HpeCommon.2.1.ResourceNotReadyRetry

The resource is present but is not ready to perform operations due to an internal condition such as initialization or reset.

| | |
|:---|:---|
|Message Format|"The resource is present but is not ready to perform operations.  The resource will be ready in %1 seconds."|
|Severity|Warning|
|Resolution|Retry the operation when the resource is ready.|

### HpeCommon.2.1.SuccessFeedback

The operation completed successfully

| | |
|:---|:---|
|Message Format|"The operation completed successfully"|
|Severity|OK|
|Resolution|None|

### HpeCommon.2.1.TaskCreated

A task was created in response to the operation.

| | |
|:---|:---|
|Message Format|"A task was created in response to the operation and is accessible at %1."|
|Severity|OK|
|Resolution|Perform an HTTP GET request on the supplied URI for task status.|

### HpeCommon.2.1.UnsupportedHwConfiguration

A previously requested property value change was reverted because the current hardware configuration does not support it.

| | |
|:---|:---|
|Message Format|"The value %1 for property %2 was reverted because the current hardware configuration does not support it."|
|Severity|Warning|
|Resolution|Ensure that the system's hardware configuration supports the property value.|

## iLO

### iLO.2.15.AHSDisabled

Modifying AHS properties is not possible with AHS disabled.

| | |
|:---|:---|
|Message Format|"Modifying AHS properties is not possible with AHS disabled."|
|Severity|Warning|
|Resolution|Enable AHS, and then modify the AHS properties.|

### iLO.2.15.Accepted

Indicates that one or more properties were correctly changed, but may not be in effect yet.

| | |
|:---|:---|
|Message Format|"Indicates that one or more properties were correctly changed, but may not be in effect yet."|
|Severity|OK|
|Resolution|None|

### iLO.2.15.ActionParameterValueNotInList

Indicates that the correct value type was supplied for the action parameter, but the value is not supported. (The value is not in the enumeration list.)

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 is not in the list of valid values."|
|Severity|Warning|
|Resolution|Choose a value from the enumeration list and resubmit the request if the operation failed.|

### iLO.2.15.AlertDestinationAssociationError

AlertDestination cannot be configured with both SNMPv1 and SNMPv3.

| | |
|:---|:---|
|Message Format|"AlertDestination cannot be configured with both SNMPv1 and SNMPv3."|
|Severity|Warning|
|Resolution|For SNMPv1 alert, configure SNMPAlertProtocol to SNMPv1. For SNMPv3 alert, configure SNMPAlertProtocol to SNMPv3.|

### iLO.2.15.AlertMailFeatureDisabled

AlertMail feature is disabled.

| | |
|:---|:---|
|Message Format|"AlertMail feature is disabled."|
|Severity|Warning|
|Resolution|Enable AlertMail feature to send test alert message.|

### iLO.2.15.AlreadyInProgress

An operation is already in progress.

| | |
|:---|:---|
|Message Format|"An operation is already in progress."|
|Severity|Warning|
|Resolution|Wait for the current operation to complete, and then retry the operation.|

### iLO.2.15.AlreadyUpToDate

The update did not occur because the component was already up to date.

| | |
|:---|:---|
|Message Format|"The update did not occur because the component was already up to date."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.ApmPowerCapModeInUsed

Operation is currently unavailable because the power regulator is set to APM Power Capping Mode.

| | |
|:---|:---|
|Message Format|"Operation is currently unavailable because the power regulator is set to APM Power Capping Mode."|
|Severity|Warning|
|Resolution|Change the power regulator to other modes rather than APM Power Capping Mode through APM interface.|

### iLO.2.15.ArrayPropertyAlreadyExists

Duplicate value.

| | |
|:---|:---|
|Message Format|"The property value %1 is already exists in index %2"|
|Severity|Warning|
|Resolution|If the operation did not complete, correct the property value in the request body and resubmit the request.|

### iLO.2.15.ArrayPropertyOutOfBound

The number of items in the array exceeds the maximum number supported.

| | |
|:---|:---|
|Message Format|"An array %1 was supplied with %2 items that does not meet the minimum supported count of %3 or exceeds the maximum supported count of %4."|
|Severity|Warning|
|Resolution|Retry the operation using the correct number of items for the array.|

### iLO.2.15.ArrayPropertyValueBadParam

The property value is not valid.

| | |
|:---|:---|
|Message Format|"The property value %1 in index %2 is not valid."|
|Severity|Warning|
|Resolution|Retry the operation using a corrected value.|

### iLO.2.15.BatteryBackupUnitSettingsDisabled

Battery Backup Unit settings are currently disabled.

| | |
|:---|:---|
|Message Format|"Battery Backup Unit settings are disabled when the system is configured for Scalable Persistent Memory."|
|Severity|Warning|
|Resolution|To re-enable Battery Backup Unit settings, disable Scalable Persistent Memory functionality in the system ROM RBSU.|

### iLO.2.15.BiosActionTBD

The BIOS action supplied in the POST operation is not yet implemented.

| | |
|:---|:---|
|Message Format|"The BIOS action %1 is not implemented yet."|
|Severity|Critical|
|Resolution|The action was invalid or the wrong resource was the target. See the implementation documentation for assistance.|

### iLO.2.15.BiosPasswordInfoInvalid

The stored BIOS password information is invalid. A system reboot is necessary to restore password defaults.

| | |
|:---|:---|
|Message Format|"The stored BIOS password information is invalid.  Reboot system."|
|Severity|Critical|
|Resolution|The system will need to be rebooted to restore BIOS password information to defaults.|

### iLO.2.15.BiosPasswordMismatch

The provided OldPassword does not match the stored BIOS password.

| | |
|:---|:---|
|Message Format|"The provided OldPassword does not match the stored BIOS password."|
|Severity|Critical|
|Resolution|Retry the action with the matching password.|

### iLO.2.15.BundleUpdateAlreadyInProgress

A component upload operation is already in progress.

| | |
|:---|:---|
|Message Format|"A component upload operation is already in progress."|
|Severity|Warning|
|Resolution|Wait for the current upload to complete, and then retry the operation.|

### iLO.2.15.BundleUpdateComponentDownloadFailed

Download of bundle update component failed.

| | |
|:---|:---|
|Message Format|"Component %1 download download failed, reason %2. Bundle update aborted."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateComponentDownloadStatus

Bundle update download status of components.

| | |
|:---|:---|
|Message Format|"Component %1 download %2. %3 out of %4 downloaded"|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateComponentInstallationFailed

Installation of bundle update component failed.

| | |
|:---|:---|
|Message Format|"Component %1 installation failed, reason %2. Bundle update aborted."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateComponentInstallationStatus

Bundle update component installation status.

| | |
|:---|:---|
|Message Format|"Component %1 installation %2. %3 out of %4 installed."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateInstallSetCreationFailed

Failed to create bundle update install set.

| | |
|:---|:---|
|Message Format|"Install set %1 creation failed, reason %2. Bundle update aborted."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateInstallSetCreationSuccess

Bundle update install set created successfully.

| | |
|:---|:---|
|Message Format|"Install set %1 created successfully"|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateInstallSetMetaDownloadFailed

Download of install set meta file failed.

| | |
|:---|:---|
|Message Format|"Install set meta file %1 download failed, reason %2. Bundle update aborted."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateInstallSetMetaDownloadStatus

Download status of install set meta file.

| | |
|:---|:---|
|Message Format|"Install set meta file %1 download %2"|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateInstallSetMetaProcessingFailed

Failed to process bundle update install set meta file.

| | |
|:---|:---|
|Message Format|"Install set meta file %1 processing failed, reason %2. Bundle update aborted."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateInstallSetMetaProcessingSuccess

Bundle update install set meta file processed successfully.

| | |
|:---|:---|
|Message Format|"Install set meta file %1 processed successfully"|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.BundleUpdateInvalidUrl

The Url passed for bundle update is not valid.

| | |
|:---|:---|
|Message Format|"The Url %1 is not valid."|
|Severity|Warning|
|Resolution|URL is incorrect. Provide a valid URL and resubmit the request.|

### iLO.2.15.BundleUpdateSuccess

The status of bundle update installation.

| | |
|:---|:---|
|Message Format|"Bundle update has completed successfully."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.COMActivationDenied

System already managed by an external manager.

| | |
|:---|:---|
|Message Format|"System already managed by %1."|
|Severity|Warning|
|Resolution|System can either be managed by HPE OneView or Compute Ops Manager.|

### iLO.2.15.CalibrateInProgress

Power calibrate is in progress.

| | |
|:---|:---|
|Message Format|"Power calibrate is in progress."|
|Severity|Warning|
|Resolution|Wait for previous power calibrate complete or stop previous power calibrate, and then retry the operation.|

### iLO.2.15.CannotRemoveDefaultLanguagePack

Cannot remove default language pack.

| | |
|:---|:---|
|Message Format|"Cannot remove default language pack."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.CannotRemoveLanguagePack

Cannot remove language pack.

| | |
|:---|:---|
|Message Format|"Cannot remove %1 language pack."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.CannotRemoveLicense

Cannot remove the base license.

| | |
|:---|:---|
|Message Format|"The base license cannot be removed."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.ChassisPowerDataUnAvailable

Chassis power regulation data is currently unavailable.

| | |
|:---|:---|
|Message Format|"Chassis power regulation data is currently unavailable."|
|Severity|Warning|
|Resolution|Reset the management processor or chassis manager, and then retry the operation.|

### iLO.2.15.ChassisResetRequired

The chassis properties were correctly changed, but will not take effect until the chassis is reset or all nodes in chassis remain powered off for at least 5 seconds.

| | |
|:---|:---|
|Message Format|"One or more properties were changed and will not take effect until chassis is reset or all nodes in chassis remain powered off for at least 5 seconds."|
|Severity|Warning|
|Resolution|Reset chassis or remain power off for all nodes in chassis for at least 5 seconds for the settings to take effect.|

### iLO.2.15.ComponentUploadAlreadyInProgress

A component upload operation is already in progress.

| | |
|:---|:---|
|Message Format|"A component upload operation is already in progress."|
|Severity|Warning|
|Resolution|Wait for the current component upload to complete, and then retry the operation.|

### iLO.2.15.ComponentUploadFailed

A component upload operation failed.

| | |
|:---|:---|
|Message Format|"A component upload operation failed."|
|Severity|Warning|
|Resolution|Wait for the current component upload to complete, and then retry the operation.|

### iLO.2.15.DailyUpdateLimitExceeded

An update operation failed due to exceeding a daily limit.

| | |
|:---|:---|
|Message Format|"An update operation failed due to exceeding a daily limit."|
|Severity|Warning|
|Resolution|Retry the operation at a later date.|

### iLO.2.15.DemoLicenseKeyPreviouslyInstalled

A license was previously activated and now a demo key may not be used.

| | |
|:---|:---|
|Message Format|"A license was previously activated."|
|Severity|Warning|
|Resolution|The system is no longer eligible for demo licenses.|

### iLO.2.15.DeniedHPEOneViewUserCreation

System already managed by Compute Ops Management.

| | |
|:---|:---|
|Message Format|"System already managed by %1."|
|Severity|OK|
|Resolution|System can either be managed by HPE OneView or Compute Ops Management.|

### iLO.2.15.DeviceIsBusy

Device was not available for communication.

| | |
|:---|:---|
|Message Format|"Device communication response was busy."|
|Severity|Warning|
|Resolution|Retry the attempted operation after a delay.|

### iLO.2.15.DeviceResetRequired

Indicates that one or more properties were correctly changed, but will not take effect until device is reset.

| | |
|:---|:---|
|Message Format|"One or more properties were changed and will not take effect until the device is reset."|
|Severity|Warning|
|Resolution|Reset the device for the settings to take effect.|

### iLO.2.15.DiagsTestAlreadyRunning

A diagnostics self test is already running.

| | |
|:---|:---|
|Message Format|"A diagnostics self test is already running."|
|Severity|Warning|
|Resolution|Stop the running test and try again.|

### iLO.2.15.DowngradeNotAllowed

The task did not execute because a downgrade is not allowed by policy.

| | |
|:---|:---|
|Message Format|"The task did not execute because a downgrade is not allowed by policy."|
|Severity|Warning|
|Resolution|Obtain the latest available component and retry, and clear the task from the queue so processing can continue.|

### iLO.2.15.DowngradePolicyAlreadySet

The downgrade policy has been set and cannot be changed.

| | |
|:---|:---|
|Message Format|"The downgrade policy has been set and cannot be changed."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.ESKMServersNotConfigured

Enterprise Secure Key Manager Servers are not configured.

| | |
|:---|:---|
|Message Format|"Enterprise Secure Key Manager Servers are not configured."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.ESXioOrTarImageDownloadAlreadyInProgress

ESXio or tar image download is already in progress.

| | |
|:---|:---|
|Message Format|"ESXio or tar image download is already in progress."|
|Severity|Warning|
|Resolution|Wait for the current operation to complete, and then retry the operation.|

### iLO.2.15.ETagTooLong

The supplied ETag is too long. The maximum supported ETag length is 63 bytes.

| | |
|:---|:---|
|Message Format|"The supplied ETag is too long. The maximum supported ETag length is 63 bytes."|
|Severity|Warning|
|Resolution|Retry the operation using an ETag with a length of 63 bytes or less.|

### iLO.2.15.EmptyDNSName

DNS name is empty.

| | |
|:---|:---|
|Message Format|"Empty DNS name."|
|Severity|Warning|
|Resolution|Retry the request with a valid DNS name.|

### iLO.2.15.ErrorIntializingESKM

Failed to initialize ESKM.

| | |
|:---|:---|
|Message Format|"Failed to initialize ESKM."|
|Severity|Warning|
|Resolution|Check if Account Group, Local CA Certificate Name, Login Name and Password are correct and try again.|

### iLO.2.15.EventLogCleared

Event log cleared successfully.

| | |
|:---|:---|
|Message Format|"Event log cleared successfully."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.EventSubscriptionModified

The event subscription was modified successfully.

| | |
|:---|:---|
|Message Format|"The event subscription was modified successfully."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.EventSubscriptionRemoved

The event subscription was removed successfully.

| | |
|:---|:---|
|Message Format|"The event subscription was removed successfully."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.ExtendedInfo

Indicates that extended information is available.

| | |
|:---|:---|
|Message Format|"See @Message.ExtendedInfo for more information."|
|Severity|OK|
|Resolution|See @Message.ExtendedInfo for more information.|

### iLO.2.15.FWFlashSuccessTPMOverrideEnabled

A Trusted Module is  detected in this system. If you have not performed the proper OS encryption procedures, you will lose access to your data if recovery key is not available. Recommended procedure is to suspend encryption software prior to System ROM or Option ROM firmware flash. TPMOverrideFlag is enabled and firmware flash initiated.

| | |
|:---|:---|
|Message Format|"CAUTION: A Trusted Module is detected in this system. Updating the System ROM or Option Card Firmware may have impact to measurements stored in the TM and may have impact to security functionality on the platform which depends on these measurements."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.FWFlashSuccessTrustedModuleOverrideEnabled

A Trusted Module (type unspecified) is installed in the system and TPMOverrideFlag is enabled. Firmware flash initiated.

| | |
|:---|:---|
|Message Format|"CAUTION: A Trusted Module (type unspecified) has been detected in this system. If you have not performed the proper OS encryption procedures, you will lose access to your data if recovery key is not available. Recommended procedure for Microsoft Windows(R) BitLocker(TM) is to "suspend" BitLocker prior to System ROM or Option ROM firmware flash."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.FWFlashTPMOverrideFlagRequired

A Trusted Module is  detected in this system. Failure to perform proper OS encryption procedures will result in loss of access to your data if recovery key is not available. Recommended procedure is to suspend encryption software prior to System ROM or Option ROM firmware flash. If you do not have your recovery key or have not suspended encryption software, cancel this firmware upload. Failure to follow these instructions will result in loss of access to your data. To continue with firmware flash TPMOverrideFlag is required.

| | |
|:---|:---|
|Message Format|"CAUTION: A Trusted Module is detected in this system. Updating the System ROM or Option Card Firmware may have impact to measurements stored in the TM and may have impact to security functionality on the platform which depends on these measurements."|
|Severity|Warning|
|Resolution|Please set the TPMOverrideFlag to true and try again.|

### iLO.2.15.FWFlashTrustedModuleOverrideFlagRequired

A Trusted Module (type unspecified) is installed in the system, TPMOverrideFlag is required for firmware flash to proceed.

| | |
|:---|:---|
|Message Format|"CAUTION: A Trusted Module (type unspecified) has been detected in this system. Failure to perform proper OS encryption procedures will result in loss of access to your data if recovery key is not available. Recommended procedure for Microsoft Windows(R) BitLocker(TM) is to "suspend" BitLocker prior to System ROM or Option ROM firmware flash. If you do not have your recovery key or have not suspended BitLocker, exit this flash: Failure to follow these instructions will result in loss of access to your data."|
|Severity|Warning|
|Resolution|Please set the TPMOverrideFlag to true and try again.|

### iLO.2.15.FirmwareFlashAlreadyInProgress

A firmware upgrade operation is already in progress.

| | |
|:---|:---|
|Message Format|"A firmware flash operation is already in progress."|
|Severity|Warning|
|Resolution|Wait for the current firmware flash to complete, and then retry the operation.|

### iLO.2.15.GeneratingCertificate

Generating the X509 Certificate.

| | |
|:---|:---|
|Message Format|"X509 Certificate is being generated and the process might take up to 10 minutes."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.HardDriveZoneBackupFailure

Backup hard drive zoning configuration to BMC has encountered an error.

| | |
|:---|:---|
|Message Format|"Backup hard drive zoning configuration to BMC has encountered an error."|
|Severity|Warning|
|Resolution|Retry the operation. If the problem persists, consider resetting the BMC or the entire chassis.|

### iLO.2.15.HardDriveZoneFailure

Hard Drive Zoning was in error state.

| | |
|:---|:---|
|Message Format|"Hard Drive Zoning was in error state due to %1."|
|Severity|Critical|
|Resolution|Retry the operation. If the problem persists, consider resetting the entire chassis.|

### iLO.2.15.ICRUInvalidAddress

ICRU returned invalid address for translation.

| | |
|:---|:---|
|Message Format|"ICRU returned invalid address for translation."|
|Severity|Warning|
|Resolution|Input valid address for translation.|

### iLO.2.15.ICRUNotSupported

ICRU feature or function is not supported on the system.

| | |
|:---|:---|
|Message Format|"ICRU feature or function is not supported on the system."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.IPv6ConfigurationError

The specified IPv6 configuration caused an error.

| | |
|:---|:---|
|Message Format|"The specified IPv6 configuration was in error due to %1."|
|Severity|Warning|
|Resolution|Resolve the indicated error in the configuration data.|

### iLO.2.15.ImportCertSuccessful

Import Certificate was successful.

| | |
|:---|:---|
|Message Format|"Import Certificate was successful."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.ImportCertSuccessfuliLOResetinProgress

Import Certificate was successful and the management processor is being reset.

| | |
|:---|:---|
|Message Format|"Import Certificate was successful. Management Processor reset is in progress to enable the new certificate."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.ImportCertificateFailed

Failed importing Certificate.

| | |
|:---|:---|
|Message Format|"Failed importing the X509 Certificate."|
|Severity|Warning|
|Resolution|Retry the operation with proper Certificate information.|

### iLO.2.15.ImportSSOParamError

Not a valid parameter.

| | |
|:---|:---|
|Message Format|"Invalid Parameter."|
|Severity|Warning|
|Resolution|Retry the request with valid parameters.|

### iLO.2.15.ImportSSOUriError

Not a valid Uri to import SSO certificate.

| | |
|:---|:---|
|Message Format|"Invalid Uri."|
|Severity|Warning|
|Resolution|Retry the request with valid URI.|

### iLO.2.15.IndicatorLedInvalidStateChange

The request to change the state of the Indicator LED cannot be granted because the current state is either Blinking or is Unknown.

| | |
|:---|:---|
|Message Format|"The Indicator LED cannot be changed when its state is Blinking or Unknown."|
|Severity|Warning|
|Resolution|Please wait until the server has completed its reserved state.|

### iLO.2.15.InstallSetWriteError

The InstallSet write failed.

| | |
|:---|:---|
|Message Format|"The InstallSet write of %1 failed."|
|Severity|Warning|
|Resolution|Ensure a valid name for the item and that space exists to hold the item.|

### iLO.2.15.InterfaceDisabledResetRequired

Disabling one or more interfaces/features will cause certain functionalities to be not available. Please refer to User Guide for details on the implications. Changes will not take effect until the management processor is reset

| | |
|:---|:---|
|Message Format|"CAUTION: Disabling one or more interfaces/features will cause certain functionalities to be not available. Please refer to User Guide for details on the implications. Changes will not take effect until the management processor is reset"|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.InternalErrorWithParam

The operation was not successful due to an internal service error (shown), but the service is still operational.

| | |
|:---|:---|
|Message Format|"The operation was not successful due to an internal service error (%1), but the service is still operational."|
|Severity|Critical|
|Resolution|Retry the operation. If the problem persists, consider resetting the service.|

### iLO.2.15.InvalidConfigurationSpecified

The specified configuration is not valid.

| | |
|:---|:---|
|Message Format|"The specified configuration is not valid."|
|Severity|Warning|
|Resolution|Correct the configuration, and then retry the operation.|

### iLO.2.15.InvalidConfigurationSpecifiedForFederation

iLO Federation Management cannot be supported in the current configuration.

| | |
|:---|:---|
|Message Format|"iLO Federation Management cannot be supported in the current configuration."|
|Severity|Warning|
|Resolution|Review the management processor network settings or Onboard Administrator settings and refer to the User Guide.|

### iLO.2.15.InvalidDwellTime

The dwell time specified is not valid.

| | |
|:---|:---|
|Message Format|"The dwell time %1 is not valid."|
|Severity|Warning|
|Resolution|Adhere to the dwell time supported.|

### iLO.2.15.InvalidEngineID

EngineID should be a hexadecimal number starting with 0x (for example, 0x0102030405abcdef). The string length should be an even number, greater than or equal to 6 characters (excluding the "0x"), and less than or equal to 32 characters.

| | |
|:---|:---|
|Message Format|"EngineID should be a hexadecimal number starting with 0x (for example, 0x0102030405abcdef). The string length should be an even number, greater than or equal to 6 characters (excluding the "0x"), and less than or equal to 32 characters."|
|Severity|Warning|
|Resolution|Retry the operation using an EngineID within the specified parameters.|

### iLO.2.15.InvalidLicenseKey

The license key is not valid.

| | |
|:---|:---|
|Message Format|"The license key is not valid."|
|Severity|Warning|
|Resolution|Retry the operation using a valid license key.|

### iLO.2.15.InvalidOperationForAutoPowerOnState

The operation was not successful because the current auto power on mode specifies power is to remain off.

| | |
|:---|:---|
|Message Format|"The auto power on delay cannot be set because power is configured to remain off."|
|Severity|Warning|
|Resolution|Verify that the system auto power on mode is set to turn power on or follow the previous power setting.|

### iLO.2.15.InvalidOperationForSystemState

The operation was not successful due to the current power state (for example, attempting to turn the power off when it is already off).

| | |
|:---|:---|
|Message Format|"The operation was not successful due to the current power state."|
|Severity|Warning|
|Resolution|Verify that the system is in the correct power state, and then retry the operation.|

### iLO.2.15.InvalidPassphraseLength

The passphrase length is not valid.

| | |
|:---|:---|
|Message Format|"%1 must contain from %2 to %3 characters."|
|Severity|Warning|
|Resolution|Correct the passphrase, and then retry the operation.|

### iLO.2.15.InvalidPasswordComplexity

The password failed the complexity enforcement.

| | |
|:---|:---|
|Message Format|"A valid password must contain three of the following: uppercase, lowercase, numerals, and other."|
|Severity|Critical|
|Resolution|Retry the operation using a corrected password.|

### iLO.2.15.InvalidPasswordLength

The password length is not valid.

| | |
|:---|:---|
|Message Format|"A valid password must contain between %1 to %2 characters."|
|Severity|Critical|
|Resolution|Retry the operation using a corrected password.|

### iLO.2.15.InvalidSerialNumberLength

The serial number length is not valid.

| | |
|:---|:---|
|Message Format|"A valid serial number must be %1 characters of length."|
|Severity|Critical|
|Resolution|Adjust the length of the serial number and retry the operation.|

### iLO.2.15.InvalidUserDefAlertType

The provided alert type is not supported for this feature.

| | |
|:---|:---|
|Message Format|"The provided alert type is not supported for this feature."|
|Severity|OK|
|Resolution|The supported alert types are 'Warning' and 'Critical.'|

### iLO.2.15.InvalidUserDefSensorNumber

The provided sensor number is not supported for this feature.

| | |
|:---|:---|
|Message Format|"The provided sensor number is not supported for this feature."|
|Severity|OK|
|Resolution|Verify that the provided sensor number is a supported sensor.|

### iLO.2.15.InvalidUserDefTemperatureThresholdValue

The user defined temperature threshold value for a sensor cannot exceed the hardware defined cautionary temperature threshold.

| | |
|:---|:---|
|Message Format|"The user defined temperature threshold value for a sensor cannot exceed the hardware defined cautionary temperature threshold."|
|Severity|OK|
|Resolution|Enter a value lower than the cautionary threshold defined for the corresponding sensor.|

### iLO.2.15.LicenseKeyDenied

The license key activation was refused.  Includes details.

| | |
|:---|:---|
|Message Format|"The license activation key cannot be installed.  %1"|
|Severity|Warning|
|Resolution|Address the condition or use a valid license activation key.|

### iLO.2.15.LicenseKeyNotSupported

The license key supplied is unsupported on this system.  The key may activate a different product or unsupported tier.

| | |
|:---|:---|
|Message Format|"The supplied license key is not supported on this system."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.LicenseKeyRequired

A license key is required to use this operation or feature.

| | |
|:---|:---|
|Message Format|"A license key is required to use this operation or feature."|
|Severity|Warning|
|Resolution|Install a license key to use this feature.|

### iLO.2.15.LocationIndicatorActiveInvalidStateChange

The request to change the state of the Indicator LED cannot be granted because the current state is either Blinking or is Unknown.

| | |
|:---|:---|
|Message Format|"The Indicator LED cannot be changed when its state is Blinking or Unknown."|
|Severity|Warning|
|Resolution|Please wait until the server has completed its reserved state.|

### iLO.2.15.LoginAttemptDelayed

The login was not successful, so the service enforces a delay before another login is allowed.

| | |
|:---|:---|
|Message Format|"The login was not successful, so the service enforces a delay before another login is allowed."|
|Severity|Warning|
|Resolution|Wait for the delay time to expire, and then retry the login.|

### iLO.2.15.LoginAttemptDelayedSeconds

The login was not successful, so the service enforces a delay before another login is allowed.

| | |
|:---|:---|
|Message Format|"The login was not successful, so the service enforces a %1 second delay before another login is allowed."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.MCTPDiscoveryDisabled

Telemetry service and Workload Performance advisor will be not available with MCTP discovery disabled.

| | |
|:---|:---|
|Message Format|"Telemetry service and Workload Performance advisor will be not available with MCTP discovery disabled."|
|Severity|Warning|
|Resolution|Enable MCTP discovery for Telemetry service and Workload Performance advisor.|

### iLO.2.15.MaxProviders

The maximum number of providers are already registered.

| | |
|:---|:---|
|Message Format|"The maximum number of providers are already registered."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.MaxVirtualMediaConnectionEstablished

No more Virtual Media connections are available, because the maximum number of connections are already established.

| | |
|:---|:---|
|Message Format|"No more Virtual Media connections are available, because the maximum number of connections are already established."|
|Severity|Warning|
|Resolution|Close an established Virtual Media connection, and then retry creating or opening another connection.|

### iLO.2.15.MembistVariablesNotSupported

Membist variables are not supported on the system.

| | |
|:---|:---|
|Message Format|"Membist variables are not supported on the system."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.MemoryInterleaveSetError

The memory set specified in InterleaveSets is not supported.

| | |
|:---|:---|
|Message Format|"The memory set specified in InterleaveSets is not supported."|
|Severity|Warning|
|Resolution|Ensure the memory set specified in InterleaveSets matches one of the memory domain's InterleavableMemrorySets.|

### iLO.2.15.NewerVersionRequired

Update does not meet minimum version requirements.

| | |
|:---|:---|
|Message Format|"Update does not meet minimum version requirements."|
|Severity|Warning|
|Resolution|Use newer version.|

### iLO.2.15.NoContent

The requested resource exists but has no content.

| | |
|:---|:---|
|Message Format|"The resource exists but has no content."|
|Severity|OK|
|Resolution|None|

### iLO.2.15.NoEventSubscriptions

There are no event subscriptions registered.

| | |
|:---|:---|
|Message Format|"The operation cannot be completed because there are no event subscribers."|
|Severity|Warning|
|Resolution||

### iLO.2.15.NoPowerMetering

No support for power metering available on platform.

| | |
|:---|:---|
|Message Format|"No support for power metering available on platform."|
|Severity|OK|
|Resolution|Enable Power Metering on platform if supported.|

### iLO.2.15.NoSNMPAlertDestinationsConfigured

No SNMP alert destinations configured or none of the configured destinations are associated with SNMPv1 protocol or SNMPv3 protocol and user.

| | |
|:---|:---|
|Message Format|"No SNMP alert destinations configured or none of the configured destinations are associated with SNMPv1 protocol or SNMPv3 protocol and user."|
|Severity|Warning|
|Resolution|Configure at least one SNMP alert destination and associate it with SNMPv1 protocol or SNMPv3 protocol and user.|

### iLO.2.15.NoSamples

No power history samples are available.

| | |
|:---|:---|
|Message Format|"No power history samples are available."|
|Severity|OK|
|Resolution|To accumulate power history samples, power on the server, and then wait at least 5 minutes.|

### iLO.2.15.NoScriptedVirtualMediaConnectionAvailable

No scripted virtual media connections exist to perform the operation.

| | |
|:---|:---|
|Message Format|"No scripted virtual media connections exist to perform the operation."|
|Severity|Warning|
|Resolution|Create or open a scripted virtual media connection, and then retry the operation.|

### iLO.2.15.NoSpaceforDNSName

No space to store DNS name.

| | |
|:---|:---|
|Message Format|"No space to store DNS name."|
|Severity|Warning|
|Resolution|Make sure SSO database has enough space to store DNS name.|

### iLO.2.15.NoVirtualMediaConnectionAvailable

No Virtual Media connections exist to perform the operation.

| | |
|:---|:---|
|Message Format|"No Virtual Media connections exist to perform the operation."|
|Severity|Warning|
|Resolution|Create or open a Virtual Media connection, and then retry the operation.|

### iLO.2.15.NodeAssignedCrossRegion

Each zone can only manage the node in the same region, cannot manage overlap region.

| | |
|:---|:---|
|Message Format|"Each zone can only manage the node for range %1 or range %2, cannot manage overlap region."|
|Severity|Warning|
|Resolution|Correct the out of range value, and then retry the operation.|

### iLO.2.15.NodeNotPresentInZone

Operation is currently unavailable because there is no node installed in the zone.

| | |
|:---|:---|
|Message Format|"Operation is currently unavailable because there is no node installed in the zone."|
|Severity|Warning|
|Resolution|Install at least one node in the zone and retry the operation.|

### iLO.2.15.NotSupportedOnNIC

This property is not supported by the indicated network port.

| | |
|:---|:---|
|Message Format|"%1 is not supported on the %2 Network Port."|
|Severity|Warning|
|Resolution|Do not specify this property on the indicated network port.|

### iLO.2.15.NotValidIPAddrOrDNS

The value for the property is not a valid IPv4/v6 address or DNS name.

| | |
|:---|:---|
|Message Format|"The value for property %1 is not a valid IPv4/v6 address or DNS name."|
|Severity|Warning|
|Resolution|Correct the IPv4/v6 address or DNS name, and then retry the operation.|

### iLO.2.15.NotValidIPAddress

The value for the property is not a valid IP address.

| | |
|:---|:---|
|Message Format|"The value %1 is not a valid IP address for %2"|
|Severity|Warning|
|Resolution|Use a valid IP address.|

### iLO.2.15.NotValidSubnetMask

The value for the property is not a valid subnet mask.

| | |
|:---|:---|
|Message Format|"The value %1 is not a valid subnet mask for %2"|
|Severity|Warning|
|Resolution|Use a valid subnet mask.|

### iLO.2.15.OperationAvailableAfterSystemPOST

The value for the property can not be set until System BIOS POST completes.

| | |
|:---|:---|
|Message Format|"Property %1 will be settable after the System BIOS completes POST."|
|Severity|Warning|
|Resolution|Wait to see the change in value until after the System BIOS completes POST.|

### iLO.2.15.OperationWillCompleteAfterSystemPOST

The value for the property will be applied after System BIOS POST completes.

| | |
|:---|:---|
|Message Format|"The value for property %1 will be changed after the System BIOS completes POST."|
|Severity|OK|
|Resolution|Wait to see the change in value until after the System BIOS completes POST.|

### iLO.2.15.PowerCapOACntrld

The enclosure Onboard Administrator is currently managing the power cap.

| | |
|:---|:---|
|Message Format|"The enclosure Onboard Administrator is currently managing the power cap."|
|Severity|Warning|
|Resolution|Use Onboard Administrator to Manage the PowerCap|

### iLO.2.15.PowerCapROMCntrld

The System ROM is currently managing the power cap.

| | |
|:---|:---|
|Message Format|"The System ROM is currently managing the power cap."|
|Severity|Warning|
|Resolution|Enable RESTful API management of the power cap in System ROM|

### iLO.2.15.PowerLimitMayNotTakeEffect

One of power limit setpoint may become unreachable due to power limit range is unknown. It's not recommended configure power limit setpoint when power limit range is unknown.

| | |
|:---|:---|
|Message Format|"One of power limit setpoint may become unreachable due to power limit range is unknown. It's not recommended configure power limit setpoint when power limit range is unknown."|
|Severity|Warning|
|Resolution|Please execute calibrate action to get power limit range then reconfigure power limit setpoint.|

### iLO.2.15.PowerRegulationNotDisable

Operation is currently unavailable because chassis power regulation is enabled.

| | |
|:---|:---|
|Message Format|"Operation is currently unavailable because chassis power regulation is enabled."|
|Severity|Warning|
|Resolution|Disable chassis power regulation, and then retry the operation.|

### iLO.2.15.PowerSettingAdjustRequired

Indicates that one or more power limit setting were correctly changed, but will not take effect until power regulation enable and power regulator mode switch to user configurable mode.

| | |
|:---|:---|
|Message Format|"Indicates that one or more power limit setting were correctly changed, but will not take effect until power regulation enable and power regulator mode switch to user configurable mode."|
|Severity|Warning|
|Resolution|Enable power regulation and switch power regulator mode to user configurable mode for the settings to take effect.|

### iLO.2.15.PowerValueBadParam

The power cap value is not valid.

| | |
|:---|:---|
|Message Format|"The power cap value is not valid."|
|Severity|Warning|
|Resolution|Retry the operation using a corrected value.|

### iLO.2.15.PowerValueInvalidCalibrationData

The request to set the power cap failed. Invalid power cap calibration data. The Power Cap feature is currently unavailable.

| | |
|:---|:---|
|Message Format|"The request to set the power cap failed. Invalid power cap calibration data. The Power Cap feature is currently unavailable"|
|Severity|Warning|
|Resolution|Restart the server to retrieve calibration data from initial POST.|

### iLO.2.15.PowerValueNotOptimal

Power caps set below the specified percentage threshold might become unreachable due to changes in the server. It is recommended to not set a cap for less than this threshold.

| | |
|:---|:---|
|Message Format|"Power caps set below the specified percentage threshold might become unreachable due to changes in the server. It is recommended to not set a cap for less than %1."|
|Severity|Warning|
|Resolution|Please provide an optimal value in integer considering the power cap range.|

### iLO.2.15.PowerValueUnAvailable

Advanced power capping is not currently available due to the system configuration or state.

| | |
|:---|:---|
|Message Format|"Advanced power capping is not currently available due to the system configuration or state."|
|Severity|Warning|
|Resolution|Change the system configuration or wait for the system to become fully initialized, and then retry the operation.|

### iLO.2.15.PowerValueUnSupported

Advanced power capping is not supported on this system.

| | |
|:---|:---|
|Message Format|"Advanced power capping is not supported on this system."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.PrimaryESKMServerAccessible

Only the primary ESKM server is accessible.

| | |
|:---|:---|
|Message Format|"No redundancy. Only the primary ESKM server is accessible."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.PrimarySecondaryAddressesResolveToSameServer

Primary and secondary ESKM server addresses resolve to the same server.

| | |
|:---|:---|
|Message Format|"No redundancy. Primary and secondary ESKM server addresses resolve to the same server."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.PrimarySecondaryESKMServersAccessible

Both primary and secondary ESKM servers are accessible.

| | |
|:---|:---|
|Message Format|"Redundant solution: Both primary and secondary ESKM servers are accessible."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.PropertyNotSupported

The property is not supported.

| | |
|:---|:---|
|Message Format|"The property %1 is not supported."|
|Severity|Warning|
|Resolution|Do not attempt to modify this property.|

### iLO.2.15.PropertyNotWritableOrUnknown

The request included a value for a  read-only or unknown property.

| | |
|:---|:---|
|Message Format|"The property %1 is a read-only property and cannot be assigned a value, or not valid for this resource."|
|Severity|Warning|
|Resolution|If the operation did not complete, remove the property from the request body and resubmit the request.|

### iLO.2.15.PropertyValueAlreadySet

The value being set for the property is same as existing value.

| | |
|:---|:---|
|Message Format|"The new value %1 is same as existing value for the property %2."|
|Severity|OK|
|Resolution|None|

### iLO.2.15.PropertyValueBadParam

The property value is not valid.

| | |
|:---|:---|
|Message Format|"The property value is not valid."|
|Severity|Warning|
|Resolution|Retry the operation using a corrected value.|

### iLO.2.15.PropertyValueExceedsMaxLength

The value for the property exceeds the maximum length.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 exceeds the maximum length of %3."|
|Severity|Warning|
|Resolution|Correct the value for the property in the request body, and then retry the operation.|

### iLO.2.15.PropertyValueIncompatible

The value for the property is the correct type, but this value is incompatible with the current value of another property.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 is incompatible with the value for property %3."|
|Severity|Warning|
|Resolution|Correct the value for the property in the request body, and then retry the operation.|

### iLO.2.15.PropertyValueOutOfRange

The value for the property is out of range.

| | |
|:---|:---|
|Message Format|"The value %1 for the property %2 is out of range %3."|
|Severity|Warning|
|Resolution|Correct the value for the property in the request body, and then retry the operation.|

### iLO.2.15.PropertyValueRequired

Indicates that a property was required but not specified.

| | |
|:---|:---|
|Message Format|"%1 requires Property %2 to be specified."|
|Severity|Warning|
|Resolution|Include the required property in the request body and then retry the operation.|

### iLO.2.15.RecoveryInstallSetRequired

A recovery install set is required for this action.

| | |
|:---|:---|
|Message Format|"No recovery install set present."|
|Severity|Critical|
|Resolution|Create a recovery install set (install set with IsRecovery property set true).|

### iLO.2.15.RepairNotSupported

IML event with this severity is not supported to be repaired. IML events with Critical or Warning severities can marked as repaired.

| | |
|:---|:---|
|Message Format|"IML event with %1 severity is not supported to be repaired. IML events with Critical or Warning severities can marked as repaired."|
|Severity|Warning|
|Resolution|Please do not try to repair IML events with severity other than Critical or Warning.|

### iLO.2.15.RequiredPropertyMissing

Indicates that a required property is not specified.

| | |
|:---|:---|
|Message Format|"Required Property %1 needs to be specified."|
|Severity|Warning|
|Resolution|Include the required property in the request body and then retry the operation.|

### iLO.2.15.ResetInProgress

A management processor reset is in progress.

| | |
|:---|:---|
|Message Format|"A management processor reset is in progress."|
|Severity|Warning|
|Resolution|Wait for management processor reset to complete, and then retry the operation.|

### iLO.2.15.ResetRequired

One or more properties were changed, but these changes will not take effect until the management processor is reset.

| | |
|:---|:---|
|Message Format|"One or more properties were changed, but these changes will not take effect until the management processor is reset."|
|Severity|Warning|
|Resolution|To enable the changed properties, reset the management processor.|

### iLO.2.15.ResourceBeingFlashed

The change to the requested resource failed because the resource is being flashed.

| | |
|:---|:---|
|Message Format|"The change to the requested resource failed because the resource is being flashed."|
|Severity|Warning|
|Resolution|Retry the operation when the firmware upgrade has completed.|

### iLO.2.15.ResourceInUseWithDetail

The change could not be made because the resource was in use or in a transitioning state.

| | |
|:---|:---|
|Message Format|"The change to the resource failed because the resource is in use or in transition."|
|Severity|Warning|
|Resolution|Retry the request.|

### iLO.2.15.ResourceNotReadyRetry

The resource is present but is not ready to perform operations due to an internal condition such as initialization or reset.

| | |
|:---|:---|
|Message Format|"The resource is present but is not ready to perform operations.  The resource will be ready in %1 seconds."|
|Severity|Warning|
|Resolution|Retry the operation when the resource is ready.|

### iLO.2.15.ResourceTemporarilyUnavailable

The resource is temporarily unavailable because the firmware is being flashed.

| | |
|:---|:---|
|Message Format|"The resource is temporarily unavailable because the firmware is being flashed."|
|Severity|Warning|
|Resolution|Retry the operation when the firmware upgrade has completed.|

### iLO.2.15.SMBIOSRecordNotFound

The SMBIOS record type is not found or is not supported on the system.

| | |
|:---|:---|
|Message Format|"The SMBIOS record type %1 is not found or is not supported on the system."|
|Severity|Warning|
|Resolution|Reset the system to update the SMBIOS records. If the problem persists then the SMBIOS record type is not supported.|

### iLO.2.15.SNMPAlertDisabled

The operation could not be completed because SNMP alerts are disabled.

| | |
|:---|:---|
|Message Format|"The operation could not be completed because SNMP alerts are disabled."|
|Severity|Warning|
|Resolution|Enable SNMP alerts and retry the operation.|

### iLO.2.15.SNMPDisabled

Modifying SNMP properties is not possible with SNMP disabled.

| | |
|:---|:---|
|Message Format|"Modifying SNMP properties is not possible with SNMP disabled."|
|Severity|Warning|
|Resolution|Enable SNMP, and then modify the SNMP properties.|

### iLO.2.15.SNMPTestAlertFailed

The SNMP Test Alert did not send successfully.

| | |
|:---|:---|
|Message Format|"The SNMP Test Alert did not send successfully."|
|Severity|Warning|
|Resolution|Verify the test alert content and retry.|

### iLO.2.15.SNMPv1Disabled

Modifying SNMP v1 properties is not possible with SNMP v1 protocol disabled.

| | |
|:---|:---|
|Message Format|"Modifying SNMP v1 properties is not possible with SNMP v1 protocol disabled."|
|Severity|Warning|
|Resolution|Enable SNMP v1, and then modify the SNMP v1 properties.|

### iLO.2.15.SNTPConfigurationManagedByDHCPAndIsReadOnly

SNTP configuration is currently managed by DHCP and is therefore read-only.

| | |
|:---|:---|
|Message Format|"%1 cannot be changed while DHCP is configured to provide SNTP settings."|
|Severity|Warning|
|Resolution|Disable SNTP configuration options in both DHCPv4 and DHCPv6 (see /Managers/n/NICs), and then reconfigure SNTP as desired with static settings.|

### iLO.2.15.SSOCertficateEmpty

SSO Certificate is Empty.

| | |
|:---|:---|
|Message Format|"Empty SSO Certificate."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.SSOCertificateReadError

SSO Certificate Read Error.

| | |
|:---|:---|
|Message Format|"Error reading SSO certificate."|
|Severity|Warning|
|Resolution|Retry the request with valid SSO certificate.|

### iLO.2.15.SSONoSpaceError

No space to store SSO certificate.

| | |
|:---|:---|
|Message Format|"No space to store SSO certificate."|
|Severity|Warning|
|Resolution|Make sure SSO database has enough space to store SSO certificate.|

### iLO.2.15.SSORecordNotFound

SSO Record Not Found.

| | |
|:---|:---|
|Message Format|"SSO Record Not Found."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.SamplesNotCaptured

Samples are not captured for %1 duration.

| | |
|:---|:---|
|Message Format|"Samples for metrics are not captured for %1 duration."|
|Severity|OK|
|Resolution|Wait for the current duration to complete, and then retry.|

### iLO.2.15.SecondaryESKMServerAccessible

Only the secondary ESKM server is accessible.

| | |
|:---|:---|
|Message Format|"No redundancy. Only the secondary ESKM server is accessible."|
|Severity|OK|
|Resolution|None.|

### iLO.2.15.ServerConfigLockStatusUnknown

The current status of Server Configuration Lock is unknown.

| | |
|:---|:---|
|Message Format|"The current status of Server Configuration Lock is unknown."|
|Severity|Warning|
|Resolution|Ensure if the BIOS firmware supports Server Configuration Lock. If supported, reboot the server and retry the operation|

### iLO.2.15.ServerConfigurationLockEnabled

Server Configuration Lock is enabled.

| | |
|:---|:---|
|Message Format|"Server Configuration Lock is enabled."|
|Severity|Warning|
|Resolution|Disable Server Configuration Lock to initiate secure erase of the system|

### iLO.2.15.SimpleUpdateInvalidImageOrCredentials

The ESXio Image or Username and Password to access the ESXio image URI is not valid.

| | |
|:---|:---|
|Message Format|"The ESXio image or username and password credentials provided to access the ESXio Image URI : %1 posted in %2 is not valid."|
|Severity|Warning|
|Resolution|ESXio image URI/Username/Password is incorrect. Please provide valid details and resubmit the request.|

### iLO.2.15.SimpleUpdateInvalidImageURI

The Url passed for the simple update for esxio image download is not valid.

| | |
|:---|:---|
|Message Format|"The ESXio Image Url %1 posted in %2 is not valid."|
|Severity|Warning|
|Resolution|ESXio Image URL is incorrect. Provide a valid ESXio Image URL and resubmit the request.|

### iLO.2.15.SimpleUpdateInvalidTargetsURI

The Targets URI passed for the simple update for esxio image download is not valid.

| | |
|:---|:---|
|Message Format|"The Targets URI %1 posted in %2 is not valid."|
|Severity|Warning|
|Resolution|Targets URI is incorrect. Provide a valid Targets URI and resubmit the request.|

### iLO.2.15.SmartNICDeviceError

SmartNIC DPU operation failed due to SmartNIC device error.

| | |
|:---|:---|
|Message Format|"SmartNIC DPU operation failed due to SmartNIC device error %1."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.SmartNICNotPresent

SmartNIC DPU not present in iLO.

| | |
|:---|:---|
|Message Format|"SmartNIC DPU URI %1 posted in %2 is not present."|
|Severity|Warning|
|Resolution|System can either be managed by HPE OneView or Compute Ops Management.|

### iLO.2.15.SuccessFeedback

The operation completed successfully.

| | |
|:---|:---|
|Message Format|"The operation completed successfully."|
|Severity|OK|
|Resolution|None|

### iLO.2.15.SyslogFeatureDisabled

Remote Syslog feature is disabled.

| | |
|:---|:---|
|Message Format|"Remote syslog feature is disabled."|
|Severity|Warning|
|Resolution|Enable remote syslog feature to send test syslog message.|

### iLO.2.15.SystemPowerOffRequired

To perform this operation, power off the system. AutoPowerOn must be set to achieve a power restore.

| | |
|:---|:---|
|Message Format|"To perform this operation, power off the system."|
|Severity|OK|
|Resolution|To perform this operation, power off the system.|

### iLO.2.15.SystemPowerStateChangeFailed

System power state change failed (for example, attempting to turn the system power On/Off failed)

| | |
|:---|:---|
|Message Format|"System power state change failed"|
|Severity|Warning|
|Resolution|Retry the request.|

### iLO.2.15.SystemResetRequired

The system properties were correctly changed, but will not take effect until the system is reset.

| | |
|:---|:---|
|Message Format|"One or more properties were changed and will not take effect until system is reset."|
|Severity|Warning|
|Resolution|Reset system for the settings to take effect.|

### iLO.2.15.TokenRequired

Proper 'X-HPRESTFULAPI-AuthToken' authorization token not provided.

| | |
|:---|:---|
|Message Format|"Proper 'X-HPRESTFULAPI-AuthToken' authorization token not provided."|
|Severity|Critical|
|Resolution|Create proper 'X-HPRESTFULAPI-AuthToken' authorization token. Send token in using the proper HTTP header.|

### iLO.2.15.UnableModifyRights

Unable to modify user rights.

| | |
|:---|:---|
|Message Format|"Unable to modify user rights."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.UnableToModifyAfterVirtualMediaInsert

The value for the property cannot be changed after virtual media image is inserted.

| | |
|:---|:---|
|Message Format|"The value for property %1 cannot be changed after virtual media image is inserted."|
|Severity|Warning|
|Resolution|Retry the operation during virtual media image insertion.|

### iLO.2.15.UnableToModifyDueToMissingComponent

The value for the property cannot be changed because a related hardware component is not installed.

| | |
|:---|:---|
|Message Format|"The value for property %1 cannot be changed because a related hardware component is not installed."|
|Severity|Warning|
|Resolution|Install the hardware component and retry the operation.|

### iLO.2.15.UnableToModifyDuringSystemPOST

The value for the property cannot be changed while the computer system BIOS is in POST.

| | |
|:---|:---|
|Message Format|"The value for property %1 cannot be changed while the computer system BIOS is in POST."|
|Severity|Warning|
|Resolution|After the computer system is either fully booted or powered off, retry the operation.|

### iLO.2.15.UnableToModifyWhileKVMIPConnected

The value for the property cannot be changed while a KVMIP connection is in progress.

| | |
|:---|:---|
|Message Format|"The value for property %1 cannot be changed while a KVMIP connection is in progress."|
|Severity|Warning|
|Resolution|Retry the operation after disconnecting all KVMIP connections.|

### iLO.2.15.UnauthorizedLoginAttempt

The login was not successful, because the supplied credentials could not be authorized.

| | |
|:---|:---|
|Message Format|"The login was not successful, because the supplied credentials could not be authorized."|
|Severity|Warning|
|Resolution|Log in with authorized user name and password credentials.|

### iLO.2.15.UnsupportedCipherAlgo

Incompatible Cipher Algorithm in FIPS or CNSA Mode.

| | |
|:---|:---|
|Message Format|"Incompatible Cipher Algorithm %1 in %2 Mode."|
|Severity|Warning|
|Resolution|Select compatible Cipher Algorithm.|

### iLO.2.15.UnsupportedOperation

This operation is not supported by RIS for the current system.

| | |
|:---|:---|
|Message Format|"This operation is not supported by RIS for the current system."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.UnsupportedOperationACEEnabled

This operation is not supported when certificate enrollment service is enabled.

| | |
|:---|:---|
|Message Format|"This operation is not supported when certificate enrollment service is enabled."|
|Severity|OK|
|Resolution|Disable certificate enrollment Service to initiate import, delete or generate CSR of SSL certificate.|

### iLO.2.15.UnsupportedOperationInChassisVersion

This operation is not supported by the current version of the XL Chassis firmware.

| | |
|:---|:---|
|Message Format|"This operation is not supported by the current version of the XL Chassis firmware."|
|Severity|Warning|
|Resolution|Please update the XL Chassis firmware to latest version.|

### iLO.2.15.UnsupportedOperationInLegacyBootMode

This operation is not supported when the system Boot Mode is set to Legacy BIOS.

| | |
|:---|:---|
|Message Format|" This operation is not supported when the system Boot Mode is set to Legacy BIOS."|
|Severity|Warning|
|Resolution|Change the Boot Mode to UEFI and retry the operation.|

### iLO.2.15.UnsupportedOperationInSystemBIOS

This operation is not supported by the current version of the system BIOS.

| | |
|:---|:---|
|Message Format|"This operation is not supported by the current version of the system BIOS."|
|Severity|Warning|
|Resolution|None.|

### iLO.2.15.UnsupportedSecurityState

The operation was not successful due to the current security state of the management processor.

| | |
|:---|:---|
|Message Format|"The operation was not successful due to the current security state of the management processor."|
|Severity|Warning|
|Resolution|Retry the operation with the correct security state.|

### iLO.2.15.UpdateBadParameter

The update failed because a bad parameter was supplied.

| | |
|:---|:---|
|Message Format|"The update failed because a bad parameter was supplied."|
|Severity|Critical|
|Resolution|Supply correct parameters to the component and retry the update.|

### iLO.2.15.UpdateCancelled

The update was canceled by the update process.

| | |
|:---|:---|
|Message Format|"The update was canceled by the update process."|
|Severity|Critical|
|Resolution|Retry the update.|

### iLO.2.15.UpdateDependencyFailure

The update did not complete because the component failed a dependency check.

| | |
|:---|:---|
|Message Format|"The update did not complete because the component failed a dependency check."|
|Severity|Critical|
|Resolution|Install any dependent components first and then retry this update.|

### iLO.2.15.UpdateFailed

The update failed with a component specific error (%1).

| | |
|:---|:---|
|Message Format|"The update failed with a component specific error (%1)."|
|Severity|Critical|
|Resolution|Retry the update after remedying the component error.|

### iLO.2.15.UpdateInPOST

System must not be booted past POST in order to perform this update

| | |
|:---|:---|
|Message Format|"System must not be booted past POST in order to perform this update"|
|Severity|Critical|
|Resolution|Boot to UEFI and retry the update.|

### iLO.2.15.UpdateInterrupted

The update was interrupted.

| | |
|:---|:---|
|Message Format|"The update was interrupted."|
|Severity|Critical|
|Resolution|Retry the update.|

### iLO.2.15.UpdateInvalidFile

The update operation failed because the file is not valid.

| | |
|:---|:---|
|Message Format|"The update operation failed because the file is not valid."|
|Severity|Critical|
|Resolution|Remove and re-add the component to the repository and try the operation again.|

### iLO.2.15.UpdateInvalidOS

The update did not occur because the running OS is not valid.

| | |
|:---|:---|
|Message Format|"The update did not occur because the running OS is not valid."|
|Severity|Critical|
|Resolution|Retry the update while running the correct OS.|

### iLO.2.15.UpdateNotApplicable

The task was not completed because the component was not applicable to this system.

| | |
|:---|:---|
|Message Format|"The task was not completed because the component was not applicable to this system."|
|Severity|Critical|
|Resolution|None.|

### iLO.2.15.UpdateRepositoryUnavailable

The update operation failed because the component repository is unavailable.

| | |
|:---|:---|
|Message Format|"The update operation failed because the component repository is unavailable."|
|Severity|Critical|
|Resolution|None.|

### iLO.2.15.UpdateSimpleStatus

This is to update the esxio image flashing status into SmartNIC DPU systems.

| | |
|:---|:---|
|Message Format|"TaskState is %1 and TaskStatus is %2 and Message is %3 and Percent Complete is %4"|
|Severity|Warning|
|Resolution|None|

### iLO.2.15.UpdateTaskQueueFull

The Invoke action was not successful because the update task queue is full.

| | |
|:---|:---|
|Message Format|"The Invoke action was not successful because the update task queue is full."|
|Severity|Critical|
|Resolution|Remove completed tasks from the update task queue to retry the operation.|

### iLO.2.15.UpdateTaskQueueWriteError

The UpdateTaskQueue write failed.

| | |
|:---|:---|
|Message Format|"The UpdateTaskQueue write of %1 failed."|
|Severity|Warning|
|Resolution|Ensure a valid name for the item and that space exists to hold the item.|

### iLO.2.15.UpdateTemporarilyUnavailable

The system is temporarily unable to perform this update

| | |
|:---|:---|
|Message Format|"The system is temporarily unable to perform this update"|
|Severity|Critical|
|Resolution|Retry the update, ensuring that power state is stable.|

### iLO.2.15.UpdateWithPowerOff

System power must be off to perform this update

| | |
|:---|:---|
|Message Format|"System power must be off to perform this update"|
|Severity|Critical|
|Resolution|Power system on and retry the update.|

### iLO.2.15.UpdateWithPowerOn

System power must be on to perform this update

| | |
|:---|:---|
|Message Format|"System power must be on to perform this update"|
|Severity|Critical|
|Resolution|Power system on and retry the update.|

### iLO.2.15.UserAlreadyExist

The user or login user name already exists.

| | |
|:---|:---|
|Message Format|"The user or login user name already exists."|
|Severity|Warning|
|Resolution|Try a different user or login user name.|

### iLO.2.15.UserNameAlreadyExists

Duplicate SNMPv3 User.

| | |
|:---|:---|
|Message Format|"The username %1 already exists in the list"|
|Severity|Warning|
|Resolution|Enter a different name and try again.|

### iLO.2.15.VirtualMediaIsDisabled

Virtual Media has been disabled.

| | |
|:---|:---|
|Message Format|"Virtual Media has been disabled."|
|Severity|Warning|
|Resolution|Enable Virtual Media to perform this operation.|

### iLO.2.15.ZonePowerLimitExceeded

The sum of zone power limit cannot be more than chassis power limit.

| | |
|:---|:---|
|Message Format|"The value %1 for the sum of %2 cannot be more than chassis power limit %3."|
|Severity|Warning|
|Resolution|Correct the value avoid the sum of power limit exceeds chassis power limit, and then retry the operation.|

### iLO.2.15.iLOResetAndSystemRebootRequired

Indicates that one or more properties were correctly changed, but will not take effect until device is reset and system is rebooted.

| | |
|:---|:---|
|Message Format|"One or more properties were changed and will not take effect until the device is reset and system is rebooted"|
|Severity|Warning|
|Resolution|Reset the management processor and reboot the server.|

### iLO.2.15.iLOSubnetConflict

The subnet being configured has conflicts.

| | |
|:---|:---|
|Message Format|"The subnet being configured for %1 conflicts with %2."|
|Severity|Warning|
|Resolution|Configure this interface with a different IP Address or Subnet Mask.|

### iLO.2.15.iLOVirtualNICDisabled

The Virtual NIC is disabled.

| | |
|:---|:---|
|Message Format|"The Virtual NIC is disabled."|
|Severity|Warning|
|Resolution|Enable iLO Virtual NIC to perform this operation.|

## iLOeRS

### iLOeRS.1.1.AuthenticationError

Authentication error.

| | |
|:---|:---|
|Message Format|"Authentication error."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.CannotConnectToProxyServer

Unable to connect to the proxy server.

| | |
|:---|:---|
|Message Format|"Unable to connect to the proxy server."|
|Severity|Warning|
|Resolution|Please verify proxy settings and connectivity.|

### iLOeRS.1.1.CannotConnectToRemoteHost

Can not connect to remote host. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Can not connect to remote host."|
|Severity|Critical|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver and retry.|

### iLOeRS.1.1.CannotEstablishSSLConnection

Protocol error occurred while communicating with the HPE Insight Remote Support receiver.

| | |
|:---|:---|
|Message Format|"Protocol error occurred while communicating with the HPE Insight Remote Support receiver."|
|Severity|Critical|
|Resolution|Please retry.|

### iLOeRS.1.1.ChangeOrResetHPEPassportPassword

The HPE Passport password must be changed or reset.

| | |
|:---|:---|
|Message Format|"The HPE Passport password must be changed or reset."|
|Severity|Critical|
|Resolution|Please attempt to register again after correcting the HPE Passport problem.|

### iLOeRS.1.1.ClientReceiveError

Client Receive Error. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Client Receive Error."|
|Severity|Critical|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver and retry.|

### iLOeRS.1.1.ClientReceiveTimeout

Client Receive Timeout. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Client Receive Timeout."|
|Severity|Warning|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver.|

### iLOeRS.1.1.ClientTransmitTimeout

Client Transmit Timeout. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Client Transmit Timeout."|
|Severity|Warning|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver.|

### iLOeRS.1.1.ConnectBIOerror

Connect BIO error. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Connect BIO error."|
|Severity|Warning|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver and retry.|

### iLOeRS.1.1.CorruptDeviceIdentifiers

Corrupt device identifiers.

| | |
|:---|:---|
|Message Format|"Corrupt device identifiers."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.CorruptGDID

The GDID was found to be corrupted.

| | |
|:---|:---|
|Message Format|"Corrupt GDID."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.CorruptGUID

The GUID is found to be corrupted.

| | |
|:---|:---|
|Message Format|"Corrupt GUID."|
|Severity|Critical|
|Resolution|Please retry your last step. If error persists and device is currently registered, unregister and re-register device.|

### iLOeRS.1.1.CorruptRegistrationInformation

The registration information was found to be corrupted.

| | |
|:---|:---|
|Message Format|"Corrupt registration information."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.CorruptRegistrationToken

The registration token was found to be corrupted.

| | |
|:---|:---|
|Message Format|"Corrupt registration token."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.DataPackageValidationFailed

Data Package validation failed.

| | |
|:---|:---|
|Message Format|"Data Package validation failed."|
|Severity|Critical|
|Resolution|Please retry your last step. If error persists and device is currently registered, unregister and re-register device.|

### iLOeRS.1.1.DestinationURLParseError

Destination URL Parse Error.

| | |
|:---|:---|
|Message Format|"Destination URL Parse Error."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.DeviceAlreadyRegistered

Device is already registered.

| | |
|:---|:---|
|Message Format|"Device is already registered"|
|Severity|Warning|
|Resolution|Please delete the device from Insight Remote Support user interface and retry registration.|

### iLOeRS.1.1.DeviceDeleted

This device has been previously deleted from the Insight Remote Support user interface.

| | |
|:---|:---|
|Message Format|"This device has been previously deleted from the Insight Remote Support user interface."|
|Severity|Critical|
|Resolution|Please unregister and re-register device.|

### iLOeRS.1.1.DeviceIsNotRegistered

Device is not registered. Remote Support registration has been disabled locally on this device. No service events or data collections will be sent until this device has been re-registered.

| | |
|:---|:---|
|Message Format|"Device is not registered."|
|Severity|Warning|
|Resolution|Please register the device.|

### iLOeRS.1.1.DeviceUnregistrationFailed

Unregistration request was not processed successfully by the HPE Remote Support receiver. Remote Support has been disabled locally. No service events or data collections will be sent until this device has been re-registered.

| | |
|:---|:---|
|Message Format|"Unregistration request was not processed successfully by the HPE Remote Support receiver."|
|Severity|Critical|
|Resolution|Please Register the Device.|

### iLOeRS.1.1.ERSIsDisabled

Embedded Remote Support is disabled.

| | |
|:---|:---|
|Message Format|"Embedded Remote Support is disabled."|
|Severity|Critical|
|Resolution|Please retry registration.|

### iLOeRS.1.1.ErrorReadingERSConfiguration

Error reading Embedded Remote Support configuration.

| | |
|:---|:---|
|Message Format|"Error reading Embedded Remote Support configuration."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.ErrorRetrievingRegToken

Error retrieving registration token.

| | |
|:---|:---|
|Message Format|"Error retrieving registration token."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.ExpiredHPEPassportCredentials

THe HPE Passport credentials expired.

| | |
|:---|:---|
|Message Format|"The HPE Passport credentials expired."|
|Severity|Critical|
|Resolution|Please attempt to register again after correcting the HPE Passport problem.|

### iLOeRS.1.1.ExpiredRegistrationToken

The registration token was found to be expired.

| | |
|:---|:---|
|Message Format|"Expired registration token."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.GeneralReceiverError

General Receiver Error. HPE Remote Support receiver is temporarily unavailable.

| | |
|:---|:---|
|Message Format|"General Receiver Error."|
|Severity|Warning|
|Resolution|Please retry later.|

### iLOeRS.1.1.GenericTransmitError

Generic Transmit Error. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Generic Transmit Error."|
|Severity|Critical|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver.|

### iLOeRS.1.1.HPEPassportAccountIsLockedOut

HPE Passport account is locked out.

| | |
|:---|:---|
|Message Format|"HPE Passport account is locked out."|
|Severity|Warning|
|Resolution|Please reset your password and retry registration.|

### iLOeRS.1.1.HPEPassportAccountLockedOut

The HPE Passport account is locked out.

| | |
|:---|:---|
|Message Format|"HPE Passport account locked out."|
|Severity|Critical|
|Resolution|Please attempt to register again after correcting the HPE Passport problem.|

### iLOeRS.1.1.HPEPassportPasswordHasExpired

HPE Passport Password has expired.

| | |
|:---|:---|
|Message Format|"HPE Passport Password has expired."|
|Severity|Critical|
|Resolution|Please update your password and retry registration.|

### iLOeRS.1.1.HPEPassportPasswordIsRequired

HPE Passport Password is required.

| | |
|:---|:---|
|Message Format|"HPE Passport Password is required."|
|Severity|Warning|
|Resolution|Please retry registration.|

### iLOeRS.1.1.HPEPassportSecurityQandAIsNotCompliant

HPE Passport Security Q and A is not compliant.

| | |
|:---|:---|
|Message Format|"HPE Passport Security Q and A is not compliant."|
|Severity|Warning|
|Resolution|Please update your HPE Passport security Q and A and retry registration.|

### iLOeRS.1.1.HPEPassportSystemFailureOccurred

HPE Passport System failure occurred. A problem has been detected in the HPE Passport system.

| | |
|:---|:---|
|Message Format|"HPE Passport System failure occurred."|
|Severity|Critical|
|Resolution|Please retry later.|

### iLOeRS.1.1.HPEPassportUserHasBeenAddedToaGroup

HPE Passport user has been added to a group.

| | |
|:---|:---|
|Message Format|"HPE Passport user has been added to a group."|
|Severity|Warning|
|Resolution|Please reset your password and retry registration.|

### iLOeRS.1.1.HPEPassportUserIdentityElementsMissing

HPE Passport user identity elements missing.

| | |
|:---|:---|
|Message Format|"HPE Passport user identity elements missing."|
|Severity|Warning|
|Resolution|Please update your HPE Passport profile and retry registration.|

### iLOeRS.1.1.HttpServerProtocolError

HTTP Server Protocol error occurred while communicating with the HPE Insight Remote Support receiver.

| | |
|:---|:---|
|Message Format|"HTTP Server Protocol error occurred while communicating with the HPE Insight Remote Support receiver."|
|Severity|Critical|
|Resolution|Please retry.|

### iLOeRS.1.1.IncorrectHPEPassportPassword

HPE Passport Password is incorrect.

| | |
|:---|:---|
|Message Format|"HPE Passport Password is incorrect."|
|Severity|Warning|
|Resolution|Please retry registration using the correct password.|

### iLOeRS.1.1.InsufficientDeviceIdentifierInformation

Insufficient device identifier information.

| | |
|:---|:---|
|Message Format|"Insufficient device identifier information."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.InsufficientRegistrationData

Insufficient registration data.

| | |
|:---|:---|
|Message Format|"Insufficient registration data."|
|Severity|Warning|
|Resolution|Please retry registration.|

### iLOeRS.1.1.InvalidCommandForConnectModel

Invalid Command For Connect Model.

| | |
|:---|:---|
|Message Format|"Invalid Command For Connect Model."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.InvalidConfigurationForConnectModel

Configuration not supported for current connect model.

| | |
|:---|:---|
|Message Format|"Configuration not supported for current connect model."|
|Severity|OK|
|Resolution|None.|

### iLOeRS.1.1.InvalidConnectFileDescriptor

Invalid Connect File Descriptor. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Invalid Connect File Descriptor."|
|Severity|Warning|
|Resolution|Please retry.|

### iLOeRS.1.1.InvalidDeviceIdentifierInformation

Invalid device identifier information.

| | |
|:---|:---|
|Message Format|"Invalid device identifier information."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.InvalidFileDescriptor

Invalid File Descriptor. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Invalid File Descriptor."|
|Severity|Warning|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver and retry.|

### iLOeRS.1.1.InvalidHPEPassportCredentials

Invalid HPE Passport credentials was provided.

| | |
|:---|:---|
|Message Format|"Invalid HPE Passport credentials."|
|Severity|Warning|
|Resolution|Please provide valid HPE Passport credentials.|

### iLOeRS.1.1.InvalidHPEPassportUserID

HPE Passport User ID is invalid.

| | |
|:---|:---|
|Message Format|"HPE Passport User ID is invalid."|
|Severity|Warning|
|Resolution|Please retry registration with a valid user ID.|

### iLOeRS.1.1.InvalidMessageId

Invalid Message Id.

| | |
|:---|:---|
|Message Format|"Invalid Message Id."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.InvalidNumberOfDaysToReport

Invalid Number of Days to Report.

| | |
|:---|:---|
|Message Format|"Invalid Number of Days to Report."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.InvalidProxyCredentials

Authentication with proxy server failed.

| | |
|:---|:---|
|Message Format|"Authentication with proxy server failed."|
|Severity|Warning|
|Resolution|Please provide proper credentials.|

### iLOeRS.1.1.InvalidProxySettings

Invalid Proxy Settings.

| | |
|:---|:---|
|Message Format|"Invalid Proxy Settings."|
|Severity|Warning|
|Resolution|Please verify proxy settings.|

### iLOeRS.1.1.InvalidReceiveBuffer

Invalid Receive Buffer. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Invalid Receive Buffer."|
|Severity|Warning|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver and retry.|

### iLOeRS.1.1.InvalidSessiontoken

The session token is invalid.

| | |
|:---|:---|
|Message Format|"The session token is invalid."|
|Severity|Critical|
|Resolution|Please retry registration.|

### iLOeRS.1.1.MissingAttachments

Missing Attachments.

| | |
|:---|:---|
|Message Format|"Missing Attachments."|
|Severity|Critical|
|Resolution|Please retry your last step. If error persists and device is currently registered, unregister and re-register device.|

### iLOeRS.1.1.MissingDataPackage

The data package is missing.

| | |
|:---|:---|
|Message Format|"Missing data package."|
|Severity|Critical|
|Resolution|Please retry your last step. If error persists and device is currently registered, unregister and re-register device.|

### iLOeRS.1.1.MissingDeviceIdentifiers

Missing device identifiers.

| | |
|:---|:---|
|Message Format|"Missing device identifiers."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.MissingGDID

The GDID was found to be missing.

| | |
|:---|:---|
|Message Format|"Missing GDID."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.MissingGUID

The GUID is missing.

| | |
|:---|:---|
|Message Format|"Missing GUID."|
|Severity|Critical|
|Resolution|Please retry your last step. If error persists and device is currently registered, unregister and re-register device.|

### iLOeRS.1.1.MissingRegistrationInformation

The registration information was found to be missing.

| | |
|:---|:---|
|Message Format|"Missing registration information."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.MissingRegistrationToken

The registration token was found to be missing.

| | |
|:---|:---|
|Message Format|"Missing registration token."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.MissingSOAPHeader

Missing SOAP header.

| | |
|:---|:---|
|Message Format|"Missing SOAP header."|
|Severity|Critical|
|Resolution|Please retry your last step. If error persists and device is currently registered, unregister and re-register device.|

### iLOeRS.1.1.NoActiveHealthFilestoReport

No Active Health Files to Report.

| | |
|:---|:---|
|Message Format|"No Active Health Files to Report."|
|Severity|Ok|
|Resolution|None.|

### iLOeRS.1.1.NoServerCertificate

Certificate error occurred while communicating with the HPE Insight Remote Support receiver.

| | |
|:---|:---|
|Message Format|"Certificate error occurred while communicating with the HPE Insight Remote Support receiver."|
|Severity|Critical|
|Resolution|Please retry.|

### iLOeRS.1.1.ReceiveBIOError

Receive BIO Error. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Receive BIO Error."|
|Severity|Warning|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver and retry.|

### iLOeRS.1.1.RegistrationRequestCouldNotBeQueued

Registration request could not be queued. HPE Remote Support receiver temporarily unavailable.

| | |
|:---|:---|
|Message Format|"Registration request could not be queued."|
|Severity|Warning|
|Resolution|Please retry later.|

### iLOeRS.1.1.SSLBioError

SSL Bio error.

| | |
|:---|:---|
|Message Format|"SSL Bio error."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.ServiceUnavailableTemporarily

HPE Remote Support receiver is temporarily unavailable.

| | |
|:---|:---|
|Message Format|"HPE Remote Support receiver temporarily unavailable."|
|Severity|Warning|
|Resolution|Please retry later.|

### iLOeRS.1.1.StaleDeviceIdentifiers

Stale device identifiers.

| | |
|:---|:---|
|Message Format|"Stale device identifiers."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.TooManyAttachments

Too Many Attachments.

| | |
|:---|:---|
|Message Format|"Too Many Attachments."|
|Severity|Critical|
|Resolution|Please retry your last step. If error persists and device is currently registered, unregister and re-register device.|

### iLOeRS.1.1.TooManyPendingRequests

Too Many Pending Requests.

| | |
|:---|:---|
|Message Format|"Too Many Pending Requests."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.TransactionTypeError

Transaction type error.

| | |
|:---|:---|
|Message Format|"Transaction type error."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.TransmitBufferTooShort

Transmit Buffer Too Short. Transmission to the HPE Insight Remote Support receiver was unsuccessful.

| | |
|:---|:---|
|Message Format|"Transmit Buffer Too Short."|
|Severity|Warning|
|Resolution|Please check connectivity between Management Processor and the Insight Remote Support receiver and retry.|

### iLOeRS.1.1.UnknownDevice

Unknown device.

| | |
|:---|:---|
|Message Format|"Unknown device."|
|Severity|Critical|
|Resolution|Please unregister and re-register the device.|

### iLOeRS.1.1.UnmatchGDIDAndDeviceIdentifiers

GDID and device identifiers do not match.

| | |
|:---|:---|
|Message Format|"GDID and device identifiers do not match."|
|Severity|Warning|
|Resolution|If error persists and device is not currently registered, unregister and re-register device.|

### iLOeRS.1.1.UserHasReachedHalfTheMaximumAllowedLoginAuthenticationFailures

User has reached half the maximum allowed login authentication failures.

| | |
|:---|:---|
|Message Format|"User has reached half the maximum allowed login authentication failures."|
|Severity|Critical|
|Resolution|Please verify your username and password are correct and retry registration.|

### iLOeRS.1.1.UserIDIsRequiredField

User ID is a required field.

| | |
|:---|:---|
|Message Format|"User ID is a required field."|
|Severity|Warning|
|Resolution|Please retry registration.|

### iLOeRS.1.1.UserMustEnterAnHPEPassportSecurityQandAandChangePassword

User must enter an HPE Passport security Q and A and change password.

| | |
|:---|:---|
|Message Format|"User must enter an HPE Passport security Q and A and change password."|
|Severity|Warning|
|Resolution|Please update your security Q and A, update your password and retry registration.|

### iLOeRS.1.1.UserMustHaveAnActiveAuthenticatedSession

User must have an active authenticated session.

| | |
|:---|:---|
|Message Format|"User must have an active authenticated session."|
|Severity|Critical|
|Resolution|Please retry registration.|

### iLOeRS.1.1.XMLNULLPropertyDetected

XML NULL Property Detected.

| | |
|:---|:---|
|Message Format|"XML NULL Property Detected."|
|Severity|OK|
|Resolution|None.|

### iLOeRS.1.1.XMLNoPrintableCharDetected

XML No Printable Char Detected.

| | |
|:---|:---|
|Message Format|"XML No Printable Char Detected."|
|Severity|OK|
|Resolution|None.|

### iLOeRS.1.1.XMLParseError

XML Parse Error.

| | |
|:---|:---|
|Message Format|"XML Parse Error."|
|Severity|Warning|
|Resolution|None.|

### iLOeRS.1.1.XMLParserAllocationError

XML Parser Allocation Error.

| | |
|:---|:---|
|Message Format|"XML Parser Allocation Error."|
|Severity|Warning|
|Resolution|None.|

## iLOResourceEvents

### iLOResourceEvents.1.2.AdapterConfigurationChange

The specified adapter has had a configuration change.

| | |
|:---|:---|
|Message Format|"The adapter in slot %1 has had a configuration change."|
|Severity|OK|
|Resolution|None|

### iLOResourceEvents.1.2.AggregateHealthStatusChange

There has been a change in one or more subsystems aggregate health statuses.

| | |
|:---|:---|
|Message Format|"AggregateServerHealth is %1, BiosOrHardwareHealth is %2, FanRedundancy is %3, Fans status is %4, LiquidCoolingRedundancy is %5, LiquidCooling status is %6, Memory status is %7, Network status is %8, PowerSupplies status is %9, PowerSuppliesMismatch state is %10, PowerSupplyRedundancy is %11, Processors status is %12, SmartStorageBattery status is %13, Storage status is %14 and Temperatures status is %15."|
|Severity|OK|
|Resolution|Update the subsystem status accordingly.|

### iLOResourceEvents.1.2.AutoShutdownCancelled

Management processor cancelled previously initiated automatic operating system shutdown.

| | |
|:---|:---|
|Message Format|"Management processor cancelled previously initiated automatic operating system shutdown. Cause: %1."|
|Severity|OK|
|Resolution|Check shutdown cause and the Integrated Management Log (IML) for additional information.|

### iLOResourceEvents.1.2.AutoShutdownInitiated

Management processor initiated an automatic operating system shutdown.

| | |
|:---|:---|
|Message Format|"Management processor initiated an automatic operating system shutdown. Cause: %1."|
|Severity|Critical|
|Resolution|Check shutdown cause and the Integrated Management Log (IML) for additional information.|

### iLOResourceEvents.1.2.BIOSSafeModeEngaged

BIOS Safe Mode is engaged. System will boot in a minimal configuration.

| | |
|:---|:---|
|Message Format|"BIOS Safe Mode is engaged. System will boot in a minimal configuration."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.BIOSSafeModeExit

BIOS Safe Mode has successfully booted. System will resume boot in a minimal configuration.

| | |
|:---|:---|
|Message Format|"BIOS Safe Mode has successfully booted. System will resume boot in a minimal configuration."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ComputeOpsManagerConnected

HPE Compute Ops Manager connection status is changed to Connected.

| | |
|:---|:---|
|Message Format|"HPE Compute Ops Manager connection status is Connected."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ComputeOpsManagerConnectionFailed

HPE Compute Ops Manager connection status is changed to Failed.

| | |
|:---|:---|
|Message Format|"HPE Compute Ops Manager connection is failed."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.ComputeOpsManagerConnectionInProgress

HPE Compute Ops Manager connection status is changed to In Progress.

| | |
|:---|:---|
|Message Format|"HPE Compute Ops Manager connection is in progress."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ComputeOpsManagerConnectionInitiated

Connection to HPE Compute Ops Manager has been initiated.

| | |
|:---|:---|
|Message Format|"Connection to HPE Compute Ops Manager has been initiated by: %1."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ComputeOpsManagerConnectionNotEnabled

HPE Compute Ops Manager connection status is changed to Not Enabled.

| | |
|:---|:---|
|Message Format|"HPE Compute Ops Manager is not Enabled."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ComputeOpsManagerDisabledByFactoryDefaults

Connection to HPE Compute Ops Manager has been disabled due to Factory defaults.

| | |
|:---|:---|
|Message Format|"Connection to HPE Compute Ops Manager has been disabled due to Factory defaults."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ComputeOpsManagerDisabledBySecureErase

Connection to HPE Compute Ops Manager has been disabled due to secure erase.

| | |
|:---|:---|
|Message Format|"Connection to HPE Compute Ops Manager has been disabled due to secure erase by user %1."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ComputeOpsManagerDisabledByUser

User has disabled connection to HPE Compute Ops Manager.

| | |
|:---|:---|
|Message Format|"Connection to HPE Compute Ops Manager has been disabled by User %1."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.DeviceDiscoveryStatusV2

The server device discovery status has changed.

| | |
|:---|:---|
|Message Format|"Discovery status is now: AMS: %1, Device Discovery: %2, Smart Array Storage: %3"|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.DriveInserted2

The ATA drive has been inserted into the specified location.

| | |
|:---|:---|
|Message Format|"The ATA drive has been inserted in location %1 connected to controller in %2."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DriveRemoved2

The ATA drive has been removed from the specified location.

| | |
|:---|:---|
|Message Format|"The ATA drive has been removed from location %1 connected to controller in %2."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvErasing

The logical drive is currently being erased.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is currently being erased."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvExpanding

The logical drive is currently undergoing a transformation.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is currently undergoing a transformation."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvNewLogDrvKeyRekeyRequestReceived

The logical drive is currently encrypted and has received a request to rekey all data with a new logical drive encryption key.The logical drive is online.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is currently encrypted and has received a request to rekey all data with a new logical drive encryption key."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvPredictiveSpareRebuildReady

The logical drive is ready to perform a predictive spare rebuild.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is ready to perform a predictive spare rebuild."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvQueuedForExpansion

The logical drive is ready for transformation.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is ready for transformation."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvRapidParityInitializationInProgress

The logical drive is currently undergoing rapid parity initialization.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is currently undergoing rapid parity initialization."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvRapidParityInitializationPending

The logical drive is currently pending rapid parity initialization and will be unavailable.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is currently pending rapid parity initialization and will be unavailable."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvReadyRebuild

The drive array logical drive is ready for Automatic Data Recovery.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is ready for Automatic Data Recovery."|
|Severity|Warning|
|Resolution|The failed physical drive has been replaced, but the logical drive is still operating in Interim Recovery Mode.|

### iLOResourceEvents.1.2.DrvArrLogDrvRebuilding

The drive array logical drive is currently doing Automatic Data Recovery.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is currently doing Automatic Data Recovery."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvRekeyInProgress

The logical drive is currently encrypted and all data is currently being rekeyed with a new logical drive key using the background capacity expansion transformation task.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is currently encrypted and all data is currently being rekeyed with a new logical drive key using the background capacity expansion transformation task."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvUnconfigured

The drive array logical drive is not configured.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is not configured."|
|Severity|Critical|
|Resolution|Run HPE array configuration utility |

### iLOResourceEvents.1.2.DrvArrLogDrvUnencryptedToEncryptedTransformationInProgress

The logical drive is currently being transformed from unencrypted to encrypted and the volume is online.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 is currently being transformed from unencrypted to encrypted and the volume is online."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrLogDrvUnencryptedToEncryptedTransformationNotStarted

The logical drive has received a request to transform from unencrypted to encrypted but this process has not yet started.The unencrypted logical drive is currently online.

| | |
|:---|:---|
|Message Format|"The drive array logical drive %1 on controller located in %2 has received a request to transform from unencrypted to encrypted but this process has not yet started."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrPhysDrvEraseDone

The drive array physical drive has been erased and is is now in an offline state.

| | |
|:---|:---|
|Message Format|"The drive array physical drive at location %1 connected to controller in %2 has been erased and is now in an offline state."|
|Severity|Warning|
|Resolution|None|

### iLOResourceEvents.1.2.DrvArrPhysDrvEraseQueued

An erase operation is currently queued for the drive array physical drive.

| | |
|:---|:---|
|Message Format|"An erase operation is currently queued for the drive array physical drive at location %1 connected to controller in %2."|
|Severity|Warning|
|Resolution|None|

### iLOResourceEvents.1.2.DrvArrPhysDrvErasing

The drive array physical drive is being erased.

| | |
|:---|:---|
|Message Format|"The drive array physical drive at location %1 connected to controller in %2 is being erased."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrSpareDriveActive

Automatic Data Recovery is complete.

| | |
|:---|:---|
|Message Format|"Drive array spare drive at location %1 connected to controller in %2 has completed Automatic Data Recovery."|
|Severity|OK|
|Resolution|None|

### iLOResourceEvents.1.2.DrvArrSpareDriveBuilding

A physical drive has failed. Automatic Data Recovery is in progress to recover data to the on-line spare.

| | |
|:---|:---|
|Message Format|"Drive array spare drive at location %1 connected to controller in %2 has Automatic Data Recovery in progress."|
|Severity|Critical|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrSpareDriveInactive

An on-line spare is configured, but is not currently in use.

| | |
|:---|:---|
|Message Format|"Drive array spare drive at location %1 connected to controller in %2 is configured, but is not currently in use."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrayAccBoardTempDisabled_ExpandInProgress

Write cache operations have been temporarily disabled due to an expand of a logical drive.

| | |
|:---|:---|
|Message Format|"Write cache operations for cache module board located in %1 have been temporarily disabled due to an expand of a logical drive."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.DrvArrayAccBoardTempDisabled_SnapshotInProgress

Write cache operations have been temporarily disabled due to a snapshot operation that is queued up or in progress.

| | |
|:---|:---|
|Message Format|"Write cache operations for cache module board located in %1 have been temporarily disabled due to a snapshot operation that is queued up or in progress."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.FanInserted

A fault tolerant fan has been inserted into the specified fan location.

| | |
|:---|:---|
|Message Format|"The fan has been inserted in fan location %1."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.FanRemoved

A fault tolerant fan has been removed from the specified fan location.

| | |
|:---|:---|
|Message Format|"The fan has been removed from fan location %1."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.FirmwareFlashStatusChanged

The firmware flash status has changed

| | |
|:---|:---|
|Message Format|"The firmware flash status is now %1"|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.FirmwareIntegrityScanComplete

This event is generated when a firmware integrity issue is found during firmware scan irrespective of a recovery success or failure.

| | |
|:---|:---|
|Message Format|"Management Processor completed the firmware integrity scan and detected an anomaly."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.FirmwareRecoveryRequest

This event is generated when firmware recovery is requested.

| | |
|:---|:---|
|Message Format|"Firmware recovery is requested."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.IndicatorLEDStateChanged

The state of the indicator LED has changed

| | |
|:---|:---|
|Message Format|"The state of the indicator LED is now %1"|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.IntelligentDiagnosticsEnabled

Intelligent Diagnostics Enabled: Server will attempt automated recovery.

| | |
|:---|:---|
|Message Format|"Intelligent Diagnostics Enabled: Server will attempt automated recovery."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.IntelligentDiagnosticsExit

Intelligent Diagnostics Exit: Automated server recovery has concluded.

| | |
|:---|:---|
|Message Format|"Intelligent Diagnostics Exit: Automated server recovery has concluded."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.IntrusionHWInstalled

System intrusion alert hardware is installed.

| | |
|:---|:---|
|Message Format|"System intrusion hardware installed."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.IntrusionHWRemoved

System intrusion alert hardware is removed.

| | |
|:---|:---|
|Message Format|"System intrusion hardware removed."|
|Severity|OK|
|Resolution|There is no action required if the removal of the hardware is expected.  If the hardware was not intentionally removed, please verify cable connection.|

### iLOResourceEvents.1.2.PowerSupplyInserted

A fault tolerant power supply has been inserted into the specified bay location.

| | |
|:---|:---|
|Message Format|"A power supply has been inserted in bay %1."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.PowerSupplyRemoved

A fault tolerant power supply has been removed from the specified bay location.

| | |
|:---|:---|
|Message Format|"A power supply has been removed from bay %1."|
|Severity|Warning|
|Resolution|None.|

### iLOResourceEvents.1.2.RemoteSupportRegistrationComplete

The server was registered to Remote Support.

| | |
|:---|:---|
|Message Format|"The server was registered to Remote Support using the %1 method"|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.RemoteSupportUnregistrationComplete

The server was unregistered from Remote Support.

| | |
|:---|:---|
|Message Format|"The server was unregistered from Remote Support."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.SecurityStateChange

Security state changed.

| | |
|:---|:---|
|Message Format|"Security state changed to %1."|
|Severity|OK|
|Resolution|No Action|

### iLOResourceEvents.1.2.ServerPostComplete

The server has reached Power On Self Test complete.

| | |
|:---|:---|
|Message Format|"The server has reached Power On Self Test complete"|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ServerPostDiscoveryComplete

The server has completed device discovery.

| | |
|:---|:---|
|Message Format|"The server has completed device discovery."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ServerPoweredOff

The server has been powered off.

| | |
|:---|:---|
|Message Format|"The server has been powered off."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ServerPoweredOn

The server has been powered on.

| | |
|:---|:---|
|Message Format|"The server has been powered on."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.ServerResetDetected

Server Reset Detected. Management Processor firmware has detected a server reset.

| | |
|:---|:---|
|Message Format|"Server reset detected."|
|Severity|Warning|
|Resolution|Refer to the Integrated Management Log for details on the cause of the server reset.|

### iLOResourceEvents.1.2.UpdateTaskStateChanged

An update task has changed state.

| | |
|:---|:---|
|Message Format|"An update task %1."|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.iLODriveComponentAdded

A component was added to the iLO Drive.

| | |
|:---|:---|
|Message Format|"The component "%1" was added to the iLO Drive"|
|Severity|OK|
|Resolution|None.|

### iLOResourceEvents.1.2.iLORestServicesStarted

RESTful services started.

| | |
|:---|:---|
|Message Format|"RESTful services started. Management Processor Firmware Version: %1, Release date: %2"|
|Severity|OK|
|Resolution|None.|

## NetworkDevice

### NetworkDevice.1.0.CableInserted

Indicates that a network cable has been inserted.

| | |
|:---|:---|
|Message Format|"A network cable has been inserted into network adapter '%1' port '%2'."|
|Severity|OK|
|Resolution|Refresh your cached version of the network port to get the updated information from the service.|

### NetworkDevice.1.0.CableRemoved

Indicates that a network cable has been removed.

| | |
|:---|:---|
|Message Format|"A cable has been removed from network adapter '%1' port '%2'."|
|Severity|OK|
|Resolution|Refresh your cached version of the network port to get the updated information from the service.|

### NetworkDevice.1.0.ConnectionDropped

Indicates that a network connection has been dropped.

| | |
|:---|:---|
|Message Format|"The connection is no longer active for network adapter '%1' port '%2' function '%3'."|
|Severity|OK|
|Resolution|Refresh your cached version of the network port to get the updated information from the service.|

### NetworkDevice.1.0.ConnectionEstablished

Indicates that a network connection has been established.

| | |
|:---|:---|
|Message Format|"A network connection has been established for network adapter '%1' port '%2' function '%3'."|
|Severity|OK|
|Resolution|Refresh your cached version of the network port to get the updated information from the service.|

### NetworkDevice.1.0.DegradedConnectionEstablished

Indicates that a network connection has been established, but at an unexpectedly low link speed.

| | |
|:---|:---|
|Message Format|"A degraded network connection has been established for network adapter '%1' port '%2' function '%3'."|
|Severity|Warning|
|Resolution|Refresh your cached version of the network port to get the updated information from the service.|

### NetworkDevice.1.0.LinkFlapDetected

Indicates that a network connection is highly unstable.

| | |
|:---|:---|
|Message Format|"The network connection for network adapter '%1' port '%2' function '%3' has been established and dropped '%4' times in the last '%5' minutes."|
|Severity|Warning|
|Resolution|Contact the network administrator for problem resolution.|

## ResourceEvent

### ResourceEvent.1.2.ResourceChanged

Resource updated.

| | |
|:---|:---|
|Message Format|"Resource updated."|
|Severity|OK|
|Resolution|None.|

### ResourceEvent.1.2.ResourceCreated

Resource added.

| | |
|:---|:---|
|Message Format|"Resource added."|
|Severity|OK|
|Resolution|None.|

### ResourceEvent.1.2.ResourceRemoved

Resource removed.

| | |
|:---|:---|
|Message Format|"Resource removed."|
|Severity|OK|
|Resolution|None.|

### ResourceEvent.1.2.ResourceStatusChangedCritical

Resource status changed.

| | |
|:---|:---|
|Message Format|"Resource status changed."|
|Severity|OK|
|Resolution|None.|

### ResourceEvent.1.2.ResourceStatusChangedOK

Resource status changed.

| | |
|:---|:---|
|Message Format|"Resource status changed."|
|Severity|OK|
|Resolution|None.|

### ResourceEvent.1.2.ResourceStatusChangedWarning

Resource status changed.

| | |
|:---|:---|
|Message Format|"Resource status changed."|
|Severity|OK|
|Resolution|None.|

## StorageDevice

### StorageDevice.1.0.ControllerFailure

A storage controller failure has been detected.

| | |
|:---|:---|
|Message Format|"A failure condition for the storage controller located in '%1' has been detected."|
|Severity|Critical|
|Resolution|Reseat the storage controller in the PCI slot.  Update the controller to the latest firmware version.  If the issue persists, replace the controller.|

### StorageDevice.1.0.ControllerOK

The storage controller status has changed to OK.

| | |
|:---|:---|
|Message Format|"The status of the storage controller located in '%1' has changed to OK."|
|Severity|OK|
|Resolution|No action required.|

### StorageDevice.1.0.DriveFailure

A drive failure condition has been detected.

| | |
|:---|:---|
|Message Format|"A failure condition for the drive located in '%1' has been detected."|
|Severity|Critical|
|Resolution|Ensure all cables are properly and securely connected.  Ensure all drives are fully seated.  Replace the defective cables, drive, or both.|

### StorageDevice.1.0.DriveFailureCleared

A previously detected failure condition on a drive has been cleared.

| | |
|:---|:---|
|Message Format|"A failure condition for the drive located in '%1' has been cleared."|
|Severity|OK|
|Resolution|No action needed.|

### StorageDevice.1.0.DriveInserted

A drive has been inserted.

| | |
|:---|:---|
|Message Format|"The drive located at '%1' was inserted."|
|Severity|OK|
|Resolution|If the drive is not properly displayed, attempt to refresh the cached data.|

### StorageDevice.1.0.DriveOK

The status of a physical drive has changed to OK.

| | |
|:---|:---|
|Message Format|"The status of the drive located in '%1' has changed to OK."|
|Severity|OK|
|Resolution|No action needed.|

### StorageDevice.1.0.DrivePredictiveFailure

A predictive drive failure condition has been detected.

| | |
|:---|:---|
|Message Format|"A predictive failure condition for the drive located in '%1' has been detected."|
|Severity|Warning|
|Resolution|If this drive is not part of a fault-tolerant volume, first back up all data, then replace the drive and restore all data afterward.  If this drive is part of a fault-tolerant volume, replace this drive as soon as possible as long as the volume status is OK.|

### StorageDevice.1.0.DrivePredictiveFailureCleared

A previously detected predictive failure condition on a drive has been cleared.

| | |
|:---|:---|
|Message Format|"A predictive failure condition for the drive located in '%1' has been cleared."|
|Severity|OK|
|Resolution|No action needed.|

### StorageDevice.1.0.DriveRemoved

A drive has been removed.

| | |
|:---|:---|
|Message Format|"The drive located in '%1' was removed."|
|Severity|Critical|
|Resolution|If the drive is still displayed, attempt to refresh the cached data.|

### StorageDevice.1.0.VolumeDegraded

The storage controller has detected a degraded volume condition.

| | |
|:---|:---|
|Message Format|"The volume '%1' attached to the storage controller located in '%2' is in degraded state."|
|Severity|Warning|
|Resolution|Ensure all cables are properly and securely connected.  Replace failed drives.|

### StorageDevice.1.0.VolumeFailure

The storage controller has detected a failed volume condition.

| | |
|:---|:---|
|Message Format|"The volume '%1' attached to the storage controller located in '%2' has failed."|
|Severity|Critical|
|Resolution|Ensure all cables are properly and securely connected.  Ensure all drives are fully seated and operational.|

### StorageDevice.1.0.VolumeOK

A volume status has changed to OK.

| | |
|:---|:---|
|Message Format|"The status of volume '%1' that is attached to the storage controller located in '%2' has changed to OK."|
|Severity|OK|
|Resolution|No action needed.|

### StorageDevice.1.0.WriteCacheDataLoss

The write cache is reporting loss of data in posted-writes memory.

| | |
|:---|:---|
|Message Format|"The write cache on the storage controller located in '%1' has data loss."|
|Severity|Critical|
|Resolution|Check the controller resource properties to determine cause of the write cache data loss.|

### StorageDevice.1.0.WriteCacheDegraded

The write cache state is degraded.

| | |
|:---|:---|
|Message Format|"The write cache state on the storage controller located in '%1' is degraded."|
|Severity|Critical|
|Resolution|Check the controller to determine the cause of write cache degraded state, such as a missing battery or hardware failure.|

### StorageDevice.1.0.WriteCacheProtected

A storage controller write cache state is in protected mode.

| | |
|:---|:---|
|Message Format|"The write cache state on the storage controller located in '%1' is in protected mode."|
|Severity|OK|
|Resolution|No action needed.|

### StorageDevice.1.0.WriteCacheTemporarilyDegraded

The write cache state is temporarily degraded.

| | |
|:---|:---|
|Message Format|"The write cache state on the storage controller located in '%1' is temporarily degraded."|
|Severity|Warning|
|Resolution|Check the controller to determine the cause of write cache temporarily degraded state, such as a battery is charging or a data recovery rebuild operation is pending.|

## TaskEvent

### TaskEvent.1.0.TaskAborted

The task with id %1 has been aborted.

| | |
|:---|:---|
|Message Format|"The task with id %1 has been aborted."|
|Severity|Critical|
|Resolution|None.|

### TaskEvent.1.0.TaskCancelled

The task with id %1 has been cancelled.

| | |
|:---|:---|
|Message Format|"The task with id %1 has been cancelled."|
|Severity|Warning|
|Resolution|None.|

### TaskEvent.1.0.TaskCompletedOK

The task with id %1 has completed.

| | |
|:---|:---|
|Message Format|"The task with id %1 has completed."|
|Severity|OK|
|Resolution|None.|

### TaskEvent.1.0.TaskCompletedWarning

The task with id %1 has completed with warnings.

| | |
|:---|:---|
|Message Format|"The task with id %1 has completed with warnings."|
|Severity|Warning|
|Resolution|None.|

### TaskEvent.1.0.TaskPaused

The task with id %1 has been paused.

| | |
|:---|:---|
|Message Format|"The task with id %1 has been paused."|
|Severity|Warning|
|Resolution|None.|

### TaskEvent.1.0.TaskProgessChanged

The task with id %1 has changed to progress %2 percent complete.

| | |
|:---|:---|
|Message Format|"The task with id %1 has changed to progress %2 percent complete."|
|Severity|OK|
|Resolution|None.|

### TaskEvent.1.0.TaskRemoved

The task with id %1 has been removed.

| | |
|:---|:---|
|Message Format|"The task with id %1 has been removed."|
|Severity|Warning|
|Resolution|None.|

### TaskEvent.1.0.TaskResumed

The task with id %1 has been resumed.

| | |
|:---|:---|
|Message Format|"The task with id %1 has been resumed."|
|Severity|OK|
|Resolution|None.|

### TaskEvent.1.0.TaskStarted

The task with id %1 has started.

| | |
|:---|:---|
|Message Format|"The task with id %1 has started."|
|Severity|OK|
|Resolution|None.|
