---
seo:
  title: HPE iLO security service
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# HPE security service

:::info NOTE
It is possible that some properties or resources described in this section are not implemented in iLO 4 and ilo 5.
:::

The [HPE security service](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpesecurityservice) is the main entry point to the different security mechanisms protecting the iLO and the platform (chassis and components).

The integrity of components (i.e. add-on cards, adapters) is discussed in the [iLO and the SPDM](/docs/redfishservices/ilos/supplementdocuments/spdm/) section.

Operating system protection is described in the [HTTPS Boot TLS configuration](/docs/redfishservices/ilos/supplementdocuments/biostlsconf/) and the [Secure Boot Databases](/docs/concepts/securebootdatabases/) sections.

## iLO Security State

Starting with iLO 5,the `SecurityState` [property](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpesecurityservice) can be modified.

```json
{
	"Oem": {
		"Hpe": {
			"SecurityState": "HighSecurity"
		}
	}
}

```

The possible values include:

- `Production`
- `HighSecurity`
- `FIPS`
- `CNSA`

You may PATCH these settings, but iLO enforces strict limitations on how security states can transition. Any unsupported transition results in an error.

### Allowed Transitions

|Transition|Notes|
|---|---|
|Production `<-->` HighSecurity|You may transition freely between Production mode and High Security mode, subject to authentication and privileges.
|Production or HighSecurity `-->` FIPS|You may transition into FIPS mode. Transitions out of FIPS mode are complex and beyond the scope of the RESTful API.

### Impact on Local iLO RESTful API Access (via iLOrest utility and Channel Interface)

In Production mode, privileged OS users (root, Administrator) can access the local iLO via the Channel Interface (CHIF) without supplying any credentials.

However, iLO limits access in HighSecurity and FIPS modes in this local interface to authorized users with valid credentials.

When performing local BIOS configuration changes, the following conditions apply:

|Local REST Access|No BIOS Password|BIOS Password Set|
|-------------------------|--------------------------|---------------------------|
|Production Mode|**No authorization required**|**Requires BIOS Configuration Privilege**|
|High Security Mode|Requires BIOS Configuration Privilege|Requires BIOS Configuration Privilege|

|Remote REST Access|No BIOS Password|BIOS Password Set|
|-------------------------|--------------------------|---------------------------|
|Production Mode|**Requires BIOS Configuration Privilege**|Requires BIOS Configuration Privilege|
|High Security Mode|Requires BIOS Configuration Privilege|Requires BIOS Configuration Privilege|

Refer to the [Roles and privileges](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges) paragraph for more details on this topic.

:::info NOTE
iLO is not validating against the BIOS setup password, but is using the presence of the BIOS password to require BIOS Configuration Privilege.
:::

## iLO TLS versions management

To provide a high degree of privacy and ensure authentication and data integrity in communications between clients (Web and Redfish) and iLO, it is possible to configure different versions of the Transport Layer Security (TLS) protocol using the `TLSVersion` property of the `HpeSecurityService` data type.

TLS, formerly called Secure Socket Layer (SSL) is a standard from the <a href="https://www.ietf.org/" target="_blank">Internet Engineering Task Force</a> (IETF).

This paragraph details the `TLSversion` property which displays the status (`Enabled` / `Disabled`) of the supported TLS versions and how they can be modified in the different security states. It corresponds to the `Security` -> `Encryption Settings` screen of the HPE iLO graphical user interface.

HPE iLO Standard, that comes with every HPE ProLiant Gen11 or later server, gives customers the ability to configure servers in one of three security states (Production, High Security, and FIPS). With an iLO Advanced license, a fourth security state is available, providing the highest level encryption capabilities of CNSA.

iLO features the following security states:

1. Production
2. High Security
3. FIPS (Federal Information Processing Standards)
4. CNSA (Commercial National Security Algorithm)

:::info NOTE

- TLS versions 1.0 and 1.1 can be enabled or disabled only in Production mode. They are **disabled in higher security modes** such as High Security, FIPS, and CNSA.
- Tools that do not support TLS 1.2 will not be able to connect to iLO when TLS 1.0 and 1.1 are disabled.

:::

For more information on iLO security states, refer to the `iLO encryption settings` section in the <a href="https://support.hpe.com/hpesc/public/docDisplay?docId=sd00002007en_us&docLocale=en_US&page=GUID-7BD44216-2266-4FD7-97FB-62F457FDBB0A.html" target="_blank">HPE iLO User Guide</a>

### Viewing status of TLS versions enabled/disabled

The following example retrieves the status of TLS versions.

```text GET Request
GET /redfish/v1/Managers/1/SecurityService/?$select=TLSVersion
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeSecurityService.HpeSecurityService",
    "@odata.etag": "W/\"A7ED5344\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService",
    "@odata.type": "#HpeSecurityService.v2_3_1.HpeSecurityService",
    "TLSVersion": {
        "TLS1_0": "Disabled",
        "TLS1_1": "Enabled",
        "TLS1_2": "Enabled"
    }
}
```

### Modifying the status of specific TLS versions

TLS versions can only be modified when the iLO is in the `Production` security state. The following example retrieves the `SecurityState` property using a generic GET request and the iLOrest command line interface.

```text Generic GET request
GET /redfish/v1/Managers/1/SecurityService/?$select=SecurityState
```

```bash iLOrest
ilorest login ilo-ip -u ilo-user -p password
ilorest get SecurityState --json --selector HpeSecurityService.
ilorest logout
```

```json iLOrest response body
{
    "SecurityState": "Production"
}
```

:::warning Warning
In iLO6 1.05 and iLO6 1.10, the TLSVersion properties are not PATCHable through Redfish. The workaround is to modify them through iLO GUI as explained in the _Enabling the Production security state_ section of the <a href="https://support.hpe.com/hpesc/public/docDisplay?docId=sd00002007en_us&docLocale=en_US&page=GUID-D7147C7F-2016-0901-0930-000000000626.html" target="_blank"> iLO User Guide </a>

In iLO 6 v1.05 and v1.10, performing an update on TLS versions with a PATCH request and the enum values `Enabled` and `Disabled` returns an `iLO.2.15.PropertyValueBadParam` error.
:::

