---
seo:
  title: DC-SCM and HPM
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Security management of DC-SCM

Several products in the HPE server product lines implement norms from the
OpenCompute Project (<a href="https://www.opencompute.org/"
target="_blank">OCP</a>) community. This documentation section depicts
Redfish security specificities related to
Modular Hardware Systems ([MHS](/docs/etc/glossaryterms/)) and
involving the Datacenter Secure Module ([DC-SCM](/docs/etc/glossaryterms/)).

## Supported URIs and methods

The following URIs are implemented in MHS based systems:

- `/redfish/v1/Managers/1/SecurityService/Actions/HpeSecurityService.RebindHPM` (POST)
- `/redfish/v1/ComponentIntegrity/HPM` (GET)

## Binding DC-SCM and HPM

Replacing the HPM requires replacing the DC-SCM and binding it with the HPM.
This binding process creates a trust relationship between the HPM and DC-SCM.
This relationship enables the system to detect any unauthorized HPM replacement.

### Prerequisites

- Users must have a combination of `Administrator` role and `Recovery Set` privileges.
- The security jumper must be disabled or powered off.

After replacement, perform the following steps:

1. Perform POST for the URI:
    `/redfish/v1/Managers/1/SecurityService/Actions/HpeSecurityService.RebindHPM`
    No payload
2. After the bind is executed, check the HPM authentication status by
    performing a GET against:
    `/redfish/v1/ComponentIntegrity/HPM/`. The `ExtendedVerificationStatus` property should be `Success`.
3. Perform AC power cycle.
    If binding fails, download the AHS log and contact
    <a href="https://www.hpe.com/info/assistance" target="_blank">HPE Support</a>.

## Error Codes

Possible error codes are listed below:

- `UnsupportedSecurityState` - The security state of HPE iLO 6 (DC-SCM module)
  is invalid.
- `InsufficientPrivilege` - User does not have recovery privilege.
- `ActionNotSupported` - Redfish URIs are executed on a non-MHS based system.
- `InternalErrorWithParam with return value` - The code gives a return value.
  <a href="https://www.hpe.com/info/assistance"
  target="_blank">HPE Support</a> can identify the issue
  using the return value.
