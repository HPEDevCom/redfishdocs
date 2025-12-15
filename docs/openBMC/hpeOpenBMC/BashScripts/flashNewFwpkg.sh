#/usr/bin/bash
# Work in Progress
#
# This script is an attempt to upload and flash
# a .fwpkg package with decoupled meta data.
#
#
# ToDo:
#     * As of now, file(s) are sent, but respons is 400/Bad request !
#     * Are file1 and file2 the right form field?
#     * Get inspired from /Git-Repo/CloneOfExternal-HpePythonRedfishLibrary/examples/Redfish/flash_firmware_by_uefi.py

iLO=ilo-fdz360g12-hst
User=demopaq
Passwd=password

SessionKey=$1


sc="ilo7_1.16.00.fwpkg"
meta_sc="ilo7_1.16.00.json"
httpPushUri="cgi-bin/uploadFile"


curl -vv --insecure --location --silent \
	-X POST "https://${iLO}/${httpPushUri}" \
        --header "X-Auth-Token: ${SessionKey}" \
        --header 'Accept: application/json' \
        --header "Cookie: sessionKey=${SessionKey}" \
        --header 'Expect;' \
        --form sessionkey="${SessionKey}" \
	--form file=@"${sc};type=application/octet-stream"  \
        --form compsig=@"${meta_sc}" 