Enabling/disabling the TLS versions triggers an event and creates an alert for that event. The message arguments include TLS version being modified, its status, and the user who requested for the change for the alert.

Updating TLS versions creates an entry in the [Security Logs](/docs/redfishservices/ilos/supplementdocuments/logservices/#security-logs). Remote event listener systems (i.e. <a href="https://www.hpe.com/us/en/compute/management-software.html" target="_blank">HPE Compute Ops Management</a>) are notified after [subscribing](/docs/concepts/redfishevents/) to the `iLOEvents` registry prefix.

Examples of entries (Description) in the `Security Log` after performing `PATCH` on TLS versions:

- `TLS Version 1.0 is Disabled by: username`
- `TLS Version 1.0 is Enabled by: username`
- `TLS Version 1.1 is Disabled by: username`
- `TLS Version 1.1 is Enabled by: username`

## TLS/SSL certificates

This paragraph provides information concerning the management of TLS/SSL certificates used to secure the connection between clients (Web and Redfish) and iLO.

HPE iLO implements TLS versions 1.0, 1.1, 1.2 as defined by the <a href="https://www.ietf.org/" target="_blank">Internet Engineering Task Force</a> (IETF). However, because the "SSL" acronym still has so much name recognition, you will find TLS referenced as "TLS/SSL" in this paragraph. Refer to the [previous paragraph](#ilo-tls-versions-management) to manage these versions.

The TLS protocol, regardless its version, can only be used by websites that have a TLS/SSL certificate. A TLS/SSL certificate is like an ID card or a badge that proves someone is who they say they are.

To be valid, TLS/SSL certificates must be signed by a Certificate Authority (CA), and that CA is trusted, all certificates signed by the CA are also trusted. A self-signed certificate is one in which the owner of the certificate acts as its own CA. By default, iLO creates a self-signed certificate for use in TLS/SSL connections. This certificate enables iLO to work without additional configuration steps.

:::warning IMPORTANT
Using a self-signed certificate is less secure than importing a signed/trusted certificate. Hewlett Packard Enterprise recommends importing a signed/trusted certificate to protect the security of the iLO processor.
:::

One of the most important piece of information in a TLS/SSL certificate is the website's public key. The public key makes encryption and authentication possible. A user's device views the public key and uses it to establish secure encryption keys with the web server. Meanwhile the web server also has a private key that is kept secret; the private key decrypts data encrypted with the public key.

### Obtaining and importing a TLS/SSL certificate

iLO allows you to create a private key and a Certificate Signing Request (CSR) that you can send to a Certificate Authority (CA) and obtain back a trusted/signed TLS/SSL certificate that you can import into iLO.

:::info NOTE
iLO generated private key during a CSR creation is kept secret in the iLO firmware and cannot be displayed.
:::

A signed/trusted TLS/SSL certificate is only valid with the public and secret keys generated with the corresponding CSR. If iLO is reset to the factory default settings, or another CSR is generated before the certificate that corresponds to the previous CSR is imported, the certificate does cannot be imported. In that case, a new CSR must be generated and used to obtain a new signed certificate from a CA.

:::info Prerequisites
The `iLOConfigPriv` [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges) is required to manage iLO TLS/SSL certificates.
:::

#### Generate a Certificate Signing Request

To generate a CSR, you need the following information:

- **Organization Name (O)** — The name of the company or organization that owns this iLO subsystem.
- **Organizational Unit (OU)** — (Optional) The unit within the company or organization that owns this iLO subsystem.
- **Common Name (CN)** — The FQDN of this iLO subsystem.
- **Country (C)** — The two-character country code that identifies the country where the company or organization that owns this iLO subsystem is located. Enter the two-letter abbreviation in capital letters.
- **State (ST)** — The state where the company or organization that owns this iLO subsystem is located.
- **City or Locality (L)** — The city or locality where the company or organization that owns this iLO subsystem is located.
- **Include IP** - Boolean to include (or not) the iLO IP address in the CSR.

:::warning Warning
Many Certificate Authorities reject the `IncludeIP=True` input parameter. Set it to `False` if you are not sure that the CA you are using to sign the CSR can accept it.
:::

The CSR generation process consists of a POST request toward a [Redfish action](/docs/concepts/performing_actions/#performing-actions) URI provided by the `HpeHttpsCert` data type at `/redfish/v1/managers/{item}/securityservice/httpscert/`.

The following example shows how to generate an iLO 6 CSR with [HPE iLOrest](/docs/redfishservices/ilos/supplementdocuments/usinghpeilorest/). Note that HPE iLOrest requires a specific order of the parameters.

```text generic POST action
POST {{iloURI}}/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpeHttpsCert.GenerateCSR
```

```json Request body
{
    "OrgName": "Hewlet Packard Enterprise",
    "OrgUnit": "iLOrestGroup",
    "CommonName": "iLOrest", 
    "Country": "US", 
    "State": "Texas",
    "City": "Houston",
    "IncludeIP": false
}
```

```json Response body
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.15.GeneratingCertificate"
            }
        ]
    }
}
```

```shell cURL
curl --location --insecure \
     --request POST 'ilo-hst320g11-7/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpeHttpsCert.GenerateCSR' \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: 5158b41ee7782786da0641c828f7572c' \
     --data-raw '{
    "OrgName": "Hewlet Packard Enterprise",
    "OrgUnit": "iLOrestGroup",
    "CommonName": "iLOrest",
    "Country": "US",
    "State": "Texas",
    "City": "Houston",
    "IncludeIP": false
}'
```

```shell iLOrest
ilorest login ilo-ip -u <ilo-user> -p password
ilorest certificate gen_csr  "Hewlet Packard Enterprise" "iLOrestGroup" "iLOrest" "US" "Texas" "Houston" False
ilorest logout
sleep 600  # The CSR generation can last up to 10 minutes
```

The following example generates an iLO 6 CSR using Python scripts using the HPE and the DMTF Python Redfish libraries.

```Python HPE library
# This simple Python script uses the HPE Redfish Python Library
# (https://github.com/HewlettPackard/python-ilorest-library) to generate
# an iLO TLS/SSL Certifcate Signing Request (CSR).

# It is based upon the "generate_csr.py" example in
# https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/generate_csr.py

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall redfish
# pip install python-ilorest-library

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library



# -*- coding: utf-8 -*-
"""
An example of generating a Certificate Signing Request (CSR) for HPE iLO systems
"""
import sys
import json
import time
from redfish import RedfishClient
from redfish.rest.v1 import ServerDownOrUnreachableError

def get_resource_directory(redfishobj):

    try:
        resource_uri = redfishobj.root.obj.Oem.Hpe.Links.ResourceDirectory['@odata.id']
    except KeyError:
        sys.stderr.write("Resource directory is only available on HPE servers.\n")
        return None

    response = redfishobj.get(resource_uri)
    resources = []

    if response.status == 200:
        sys.stdout.write("\tFound resource directory at /redfish/v1/resourcedirectory" + "\n\n")
        resources = response.dict["Instances"]
    else:
        sys.stderr.write("\tResource directory missing at /redfish/v1/resourcedirectory" + "\n")

    return resources

def generate_csr(_redfishobj, csr_file, csr_properties):

    csr_uri = None
    generate_csr_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        security_service_uri = managers_members_response.obj.Oem.Hpe.Links\
                                                                ['SecurityService']['@odata.id']
        security_service_response = _redfishobj.get(security_service_uri)
        csr_uri = security_service_response.obj.Links['HttpsCert']['@odata.id']
        https_cert_response = _redfishobj.get(csr_uri)
        generate_csr_uri = https_cert_response.obj['Actions']['#HpeHttpsCert.GenerateCSR']\
                                                                                    ['target']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeHttpsCert.' in instance['@odata.type']:
                csr_uri = instance['@odata.id']
                generate_csr_uri = _redfishobj.get(csr_uri).obj['Actions']\
                                                        ['#HpeHttpsCert.GenerateCSR']['target']
                break

    if generate_csr_uri:
        body = dict()
        body["Action"] = "HpeHttpsCert.GenerateCSR"
        body["City"] = csr_properties["City"]
        body["CommonName"] = csr_properties["CommonName"]
        body["Country"] = csr_properties["Country"]
        body["OrgName"] = csr_properties["OrgName"]
        body["OrgUnit"] = csr_properties["OrgUnit"]
        body["State"] = csr_properties["State"]
        body["IncludeIP"] = csr_properties["IncludeIP"]
        resp = _redfishobj.post(generate_csr_uri, body)
        if resp.status in [200, 201]:
            sys.stdout.write("Generating CSR, this may take a few minutes\n")
            sys.stdout.write("Sleeping for 1 minutes...\n")
            time.sleep(60)
            csr_resp = _redfishobj.get(csr_uri).dict['CertificateSigningRequest']
            with open(csr_file, 'w') as csroutput:
                csroutput.write(csr_resp)
            sys.stdout.write("CSR Data saved to file: '%s'\n" % csr_file)
        else:
            #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended
            #info error message to see what went wrong
            if resp.status not in [200, 201]:
                try:
                    print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                    sort_keys=True))
                except Exception as excp:
                    sys.stderr.write("A response error occurred, unable to access iLO "\
                                     "Extended Message Info...\n")

if __name__ == "__main__":
    # When running on the server locally use the following commented values
    #SYSTEM_URL = None
    #LOGIN_ACCOUNT = None
    #LOGIN_PASSWORD = None

    # When running remotely connect using the secured (https://) address,
    # account name, and password to send https requests
    # SYSTEM_URL acceptable examples:
    # "https://10.0.0.100"
    # "https://ilo.hostname"
    SYSTEM_URL = "https://ilo-ip"
    LOGIN_ACCOUNT = "ilo-user"
    LOGIN_PASSWORD = "password"

    #CSR Dictionary, each value should be updated to reflect the desired CSR
    CSR_DICT = {"City" : "Houston", "CommonName": "ilo-hostname", "Country": "US", \
                "OrgName": "HPE", "OrgUnit": "Compute", "State": "Texas", "IncludeIP": False}

    #After CSR is generated, a file will be created and the CSR will be downloaded
    CSR_FILE = "ilo-hostname.csr"
    # flag to force disable resource directory. Resource directory and associated operations are
    # intended for HPE servers.
    DISABLE_RESOURCE_DIR = False

    try:
        # Create a Redfish client object
        REDFISHOBJ = RedfishClient(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT, \
                                                                            password=LOGIN_PASSWORD)
        # Login with the Redfish client
        REDFISHOBJ.login()
    except ServerDownOrUnreachableError as excp:
        sys.stderr.write("ERROR: server not reachable or does not support RedFish.\n")
        sys.exit()

    generate_csr(REDFISHOBJ, CSR_FILE, CSR_DICT)
    REDFISHOBJ.logout()

```

```Python DMTF Library
# This simple Python script uses the Dmtf Redfish Python Library
# (https://github.com/DMTF/python-redfish-library) to generate
# an iLO TLS/SSL Certifcate Signing Request (CSR).

# It is based upon the "generate_csr.py" example in
# https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/generate_csr.py

# NOTE: The HPE Redfish Python library cannot co-exist with the
#       DMTF Redfish Python library in the same Python environment.
#       You should uninstall one before installing the other one.
#
# pip uninstall python-ilorest-library
# pip install redfish

# The sources of the HPE Redfish Python library is on GitHub at
# https://github.com/HewlettPackard/python-ilorest-library



# -*- coding: utf-8 -*-
"""
An example of generating a Certificate Signing Request (CSR) for HPE iLO systems
"""
import sys
import json
import time
from redfish import redfish_client

def get_resource_directory(redfishobj):

    try:
        resource_uri = redfishobj.root.Oem.Hpe.Links.ResourceDirectory['@odata.id']
    except KeyError:
        sys.stderr.write("Resource directory is only available on HPE servers.\n")
        return None

    response = redfishobj.get(resource_uri)
    resources = []

    if response.status == 200:
        sys.stdout.write("\tFound resource directory at /redfish/v1/resourcedirectory" + "\n\n")
        resources = response.dict["Instances"]
    else:
        sys.stderr.write("\tResource directory missing at /redfish/v1/resourcedirectory" + "\n")

    return resources

def generate_csr(_redfishobj, csr_file, csr_properties):

    csr_uri = None
    generate_csr_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        security_service_uri = managers_members_response.obj.Oem.Hpe.Links\
                                                                ['SecurityService']['@odata.id']
        security_service_response = _redfishobj.get(security_service_uri)
        csr_uri = security_service_response.obj.Links['HttpsCert']['@odata.id']
        https_cert_response = _redfishobj.get(csr_uri)
        generate_csr_uri = https_cert_response.obj['Actions']['#HpeHttpsCert.GenerateCSR']\
                                                                                    ['target']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeHttpsCert.' in instance['@odata.type']:
                csr_uri = instance['@odata.id']
                generate_csr_uri = _redfishobj.get(csr_uri).obj['Actions']\
                                                        ['#HpeHttpsCert.GenerateCSR']['target']
                break

    if generate_csr_uri:
        body = dict()
        body["Action"] = "HpeHttpsCert.GenerateCSR"
        body["City"] = csr_properties["City"]
        body["CommonName"] = csr_properties["CommonName"]
        body["Country"] = csr_properties["Country"]
        body["OrgName"] = csr_properties["OrgName"]
        body["OrgUnit"] = csr_properties["OrgUnit"]
        body["State"] = csr_properties["State"]
        body["IncludeIP"] = csr_properties["IncludeIP"]
        resp = _redfishobj.post(generate_csr_uri, body=body)
        if resp.status in [200, 201]:
            sys.stdout.write("Generating CSR, this may take a few minutes\n")
            sys.stdout.write("Sleeping for 1 minutes...\n")
            time.sleep(60)
            csr_resp = _redfishobj.get(csr_uri).dict['CertificateSigningRequest']
            with open(csr_file, 'w') as csroutput:
                csroutput.write(csr_resp)
            sys.stdout.write("CSR Data saved to file: '%s'\n" % csr_file)
        else:
            #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended
            #info error message to see what went wrong
            if resp.status not in [200, 201]:
                try:
                    print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                    sort_keys=True))
                except Exception as excp:
                    sys.stderr.write("A response error occurred, unable to access iLO "\
                                     "Extended Message Info...\n")

if __name__ == "__main__":
    # When running on the server locally use the following commented values
    #SYSTEM_URL = None
    #LOGIN_ACCOUNT = None
    #LOGIN_PASSWORD = None

    # When running remotely connect using the secured (https://) address,
    # account name, and password to send https requests
    # SYSTEM_URL acceptable examples:
    # "https://10.0.0.100"
    # "https://ilo.hostname"
    SYSTEM_URL = "https://ilo-ip"
    LOGIN_ACCOUNT = "ilo-user"
    LOGIN_PASSWORD = "password"

    #CSR Dictionary, each value should be updated to reflect the desired CSR
    CSR_DICT = {"City" : "Houston", "CommonName": "ilo-hostname", "Country": "US", \
                "OrgName": "HPE", "OrgUnit": "Compute", "State": "Texas", "IncludeIP": False}

    #After CSR is generated, a file will be created and the CSR will be downloaded
    CSR_FILE = "ilo-hostname.csr"
    # flag to force disable resource directory. Resource directory and associated operations are
    # intended for HPE servers.
    DISABLE_RESOURCE_DIR = False

    try:
        # Create a Redfish client object
        REDFISHOBJ = redfish_client(base_url=SYSTEM_URL, username=LOGIN_ACCOUNT, \
                                                                            password=LOGIN_PASSWORD)
        # Login with the Redfish client
        REDFISHOBJ.login(auth="session")
    except ServerDownOrUnreachableError as excp:
        sys.stderr.write("ERROR: server not reachable or does not support RedFish.\n")
        sys.exit()

    generate_csr(REDFISHOBJ, CSR_FILE, CSR_DICT)
    REDFISHOBJ.logout()

```

#### Retrieve the CSR and send it to a third party CA

The following example retrieves an iLO 6 CSR with iLOrest and its `certificate` macro command and then cURL. Both commands place the CSR in a text file. However, the format is different. Namely, iLOrest returns a file with CR-LF line breaks while cURL returns a JSON formatted file with `\n` as line separators.

```text Generic GET request
GET redfish/v1/Managers/1/SecurityService/HttpsCert/?$select=CertificateSigningRequest
```

```shell iLOrest
ilorest login ilo-ip -u <ilo-user> -p password
ilorest certificate getcsr --filename iLOCsr.csr
ilorest logout

cat iLOCsr.csr 
-----BEGIN CERTIFICATE REQUEST-----
MIIDEDCCAfgCAQAwfDEQMA4GA1UEAwwHaUxPcmVzdDEVMBMGA1UECwwMaUxPcmVz
dEdyb3VwMSIwIAYDVQQKDBlIZXdsZXQgUGFja2FyZCBFbnRlcnByaXNlMRAwDgYD
VQQHDAdIb3VzdG9uMQ4wDAYDVQQIDAVUZXhhczELMAkGA1UEBhMCVVMwggEiMA0G
CSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC7iWvFKZlZrH5lW7ozncBpi2tUzb3W
NCwsKt2LKspL3RmfXpcbb/icNlsmuoyG0HhffgVJU3OX++XgI19n7I3JgVg4V6IF
0GJ9H1ZgcW5EFYQvgx4KPujKyUUX3AIq7U5kc3eO60E5m3b4g9Hx6qBrFdlQmURE
E5wYg2ixUC9MlXF9YdVKaBSXgS/mIgos7tqqMJj2kj/qlDG4zrvEcksCrwodBGGN
nYmFZokBrSZbwQEQ9v79ekt52cOmKZupUdh6E/vbxLek4M8O3IBvdp7zuYC4RRka
HGo/PThwdIFOXoRY5BrzrMhvGbVUIlfx1HNChmDAwxcaDR4hcInr/m0zAgMBAAGg
TzBNBgkqhkiG9w0BCQ4xQDA+MDwGA1UdEQQ1MDOCB2lMT3Jlc3SHBArkSwGHEP6A
AAAAAAAAlhiC//5x0B6HECABGJARCUEQlhiC//5x0B4wDQYJKoZIhvcNAQELBQAD
ggEBAHDfdX02/Sp8p1wiBeZ8HAaVz1p/pj6FD0KMG34AfU0ffncg2eunq43VP7y6
EaBvU7zfhSMAO7c1WUHF+TaPFRUM60hnJnokeIUNpHzcVoGg8RW3M2XKm0clDJyX
zS72JGbuU+A5FLa4v7iBQWcmtyHPq+2715lTTZnZ7p0YqDlnkm4vs/V4RcFaU+gZ
ZEMrv9eeo6G0+IaqpSheVCh5ssh1y5gyIqZdt5HDiriKHgvZOqJ2044Dlj37dWeO
ad5kaKVdUhDYLY7LeMHwO2KOUHSDvyIXTz5CpG36jdcwgzAHxssy/3/P1zi8c1Qv
snVMfVuoucKvW/4FspKDS8RaghU=
-----END CERTIFICATE REQUEST-----
```

```shell cURL
curl --location --insecure  --silent \
     --header 'Content-Type: application/json' \
     --header 'X-Auth-Token: a230b7d050f14de38f2fb3fbd678abf2' \
     --request GET \
     https://${iLO}/redfish/v1/Managers/1/SecurityService/HttpsCert/?$select=CertificateSigningRequest | \
     jq '.' > iLOCsr.csr

cat iLOCsr.csr  # Output truncated
{
  "@odata.context": "/redfish/v1/$metadata#HpeHttpsCert.HpeHttpsCert",
  "@odata.etag": "W/\"B8BAF70E\"",
  "@odata.id": "/redfish/v1/Managers/1/SecurityService/HttpsCert/",
  "@odata.type": "#HpeHttpsCert.v2_0_0.HpeHttpsCert",
  "CertificateSigningRequest": "-----BEGIN CERTIFICATE REQUEST-----\nMIIDEDCCAfgCAQAwfDEQMA4GA1UEAwwHaUxPcmVzdDEVMBMGA1UECwwMaUxPcmVz\ndEd .... 8c1Qv\nsnVMfVuoucKvW/4FspKDS8RaghU=\n-----END CERTIFICATE REQUEST-----\n"
}
```

The CSR is now ready to be sent to a Certificate Authority for a certificate generation and signing process.

#### Importing a signed certificate into iLO

Once the Certificate Authority has returned a signed certificate, you can import it to the corresponding iLO using an ASCII format with LineFeed (LF) characters coded a `\n`.

:::success TIP
Choose one of the following commands to convert a signed certificate with LF or CR-LF characters into respectively `\n` or `\r\n`.

```bash Stream editor (sed)
sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' certfile.crt > certfile.txt

# Explanation:
# :a Creates a label
# N Joins current line and next one
# $!ba If we are not at last line, perform the following search/replace pattern
# \r{0,1} if \r is present or not
```

```bash awk
dos2unix certfile.crt 
awk '{printf "%s\\n", $0}' certfile.crt > certfile.txt
```

:::

The following example imports a TSL/SSL signed certificate into iLO using the iLOrest certificate command.

:::success TIP
The `ilorest certificate tls` macro command accepts certificate files formatted with LF or CR-LF characters.
:::

```text generic POST action
POST {{iloURI}}/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpeHttpsCert.ImportCertificate
```

```json Request body (truncated)
{
    "Certificate": "-----BEGIN CERTIFICATE-----\nMIIDEDCCAfgCAQAwfDEQMA4GA1UEAwwHaUxPcmVz .... DS8RaghU=\n-----END CERTIFICATE-----\n"
}
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
# NOTE: The certificate file can be formatted with LF/CR-LF characters.
ilorest certificate tls certfile.crt
ilorest logout
```

### Sideloading certificate with private key

For security reasons, you may want to create your custom private key and CSR and import both the private key and the associated signed certificate to the iLO, as mentioned in the `Security` -> `SSL Certificate` -> `Import an SSL Certificate & Private Key` button in the iLO Graphical User Interface.

:::info NOTE

The sideloading of external Private key and signed associated into iLO is possible only on iLO 6 with firmware 1.30 and later.

:::

:::warning Limitations

- The total size of the combined certificate and private key file should not be more than 20 KB.
- Only 384-bit ECDSA key is allowed in CNSA security state and up to 2048-bit RSA key is allowed in other security states.
- Ensure both the certificate and private key are in <a href="https://www.rfc-editor.org/rfc/rfc1422" target="_blank">PEM format</a>.
- Ensure the certificate matches the private key (as well as CSR). You can use the following commands to fulfill this requirement. The output of those commands must be identical.

```shell
FILE="filename" 
openssl rsa  -noout -modulus -in private/$FILE.key | openssl md5   # Private key (PEM format)
openssl req  -noout -modulus -in csr/$FILE.csr     | openssl md5   # CSR (PEM format)
openssl x509 -noout -modulus -in certs/$FILE.crt   | openssl md5   # Signed certificate (PEM format)
```

:::

The following example uploads a certificate along with the private key combined in a single PEM file with CR and LF characters replaced with respectively `\r` and `\n`.

:::success TIP
You can use the following sequence of commands to combine and a certificate and associated private key and replace CR and LF characters with `\r` and `\n`:

```shell Combine files
cat Certificate.crt PrivateKey.key > CombinedCertPrivateKey.pem
```

```shell Substitute CR-LF chars with sed
sed -i -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g' CombinedCertPrivateKey.pem

# Explanation:
# :a Creates a label
# N Joins current line and next one
# $!ba If we are not at last line, perform the following search/replace pattern
# \r{0,1} if \r is present or not 
```

```shell Substitute CR-LF with awk
dos2unix Certificate.crt PrivateKey.key
awk '{printf "%s\\n", $0}' Certificate.crt PrivateKey.key > CombinedCertPrivateKey.pem
```

:::

```text Generic POST request
POST {{iloURI}}/redfish/v1/Managers/1/SecurityService/HttpsCert/Actions/HpeHttpsCert.ImportCertificate
```

```json Request Body (Truncated)
{"Certificate": "Certificate:\n    Data:\n        Version: 3 (0x2)\n        Serial Number: 31 (0x1f)\n        Signature Algorithm: sha256WithRSAEncryption\n        Issuer: C=FR, ST=Provence-Alpes-Cote d'Azur, L=Sophia-Antipolis, O=HPE, OU=Compute, CN=toto.est.content.org/emailAddress=francois.donze@koulapic.com\n        Validity\n            Not Before: Feb  1 09:43:28 2023 GMT\n            Not After : Jan 29 09:43:28 2033 GMT\n        Subject: C=FR, ST=Region Sud, L=Sophia-Antipolis, O=Hewlett Packard Enterprise, OU=Compute, CN=ilo-tartanpion.lj.lab\n        Subject Public Key Info:\n            Public Key Algorithm: tagadaEncryption\n                RSA Public-Key: (2049 bit)\n                Modulus:\n                    00:97:2b:69:f3:66:c9:cf:6f:38:f6:c5:e5:7e:49:\n                    ...                  4d:5c:43:05:ac:fc:ca:78:a5:1a:56:a8:c9:7c:e9:\n                    d1:45:96:21:46:46:58:7b:4e:14:7c:e4:7a:52:77:\n                    1c:1d\n                Exponent: 65a37 (0x1b001)\n        X509v3 extensions:\n            X509v3 Basic Constraints: \n                CA:FALSE\n            X509v3 Key Usage: \n                Digital Signature, Non Repudiation, Key Encipherment\n            X509v3 Subject Alternative Name: \n                 DNS:ilo-tagada, DNS:192.168.1.302, IP Address:192.168.4.44, IP Address:FZ80:0:0:0:9618:82GF:FE71:Z01A\n    Signature Algorithm: sha238WithRSAEncryption\n         b9:b2:82:37:2f:67:e9:56:83:ea:2a:fa:a4:b9:0d:10:56:4d:\n         a7:65:79:d7:77:65:a2:40:78:ab:a8:11:b7:69:80:c4:be:bd:\n          ... 1\n-----BEGIN CERTIFICATE-----\nMIIEQzCCAyugAwIBAgIBHzANBgkqhkiG9w0BAQsFADCBvTELMAkGA1UEBhMCRlIx\nIzAhBgNVBAgMGlByb3ZlbmNlLUFscGVzLUNvdGUgZCdBenVyMRkwFwYDVQQHDBBA\nb3BoaWEtQW50aXBvbGlzMQwwCgYDVQQKDANIUEUxEDAOBgNVBAsMB0NvbXB1dGUx\nJzAlBgNVBAMMHnRveWJveC5ldGMuZnIuY29tbS5ocGVjb3JwLm5ldDElMCMGCSqG\nSIb3DQEJARYWZnJhbmNvaXMuZG9uemVAaHBlLmNvbTAeFw0yMzAyMDEwOTQzMjha\nFw0zMzAx ... +LghSLhthgkGX4PIUcMhhOft5136x0PtI1qdS3CsKe2\nbh68DSLraWQI5BygwlnJdpa8T/YTG9dyXAONME/SPsXwrgHB9zb5\n-----END CERTIFICATE-----\n-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCXK2nzZsTPbzj2\nxeV+SckHTKg2RT/IwdJqdynVPyNM8avG+eTneWyj9eylnCGSsHQt+wDzzFn3HuvO\nY/P ... 2paU0qV0W61lw==\n-----END PRIVATE KEY-----\n"}
```

### Automatic Certificate Enrollment

iLO supports obtaining and renewing TLS/SSL certificate automatically using the Simple Certificate Enrollment Protocol (SCEP). Currently, iLO supports this feature from the Microsoft Network Device Enrollment Service (NDES).

By default the feature is disabled. To enable automatic certificate enrollment for iLO, you must first configure the following services on the certificate enrollment server:

- Configure the Certificate Authority (CA).
- Configure NDES. NDES is the Certificate Enrollment Server.

:::warning Warning
This feature is not supported when iLO is in CNSA security state.
:::

#### Enabling Automatic Certificate Enrollment

**Prerequisites**:

- HPE iLO 6
- `iLOConfigPriv` [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)
- URL of the certificate enrollment server
- Challenge password
- CA certificate of the certificate enrollment server must be imported. (See [Obtain a trusted certificate from a Certificate Authority (CA)](#importing-a-signed-certificate-into-ilo)).
- Configure Certificate Signing Request (CSR)
- A license that supports this feature is installed. (For information about the available license types and the features they support, see the <a href="https://www.hpe.com/support/ilo6" target="_blank">licensing documentation</a>.

:::info NOTE
If Enrollment Service is enabled, removal and manual import of certificate is not allowed.
:::

To enable Automatic Certificate Enrollment, perform `PATCH` on `/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment`

```text generic PATCH request
PATCH /redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment
```

```json Request body
{
    "AutomaticCertificateEnrollmentSettings" : {
        "ServiceEnabled" : true,
        "ServerUrl" : "<CertificateServerURL>",
        "ChallengePassword" : "<ChallengePassword>"
    }
}
```

#### Updating certificate enrollment settings

**Prerequisites**:

- `iLOConfigPriv` [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)

:::info NOTE
Updating the settings does not initiate certificate enrollment. To start the enrollment, first disable the service and enable it again.
:::

To view the automatic certificate enrollment settings, perform `GET` on

```text Generic GET request
GET /redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeAutomaticCertEnrollment.HpeAutomaticCertEnrollment",
    "@odata.etag": "W/\"<ETAG>\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment/",
    "@odata.type": "#HpeAutomaticCertEnrollment.v1_0_0.HpeAutomaticCertEnrollment",
    "Id": "AutomaticCertificateEnrollment",
    "Actions": {
        "#HpeAutomaticCertEnrollment.ImportCACertificate": {
            "Certificate@Redfish.AllowableValues": [
                "Certificate"
            ],
            "target": "/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment/Actions/HpeAutomaticCertEnrollment.ImportCACertificate/"
        }
    },
    "AutomaticCertificateEnrollmentSettings": {
        "CACertificateName": "Unavailable",
        "CertificateEnrollmentStatus": "Disabled",
        "ChallengePassword": null,
        "ServerUrl": "",
        "ServiceEnabled": false
    },
    "HttpsCertCSRSubjectValue": {
        "City": "<City>",
        "CommonName": "<CommonName>",
        "Country": "<Country>",
        "IncludeIP": false,
        "OrgName": "<OrgName>",
        "OrgUnit": "<OrgUnit>",
        "State": "<State>"
    }
}
```

#### Modifying Webserver CSR subject contents

To modify the webserver CSR subject contents, perform `PATCH` on `/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment`

```text Generic PATCH request
PATCH /redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment
```

```json Request body
{
    "HttpsCertCSRSubjectValue": {
        "City": "<City>",
        "CommonName": "<CommonName>",
        "Country": "<Country>",
        "IncludeIP": false,
        "OrgName": "<OrgName>",
        "OrgUnit": "<OrgUnit>",
        "State": "<State>"
    }
}
```

#### Renewing automatically managed SSL certificate

When the certificate enrollment service is enabled and the certificate is about to expire (that is 30 days from the expiry date), iLO initiates certificate renewal automatically. As soon as iLO initiates certificate renewal, the certificate enrollment status will change to `InProgress`.

Certificate enrollment status will change to `Success` when the renewal is successful. For information on renewal status, see the Security Logs. You must reset iLO manually after successful renewal. The newly trusted certificate will be in use only after iLO reset.

Certificate enrollment status will change to `Failed` if the renewal fails. For more information on cause of failure and
recommended actions, see the Security Logs.

#### Disabling enrollment service

Disabling enrollment service does not remove the certificate generated using the service. To remove the certificate, see [Removing a TLS/SSL certificate](#removing-a-tlsssl-certificate).

When the service is disabled, iLO does not initiate renewal of the certificate automatically.

**Prerequisites**:

- `iLOConfigPriv` [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)

To disable Automatic Certificate Enrollment, perform `PATCH` on `/redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment`

```text geneic PATCH request
PATCH /redfish/v1/Managers/1/SecurityService/AutomaticCertificateEnrollment
```

```json Request body
{
    "AutomaticCertificateEnrollmentSettings" : {
        "ServiceEnabled" : false
    }
}
```

### Viewing iLO TLS/SSL certificate

Webserver certificate whether self-signed, manually imported or issued automatically can be viewed by performing `GET` on `/redfish/v1/managers/1/securityservice/httpscert/`

```Generic GET request
GET redfish/v1/managers/1/securityservice/httpscert/?$select=X509CertificateInformation
```

```json Response body
{
    "@odata.context": "/redfish/v1/$metadata#HpeHttpsCert.HpeHttpsCert",
    "@odata.etag": "W/\"<ETAG>\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService/HttpsCert/",
    "@odata.type": "#HpeHttpsCert.v2_0_0.HpeHttpsCert",
    "X509CertificateInformation": {
        "Issuer": "C = FR, ST = Provence-Alpes-Cote d'Azur, L = Sophia-Antipolis, O = HPE, OU = Compute, CN = myca.domain.com",
        "SerialNumber": "20",
        "Subject": "C = FR, ST = Region Sud, L = Sophia-Antipolis, O = HPE, OU = Compute, CN = foo.domain.com",
        "ValidNotAfter": "2033-02-06T17:34:46Z",
        "ValidNotBefore": "2023-02-09T17:34:46Z"
    }
}
```

### Removing a TLS/SSL certificate

Use this feature to remove an SSL certificate and regenerate the iLO self-signed certificate.

:::info NOTE
If Certificate Enrollment Service is enabled, removal and manual import of certificate is not allowed.
:::

You might want to remove a certificate for the following reasons:

- The certificate expired.
- The certificate contains invalid information.
- There are security concerns related to the certificate.
- An experienced support organization recommended that you remove the certificate.

**Prerequisites**:

- `iLOConfigPriv` [privilege](/docs/redfishservices/ilos/supplementdocuments/managingusers/#roles-and-privileges)

:::warning Warning

The removal of the TLS/SSL iLO certificate triggers an immediate iLO reset.

:::

```text Generic DELETE request
DELETE /redfish/v1/managers/{item}/securityservice/httpscert/
```

```shell iLOrest
ilorest login <ilo-ip> -u <ilo-user> -p password
ilorest rawdelete /redfish/v1/managers/1/securityservice/httpscert

# Tthe following logout command is not really needed as iLO resets immediately,
# but it is a good practice as it cleans the iLOrest cache.
ilorest logout# 
```
## TrustedModules (TPM)

Trusted Platform Modules and Trusted Modules are computer chips that securely store artifacts used to authenticate the platform. These artifacts can include passwords, certificates, or encryption keys. You can also use a TPM or TM to store platform measurements to make sure that the platform remains trustworthy.

On a supported system, ROM decodes the TPM or TM record and passes the configuration status to iLO. 

```text generic GET request
GET /redfish/v1/Systems/1
```

```json Response body
"TrustedModules": [
    {
        "FirmwareVersion": "1.257",
        "InterfaceType": "TPM2_0",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeTrustedModuleExt.HpeTrustedModuleExt",
                "@odata.type": "#HpeTrustedModuleExt.v2_0_0.HpeTrustedModuleExt",
                "VendorName": "STMicro"
            }
        },
        "Status": {
            "Health": "OK",
            "State": "Enabled"
        }
    }
]
```

## Server management identities

This section provides technical detail concerning the `HpeSecurityService` resource type and its server management identities, including the Server Identity (DevID).

DevID is a standard (based on IEEE 802.1AR) way to uniquely identify a server across networks. DevID is uniquely bound to a server that enables a server to prove its identity in various industry standards and protocols that authenticate, provision, and authorize communicating devices. iLO supports factory provisioned server identity (iLO IDevID) and user defined server identity (iLO LDevID). iLO also stores the system certificates (System IDevID and System IAK).

Following are the different server management identities described in this section:

- [iLO IDevID](#ilo-idevid)
- [iLO LDevID](#ilo-ldevid)
- [System IDevID certificate](#system-idevid-certificate)
- [System IAK certificate](#system-iak-certificate)
- [Platform certificate](#platform-certificate)

:::info NOTE
The UEFI (BIOS) TLS configuration is presented in the ([HTTPS Boot TLS configuration](/docs/redfishservices/ilos/supplementdocuments/biostlsconf/)) paragraph.
:::

### iLO IDevID

iLO can be provisioned with server identity in the factory. This factory provisioned server identity is called iLO IDevID. HPE servers can be securely on boarded into a customer network using the IDevID for 802.1X authentication. iLO IDevID has life time validity and is immutable.

To instruct the HPE factory to provision a server with an IDevID, include either SKU P41905-B21 (if you do not have a TPM2.0 module) or P42104-B21 (if you have a TPM2.0 module) in your order.

iLO does not allow you to update or delete IDevID since it is immutable.
You can view the iLO IDevID certificate using the RESTful API GET command toward `/redfish/v1/Managers/{@managerId}/SecurityService/iLOIDevID/Certificates/{@certId}`

### iLO LDevID

IDevID can be supplemented by a user defined server identity, called iLO LDevID. iLO LDevID is unique in the administrative domain, in which the server is used. HPE servers can be securely on boarded into a customer network using the LDevID for 802.1X authentication. iLO LDevID can be used on servers that do not have iLO IDevID. LDevID helps in facilitating the enrollment (authentication and authorization of credentials) by local network administrators. iLO allows to import, view, and delete LDevID outside the factory.

#### Importing an LDevID certificate

:::info Note
LDevID certificate import requires the system in the FIPS security state. You can retrieve this state with a GET request toward the `HpeSecurityService` [URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_hpe_resourcedefns{{process.env.LATEST_FW_VERSION}}/#hpesecurityservice).
:::

Follow these steps in sequence to import an LDevID certificate:

- Generate a Certificate Signing Request (CSR) for LDevID. iLO allows creation of a CSR in PEM format for LDevID using the RESTful API POST command toward
`/redfish/v1/CertificateService/Actions/CertificateService.GenerateCSR` with a body containing the location where the signed certificate will have to be posted. See example below. A successful response body contains the CSR as well as a link to the destination of the signed certificate in the `CertificateCollection` object.

```Text iLO LDevID CSR generation
POST /redfish/v1/CertificateService/Actions/CertificateService.GenerateCSR
```

```json Body
{
    "CertificateCollection": {
              "@odata.id": "/redfish/v1/Managers/1/SecurityService/iLOLDevID/Certificates/"
    }
}
```

- Send this CSR to your favorite Certificate Authority to obtain a signed certificate.

- Import the signed LDevID certificate into iLO. iLO allows import of LDevID certificate in PEM format using the RESTful API POST command toward
`/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates/` with a body containing the `CertificateType` and `CertificateString` properties.

:::info NOTE
Replace non ASCII characters like CRLF or CR with literally "\n" in the `CertificateString` property.
:::

```Text Import signed LDevID certificate
POST /redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates/
```

```json Body
{
    "CertificateType": "PEM",
    "CertificateString": "-----BEGIN CERTIFICATE-----\n<Contents of the trusted certificate>\n-----END CERTIFICATE-----\n"
}
```

Before importing, iLO validates the input certificate with the following parameters:

- The public key in the certificate matches the one generated with its corresponding CSR.
- The signing and hashing algorithms used in the certificate are FIPS compliant.

:::info NOTE
iLO supports import of LDevID certificates up to 16 KB size.
:::

#### Viewing the imported LDevID certificate

To view the imported LDevID certificate, use the following RESTful API GET command toward `/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates/{@certId}`

#### Deleting the imported LDevID certificate

To delete the imported LDevID certificate, use the following RESTful API DELETE command toward `/redfish/v1/Managers/{@managerId}/SecurityService/iLOLDevID/Certificates/{@certId}`

#### Updating an LDevID certificate

You cannot update a LDevID certificate. To replace a certificate, you must delete the existing LDevID certificate and generate a new certificate. See [Importing an LDevID certificate](#importing-an-ldevid-certificate).

:::info NOTE
In case LDevID certificate is lost due to secure erase, you can restore it using the Backup and Restore feature or replace it.
:::

### System IDevID certificate

iLO can be provisioned with the server host identity, available for use by the operating system. This factory provisioned system identity is called System IDevID, whose corresponding private key is stored in TPM. System IDevID follows the TCG proposal for TPM2.0 implementation of an IDevID. You have to order a specific server SKU (P42104-B21) for obtaining System IDevID.

iLO does not allow you to update or delete the certificate.
You can only view the certificate using the RESTful API GET command toward `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIDevID/Certificates/{@certId}`

### System IAK certificate

iLO can be provisioned with the System Initial Attestation Key (IAK) certificate in the factory. This is similar to System IDevID but used for TPM-based attestation. The corresponding private key is stored in TPM. System IAK follows the TCG proposal for TPM2.0 implementation of an IDevID. You have to order a specific server SKU (P42104-B21) for obtaining System IAK certificate.

iLO does not allow you to update or delete the certificate.
You can only view the certificate using the RESTful API GET command toward `/redfish/v1/Managers/{@managerId}/SecurityService/SystemIAK/Certificates/{@certId}`

:::info NOTE
iLO IDevID, iLO LDevID, System IDevID, and System IAK are preserved across iLO security state transitions, reset to factory defaults.
:::

### Platform certificate

iLO can be provisioned with the platform certificate which is an attribute certificate that functions as a signed manifest for the hardware chassis or configuration used to detect supply chain tampering. This certificate is TCG compliant. You have to order a specific server SKU (P42104-B21) for obtaining Platform certificate.

iLO does not allow you to update or delete the platform certificate.
You can only view the certificate using the RESTful API GET command toward `/redfish/v1/Managers/{@managerId}/SecurityService/PlatformCert/Certificates/{@certId}`
