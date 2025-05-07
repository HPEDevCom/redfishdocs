
# Examples

{% admonition type="info" name="NOTE" %}
Successful creation, modification or deletion of a resource will usually result in a response code of 200 or 201.
An unsuccessful attempt will likely result in a 400 error code with a more detailed error message within the body of
the response, [‘@Message.ExtendedInfo](mailto:'@Message.ExtendedInfo)’.
{% /admonition %}

{% admonition type="info" name="NOTE" %}
Examples showcasing Redfish standard properties and Actions will work for any BMC implementing Redfish.
Any HPE OEM extensions are labeled in the examples as such.
{% /admonition %}

The [Redfish](https://github.hpe.com/intelligent-provisioning/python-redfish-library/tree/master/examples/Redfish) and
[Legacy\_Rest](https://github.hpe.com/intelligent-provisioning/python-redfish-library/tree/master/examples/Legacy_Rest) folders
contain many examples for performing different iLO tasks using the Redfish API and Legacy RESTful API respectively.

## Redfish Example Reference Table

| Example| Link |
| --- | --- |
| Add an iLO Manager Account | [Redfish\_add\_user\_account](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/add_user_account.py) |
| Revert the BIOs to default values | [Redfish\_bios\_revert\_default](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/bios_revert_default.py) |
| Change the BIOs settings.| [Redfish\_change\_bios\_setting](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/change_bios_setting.py) |
| Change the boot order for HPE iLO systems.  | [Redfish\_change\_boot\_order](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/change_boot_order.py) |
| Change the temporary boot order.  | [Redfish\_change\_temporary\_boot\_order](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/change_temporary_boot_order.py) |
| Clear AHS data for HPE iLO systems.  | [Redfish\_clear\_ahs\_data](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/clear_ahs_data.py) |
| Clear IEL or IML Logs for HPE iLO systems.  | [Redfish\_clear\_ilo\_IEL\_IML\_log](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/clear_ilo_IEL_IML_log.py) |
| Gather the computer system details.  | [Redfish\_computer\_details](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/computer_details.py) |
| Configure SNMP for HPE iLO systems.  | [Redfish\_configure\_snmp](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/configure_snmp.py) |
| Enable NTP servers for HPE iLO systems.  | [Redfish\_enable\_ntp\_servers](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/enable_ntp_servers.py) |
| Enable secure boot.  | [Redfish\_enable\_secure\_boot](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/enable_secure_boot.py) |
| Expand data responses.  | [Redfish\_expand\_data](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/expand_data.py) |
| Clear IEL or IML Logs for HPE iLO systems.  | [Redfish\_find\_ilo\_mac\_address](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/find_ilo_mac_address.py) |
| Generate a certificate signing request for HPE iLO systems.  | [Redfish\_generate\_csr](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/generate_csr.py) | [Redfish\_generate\_csr](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/generate_csr.py)
| Gather ESKM data for HPE iLO systems.  | [Redfish\_get\_ESKM](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_ESKM.py) |
| Gather the Logical Drives on an HPE iLO system.  | [Redfish\_get\_LogicalDrives](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_LogicalDrives.py) |
| Gather the Smart Array encryption settings on HPE iLO based systems.  | [Redfish\_get\_SmartArray\_EncryptionSettings](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_SmartArray_EncryptionSettings.py) |
| Gather AHS data for HPE iLO systems.  | [Redfish\_get\_ahs\_data](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_ahs_data.py) |
| Obtain the base message registry.  | [Redfish\_get\_base\_registry](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_base_registry.py) |
| Obtain the Manager IP.  | [Redfish\_get\_ilo\_ip](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_ilo_ip.py) |
| Obtain the Manager NIC data.  | [Redfish\_get\_ilo\_nic](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_ilo_nic.py) |
| Obtain an iLO license key for HPE iLO systems.  | [Redfish\_get\_license\_key](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_license_key.py) |
| Obtain the power metrics average on HPE iLO systems.  | [Redfish\_get\_powermetrics\_average](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_powermetrics_average.py) |
| Obtain iLO information.  | [Redfish\_get\_resource\_directory](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_resource_directory.py) |
| Obtain iLO utility information, such as iLO generation, version and resource directory for HPE iLO systems.  | [Redfish\_ilorest\_util](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/ilorest_util.py) |
| Obtain schema data on any BMC with schemas available.  | [Redfish\_get\_schema](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/get_schema.py) |
| Import an SSL certificate for HPE iLO systems.  | [Redfish\_import\_ssl](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/import_ssl.py) |
| Modify a user account.  | [Redfish\_modify\_user\_account](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/modify_user_account.py) |
| Mount virtual media for HPE iLO systems.  | [Redfish\_mount\_virtual\_media\_iso](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/mount_virtual_media_iso.py) |
| Create Redfish client.  | [Redfish\_quickstart\_redfish](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/quickstart_redfish.py) |
| Reboot a server.  | [Redfish\_reboot\_server](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/reboot_server.py) |
| Remove a user account.  | [Redfish\_remove\_account](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/remove_account.py) |
| Reset the ESKM event log for HPE iLO systems.  | [Redfish\_reset\_ESKM\_eventlog](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/reset_ESKM_eventlog.py) |
| Reset a Manager.  | [Redfish\_reset\_ilo](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/reset_ilo.py) |
| Reset a sever.  | [Redfish\_reset\_server](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/reset_server.py) |
| Manually manage sessions with Redfish | [Redfish\_sessions](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/sessions.py) |
| Set the primary ESKM key server properties for HPE iLO systems.  | [Redfish\_set\_ESKM\_PrimaryKeyServer](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_ESKM_PrimaryKeyServer.py) |
| Set the ESKM username and password for HPE iLO systems.  | [Redfish\_set\_ESKM\_username\_password](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_ESKM_username_password.py) |
| Set active Manager NIC.  | [Redfish\_set\_active\_ilo\_nic](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_active_ilo_nic.py) |
| Set an ISCSI boot instance for HPE iLO systems.  | [Redfish\_set\_bios\_iscsi](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_bios_iscsi.py) |
| Set the BIOS password for HPE iLO systems.  | [Redfish\_set\_bios\_password](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_bios_password.py) |
| Set the Manager ethernet interface static IP.  | [Redfish\_set\_ethernet\_management\_iface\_static\_ip](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_ethernet_management_iface_static_ip.py) |
| Set the NTP servers for HPE iLO systems.  | [Redfish\_set\_ilo\_ntp_servers](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_ilo_ntp_servers.py) |
| Set the time zone for HPE iLO systems.  | [Redfish\_set\_ilo\_timezone](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_ilo_timezone.py) |
| Add a license key for HPE iLO systems.  | [Redfish\_set\_license\_key](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_license_key.py) |
| Set the server asset tag.  | [Redfish\_set\_server\_asset\_tag](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_server_asset_tag.py) |
| Configure SNMP alert for HPE iLO systems.  | [Redfish\_set\_snmp\_alert](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_snmp_alert.py) |
| Set the UID light.  | [Redfish\_set\_uid\_light](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/set_uid_light.py) |
| Provide the firmware inventory on HPE iLO systems.  | [Redfish\_software\_firmware\_inventory](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/software_firmware_inventory.py) |
| Test a connection to the ESKM system for HPE iLO systems.  | [Redfish\_test\_ESKM\_connection](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/test_ESKM_connection.py) |
| Update the firmware by using an HTTP URL.  | [Redfish\_update\_ilo\_firmware](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/update_ilo_firmware.py) |
| Upload the firmware to the iLO Repository for flashing.  | [Redfish\_upload\_firmware\_ilo\_repository](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/upload_firmware_ilo_repository.py) |
| Upload a firmware component with a size less than 32 GB and associated compsig signature file to the iLO repository.  | [Redfish\_upload\_firmware\_ilo\_repository\_with\_compsig](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/upload_firmware_ilo_repository_with_compsig.py) |

## Legacy Rest Example Reference Table

| Example | Link |
| --- | --- |
| Add an iLO user account.  | [Legacy\_Rest\_add\_ilo\_user\_account](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/add_ilo_user_account.py) |
| Revert the BIOs to default values.  | [Legacy\_Rest\_bios\_revert\_default](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/bios_revert_default.py) |
| Change the BIOs settings.  | [Legacy\_Rest\_change\_bios\_setting](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/change_bios_setting.py) |
| Change the boot order for HPE iLO systems.  | [Legacy\_Rest\_change\_boot\_order](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/change_boot_order.py) |
| Change the temporary boot order.  | [Legacy\_Rest\_change\_temporary\_boot\_order](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/change_temporary_boot_order.py) |
| Clear the AHS data.  | [Legacy\_Rest\_clear\_ahs\_data](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/clear_ahs_data.py) |
| Clear IEL or IML Logs for HPE iLO systems.  | [Legacy\_Rest\_clear\_ilo\_event\_log](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/clear_ilo_event_log.py) |
| Clear the IML.  | [Legacy\_Rest\_clear\_iml](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/clear_iml.py) |
| Gather the computer system details.  | [Legacy\_Rest\_computer\_details](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/computer_details.py) |
| Configure SNMP for HPE iLO systems.  | [Legacy\_Rest\_configure\_snmp](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/configure_snmp.py) |
| Dump the ESKM event log.  | [Legacy\_Rest\_dump\_eskm\_event\_log](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/dump_eskm_event_log.py) |
| Dump the iLO event log.  | [Legacy\_Rest\_dump\_ilo\_event\_log](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/dump_ilo_event_log.py) |
| Dump the Manager NIC data.  | [Legacy\_Rest\_dump\_ilo\_nic](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/dump_ilo_nic.py) |
| Dump the IML.  | [Legacy\_Rest\_dump\_iml](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/dump_iml.py) |
| Enables secure boot.  | [Legacy\_Rest\_enable\_secure\_boot](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/enable_secure_boot.py) |
| Clear IEL or IML Logs for HPE iLO systems.  | [Legacy\_Rest\_find\_ilo\_mac\_address](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/find_ilo_mac_address.py) |
| Generate a certificate signing request for HPE iLO systems.  | [Legacy\_Rest\_generate\_csr](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/generate_csr.py) |
| Gather ESKM data for HPE iLO systems.  | [Legacy\_Rest\_get\_ESKM](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_ESKM.py) |
| Gather the encryption settings on HPE iLO systems.  | [Legacy\_Rest\_get\_EncryptionSettings](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_EncryptionSettings.py) |
| Obtain the logical drives.  | [Legacy\_Rest\_get\_LogicalDrives](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_LogicalDrives.py) |
| Gather AHS data for HPE iLO systems.  | [Legacy\_Rest\_get\_ahs\_data](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_ahs_data.py) |
| Obtain the base message registry.  | [Legacy\_Rest\_get\_base\_registry](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_base_registry.py) |
| Obtain the CSR.  | [Legacy\_Rest\_get\_csr](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_csr.py) |
| Obtain the Manager IP.  | [Legacy\_Rest\_get\_ilo\_ip](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_ilo_ip.) |
| Obtain the Manager NIC data.  | [Legacy\_Rest\_get\_ilo\_nic](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_ilo_nic.py) |
| Obtain an iLO license key for HPE iLO systems.  | [Legacy\_Rest\_get\_license\_key](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_license_key.py) |
| Obtain the power metrics average on HPE iLO systems | [Legacy\_Rest\_get\_powermetrics\_average](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_powermetrics_average.py) |
| Obtain the iLO information, such as iLO generation, version, and resource directory for HPE iLO systems.  | [Legacy\_Rest\_get\_resource\_directory](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_resource_directory.py)
| Obtain legacy resource directory. | [Legacy\_Rest\_get\_resource\_directory](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_resource_directory.py) |
| Obtain the schema data on any system with schemas on system.  | [Legacy\_Rest\_get\_schema](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/get_schema.py) |
| Import an SSL certificate for HPE iLO systems.  | [Legacy\_Rest\_import\_ssl](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/import_ssl.py) |
| Modify a user account.  | [Legacy\_Rest\_modify\_ilo\_user\_account](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/modify_ilo_user_account.py) |
| Mount virtual media for HPE iLO systems.  | [Legacy\_Rest\_mount\_virtual\_media\_iso](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/mount_virtual_media_iso.py) |
| Remove an iLO user account.  | [Legacy\_Rest\_remove\_ilo\_account](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/remove_ilo_account.py) |
| Reset the ESKM event log for HPE iLO systems.  | [Legacy\_Rest\_reset\_ESKM\_eventlog](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/reset_ESKM_eventlog.py) |
| Reset iLO.  | [Legacy\_Rest\_reset\_ilo](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/reset_ilo.py) |
| Reset a sever.  | [Legacy\_Rest\_reset\_server](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/reset_server.py) |
| Create a session.  | [Legacy\_Rest\_sessions](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/sessions.py) |
| Set active Manager NIC.  | [Legacy\_Rest\_set\_active\_ilo\_nic](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_active_ilo_nic.py) |
| Set the DHCP boot instance for HPE iLO systems.  | [Legacy\_Rest\_set\_bios\_dhcp](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_bios_dhcp.py) |
| Set the primary ESKM key server for HPE iLO systems.  | [Legacy\_Rest\_set\_ESKM\_PrimaryKeyServer](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_ESKM_PrimaryKeyServer.py) |
| Set the ESKM username and password for HPE iLO systems.  | [Legacy\_Rest\_set\_ESKM\_username\_password](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_ESKM_username_password.py) |
| Set the NTP servers for HPE iLO systems.  | [Legacy\_Rest\_set\_Ilo\_ntp\_servers](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_Ilo_ntp_servers.py) |
| Set an ISCSI boot instance for HPE iLO systems.  | [Legacy\_Rest\_set\_bios\_iscsi](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_bios_iscsi.py) |
| Set the BIOS password for HPE iLO systems.  | [Legacy\_Rest\_set\_bios\_password](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_bios_password.py) |
| Set the BIOS service.  | [Legacy\_Rest\_set\_bios\_service](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_bios_service.py) |
| Set the UEFI shell startup.  | [Legacy\_Rest\_set\_bios\_uefi\_shell\_startup](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_bios_uefi_shell_startup.py) |
| Set the URL boot file.  | [Legacy\_Rest\_set\_bios\_url\_boot\_file](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_bios_url_boot_file.py) |
| Set the time zone for HPE iLO systems.  | [Legacy\_Rest\_set\_ilo\_timezone](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_ilo_timezone.py) |
| Add a license key for HPE iLO systems.  | [Legacy\_Rest\_set\_license\_key](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_license_key.py) |
| Set the server asset tag.  | [Legacy\_Rest\_set\_server\_asset\_tag](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_server_asset_tag.py) |
| Set the UID light.  | [Legacy\_Rest\_set\_uid\_light](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/set_uid_light.py) |
| Test a connection to the ESKM system for HPE iLO systems.  | [Legacy\_Rest\_test\_ESKM\_connection](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/test_ESKM_connection.py) |
| Update the firmware by using an HTTP URL.  | [Legacy\_Rest\_update\_ilo\_firmware](https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Legacy_Rest/update_ilo_firmware.py) |

## Add iLO Manager Account

Add an iLO Manager Account based on permissions (iLO 4 and iLO 5) or role ID (iLO 5).

  {% tabs %}
{% tab label="Example" %}

```python Example
def add_ilo_user_account(_redfishobj, new_loginname, new_username, new_password, role_id, \
                     privilege_dict):
resource_instances = get_resource_directory(_redfishobj)

if DISABLE_RESOURCE_DIR or not resource_instances:
    #resource directory is not available so we will navigate through paths manually to obtain
    #account info
    account_service_uri = _redfishobj.root.obj['AccountService']['@odata.id']
    account_service_response = _redfishobj.get(account_service_uri)
    account_collection_uri = account_service_response.obj['Accounts']['@odata.id']
    #Add via role id
    body = {"RoleId": role_id}
else:
    #obtain all account instances from resource directory
    for instance in resource_instances:
        if '#ManagerAccountCollection.' in instance['@odata.type']:
            account_collection_uri = instance['@odata.id']
    body = {"Oem": {"Hpe": {"Privileges": {}}}}
    #HPE server, so add via privileges
    for priv in privilege_dict:
        body["Oem"]["Hpe"]["Privileges"][priv] = privilege_dict[priv]
    #Add login name
    body["Oem"]["Hpe"]["LoginName"] = new_loginname

#Fill in the rest of the payload
body["UserName"] = new_username
body["Password"] = new_password

#We pass the URI and the dictionary as a POST command (part of the redfish object)
resp = _redfishobj.post(account_collection_uri, body)

#If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
#error message to see what went wrong
if resp.status == 400:
    try:
        print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, sort_keys=True))
    except Exception:
        sys.stderr.write("A response error occurred, unable to access iLO Extended Message "\
                         "Info...")
elif not resp.status in [200, 201]:
    sys.stderr.write("An http response of '%s' was returned.\n" % resp.status)
else:
    print("Success!\n")
    print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
## BIOS Revert Default

Set all BIOS attributes to their respective factory default states.

  {% tabs %}
{% tab label="Example" %}

```python Example
def bios_revert_default(_redfishobj):

    bios_reset_action_uri = None
    resource_instances = get_resource_directory(_redfishobj)

    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
        bios_uri = systems_members_response.obj['Bios']['@odata.id']
        bios_response = _redfishobj.get(bios_uri)
        bios_reset_action_uri = bios_response.obj['Actions']['#Bios.ResetBios']['target']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#Bios.' in instance['@odata.type']:
                bios_uri = instance['@odata.id']
                bios_data = _redfishobj.get(bios_uri)
                bios_reset_action_uri = bios_data.obj['Actions']['#Bios.ResetBios']['target']
                break

    body = {'Action': 'Bios.ResetBios', 'ResetType':'default'}
    resp = _redfishobj.post(bios_reset_action_uri, body)

    #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
    #error message to see what went wrong
    if resp.status == 400:
        try:
            print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, sort_keys=True))
        except Exception:
            sys.stderr.write("A response error occurred, unable to access iLO Extended Message "\
                             "Info...")
    elif resp.status != 200:
        sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
    else:
        print("Success!\n")
        print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
## Change BIOS Setting

Alter one ore more BIOS attributes.

  {% tabs %}
{% tab label="Example" %}

```python Example
def change_bios_setting(_redfishobj, bios_property, property_value, bios_password):

    bios_uri = None
    bios_data = None
    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
        bios_uri = systems_members_response.obj['Bios']['@odata.id']
        bios_data = _redfishobj.get(bios_uri)
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#Bios.' in instance['@odata.type']:
                bios_uri = instance['@odata.id']
                bios_data = _redfishobj.get(bios_uri)
                break

    if bios_data:
        print("\n\nShowing bios attributes before changes:\n\n")
        print(json.dumps(bios_data.dict, indent=4, sort_keys=True))

    if bios_uri:
        #Bios settings URI is needed
        bios_settings_uri = bios_data.obj['@Redfish.Settings']['SettingsObject']['@odata.id']
        body = {'Attributes': {bios_property: property_value}}
        #update bios password
        if bios_password:
            _redfishobj.bios_password = bios_password
        resp = _redfishobj.patch(bios_settings_uri, body)

        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("\nSuccess!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
            #uncomment if you would like to see the full list of attributes
            #print("\n\nShowing bios attributes after changes:\n\n")
            #bios_data = _redfishobj.get(bios_uri)
            #print(json.dumps(bios_data.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
## Change Temporary Boot Order

Alter the temporary boot order.

  {% tabs %}
{% tab label="Example" %}

```python Example
def change_temporary_boot_order(_redfishobj, boottarget):

    systems_members_uri = None
    systems_members_response = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
    else:
        for instance in resource_instances:
            if '#ComputerSystem.' in instance['@odata.type']:
                systems_members_uri = instance['@odata.id']
                systems_members_response = _redfishobj.get(systems_members_uri)

    if systems_members_response:
        print("\n\nShowing bios attributes before changes:\n\n")
        print(json.dumps(systems_members_response.dict.get('Boot'), indent=4, sort_keys=True))
    body = {'Boot': {'BootSourceOverrideTarget': boottarget}}
    resp = _redfishobj.patch(systems_members_uri, body)

    #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
    #error message to see what went wrong
    if resp.status == 400:
        try:
            print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, sort_keys=True))
        except Exception as excp:
            sys.stderr.write("A response error occurred, unable to access iLO Extended Message "\
                             "Info...")
    elif resp.status != 200:
        sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
    else:
        print("\nSuccess!\n")
        print(json.dumps(resp.dict, indent=4, sort_keys=True))
        if systems_members_response:
            print("\n\nShowing boot override target:\n\n")
            print(json.dumps(systems_members_response.dict.get('Boot'), indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
### Example of the Boot Object

The following JSON output can be obtained first by noting the *systems_members_response* on line 42 above.

  {% tabs %}
{% tab label="Example" %}

```python Example
else:
    for instance in resource_instances:
        if '#ComputerSystem.' in instance['@odata.type']:
            systems_members_uri = instance['@odata.id']
            systems_members_response = _redfishobj.get(systems_members_uri)

if systems_members_response:
    print("\n\nShowing bios attributes before changes:\n\n")
    print(json.dumps(systems_members_response.dict.get('Boot'), indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
The user can preview the data prior:

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "BootOptions": {
        "@odata.id": "/redfish/v1/Systems/1/BootOptions/"
    },
    "BootOrder": [
        "Boot0011",
        "Boot0019",
        "Boot0009",
        "Boot0012",
        "Boot0010",
        "Boot0014",
        "Boot000C",
        "Boot000E",
        "Boot000F",
        "Boot0017",
        "Boot000D",
        "Boot0013"
    ],
    "BootSourceOverrideEnabled": "Disabled",
    "BootSourceOverrideMode": "UEFI",
    "BootSourceOverrideTarget": "None",
    "BootSourceOverrideTarget@Redfish.AllowableValues": [
        "None",
        "Cd",
        "Hdd",
        "Usb",
        "SDCard",
        "Utilities",
        "Diags",
        "BiosSetup",
        "Pxe",
        "UefiShell",
        "UefiHttp",
        "UefiTarget"
    ],
    "UefiTargetBootSourceOverride": "None",
    "UefiTargetBootSourceOverride@Redfish.AllowableValues": [
        "HD(1,GPT,0940C33C-EAF1-43CD-8C8F-4426672227FE,0x800,0x4E000)/\\EFI\\sles\\shim.efi",
        "HD(1,GPT,22F62F69-47E7-4334-BCE6-A0B321810BA1,0x800,0x64000)/\\EFI\\redhat\\shimx64.efi",
        "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv4(0.0.0.0)/Uri()",
        "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv4(0.0.0.0)",
        "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)/Uri()",
        "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)",
        "PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x0)",
        "PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x1)",
        "PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x2)",
        "PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x3)",
        "PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)/USB(0x1,0x0)",
        "PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)/USB(0x1,0x1)"
    ]
}
```
  
  {% /tab %}
  {% /tabs %}
## Change Boot Order

Alter the default boot order.

  {% tabs %}
{% tab label="Example" %}

```python Example
def change_boot_order(_redfishobj, bios_password):

    bios_boot_uri = None
    bios_boot_response = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
        bios_uri = systems_members_response.obj['Bios']['@odata.id']
        bios_response = _redfishobj.get(bios_uri)
        bios_boot_uri = bios_response.obj.Oem.Hpe.Links.Boot['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeServerBootSettings.' in instance['@odata.type']:
                bios_boot_uri = instance['@odata.id']
                break

    if bios_boot_uri:
        bios_boot_response = _redfishobj.get(bios_boot_uri)
        #Bios boot settings URI is needed
        bios_boot_settings_uri = bios_boot_response.obj['@Redfish.Settings']['SettingsObject']\
                                                                                    ['@odata.id']
        #update bios password
        if bios_password:
            _redfishobj.bios_password = bios_password
        sys.stdout.write("Rotating the first boot device to the end of the boot order.\n")
        sys.stdout.write('Current Order:\n')
        boot_order = bios_boot_response.obj['DefaultBootOrder']
        for indx, boot_device in enumerate(boot_order):
            sys.stdout.write('Pos ' + str(indx) + ' : ' + boot_device + '\n')
        device = boot_order.pop(0)
        sys.stdout.write("Rotating device: \'%s\' to the end of the boot order.\n" % device)
        boot_order.append(device)

        body = {'DefaultBootOrder': boot_order}
        resp = _redfishobj.patch(bios_boot_settings_uri, body)

        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended Message"\
                                 " Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success! Your system may need to be restarted.\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
    else:
        sys.stderr.write("Unable to find Boot Order URI.\n")
```
  
  {% /tab %}
  {% /tabs %}
## Clear AHS Data

Clear Active Health System log data.

  {% tabs %}
{% tab label="Example" %}

```python Example
def clear_ahs_data(_redfishobj):

    active_health_system_clear_log_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        active_health_system_uri = managers_members_response.obj.Oem.Hpe.Links\
                                    ['ActiveHealthSystem']['@odata.id']
        active_health_system_response = _redfishobj.get(active_health_system_uri)
        active_health_system_clear_log_uri = active_health_system_response.obj['Actions']\
                                            ['#HpeiLOActiveHealthSystem.ClearLog']['target']
    else:
        for instance in resource_instances:
            if '#HpeiLOActiveHealthSystem.' in instance['@odata.type']:
                active_health_system_uri = instance['@odata.id']
                active_health_system_response = _redfishobj.get(active_health_system_uri)
                active_health_system_clear_log_uri = active_health_system_response['Actions']\
                                                    ['#HpeiLOActiveHealthSystem.ClearLog']['target']
            break

    if active_health_system_clear_log_uri:
        body = {"Action": "HpeiLOActiveHealthSystem.ClearLog"}
        resp = _redfishobj.redfish_client.post(active_health_system_clear_log_uri, body)

        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4,\
                                                                                sort_keys=True))
            except Exception:
                sys.stderr.write("A response error occurred, unable to access iLO Extended " \
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
## Clear IEL/IML Data

Clear iLO event log and management log data.

  {% tabs %}
{% tab label="Example" %}

```python Example
def clear_ilo_event_log(_redfishobj, clear_IML_IEL):

clear_log_services_uri = []

resource_instances = get_resource_directory(_redfishobj)
if DISABLE_RESOURCE_DIR or not resource_instances:
    #if we do not have a resource directory or want to force it's non use to find the
    #relevant URI
    systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
    systems_response = _redfishobj.get(systems_uri)
    systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
    systems_members_response = _redfishobj.get(systems_members_uri)
    log_services_uri = systems_members_response.obj['LogServices']['@odata.id']
    log_services_response = _redfishobj.get(log_services_uri)
    log_services_uris = log_services_response.obj['Members']
    for log_services_uri in log_services_uris:
        log_services_response = _redfishobj.get(log_services_uri['@odata.id'])
        clear_log_services_uri.append(log_services_response.obj['Actions']\
                                                            ['#LogService.ClearLog']['target'])
else:
    for instance in resource_instances:
        #Use Resource directory to find the relevant URI
        if '#LogService.' in instance['@odata.type']:
            log_service_uri = instance['@odata.id']
            clear_log_services_uri.append(_redfishobj.get(log_service_uri).dict['Actions']\
                                                            ['#LogService.ClearLog']['target'])

if clear_log_services_uri:
    body = {"Action": "LogService.ClearLog"}
    for path in clear_log_services_uri:
        if ("IEL" in clear_IML_IEL and "IEL" in path) or ("IML" in clear_IML_IEL and \
                                                                                "IML" in path):
            if "IEL" in path:
                sys.stdout.write("Clearing IEL log.\n")
            else:
                sys.stdout.write("Clearing IML log.\n")
            resp = _redfishobj.post(path, body)
        else:
            continue
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended
        #info error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO "\
                                 "Extended Message Info...\n")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
## Computer System Data

The following example retrieves the `ComputerSystem` data in JSON format.

  {% tabs %}
{% tab label="Function definition" %}

```python Function definition
def computer_details(_redfishobj):
    systems_members_uri = None
    systems_members_response = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#ComputerSystem.' in instance['@odata.type']:
                systems_members_uri = instance['@odata.id']
                systems_members_response = _redfishobj.get(systems_members_uri)

    print("\n\nPrinting computer system details:\n\n")
    print(json.dumps(systems_members_response.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
{% tab label="Body Response" %}

```json Body Response
{
    "@odata.context": "/redfish/v1/$metadata#ComputerSystem.ComputerSystem",
    "@odata.etag": "W/\"7010F715\"",
    "@odata.id": "/redfish/v1/Systems/1/",
    "@odata.type": "#ComputerSystem.v1_10_0.ComputerSystem",
    "Actions": {
        "#ComputerSystem.Reset": {
            "ResetType@Redfish.AllowableValues": [
                "On",
                "ForceOff",
                "GracefulShutdown",
                "ForceRestart",
                "Nmi",
                "PushPowerButton"
            ],
            "target": "/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/"
        }
    },
    "AssetTag": "",
    "Bios": {
        "@odata.id": "/redfish/v1/systems/1/bios/"
    },
    "BiosVersion": "U32 v2.22 (11/13/2019)",
    "Boot": {
        "BootOptions": {
            "@odata.id": "/redfish/v1/Systems/1/BootOptions/"
        },
        "BootOrder": [
            "Boot0011",
            "Boot0019",
            "Boot0009",
            "Boot0012",
            "Boot0010",
            "Boot0014",
            "Boot000C",
            "Boot000E",
            "Boot000F",
            "Boot0017",
            "Boot000D",
            "Boot0013"
        ],
        "BootSourceOverrideEnabled": "Once",
        "BootSourceOverrideMode": "UEFI",
        "BootSourceOverrideTarget": "Hdd",
        "BootSourceOverrideTarget@Redfish.AllowableValues": [
            "None",
            "Cd",
            "Hdd",
            "Usb",
            "SDCard",
            "Utilities",
            "Diags",
            "BiosSetup",
            "Pxe",
            "UefiShell",
            "UefiHttp",
            "UefiTarget"
        ],
        "UefiTargetBootSourceOverride": "None",
        "UefiTargetBootSourceOverride@Redfish.AllowableValues": [
            "HD(1,GPT,0940C33C-EAF1-43CD-8C8F-4426672227FE,0x800,0x4E000)/\\EFI\\sles\\shim.efi",
            "HD(1,GPT,22F62F69-47E7-4334-BCE6-A0B321810BA1,0x800,0x64000)/\\EFI\\redhat\\shimx64.efi",
            "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv4(0.0.0.0)/Uri()",
            "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv4(0.0.0.0)",
            "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)/Uri()",
            "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)",
            "PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x0)",
            "PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x1)",
            "PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x2)",
            "PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x3)",
            "PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)/USB(0x1,0x0)",
            "PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)/USB(0x1,0x1)"
        ]
    },
    "EthernetInterfaces": {
        "@odata.id": "/redfish/v1/Systems/1/EthernetInterfaces/"
    },
    "HostName": "localhost.americas.hpqcorp.net",
    "Id": "1",
    "IndicatorLED": "Off",
    "Links": {
        "Chassis": [
            {
                "@odata.id": "/redfish/v1/Chassis/1/"
            }
        ],
        "ManagedBy": [
            {
                "@odata.id": "/redfish/v1/Managers/1/"
            }
        ]
    },
    "LogServices": {
        "@odata.id": "/redfish/v1/Systems/1/LogServices/"
    },
    "Manufacturer": "HPE",
    "Memory": {
        "@odata.id": "/redfish/v1/Systems/1/Memory/"
    },
    "MemoryDomains": {
        "@odata.id": "/redfish/v1/Systems/1/MemoryDomains/"
    },
    "MemorySummary": {
        "Status": {
            "HealthRollup": "OK"
        },
        "TotalSystemMemoryGiB": 32,
        "TotalSystemPersistentMemoryGiB": 0
    },
    "Model": "ProLiant DL360 Gen10",
    "Name": "Computer System",
    "NetworkInterfaces": {
        "@odata.id": "/redfish/v1/Systems/1/NetworkInterfaces/"
    },
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeComputerSystemExt.HpeComputerSystemExt",
            "@odata.type": "#HpeComputerSystemExt.v2_9_0.HpeComputerSystemExt",
            "Actions": {
                "#HpeComputerSystemExt.PowerButton": {
                    "PushType@Redfish.AllowableValues": [
                        "Press",
                        "PressAndHold"
                    ],
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.PowerButton/"
                },
                "#HpeComputerSystemExt.SecureSystemErase": {
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SecureSystemErase/"
                },
                "#HpeComputerSystemExt.SystemReset": {
                    "ResetType@Redfish.AllowableValues": [
                        "ColdBoot",
                        "AuxCycle"
                    ],
                    "target": "/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SystemReset/"
                }
            },
            "AggregateHealthStatus": {
                "AgentlessManagementService": "Unavailable",
                "BiosOrHardwareHealth": {
                    "Status": {
                        "Health": "OK"
                    }
                },
                "FanRedundancy": "Redundant",
                "Fans": {
                    "Status": {
                        "Health": "OK"
                    }
                },
                "Memory": {
                    "Status": {
                        "Health": "OK"
                    }
                },
                "Network": {
                    "Status": {
                        "Health": "OK"
                    }
                },
                "PowerSupplies": {
                    "PowerSuppliesMismatch": false,
                    "Status": {
                        "Health": "OK"
                    }
                },
                "Processors": {
                    "Status": {
                        "Health": "OK"
                    }
                },
                "Storage": {
                    "Status": {
                        "Health": "Warning"
                    }
                },
                "Temperatures": {
                    "Status": {
                        "Health": "OK"
                    }
                }
            },
            "Bios": {
                "Backup": {
                    "Date": "11/13/2019",
                    "Family": "U32",
                    "VersionString": "U32 v2.22 (11/13/2019)"
                },
                "Current": {
                    "Date": "11/13/2019",
                    "Family": "U32",
                    "VersionString": "U32 v2.22 (11/13/2019)"
                },
                "UefiClass": 2
            },
            "CriticalTempRemainOff": false,
            "CurrentPowerOnTimeSeconds": null,
            "DeviceDiscoveryComplete": {
                "AMSDeviceDiscovery": "NoAMS",
                "DeviceDiscovery": "vMainDeviceDiscoveryComplete",
                "SmartArrayDiscovery": "Complete"
            },
            "ElapsedEraseTimeInMinutes": 0,
            "EndOfPostDelaySeconds": null,
            "EstimatedEraseTimeInMinutes": 0,
            "IntelligentProvisioningAlwaysOn": true,
            "IntelligentProvisioningIndex": 8,
            "IntelligentProvisioningLocation": "System Board",
            "IntelligentProvisioningVersion": "3.60.12",
            "IsColdBooting": false,
            "Links": {
                "EthernetInterfaces": {
                    "@odata.id": "/redfish/v1/Systems/1/EthernetInterfaces/"
                },
                "HpeIpProvider": {
                    "@odata.id": "/redfish/v1/systems/1/hpeip/"
                },
                "NetworkAdapters": {
                    "@odata.id": "/redfish/v1/Systems/1/BaseNetworkAdapters/"
                },
                "PCIDevices": {
                    "@odata.id": "/redfish/v1/Systems/1/PCIDevices/"
                },
                "PCISlots": {
                    "@odata.id": "/redfish/v1/Systems/1/PCISlots/"
                },
                "SUT": {
                    "@odata.id": "/redfish/v1/systems/1/hpsut/"
                },
                "SecureEraseReportService": {
                    "@odata.id": "/redfish/v1/Systems/1/SecureEraseReportService/"
                },
                "SmartStorage": {
                    "@odata.id": "/redfish/v1/Systems/1/SmartStorage/"
                },
                "USBDevices": {
                    "@odata.id": "/redfish/v1/Systems/1/USBDevices/"
                },
                "USBPorts": {
                    "@odata.id": "/redfish/v1/Systems/1/USBPorts/"
                },
                "WorkloadPerformanceAdvisor": {
                    "@odata.id": "/redfish/v1/Systems/1/WorkloadPerformanceAdvisor/"
                }
            },
            "PCAPartNumber": "847479-001",
            "PCASerialNumber": "PVZEK0ARHA014I",
            "PostDiscoveryCompleteTimeStamp": null,
            "PostDiscoveryMode": null,
            "PostMode": null,
            "PostState": "FinishedPost",
            "PowerAllocationLimit": 500,
            "PowerAutoOn": "Restore",
            "PowerOnDelay": "Minimum",
            "PowerOnMinutes": 80051,
            "PowerRegulatorMode": "OSControl",
            "PowerRegulatorModesSupported": [
                "OSControl",
                "Dynamic",
                "Max",
                "Min"
            ],
            "ProcessorJitterControl": {
                "ConfiguredFrequencyLimitMHz": 0,
                "Mode": "Disabled"
            },
            "SMBIOS": {
                "extref": "/smbios"
            },
            "ServerFQDN": "",
            "SmartStorageConfig": [
                {
                    "@odata.id": "/redfish/v1/systems/1/smartstorageconfig/"
                }
            ],
            "SystemROMAndiLOEraseComponentStatus": {
                "BIOSSettingsEraseStatus": "Idle",
                "iLOSettingsEraseStatus": "Idle"
            },
            "SystemROMAndiLOEraseStatus": "Idle",
            "UserDataEraseComponentStatus": {},
            "UserDataEraseStatus": "Idle",
            "VirtualProfile": "Inactive"
        }
    },
    "PowerState": "On",
    "ProcessorSummary": {
        "Count": 1,
        "Model": "Intel(R) Xeon(R) Bronze 3106 CPU @ 1.70GHz",
        "Status": {
            "HealthRollup": "OK"
        }
    },
    "Processors": {
        "@odata.id": "/redfish/v1/Systems/1/Processors/"
    },
    "SKU": "DL3000GEN10",
    "SecureBoot": {
        "@odata.id": "/redfish/v1/Systems/1/SecureBoot/"
    },
    "SerialNumber": "TX86NP0121",
    "Status": {
        "Health": "Warning",
        "HealthRollup": "Warning",
        "State": "Enabled"
    },
    "Storage": {
        "@odata.id": "/redfish/v1/Systems/1/Storage/"
    },
    "SystemType": "Physical",
    "TrustedModules": [
        {
            "Oem": {
                "Hpe": {
                    "@odata.context": "/redfish/v1/$metadata#HpeTrustedModuleExt.HpeTrustedModuleExt",
                    "@odata.type": "#HpeTrustedModuleExt.v2_0_0.HpeTrustedModuleExt"
                }
            },
            "Status": {
                "State": "Absent"
            }
        }
    ],
    "UUID": "30334C44-3030-5854-3836-4E5030313231"
}
```
  
  {% /tab %}
  {% /tabs %}
## Configure SNMP

Configure iLO Simple Network Management Protocol.

  {% tabs %}
{% tab label="Example" %}

```python Example
def configure_snmp(_redfishobj, read_communities, snmp_alerts):

    snmp_service_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        snmp_service_uri = managers_members_response.obj.Oem.Hpe.Links['Snmp']['@odata.id']
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#HpeiLOSnmpService.' in instance['@odata.type']:
                snmp_service_uri = instance['@odata.id']

    if snmp_service_uri:
        body = {"AlertsEnabled": snmp_alerts, "ReadCommunities": read_communities}
        resp = _redfishobj.patch(snmp_service_uri, body)

        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
## Enable NTP

In order to configure iLO Network Time Protocol, certain settings must be in-place on the iLO Management
NIC(s) including settings the value of the OEM/HPE object key-value pair *UseNTPServers* to *True*.

{% admonition type="info" name="NOTE" %}
An iLO Reset is required for the change to be applied.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```python Example
def enable_ntp(_redfishobj, ntp_servers):

    ethernet_data = {}

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        manager_ethernet_interfaces = managers_members_response.obj['EthernetInterfaces']\
                                                                                    ['@odata.id']
        manager_ethernet_interfaces_response = _redfishobj.get(manager_ethernet_interfaces)
        manager_ethernet_interfaces_members = manager_ethernet_interfaces_response.\
                                                            obj['Members']
        for _member in manager_ethernet_interfaces_members:
            _tmp = _redfishobj.get(_member['@odata.id']).obj
            ethernet_data[_member['@odata.id']] = _tmp
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#EthernetInterfaceCollection.' in instance['@odata.type'] and 'Managers' in \
                                                                        instance['@odata.id']:
                ethernet_uri = instance['@odata.id']
                ethernet_interfaces = _redfishobj.get(ethernet_uri).obj['Members']
                for _ethernet_interface in ethernet_interfaces:
                    ethernet_data[_ethernet_interface['@odata.id']] = _redfishobj.\
                                                        get(_ethernet_interface['@odata.id']).dict
                break

    if ethernet_data:
        print("\n\nShowing all available ethernet management interfaces before changes:\n\n")
        print(json.dumps(ethernet_data, indent=4, sort_keys=True))

    body = {"Oem": {"Hpe": {"DHCPv4": {"UseNTPServers": ntp_servers}, \
                            "DHCPv6": {"UseNTPServers": ntp_servers}}}}
    for ethernet in ethernet_data:
        resp = _redfishobj.patch(ethernet, body)
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
            _data = _redfishobj.get(ethernet).dict
            sys.stdout.write("\nShowing \'%s\' interface after changes:\n" % ethernet)
            print(json.dumps(_data, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
## Enable Secure Boot

Enable/Disable Secure Boot.

  {% tabs %}
{% tab label="Example" %}

```python Example
def enable_secure_boot(_redfishobj, secure_boot_enable):

    secure_boot_uri = None
    secure_boot_data = None
    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
        secure_boot_uri = systems_members_response.obj['SecureBoot']['@odata.id']
        secure_boot_data = _redfishobj.get(secure_boot_uri)
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#SecureBoot.' in instance['@odata.type']:
                secure_boot_uri = instance['@odata.id']
                secure_boot_data = _redfishobj.get(secure_boot_uri)

    if secure_boot_data:
        print("\n\nShowing Secure Boot properties before changes:\n\n")
        print(json.dumps(secure_boot_data.dict, indent=4, sort_keys=True))

    if secure_boot_uri:
        body = {'SecureBootEnable': secure_boot_enable}
        resp = _redfishobj.patch(secure_boot_uri, body)
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception:
                sys.stderr.write("A response error occurred, unable to access iLO Extended " \
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("\nSuccess!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
            print("\n\nShowing Secure Boot properties after changes:\n\n")
            secure_boot_data = _redfishobj.get(secure_boot_uri)
            print(json.dumps(secure_boot_data.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
## Expand Data

JSON data is typically provided in a collapsed/compacted state. Use _$expand_ as a query string on the
desired URI.

  {% tabs %}
{% tab label="Example" %}

```python Example
def expand_data(_redfishobj, expand_url="/redfish/v1/"):

    response = _redfishobj.get(expand_url)
    exp_response = _redfishobj.get(expand_url+'?$expand=.')
    sys.stdout.write('Standard response:\n')
    sys.stdout.write('\t'+str(response.dict)+'\n')
    sys.stdout.write('Expanded response:\n')
    sys.stdout.write('\t'+str(exp_response.dict)+'\n')
```
  
  {% /tab %}
{% tab label="Body Response with no expansion" %}

```json Body Response with no expansion
{'@odata.context': '/redfish/v1/$metadata#ComputerSystemCollection.ComputerSystemCollection', '@odata.etag': 'W/"AA6D42B0"', '@odata.id': '/redfish/v1/Systems/', '@odata.type': '#ComputerSystemCollection.ComputerSystemCollection', 'Description': 'Computer Systems view', 'Name': 'Computer Systems', 'Members': [{'@odata.id': '/redfish/v1/Systems/1/'}], 'Members@odata.count': 1}
```
  
  {% /tab %}
{% tab label="Expanded response" %}

```json Expanded response
{'@odata.context': '/redfish/v1/$metadata#ComputerSystemCollection.ComputerSystemCollection', '@odata.etag': 'W/"5737F79D"', '@odata.id': '/redfish/v1/Systems/', '@odata.type': '#ComputerSystemCollection.ComputerSystemCollection', 'Description': 'Computer Systems view', 'Name': 'Computer Systems', 'Members': [{'@odata.context': '/redfish/v1/$metadata#ComputerSystem.ComputerSystem', '@odata.id': '/redfish/v1/Systems/1/', '@odata.type': '#ComputerSystem.v1_10_0.ComputerSystem', 'Id': '1', 'Actions': {'#ComputerSystem.Reset': {'ResetType@Redfish.AllowableValues': ['On', 'ForceOff', 'GracefulShutdown', 'ForceRestart', 'Nmi', 'PushPowerButton'], 'target': '/redfish/v1/Systems/1/Actions/ComputerSystem.Reset/'}}, 'AssetTag': '', 'Bios': {'@odata.id': '/redfish/v1/systems/1/bios/'}, 'BiosVersion': 'U32 v2.22 (11/13/2019)', 'Boot': {'BootOptions': {'@odata.id': '/redfish/v1/Systems/1/BootOptions/'}, 'BootOrder': ['Boot0011', 'Boot0019', 'Boot0009', 'Boot0012', 'Boot0010', 'Boot0014', 'Boot000C', 'Boot000E', 'Boot000F', 'Boot0017', 'Boot000D', 'Boot0013'], 'BootSourceOverrideEnabled': 'Once', 'BootSourceOverrideMode': 'UEFI', 'BootSourceOverrideTarget': 'Hdd', 'BootSourceOverrideTarget@Redfish.AllowableValues': ['None', 'Cd', 'Hdd', 'Usb', 'SDCard', 'Utilities', 'Diags', 'BiosSetup', 'Pxe', 'UefiShell', 'UefiHttp', 'UefiTarget'], 'UefiTargetBootSourceOverride': 'None', 'UefiTargetBootSourceOverride@Redfish.AllowableValues': ['HD(1,GPT,0940C33C-EAF1-43CD-8C8F-4426672227FE,0x800,0x4E000)/\\EFI\\sles\\shim.efi', 'HD(1,GPT,22F62F69-47E7-4334-BCE6-A0B321810BA1,0x800,0x64000)/\\EFI\\redhat\\shimx64.efi', 'PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv4(0.0.0.0)/Uri()', 'PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv4(0.0.0.0)', 'PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)/Uri()', 'PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)/MAC(98F2B32CB4A8,0x0)/IPv6(0000:0000:0000:0000:0000:0000:0000:0000)', 'PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x0)', 'PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x1)', 'PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x2)', 'PciRoot(0x3)/Pci(0x0,0x0)/Pci(0x0,0x0)/Scsi(0x0,0x3)', 'PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)/USB(0x1,0x0)', 'PciRoot(0x0)/Pci(0x14,0x0)/USB(0xD,0x0)/USB(0x1,0x1)']}, 'EthernetInterfaces': {'@odata.id': '/redfish/v1/Systems/1/EthernetInterfaces/'}, 'HostName': 'localhost.americas.hpqcorp.net', 'IndicatorLED': 'Off', 'Links': {'ManagedBy': [{'@odata.id': '/redfish/v1/Managers/1/'}], 'Chassis': [{'@odata.id': '/redfish/v1/Chassis/1/'}]}, 'LogServices': {'@odata.id': '/redfish/v1/Systems/1/LogServices/'}, 'Manufacturer': 'HPE', 'Memory': {'@odata.id': '/redfish/v1/Systems/1/Memory/'}, 'MemoryDomains': {'@odata.id': '/redfish/v1/Systems/1/MemoryDomains/'}, 'MemorySummary': {'Status': {'HealthRollup': 'OK'}, 'TotalSystemMemoryGiB': 32, 'TotalSystemPersistentMemoryGiB': 0}, 'Model': 'ProLiant DL360 Gen10', 'Name': 'Computer System', 'NetworkInterfaces': {'@odata.id': '/redfish/v1/Systems/1/NetworkInterfaces/'}, 'Oem': {'Hpe': {'@odata.context': '/redfish/v1/$metadata#HpeComputerSystemExt.HpeComputerSystemExt', '@odata.type': '#HpeComputerSystemExt.v2_9_0.HpeComputerSystemExt', 'Actions': {'#HpeComputerSystemExt.PowerButton': {'PushType@Redfish.AllowableValues': ['Press', 'PressAndHold'], 'target': '/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.PowerButton/'}, '#HpeComputerSystemExt.SecureSystemErase': {'target': '/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SecureSystemErase/'}, '#HpeComputerSystemExt.SystemReset': {'ResetType@Redfish.AllowableValues': ['ColdBoot', 'AuxCycle'], 'target': '/redfish/v1/Systems/1/Actions/Oem/Hpe/HpeComputerSystemExt.SystemReset/'}}, 'AggregateHealthStatus': {'AgentlessManagementService': 'Unavailable', 'BiosOrHardwareHealth': {'Status': {'Health': 'OK'}}, 'FanRedundancy': 'Redundant', 'Fans': {'Status': {'Health': 'OK'}}, 'Memory': {'Status': {'Health': 'OK'}}, 'Network': {'Status': {'Health': 'OK'}}, 'PowerSupplies': {'PowerSuppliesMismatch': False, 'Status': {'Health': 'OK'}}, 'Processors': {'Status': {'Health': 'OK'}}, 'Storage': {'Status': {'Health': 'Warning'}}, 'Temperatures': {'Status': {'Health': 'OK'}}}, 'Bios': {'Backup': {'Date': '11/13/2019', 'Family': 'U32', 'VersionString': 'U32 v2.22 (11/13/2019)'}, 'Current': {'Date': '11/13/2019', 'Family': 'U32', 'VersionString': 'U32 v2.22 (11/13/2019)'}, 'UefiClass': 2}, 'CriticalTempRemainOff': False, 'CurrentPowerOnTimeSeconds': None, 'DeviceDiscoveryComplete': {'AMSDeviceDiscovery': 'NoAMS', 'DeviceDiscovery': 'vMainDeviceDiscoveryComplete', 'SmartArrayDiscovery': 'Complete'}, 'ElapsedEraseTimeInMinutes': 0, 'EndOfPostDelaySeconds': None, 'EstimatedEraseTimeInMinutes': 0, 'IntelligentProvisioningAlwaysOn': True, 'IntelligentProvisioningIndex': 8, 'IntelligentProvisioningLocation': 'System Board', 'IntelligentProvisioningVersion': '3.60.12', 'IsColdBooting': False, 'Links': {'HpeIpProvider': {'@odata.id': '/redfish/v1/systems/1/hpeip/'}, 'SUT': {'@odata.id': '/redfish/v1/systems/1/hpsut/'}, 'PCIDevices': {'@odata.id': '/redfish/v1/Systems/1/PCIDevices/'}, 'PCISlots': {'@odata.id': '/redfish/v1/Systems/1/PCISlots/'}, 'NetworkAdapters': {'@odata.id': '/redfish/v1/Systems/1/BaseNetworkAdapters/'}, 'SmartStorage': {'@odata.id': '/redfish/v1/Systems/1/SmartStorage/'}, 'USBPorts': {'@odata.id': '/redfish/v1/Systems/1/USBPorts/'}, 'USBDevices': {'@odata.id': '/redfish/v1/Systems/1/USBDevices/'}, 'EthernetInterfaces': {'@odata.id': '/redfish/v1/Systems/1/EthernetInterfaces/'}, 'WorkloadPerformanceAdvisor': {'@odata.id': '/redfish/v1/Systems/1/WorkloadPerformanceAdvisor/'}, 'SecureEraseReportService': {'@odata.id': '/redfish/v1/Systems/1/SecureEraseReportService/'}}, 'PCAPartNumber': '847479-001', 'PCASerialNumber': 'PVZEK0ARHA014I', 'PostDiscoveryCompleteTimeStamp': None, 'PostDiscoveryMode': None, 'PostMode': None, 'PostState': 'FinishedPost', 'PowerAllocationLimit': 500, 'PowerAutoOn': 'Restore', 'PowerOnDelay': 'Minimum', 'PowerOnMinutes': 80090, 'PowerRegulatorMode': 'OSControl', 'PowerRegulatorModesSupported': ['OSControl', 'Dynamic', 'Max', 'Min'], 'ProcessorJitterControl': {'ConfiguredFrequencyLimitMHz': 0, 'Mode': 'Disabled'}, 'SMBIOS': {'extref': '/smbios'}, 'ServerFQDN': '', 'SmartStorageConfig': [{'@odata.id': '/redfish/v1/systems/1/smartstorageconfig/'}], 'SystemROMAndiLOEraseComponentStatus': {'BIOSSettingsEraseStatus': 'Idle', 'iLOSettingsEraseStatus': 'Idle'}, 'SystemROMAndiLOEraseStatus': 'Idle', 'UserDataEraseComponentStatus': {}, 'UserDataEraseStatus': 'Idle', 'VirtualProfile': 'Inactive'}}, 'PowerState': 'On', 'ProcessorSummary': {'Count': 1, 'Model': 'Intel(R) Xeon(R) Bronze 3106 CPU @ 1.70GHz', 'Status': {'HealthRollup': 'OK'}}, 'Processors': {'@odata.id': '/redfish/v1/Systems/1/Processors/'}, 'SKU': 'DL3000GEN10', 'SecureBoot': {'@odata.id': '/redfish/v1/Systems/1/SecureBoot/'}, 'SerialNumber': 'TX86NP0121', 'Status': {'Health': 'Warning', 'HealthRollup': 'Warning', 'State': 'Enabled'}, 'Storage': {'@odata.id': '/redfish/v1/Systems/1/Storage/'}, 'SystemType': 'Physical', 'TrustedModules': [{'Oem': {'Hpe': {'@odata.context': '/redfish/v1/$metadata#HpeTrustedModuleExt.HpeTrustedModuleExt', '@odata.type': '#HpeTrustedModuleExt.v2_0_0.HpeTrustedModuleExt'}}, 'Status': {'State': 'Absent'}}], 'UUID': '30334C44-3030-5854-3836-4E5030313231'}], 'Members@odata.count': 1}
```
  
  {% /tab %}
  {% /tabs %}
## Find iLO MAC Address

Retrieve MAC Addresses for iLO Management Network Interfaces.

  {% tabs %}
{% tab label="Example" %}

```python Example
def find_ilo_mac_address(_redfishobj):

    ethernet_data = {}

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        manager_ethernet_interfaces = managers_members_response.obj['EthernetInterfaces']\
                                                                                    ['@odata.id']
        manager_ethernet_interfaces_response = _redfishobj.get(manager_ethernet_interfaces)
        manager_ethernet_interfaces_members = manager_ethernet_interfaces_response.\
                                                            obj['Members']
        for _member in manager_ethernet_interfaces_members:
            _tmp = _redfishobj.get(_member['@odata.id']).obj
            ethernet_data[_member['@odata.id']] = _tmp
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#EthernetInterfaceCollection.' in instance['@odata.type'] and 'Managers' in \
                                                                        instance['@odata.id']:
                ethernet_uri = instance['@odata.id']
                ethernet_interfaces = _redfishobj.get(ethernet_uri).obj['Members']
                for _ethernet_interface in ethernet_interfaces:
                    ethernet_data[_ethernet_interface['@odata.id']] = _redfishobj.\
                                                        get(_ethernet_interface['@odata.id']).dict
    for iface in ethernet_data:
        sys.stdout.write("iLO Network Manager Interface: \'%s\'\n" % ethernet_data[iface]['Id'])
        sys.stdout.write("\tiLO Mac Address: \'%s\'\n" % ethernet_data[iface].get('MACAddress'))
```
  
  {% /tab %}
  {% /tabs %}
### Response Example

Standard response:

  {% tabs %}
{% tab label="Example" %}

```TEXT Example
iLO Network Manager Interface: '1'
    iLO Mac Address: '98:F2:B3:21:7B:48'
iLO Network Manager Interface: '2'
    iLO Mac Address: '98:F2:B3:21:7B:49'
iLO Network Manager Interface: '3'
    iLO Mac Address: '0A:CA:FE:F0:0D:04'
```
  
  {% /tab %}
  {% /tabs %}
## Get Certificate Signing Request

Obtain an iLO Certificate Signing Request for use with Secure Socket Layer (SSL)/Transport Layer Security (TLS) Certificate.

{% admonition type="info" name="NOTE" %}
This process may take some time to complete on iLO (~5 minutes).
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```python Example
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
        resp = _redfishobj.post(generate_csr_uri, body)
        if resp.status in [200, 201]:
            sys.stdout.write("Generating CSR, this may take a few minutes\n")
            sys.stdout.write("Sleeping for 5 minutes...\n")
            time.sleep(600)
            csr_resp = _redfishobj.get(csr_uri).dict['CertificateSigningRequest']
            with open(csr_file, 'wb') as csroutput:
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
```
  
  {% /tab %}
  {% /tabs %}

## Get AHS Data

Obtain Active Health System Data.

{% admonition type="info" name="NOTE" %}
AHS data is saved to a file, the contents of which are encoded. The use of an AHS Viewer to decode and parse
is required. Please review Active Health System Viewer Documentation for further details:
[https://support.hpe.com/hpesc/public/docDisplay?docId=c05384164](https://support.hpe.com/hpesc/public/docDisplay?docId=c05384164)
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_ahs_data(_redfishobj, logfile):

    active_health_system_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        active_health_system_uri = managers_members_response.obj.Oem.Hpe.Links\
                                    ['ActiveHealthSystem']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeiLOActiveHealthSystem.' in instance['@odata.type']:
                active_health_system_uri = instance['@odata.id']

    if active_health_system_uri:
        active_health_system_response = _redfishobj.get(active_health_system_uri)
        active_health_system_log_uri = active_health_system_response.obj.Links['AHSLocation']\
                                                                                        ['extref']
        active_health_system_log_resp = _redfishobj.get(active_health_system_log_uri)
        if active_health_system_log_resp.status == 400:
            try:
                print(json.dumps(active_health_system_log_resp.obj['error']\
                                 ['@Message.ExtendedInfo'], indent=4, sort_keys=True))
            except Exception:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif active_health_system_log_resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            with open(logfile, 'wb') as ahsoutput:
                ahsoutput.write(active_health_system_log_resp.ori)
                ahsoutput.close()
                sys.stdout.write("AHS Data saved successfully as: \'%s\'" % logfile)
```
  
  {% /tab %}
  {% /tabs %}

## Get Base Registries

Obtain Registry Providers. Registry providers allow for the transaction of data between properties and firmware.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_base_registry(_redfishobj):

registries_uri = _redfishobj.root.obj['Registries']['@odata.id']

if registries_uri:
    registries_members = _redfishobj.get(registries_uri).obj['Members']
    for registry in registries_members:
        sys.stdout.write("Registry URI at '%s'\n" % registry['@odata.id'])
```
  
  {% /tab %}
  {% /tabs %}

## Get ESKM

Obtain HPE Enterprise Secure Key Manager Encryption Data.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_ESKM(_redfishobj):

    security_service_eskm_uri = None

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
        security_service_eskm_uri = security_service_response.obj.Links['ESKM']['@odata.id']
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#HpeESKM.' in instance['@odata.type']:
                security_service_eskm_uri = instance['@odata.id']
                break

    if security_service_eskm_uri:
        security_service_eskm_resp = _redfishobj.get(security_service_eskm_uri)
        print(json.dumps(security_service_eskm_resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "@odata.context": "/redfish/v1/$metadata#HpeESKM.HpeESKM",
    "@odata.etag": "W/\"87058EB1\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService/ESKM/",
    "@odata.type": "#HpeESKM.v2_0_0.HpeESKM",
    "Actions": {
        "#HpeESKM.ClearESKMLog": {
            "target": "/redfish/v1/Managers/1/SecurityService/ESKM/Actions/HpeESKM.ClearESKMLog/"
        },
        "#HpeESKM.TestESKMConnections": {
            "target": "/redfish/v1/Managers/1/SecurityService/ESKM/Actions/HpeESKM.TestESKMConnections/"
        }
    },
    "Id": "ESKM",
    "KeyManagerConfig": {
        "AccountGroup": "",
        "AccountName": "ilo-98f2b3217b48",
        "ESKMLocalCACertificateName": "",
        "ImportedCertificateIssuer": "",
        "ImportedCertificateSubject": ""
    },
    "KeyServerRedundancyReq": false,
    "PrimaryKeyServerAddress": null,
    "PrimaryKeyServerPort": null,
    "SecondaryKeyServerAddress": null,
    "SecondaryKeyServerPort": null
}
```
  
  {% /tab %}
  {% /tabs %}

## Get iLO IP

Obtain iLO Network Management Interface(s) IP Address(s).

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_ilo_ip(_redfishobj):
    ethernet_data = {}

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        manager_ethernet_interfaces = managers_members_response.obj['EthernetInterfaces']\
                                                                                    ['@odata.id']
        manager_ethernet_interfaces_response = _redfishobj.get(manager_ethernet_interfaces)
        manager_ethernet_interfaces_members = manager_ethernet_interfaces_response.\
                                                            obj['Members']
        for _member in manager_ethernet_interfaces_members:
            _tmp = _redfishobj.get(_member['@odata.id']).obj
            ethernet_data[_member['@odata.id']] = _tmp
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#EthernetInterfaceCollection.' in instance['@odata.type'] and 'Managers' in \
                                                                        instance['@odata.id']:
                ethernet_uri = instance['@odata.id']
                ethernet_interfaces = _redfishobj.get(ethernet_uri).obj['Members']
                for _ethernet_interface in ethernet_interfaces:
                    ethernet_data[_ethernet_interface['@odata.id']] = _redfishobj.\
                                                        get(_ethernet_interface['@odata.id']).dict
                break

    if ethernet_data:
        for ethernet_interface in ethernet_data:
            sys.stdout.write("\n\nShowing iLO IPv4 Address Info on: %s\n\n" % ethernet_interface)
            print(json.dumps(ethernet_data[ethernet_interface]['IPv4Addresses'],\
                                                                        indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Response data for each available network management interface is parsed for the Redfish IPv4 Data including:
IP Address, Address Origin (Static/DHCP), Network Gateway, and Network Subnet Mask

<!-- code-block: TEXT

Showing iLO IPv4 Address Info on: /redfish/v1/Managers/1/EthernetInterfaces/1/
[
    {
        "Address": "10.0.0.100",
        "AddressOrigin": "DHCP",
        "Gateway": "10.0.0.1",
        "SubnetMask": "255.255.255.0"
    }
]
Showing iLO IPv4 Address Info on: /redfish/v1/Managers/1/EthernetInterfaces/3/
[]
Showing iLO IPv4 Address Info on: /redfish/v1/Managers/1/EthernetInterfaces/2/
[
    {
        "Address": "0.0.0.0",
        "AddressOrigin": "DHCP",
        "Gateway": "0.0.0.0",
        "SubnetMask": "255.255.255.255"
    }
] -->
## Get iLO NIC

Obtain iLO Network Management Interface(s) Interface Enabled states. Modify lines 34-37 to display
relevant desired data or all key-value pairs.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_ilo_nic(_redfishobj, get_enabled):
    ethernet_data = {}

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        manager_ethernet_interfaces = managers_members_response.obj['EthernetInterfaces']\
                                                                                    ['@odata.id']
        manager_ethernet_interfaces_response = _redfishobj.get(manager_ethernet_interfaces)
        manager_ethernet_interfaces_members = manager_ethernet_interfaces_response.\
                                                            obj['Members']
        for _member in manager_ethernet_interfaces_members:
            _tmp = _redfishobj.get(_member['@odata.id']).obj
            ethernet_data[_member['@odata.id']] = _tmp
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#EthernetInterfaceCollection.' in instance['@odata.type'] and 'Managers' in \
                                                                        instance['@odata.id']:
                ethernet_uri = instance['@odata.id']
                ethernet_interfaces = _redfishobj.get(ethernet_uri).obj['Members']
                for _ethernet_interface in ethernet_interfaces:
                    ethernet_data[_ethernet_interface['@odata.id']] = _redfishobj.\
                                                        get(_ethernet_interface['@odata.id']).dict
                break

    if ethernet_data:
        for ethernet_interface in ethernet_data:
            sys.stdout.write("\n\nShowing iLO IPv4 Address Info on: %s\n\n" % ethernet_interface)
            sys.stdout.write("\n\'Interface_Enabled\': \'%s\'\n" % json.dumps(ethernet_data\
                                    [ethernet_interface][get_enabled], indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Response data for each available network management interface is parsed for the Redfish IPv4 Data including:
IP Address, Address Origin (Static/DHCP), Network Gateway, and Network Subnet Mask

<!-- code-block: TEXT

Showing iLO IPv4 Address Info on: /redfish/v1/Managers/1/EthernetInterfaces/1/
'Interface_Enabled': 'true'
Showing iLO IPv4 Address Info on: /redfish/v1/Managers/1/EthernetInterfaces/2/
'Interface_Enabled': 'false'
Showing iLO IPv4 Address Info on: /redfish/v1/Managers/1/EthernetInterfaces/3/
'Interface_Enabled': 'false' -->
## Get License Key

Obtain iLO Licensing Key Information.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_license_key(_redfishobj):
    license_uri = None
    license_data = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        hp_hpe = next(iter(managers_members_response.obj.Oem))
        license_collection_uri = managers_members_response.obj.Oem[hp_hpe].Links['LicenseService']\
                                                                                    ['@odata.id']
        license_collection_response = _redfishobj.get(license_collection_uri)
        license_collection_members_uri = next(iter(license_collection_response.obj\
                                                                        ['Members']))['@odata.id']
        license_data = _redfishobj.get(license_collection_members_uri).dict
        license_uri = _redfishobj.get(license_collection_members_uri).dict['@odata.id']
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#HpeiLOLicense.' in instance['@odata.type']:
                license_uri = instance['@odata.id']
                license_data = _redfishobj.get(license_uri).dict
                break

    if license_data:
        try:
            sys.stdout.write("\n\'License Info\': \'%s\'\n" % \
            json.dumps(license_data['ConfirmationRequest']['EON'], indent=4, sort_keys=True))
        except KeyError:
            sys.stdout.write("\n\'License Info\': \'%s\'\n" % \
            json.dumps(license_data['LicenseKey'], indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Response Data will include the License Type, License Key (iLO 5) and State.

<!-- code-block: JSON

"License Info": {
    "License": "iLO Advanced limited-distribution test",
    "LicenseKey": "333K2-CBV3G-P59QR-YXDTG-JKPM2",
    "Quantity": 1,
    "State": "nfr"
} -->
## Get Logical Drives

List all logical drives associated with a smart array controller.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_SmartArray_LogicalDrives(_redfishobj):

    smartstorage_response = []
    smartarraycontrollers = dict()

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
        smart_storage_uri = systems_members_response.obj.Oem.Hpe.Links\
                                                                ['SmartStorage']['@odata.id']
        smart_storage_arraycontrollers_uri = _redfishobj.get(smart_storage_uri).obj.Links\
                                                                ['ArrayControllers']['@odata.id']
        smartstorage_response = _redfishobj.get(smart_storage_arraycontrollers_uri).obj['Members']
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#HpeSmartStorageArrayController.' in instance['@odata.type']:
                smartstorage_uri = instance['@odata.id']
                smartstorage_resp = _redfishobj.get(smartstorage_uri).obj
                sys.stdout.write("Logical Drive URIs for Smart Storage Array Controller " \
                    "'%s\' : \n" % smartstorage_resp.get('Id'))
                logicaldrives_uri = smartstorage_resp.Links['LogicalDrives']['@odata.id']
                logicaldrives_resp = _redfishobj.get(logicaldrives_uri)
                if not logicaldrives_resp.dict['Members']:
                    sys.stderr.write("\tLogical drives are not available for this controller.\n")
                for drives in logicaldrives_resp.dict['Members']:
                    sys.stdout.write("\t An associated logical drive: %s\n" % drives)
                    drive_data = _redfishobj.get(drives['@odata.id']).dict
                    print(json.dumps(drive_data, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Logical drives listed

<!-- code-block: TEXT
:linenos:

Logical Drive URIs for Smart Storage Array Controller '0' :
    An associated logical drive: {'@odata.id': '/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/1/'}
    {
        "@odata.context": "/redfish/v1/$metadata#HpeSmartStorageLogicalDrive.HpeSmartStorageLogicalDrive",
        "@odata.etag": "W/\"1E5315F5\"",
        "@odata.id": "/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/1/",
        "@odata.type": "#HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive",
        "AccelerationMethod": "ControllerCache",
        "CapacityMiB": 286070,
        "Description": "HPE Smart Storage Logical Drive View",
        "Id": "1",
        "InterfaceType": "SAS",
        "LegacyBootPriority": "None",
        "Links": {
            "DataDrives": {
                "@odata.id": "/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/1/DataDrives/"
            }
        },
        "LogicalDriveEncryption": false,
        "LogicalDriveName": "Ubuntu",
        "LogicalDriveNumber": 1,
        "LogicalDriveStatusReasons": [
            "Ok"
        ],
        "LogicalDriveType": "Data",
        "MediaType": "HDD",
        "Name": "HpeSmartStorageLogicalDrive",
        "Raid": "0",
        "Status": {
            "Health": "OK",
            "State": "Enabled"
        },
        "StripeSizeBytes": 262144,
        "VolumeUniqueIdentifier": "600508B1001C62CD82E5F0A829D6F166"
    }
    An associated logical drive: {'@odata.id': '/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/2/'}
    {
        "@odata.context": "/redfish/v1/$metadata#HpeSmartStorageLogicalDrive.HpeSmartStorageLogicalDrive",
        "@odata.etag": "W/\"5765A79C\"",
        "@odata.id": "/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/2/",
        "@odata.type": "#HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive",
        "AccelerationMethod": "None",
        "CapacityMiB": 286070,
        "Description": "HPE Smart Storage Logical Drive View",
        "Id": "2",
        "InterfaceType": "SAS",
        "LegacyBootPriority": "None",
        "Links": {
            "DataDrives": {
                "@odata.id": "/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/2/DataDrives/"
            }
        },
        "LogicalDriveEncryption": false,
        "LogicalDriveName": "RedHat",
        "LogicalDriveNumber": 2,
        "LogicalDriveStatusReasons": [
            "Ok"
        ],
        "LogicalDriveType": "Data",
        "MediaType": "HDD",
        "Name": "HpeSmartStorageLogicalDrive",
        "Raid": "0",
        "Status": {
            "Health": "Warning",
            "State": "Enabled"
        },
        "StripeSizeBytes": 262144,
        "VolumeUniqueIdentifier": "600508B1001C1479064E27DBA1A62E9F"
    }
         An associated logical drive: {'@odata.id': '/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/3/'}
    {
        "@odata.context": "/redfish/v1/$metadata#HpeSmartStorageLogicalDrive.HpeSmartStorageLogicalDrive",
        "@odata.etag": "W/\"8A549D6D\"",
        "@odata.id": "/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/3/",
        "@odata.type": "#HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive",
        "AccelerationMethod": "None",
        "CapacityMiB": 286070,
        "Description": "HPE Smart Storage Logical Drive View",
        "Id": "3",
        "InterfaceType": "SAS",
        "LegacyBootPriority": "None",
        "Links": {
            "DataDrives": {
                "@odata.id": "/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/3/DataDrives/"
            }
        },
        "LogicalDriveEncryption": false,
        "LogicalDriveName": "Suse",
        "LogicalDriveNumber": 3,
        "LogicalDriveStatusReasons": [
            "Ok"
        ],
        "LogicalDriveType": "Data",
        "MediaType": "HDD",
        "Name": "HpeSmartStorageLogicalDrive",
        "Raid": "0",
        "Status": {
            "Health": "Warning",
            "State": "Enabled"
        },
        "StripeSizeBytes": 262144,
        "VolumeUniqueIdentifier": "600508B1001C9375ABBBD2D850E73768"
    }
         An associated logical drive: {'@odata.id': '/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/4/'}
    {
        "@odata.context": "/redfish/v1/$metadata#HpeSmartStorageLogicalDrive.HpeSmartStorageLogicalDrive",
        "@odata.etag": "W/\"7E05B474\"",
        "@odata.id": "/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/4/",
        "@odata.type": "#HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive",
        "AccelerationMethod": "None",
        "CapacityMiB": 286070,
        "Description": "HPE Smart Storage Logical Drive View",
        "Id": "4",
        "InterfaceType": "SAS",
        "LegacyBootPriority": "None",
        "Links": {
            "DataDrives": {
                "@odata.id": "/redfish/v1/Systems/1/SmartStorage/ArrayControllers/0/LogicalDrives/4/DataDrives/"
            }
        },
        "LogicalDriveEncryption": false,
        "LogicalDriveName": "VMWare",
        "LogicalDriveNumber": 4,
        "LogicalDriveStatusReasons": [
            "Ok"
        ],
        "LogicalDriveType": "Data",
        "MediaType": "HDD",
        "Name": "HpeSmartStorageLogicalDrive",
        "Raid": "0",
        "Status": {
            "Health": "Warning",
            "State": "Enabled"
        },
        "StripeSizeBytes": 262144,
        "VolumeUniqueIdentifier": "600508B1001C027715587DEA05B333DE"
    } -->
## Get Power Metrics

Obtain Redfish power metrics.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_powermetrics_average(_redfishobj):

    power_metrics_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        chassis_uri = _redfishobj.root.obj['Chassis']['@odata.id']
        chassis_response = _redfishobj.get(chassis_uri)
        chassis_members_uri = next(iter(chassis_response.obj['Members']))['@odata.id']
        chassis_members_response = _redfishobj.get(chassis_members_uri)
        power_metrics_uri = chassis_members_response.obj.Oem.Hpe['Power']['@odata.id']
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#Power.' in instance['@odata.type']:
                power_metrics_uri = instance['@odata.id']
                break

    if power_metrics_uri:
        power_metrics_data = _redfishobj.get(power_metrics_uri).obj.Oem.Hpe
        print("\n\nPower Data:\n\n")
        print(json.dumps(power_metrics_data, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Power Metric Data

<!-- code-block: JSON
:linenos:

{
    "@odata.context": "/redfish/v1/$metadata#HpePowerMetricsExt.HpePowerMetricsExt",
    "@odata.type": "#HpePowerMetricsExt.v2_2_0.HpePowerMetricsExt",
    "BrownoutRecoveryEnabled": true,
    "HasCpuPowerMetering": true,
    "HasDimmPowerMetering": true,
    "HasGpuPowerMetering": false,
    "HasPowerMetering": true,
    "HighEfficiencyMode": "Balanced",
    "Links": {
        "FastPowerMeter": {
            "@odata.id": "/redfish/v1/Chassis/1/Power/FastPowerMeter/"
        },
        "FederatedGroupCapping": {
            "@odata.id": "/redfish/v1/Chassis/1/Power/FederatedGroupCapping/"
        },
        "PowerMeter": {
            "@odata.id": "/redfish/v1/Chassis/1/Power/PowerMeter/"
        }
    },
    "MinimumSafelyAchievableCap": null,
    "MinimumSafelyAchievableCapValid": false,
    "SNMPPowerThresholdAlert": {
        "DurationInMin": 0,
        "ThresholdWatts": 0,
        "Trigger": "Disabled"
    }
} -->
## Get Resource Directory

Obtain iLO Resource Directory, quick access to all [‘@odata.type](mailto:'@odata.type)’ references and respective [‘@odata.id](mailto:'@odata.id)’.

{% admonition type="info" name="NOTE" %}
This resource is only available on iLO systems.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```python Example
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
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Snippet of Resource directory

<!-- code-block: TEXT
:linenos:


    #ServiceRoot.v1_5_1.ServiceRoot
            /redfish/v1/
    #Manager.v1_5_1.Manager
            /redfish/v1/Managers/1/
    #ManagerCollection.ManagerCollection
            /redfish/v1/Managers/
    #ComputerSystem.v1_10_0.ComputerSystem
            /redfish/v1/Systems/1/
    #ComputerSystemCollection.ComputerSystemCollection
            /redfish/v1/Systems/
    #Chassis.v1_6_0.Chassis
            /redfish/v1/Chassis/1/
    #ChassisCollection.ChassisCollection
            /redfish/v1/Chassis/
.... -->
## Get Schemas

Obtain schema data.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_schema(_redfishobj):
    schema_members_uris = []
    schema_members_expanded = {}

    schema_uri = _redfishobj.root.obj['JsonSchemas']['@odata.id']
    schema_response = _redfishobj.get(schema_uri)
    schema_members_uris = schema_response.obj['Members']
    for member in schema_members_uris:
        data = _redfishobj.get(member['@odata.id']).dict
        instance_id = data['Location'].index(next(iter(data['Location'])))
        schema_uri = data['Location'][instance_id]['Uri']
        schema = _redfishobj.get(schema_uri).dict
        #I am just replacing the URI link for the sub-schema with the actual schema. You will
        #see EVERYTHING
        _tmp = {schema_uri + ' ->': schema}
        data['Location'][instance_id]['Uri'] = _tmp
        schema_members_expanded[member['@odata.id']] = data

    print(json.dumps(schema_members_expanded, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Snippet of schema data for *HpeiLOManagerNetworkService*

<!-- code-block: TEXT
:linenos:

"/redfish/v1/JsonSchemas/HpeiLOManagerNetworkService/": {
        "@odata.context": "/redfish/v1/$metadata#JsonSchemaFile.JsonSchemaFile",
        "@odata.etag": "W/\"02E6EE72\"",
        "@odata.id": "/redfish/v1/JsonSchemas/HpeiLOManagerNetworkService/",
        "@odata.type": "#JsonSchemaFile.v1_0_4.JsonSchemaFile",
        "Description": "Schema Definition File for HpeiLOManagerNetworkService",
        "Id": "HpeiLOManagerNetworkService",
        "Languages": [
            "en"
        ],
        "Location": [
            {
                "Language": "en",
                "Uri": {
                    "/redfish/v1/SchemaStore/en/HpeiLOManagerNetworkService.json/ ->": {
                        "$schema": "http://json-schema.org/draft-04/schema#",
                        "@odata.id": "HpeiLOManagerNetworkService",
                        "actions": {
                            "actions": {
                                "HpeiLOManagerNetworkService.SendTestAlertMail": {
                                    "additionalProperties": false,
                                    "properties": {
                                        "Action": {
                                            "description": "Sends test alert mail to configured AlertMail email address.",
                                            "enum": [
                                                "HpeiLOManagerNetworkService.SendTestAlertMail"
                                            ],
                                            "readonly": true,
                                            "type": "string"
                                        }
                                    },
                                    "required": [
                                        "Action"
                                    ],
                                    "type": "object"
                                },
                                "HpeiLOManagerNetworkService.SendTestSyslog": {
                                    "additionalProperties": false,
                                    "properties": {
                                        "Action": {
                                            "enum": [
                                                "HpeiLOManagerNetworkService.SendTestSyslog"
                                            ],
                                            "type": "string"
                                        }
                                    },
                                    "required": [
                                        "Action"
                                    ],
                                    "type": "object"
                                }
                            },
                            "description": "These describe the POST custom actions defined for this type (although the implemented actions may be a subset of these)."
                        },
                        "additionalProperties": false,
                        "copyright": "Copyright 2014-2019 Hewlett Packard Enterprise Development, LP.  Portions Copyright 2014-2019 Distributed Management Task Force. All rights reserved.",
                        "description": "The HpeiLOManagerNetworkService object extends the Redfish ManagerNetworkProtocol resource with additional HPE functionality.",
                        "properties": {
                            "@odata.context": {
                                "$ref": "Resource.json#/definitions/odatacontext"
                            },
                            "@odata.etag": {
                                "$ref": "Resource.json#/definitions/odataetag"
                            },
                            "@odata.id": {
                                "$ref": "Resource.json#/definitions/odataid"
                            },
                            "@odata.type": {
                                "$ref": "Resource.json#/definitions/odatatype"
                            },
                            "Actions": {
                                "additionalProperties": false,
                                "properties": {
                                    "#HpeiLOManagerNetworkService.SendTestAlertMail": {
                                        "additionalProperties": false,
                                        "properties": {
                                            "target": {
                                                "description": "Link to invoke action",
                                                "type": "string"
                                            },
                                            "title": {
                                                "description": "Friendly action name",
                                                "type": "string"
                                            }
                                        },
                                        "type": "object"
                                    },
                                    "#HpeiLOManagerNetworkService.SendTestSyslog": {
                                        "additionalProperties": false,
                                        "properties": {
                                            "target": {
                                                "description": "Link to invoke action",
                                                "type": "string"
                                            },
                                            "title": {
                                                "description": "Friendly action name",
                                                "type": "string"
                                            }
                                        },
                                        "type": "object"
                                    }
                                },
                                "type": "object"
                            },
                            "AlertMailEmail": {
                                "description": "The destination email address for email alerts.",
                                "etag": true,
                                "readonly": false,
                                "type": "string"
                            },
                            "AlertMailEnabled": {
                                "description": "Indicates whether AlertMail is enabled. This can be enabled only when the properties AlertMailEmail, AlertMailSenderDomain and AlertMailSMTPServer are set or not empty.",
                                "etag": true,
                                "readonly": false,
                                "type": "boolean"
                            },
                            "AlertMailSMTPAuthEnabled": {
                                "description": "Indicates whether AlertMail SMTP Authentication is enabled. This can be enabled only when the properties AlertMailSMTPSecureEnabled, AlertMailSMTPAuthUser and AlertMailSMTPAuthPw are set or not empty.",
                                "etag": true,
                                "readonly": false,
                                "type": "boolean"
                            },
                            "AlertMailSMTPAuthPw": {
                                "description": "The password credential for SMTP server Authentication.",
                                "etag": true,
                                "maxLength": 63,
                                "readonly": false,
                                "type": [
                                    "string",
                                    "null"
                                ]
                            },
                            "AlertMailSMTPAuthUser": {
                                "description": "The username credential for SMTP server Authentication.",
                                "etag": true,
                                "maxLength": 63,
                                "readonly": false,
                                "type": "string"
                            },
                            "AlertMailSMTPPort": {
                                "default": 25,
                                "description": "The SMTP server port number.",
                                "etag": true,
                                "maximum": 65535,
                                "minimum": 1,
                                "readonly": false,
                                "type": "integer"
                            },
                            "AlertMailSMTPSecureEnabled": {
                                "description": "Indicates whether AlertMail SMTP Secure Connection (SSL/TLS) is enabled.",
                                "etag": true,
                                "readonly": false,
                                "type": "boolean"
                            },
                            "AlertMailSMTPServer": {
                                "description": "The IP address or DNS name of the SMTP server or the Mail Submission Agent (MSA).",
                                "etag": true,
                                "readonly": false,
                                "type": "string"
                            },
                            "AlertMailSenderDomain": {
                                "description": "The domain name for the sender email address.",
                                "etag": true,
                                "maxLength": 63,
                                "readonly": false,
                                "type": "string"
                            },
                            "ConfigurationSettings": {
                                "description": "State of the currently displayed configuration settings.",
                                "enum": [
                                    "Current",
                                    "SomePendingReset"
                                ],
                                "etag": true,
                                "readonly": true,
                                "type": "string"
                            },
                            "FederationEnabled": {
                                "description": "Indicates whether management processor federation management is enabled or disabled.",
                                "etag": true,
                                "readonly": false,
                                "type": "boolean"
                            },
                            "FederationSupported": {
                                "description": "Indicates whether management processor federation is supported.",
                                "etag": true,
                                "readonly": true,
                                "type": "boolean"
                            },
                            "Id": {
                                "$ref": "Resource.json#/definitions/Id"
                            },
                            "Links": {
                                "additionalProperties": false,
                                "description": "The resource URIs related to the network services managed by this manager.",
                                "properties": {
                                    "EthernetInterfaces": {
                                        "description": "The URIs of the Ethernet NICs.",
                                        "properties": {
                                            "@odata.id": {
                                                "$ref": "Resource.json#/definitions/odataid"
                                            }
                                        },
                                        "readonly": true,
                                        "type": "object"
                                    },
                                    "SNMPService": {
                                        "description": "The SNMP Service resource URI.",
                                        "properties": {
                                            "@odata.id": {
                                                "$ref": "Resource.json#/definitions/odataid"
                                            }
                                        },
                                        "readonly": true,
                                        "type": "object"
                                    }
                                },
                                "type": "object"
                            },
                            "RemoteSyslogEnabled": {
                                "description": "Indicates whether Remote Syslog is enabled. When enabled, management processor sends notification messages to the specified Syslog server. This can be enabled only when the property RemoteSyslogServer is set or not empty.",
                                "etag": true,
                                "readonly": false,
                                "type": "boolean"
                            },
                            "RemoteSyslogPort": {
                                "default": 514,
                                "description": "The port number through which the Syslog servers are listening.",
                                "etag": true,
                                "maximum": 65535,
                                "minimum": 1,
                                "readonly": false,
                                "type": "integer"
                            },
                            "RemoteSyslogServer": {
                                "description": "The IP address, FQDN, IPv6 name, or short name of the servers running the Syslog service.",
                                "etag": true,
                                "readonly": false,
                                "type": "string"
                            },
                            "SNMPTrapPort": {
                                "description": "The SNMP trap port number.",
                                "etag": true,
                                "maximum": 65535,
                                "minimum": 1,
                                "readonly": false,
                                "type": "integer"
                            },
                            "SerialOverLanLogging": {
                                "description": "Indicates whether Serial Over LAN (SOL) or Virtual Serial Port (VSP) logging is enabled.",
                                "etag": true,
                                "readonly": false,
                                "type": "boolean"
                            },
                            "VirtualMediaEncryptionEnabled": {
                                "description": "Enables or disables encryption on virtual media connections.",
                                "etag": true,
                                "readonly": false,
                                "type": "boolean"
                            },
                            "XMLResponseEnabled": {
                                "description": "Determines whether management processor responds to anonymous XML discovery requests.",
                                "etag": true,
                                "readonly": false,
                                "type": "boolean"
                            }
                        },
                        "readonly": false,
                        "title": "#HpeiLOManagerNetworkService.v2_2_0.HpeiLOManagerNetworkService",
                        "type": "object"
                    }
                }
            }
        ],
        "Name": "HpeiLOManagerNetworkService Schema Definition File",
        "Schema": "#HpeiLOManagerNetworkService.v2_2_0.HpeiLOManagerNetworkService"
    } -->
## Get Smart Array Encryption

Obtain Smart Array controller encryption property data.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_SmartArray_EncryptionSettings(_redfishobj, desired_properties):

    smartstorage_response = []
    smartarraycontrollers = dict()

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
        smart_storage_uri = systems_members_response.obj.Oem.Hpe.Links\
                                                                ['SmartStorage']['@odata.id']
        smart_storage_arraycontrollers_uri = _redfishobj.get(smart_storage_uri).obj.Links\
                                                                ['ArrayControllers']['@odata.id']
        smartstorage_response = _redfishobj.get(smart_storage_arraycontrollers_uri).obj['Members']
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#HpeSmartStorageArrayControllerCollection.' in instance['@odata.type']:
                smartstorage_uri = instance['@odata.id']
                smartstorage_response = _redfishobj.get(smartstorage_uri).obj['Members']
                break

    for controller in smartstorage_response:
        smartarraycontrollers[controller['@odata.id']] = _redfishobj.get(controller['@odata.id']).\
                                                                                                obj
        sys.stdout.write("Encryption Properties for Smart Storage Array Controller \'%s\' : \n" \
                                        % smartarraycontrollers[controller['@odata.id']].get('Id'))
        for data in smartarraycontrollers[controller['@odata.id']]:
            if data in desired_properties:
                sys.stdout.write("\t %s : %s\n" % (data, smartarraycontrollers[controller\
                                                                        ['@odata.id']].get(data)))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "@odata.context": "/redfish/v1/$metadata#HpeESKM.HpeESKM",
    "@odata.etag": "W/\"87058EB1\"",
    "@odata.id": "/redfish/v1/Managers/1/SecurityService/ESKM/",
    "@odata.type": "#HpeESKM.v2_0_0.HpeESKM",
    "Actions": {
        "#HpeESKM.ClearESKMLog": {
            "target": "/redfish/v1/Managers/1/SecurityService/ESKM/Actions/HpeESKM.ClearESKMLog/"
        },
        "#HpeESKM.TestESKMConnections": {
            "target": "/redfish/v1/Managers/1/SecurityService/ESKM/Actions/HpeESKM.TestESKMConnections/"
        }
    },
    "Id": "ESKM",
    "KeyManagerConfig": {
        "AccountGroup": "",
        "AccountName": "ilo-98f2b3217b48",
        "ESKMLocalCACertificateName": "",
        "ImportedCertificateIssuer": "",
        "ImportedCertificateSubject": ""
    },
    "KeyServerRedundancyReq": false,
    "PrimaryKeyServerAddress": null,
    "PrimaryKeyServerPort": null,
    "SecondaryKeyServerAddress": null,
    "SecondaryKeyServerPort": null
}
```
  
  {% /tab %}
  {% /tabs %}

## Import SSL Certificate

Import Secure Socket Layer Certificate.

  {% tabs %}
{% tab label="Example" %}

```python Example
def import_ssl(_redfishobj, ssl_file_path):

    https_cert_uri = None
    body = dict()

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        security_service_uri = managers_members_response.obj.Oem.Hpe.Links['SecurityService']\
                                                                                    ['@odata.id']
        security_service_response = _redfishobj.get(security_service_uri)
        https_cert_uri = security_service_response.obj.Links['HttpsCert']['@odata.id']
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#HpeHttpsCert.' in instance['@odata.type']:
                https_cert_uri = instance['@odata.id']
                break

    if https_cert_uri:
        https_cert_import_uri = _redfishobj.get(https_cert_uri).obj['Actions']\
                                                ['#HpeHttpsCert.ImportCertificate']['target']
        body = dict()
        body["Action"] = "HpeHttpsCert.ImportCertificate"
        body["Certificate"] = ssl_cert
        resp = _redfishobj.post(https_cert_import_uri, body)
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
            print("\nImporting SSL Certificate may take a few minutes...\n "\
                  "iLO will reset with new changes.\n")
```
  
  {% /tab %}
  {% /tabs %}

## Modify iLO Management User Account

Modify a management interface user account.

  {% tabs %}
{% tab label="Example" %}

```python Example
def modify_ilo_user_account(_redfishobj, username_to_modify, new_loginname, new_username, \
                         new_password, role_id, privilege_dict):

    account_collection_uri = None

    resource_instances = get_resource_directory(_redfishobj)

    if DISABLE_RESOURCE_DIR or not resource_instances:
        #resource directory is not available so we will navigate through paths manually to obtain
        #account info
        account_service_uri = _redfishobj.root.obj['AccountService']['@odata.id']
        account_service_response = _redfishobj.get(account_service_uri)
        account_collection_uri = account_service_response.obj['Accounts']['@odata.id']
        #modify role id
        if role_id:
            body = {"RoleId": role_id}
    else:
        #obtain all account instances from resource directory
        for instance in resource_instances:
            if '#ManagerAccountCollection.' in instance['@odata.type']:
                account_collection_uri = instance['@odata.id']
        if privilege_dict:
            #HPE server, so modify privileges
            body = {"Oem": {"Hpe": {"Privileges": {}}}}
            for priv in privilege_dict:
                body["Oem"]["Hpe"]["Privileges"][priv] = privilege_dict[priv]
        if new_loginname:
            #modify login name
            body["Oem"]["Hpe"]["LoginName"] = new_loginname

    if new_username:
        body["UserName"] = new_username
    if new_password:
        body["Password"] = new_password

    #find the account to modify
    account_uri_to_modify = None
    account_uris = REDFISHOBJ.get(account_collection_uri)
    for account_uri in account_uris.dict['Members']:
        account = REDFISHOBJ.get(account_uri['@odata.id'])
        if account.dict['UserName'] == username_to_modify:
            account_uri_to_modify = account_uri['@odata.id']
            break

    if not account_uri_to_modify:
        sys.stderr.write("Cannot find account to modify")
        return

    #modify the account
    resp = REDFISHOBJ.patch(account_uri_to_modify, body)

    #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
    #error message to see what went wrong
    if resp.status == 400:
        try:
            print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, sort_keys=True))
        except Exception as excp:
            sys.stderr.write("A response error occurred, unable to access iLO Extended Message "\
                             "Info...")
    elif resp.status != 200:
        sys.stderr.write("An http response of '%s' was returned.\n" % resp.status)
    else:
        print("Success!\n")
        print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

An example Redfish response error message.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.AccountModified"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Modify Virtual Media

Modify a virtual media entry.

  {% tabs %}
{% tab label="Example" %}

```python Example
def mount_virtual_media_iso(_redfishobj, iso_url, media_type, boot_on_next_server_reset):

    virtual_media_uri = None
    virtual_media_response = []

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        virtual_media_uri = managers_members_response.obj['VirtualMedia']['@odata.id']
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#VirtualMediaCollection.' in instance['@odata.type']:
                virtual_media_uri = instance['@odata.id']

    if virtual_media_uri:
        virtual_media_response = _redfishobj.get(virtual_media_uri)
        for virtual_media_slot in virtual_media_response.obj['Members']:
            data = _redfishobj.get(virtual_media_slot['@odata.id'])
            if media_type in data.dict['MediaTypes']:
                virtual_media_mount_uri = data.obj['Actions']['#VirtualMedia.InsertMedia']['target']
                post_body = {"Image": iso_url}

                if iso_url:
                    resp = _redfishobj.post(virtual_media_mount_uri, post_body)
                    if boot_on_next_server_reset is not None:
                        patch_body = {}
                        patch_body["Oem"] = {"Hpe": {"BootOnNextServerReset": \
                                                 boot_on_next_server_reset}}
                        boot_resp = _redfishobj.patch(data.obj['@odata.id'], patch_body)
                        if not boot_resp.status == 200:
                            sys.stderr.write("Failure setting BootOnNextServerReset")
                    if resp.status == 400:
                        try:
                            print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                    sort_keys=True))
                        except Exception as excp:
                            sys.stderr.write("A response error occurred, unable to access iLO"
                                             "Extended Message Info...")
                    elif resp.status != 200:
                        sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
                    else:
                        print("Success!\n")
                        print(json.dumps(resp.dict, indent=4, sort_keys=True))
                break
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

An example Redfish response error message following a successful modification of a user account.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Reboot Server

Reboot a server.

  {% tabs %}
{% tab label="Example" %}

```python Example
def reboot_server(_redfishobj):

    systems_members_response = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#ComputerSystem.' in instance['@odata.type']:
                systems_members_uri = instance['@odata.id']
                systems_members_response = _redfishobj.get(systems_uri)

    if systems_members_response:
        system_reboot_uri = systems_members_response.obj['Actions']['#ComputerSystem.Reset']\
                                                                                        ['target']
        body = dict()
        body['Action'] = 'ComputerSystem.Reset'
        body['ResetType'] = "ForceRestart"
        resp = _redfishobj.post(system_reboot_uri, body)
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                    sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

An example Redfish response error message following a successful application of virtual media.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Remove an iLO User Management Account

Delete an iLO User Management Account

  {% tabs %}
{% tab label="Example" %}

```python Example
def reboot_server(_redfishobj):

    systems_members_response = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
    else:
        for instance in resource_instances:
            #Use Resource directory to find the relevant URI
            if '#ComputerSystem.' in instance['@odata.type']:
                systems_members_uri = instance['@odata.id']
                systems_members_response = _redfishobj.get(systems_uri)

    if systems_members_response:
        system_reboot_uri = systems_members_response.obj['Actions']['#ComputerSystem.Reset']\
                                                                                        ['target']
        body = dict()
        body['Action'] = 'ComputerSystem.Reset'
        body['ResetType'] = "ForceRestart"
        resp = _redfishobj.post(system_reboot_uri, body)
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                    sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

An example Redfish response error message following a successful application of virtual media.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Reset ESKM Event log

Reset Enterprise Secure Key Manager event log.

  {% tabs %}
{% tab label="Example" %}

```python Example
def reset_ESKM_eventlog(_redfishobj):

    body = dict()
    security_service_eskm_uri = None

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
        security_service_eskm_uri = security_service_response.obj.Links['ESKM']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeESKM.' in instance['@odata.type']:
                security_service_eskm_uri = instance['@odata.id']
                break

    if security_service_eskm_uri:
        security_service_eskm_uri = _redfishobj.get(security_service_uri).obj.Links\
                                                                            ['ESKM']['@odata.id']
        security_service_eskm_resp = _redfishobj.get(security_service_eskm_uri)
        security_service_eskm_clearlog_uri = security_service_eskm_resp.obj['Actions']\
                                                                ['#HpeESKM.ClearESKMLog']['target']
        body["Action"] = "HpeESKM.ClearESKMLog"
        #We pass the URI and the dictionary as a POST command (part of the redfish object)
        resp = _redfishobj.post(security_service_eskm_clearlog_uri, body)
        #If iLO responds with something outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong

        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

An example Redfish response error message following a successful reset of ESKM log.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Reset iLO

Reset iLO BMC.

  {% tabs %}
{% tab label="Example" %}

```python Example
def reset_ilo(_redfishobj):

    managers_members_response = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#Manager.' in instance['@odata.type']:
                managers_members_uri = instance['@odata.id']
                managers_members_response = _redfishobj.get(managers_members_uri)

    if managers_members_response:
        reset_ilo_uri = managers_members_response.obj['Actions']['#Manager.Reset']['target']
        body = {'Action': 'Manager.Reset'}
        resp = _redfishobj.post(reset_ilo_uri, body)

    #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
    #error message to see what went wrong
    if resp.status == 400:
        try:
            print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, sort_keys=True))
        except Exception as excp:
            sys.stderr.write("A response error occurred, unable to access iLO Extended Message "\
                             "Info...")
    elif resp.status != 200:
        sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
    else:
        print("Success!\n")
        print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

An example Redfish response error message following a successful reset of iLO.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
"error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.14.ResetInProgress"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Sessions

In the following
<a href="https://github.com/HewlettPackard/python-ilorest-library/blob/master/examples/Redfish/sessions.py" target="_blank">example</a>,
the `sessions()` function creates a new session, prints its URI and token. Then it deletes it.

  {% tabs %}
{% tab label="Python code" %}

```Python Python code
def sessions(_redfishobj, login_account, login_password):

    new_session = {"UserName": login_account, "Password": login_password}
    response = _redfishobj.post('/redfish/v1/Sessions', new_session)

    if response.status == 201:
        print("Success!\n")
        session_uri = response.getheader("location")
        session_uri = urllib.parse.urlparse(session_uri)
        sys.stdout.write("\tSession " + session_uri.path + " created.\n")
        x_auth_token = response.getheader("x-auth-token")
        sys.stdout.write("\tThis is the session X-Auth Token key " + x_auth_token + ".\n")
        print(json.dumps(response.dict, indent=4, sort_keys=True))

        # Delete the created session
        sys.stdout.write("\tTerminating this session.\n")
        sessresp = _redfishobj.delete(session_uri.path)
        print(json.dumps(sessresp.dict, indent=4, sort_keys=True))
    else:
        sys.stderr.write("ERROR: failed to create a session.\n")
        try:
            print(json.dumps(sessresp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                            sort_keys=True))
        except Exception as excp:
            sys.stderr.write("A response error occurred, unable to access iLO Extended"
                             " Message Info...")
```
  
  {% /tab %}
{% tab label="Output" %}

```Text Output
Success!

        Session /redfish/v1/SessionService/Sessions/admin0000000067166017b810616 created.
        This is the session X-Auth Token key 69fe736fa3ce58a205d7444b5833ad80.
{
    "@odata.context": "/redfish/v1/$metadata#Session.Session",
    "@odata.etag": "W/\"34D65544\"",
    "@odata.id": "/redfish/v1/SessionService/Sessions/demopaq0000000067166017b810616",
    "@odata.type": "#Session.v1_0_0.Session",
    "Description": "Manager User Session",
    "Id": "demopaq0000000067166017b810616",
    "Name": "User Session",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeiLOSession.HpeiLOSession",
            "@odata.type": "#HpeiLOSession.v2_1_0.HpeiLOSession",
            "AccessTime": "2024-10-21T14:07:19Z",
            "LoginTime": "2024-10-21T14:07:19Z",
            "MySession": false,
            "UserExpires": "2024-10-21T14:37:19Z",
            "UserIP": "10.124.117.191",
            "UserTag": "REST",
            "UserType": "Local"
        }
    },
    "UserName": "admin"
}
        Terminating this session.
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.18.NoValidSession"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}

```
  
  {% /tab %}
  {% /tabs %}

### Session tokens

Session tokens can be cached and used for authentication for all subsequent calls
as long as the session has not been terminated by the client or timed out by the server.

{% admonition type="info" name="NOTE" %}
This is only true in production mode. Some higher security modes may require additional authentication
techniques to be performed.
{% /admonition %}

Once a session has been created, its associated token can be used with Redfish clients
as shown in this [paragraph](/docs/concepts/redfishauthentication/#using-a-session).

The following example shows how to use a valid session token with the `python-ilorest-library`.

{% admonition type="success" name="TIP" %}
If your data center is managed by HPE OneView, it is possible to create securely a
<a href="https://developer.hpe.com/blog/the-power-of-single-sign-on-with-hpe-oneview/"
target="_blank">single sign on (SSO) OneView token</a> and use it in a Python code,
as shown in the following example.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```Python Example
from redfish import RedfishClient
import sys

iloToken="e0f57dfedea47e795a8141d912e4a22e"
iloURL="https://<iLO.IP.address>"

REDFISHOBJ=RedfishClient(base_url=iloURL, session_key=iloToken)
REDFISHOBJ.login()

response = REDFISHOBJ.get("/redfish/v1/systems/1", None)

sys.stdout.write("%s\n" % response)
```
  
  {% /tab %}
  {% /tabs %}

### Session Deletion

Terminating a session from the client side simply requires deletion of the session URI.
Attempting to re-access the session results in the following response message.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.NoValidSession"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## iLO Management NIC Data

Example of ethernet management NIC enablement/disablement. On iLO systems:
\* *Ethernet Management Interface 1* is typically the physical NIC port
\* *Ethernet Management Interface 2* is typically the shared NIC interface.
\*\* Shared physical System/iLO NIC.
\*\* iLO USB port (requires the use of a USB to NIC adapter)
\* *Ethernet Management Interface 3* is typically the virtual NIC interface. This is generally
PnP with a supported Kernel/kernel virtual usb drivers.

  {% tabs %}
{% tab label="Example" %}

```python Example
def set_active_ilo_nic(_redfishobj):

    ethernet_data = {}

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        manager_ethernet_interfaces = managers_members_response.obj['EthernetInterfaces']\
                                                                                    ['@odata.id']
        manager_ethernet_interfaces_response = _redfishobj.get(manager_ethernet_interfaces)
        manager_ethernet_interfaces_members = manager_ethernet_interfaces_response.\
                                                            obj['Members']
        for _member in manager_ethernet_interfaces_members:
            _tmp = _redfishobj.get(_member['@odata.id']).obj
            ethernet_data[_member['@odata.id']] = _tmp
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#EthernetInterfaceCollection.' in instance['@odata.type'] and 'Managers' in \
                                                                        instance['@odata.id']:
                ethernet_uri = instance['@odata.id']
                ethernet_interfaces = _redfishobj.get(ethernet_uri).obj['Members']
                for _ethernet_interface in ethernet_interfaces:
                    ethernet_data[_ethernet_interface['@odata.id']] = _redfishobj.\
                                                        get(_ethernet_interface['@odata.id']).dict
                break

    if ethernet_data:
        print("\n\nShowing all available ethernet management interfaces before changes:\n\n")
        for interface in ethernet_data:
            sys.stdout.write("Ethernet Management Inteface \'%s\'\n" % ethernet_data\
                                                                            [interface].get('Id'))
            sys.stdout.write("\t\'Interface Enabled\': %s\n" % ethernet_data[interface].\
                                                                        get('InterfaceEnabled'))

    for ethernet in ethernet_data:
        sys.stdout.write("Ethernet Interface: %s\n" % ethernet)
        ans = input("Would you like to enable/disable this interface? (enable/disable)\n")
        if "en" in ans:
            body = {"InterfaceEnabled": True}
        else:
            body = {"InterfaceEnabled": False}
        resp = _redfishobj.patch(ethernet, body)
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success! You will need to reset iLO for this change to take effect.\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

## BIOS iSCSI

Configure iSCSI (Internet Small Computer Systems Interface) for ip based network attached storage.

  {% tabs %}
{% tab label="Example" %}

```python Example
def set_bios_iscsi(_redfishobj, iscsi_properties):

    iscsi_uri = None
    iscsi_data = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
        bios_uri = systems_members_response.obj['Bios']['@odata.id']
        bios_response = _redfishobj.get(bios_uri)
        iscsi_uri = bios_response.obj.Oem.Hpe.Links['iScsi']['@odata.id']
        iscsi_data = _redfishobj.get(iscsi_uri)
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeiSCSISoftwareInitiator.' in instance['@odata.type']:
                iscsi_uri = instance['@odata.id']
                iscsi_data = _redfishobj.get(iscsi_uri)

    if iscsi_data:
        for indx, inst in enumerate(iscsi_data.obj['iSCSISources']):
            if iscsi_properties['iSCSIBootInstance'] == indx:
                iscsi_data.dict['iSCSISources'][indx].update(iscsi_properties)
                resp = _redfishobj.patch(iscsi_uri, {'iSCSISources' : iscsi_data.dict['iSCSISources']})
                #If iLO responds with soemthing outside of 200 or 201 then lets check the
                #iLO extended info error message to see what went wrong
                if resp.status == 400:
                    try:
                        print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], \
                                                                        indent=4, sort_keys=True))
                    except Exception as excp:
                        print(json.dumps(resp.ori, indent=4, sort_keys=True))
                        sys.stderr.write("A response error occurred, unable to access iLO " \
                                         "Extended Message Info...")
                elif resp.status != 200:
                    sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
                else:
                    print("Success! A system reboot will be required to complete the change.\n")
                    print(json.dumps(resp.dict, indent=4, sort_keys=True))
                break
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Successful modification of iSCSI data.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.14.SystemResetRequired"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Set BIOS Password

Set BIOS Password.

  {% tabs %}
{% tab label="Example" %}

```python Example
def set_bios_password(_redfishobj, new_password, bios_password):

    bios_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
        bios_uri = systems_members_response.obj['Bios']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#Bios.' in instance['@odata.type']:
                bios_uri = instance['@odata.id']
                break

    if bios_uri:
        bios_data = _redfishobj.get(bios_uri)
        bios_change_pass_uri = bios_data.obj['Actions']['#Bios.ChangePassword']['target']
        body = dict()
        body["PasswordName"] = "Administrator"
        body["OldPassword"] = bios_password
        body["NewPassword"] = new_password
        resp = _redfishobj.post(bios_change_pass_uri, body)
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Successful modification of BIOS password.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Set ESKM Primary Key

Set HPE Enterprise Secure Key Manager Key Manager Config.

{% admonition type="info" name="NOTE" %}
A valid ESKM key manager config is required and is tested upon patch submission.
An error initializing ESKM may occur if the ESKM key manager or associated required
properties are invalid. See [‘@Message.ExtendedInfo](mailto:'@Message.ExtendedInfo)’ in the http response message.
{% /admonition %}

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information.",
        "@Message.ExtendedInfo": [{
            "MessageId": "iLO.2.14.ErrorIntializingESKM"
        }]
    }
}
```
  
  {% /tab %}
{% tab label="Example" %}

```python Example
def set_ESKM_PrimaryKeyServer(_redfishobj, primary_key_server_address, primary_key_server_port):

    eskm_uri = None
    body = dict()

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        security_service_uri = managers_members_response.obj.Oem.Hpe.Links['SecurityService']\
                                                                                    ['@odata.id']
        security_service_response = _redfishobj.get(security_service_uri)
        eskm_uri = security_service_response.obj.Links['ESKM']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeESKM.' in instance['@odata.type']:
                eskm_uri = instance['@odata.id']
                break

    if eskm_uri:

        body["PrimaryKeyServerAddress"] = primary_key_server_address
        body["PrimaryKeyServerPort"] = int(primary_key_server_port)

        resp = _redfishobj.post(eskm_uri, body)
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}
  
## Configure Ethernet Management NIC(s)

Configure Ethernet Management NIC(s) for DHCP/Static Network Addressing.

  {% tabs %}
{% tab label="Example" %}

```python Example
def set_ilo_static_ipv4(_redfishobj, ipv4_dict, dns_dict):

    ethernet_data = {}
    body = dict()

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        manager_ethernet_interfaces = managers_members_response.obj['EthernetInterfaces']\
                                                                                    ['@odata.id']
        manager_ethernet_interfaces_response = _redfishobj.get(manager_ethernet_interfaces)
        manager_ethernet_interfaces_members = manager_ethernet_interfaces_response.\
                                                            obj['Members']
        for _member in manager_ethernet_interfaces_members:
            _tmp = _redfishobj.get(_member['@odata.id']).obj
            ethernet_data[_member['@odata.id']] = _tmp
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#EthernetInterfaceCollection.' in instance['@odata.type'] and 'Managers' in \
                                                                        instance['@odata.id']:
                ethernet_uri = instance['@odata.id']
                ethernet_interfaces = _redfishobj.get(ethernet_uri).obj['Members']
                for _ethernet_interface in ethernet_interfaces:
                    ethernet_data[_ethernet_interface['@odata.id']] = _redfishobj.\
                                                        get(_ethernet_interface['@odata.id']).dict
                break

    if ethernet_data:
        print("\n\nShowing all available ethernet management interfaces before changes:\n\n")
        for interface in ethernet_data:
            sys.stdout.write("Ethernet Management Inteface \'%s\'\n" % ethernet_data\
                                                                            [interface].get('Id'))

            sys.stdout.write("\'DHCPv4\':\n")
            if ethernet_data[interface].get('DHCPv4'):
                print(json.dumps(ethernet_data[interface].get('DHCPv4'), indent=4, sort_keys=True))
            else:
                print(json.dumps(ethernet_data[interface]['Oem']['Hpe'].get('DHCPv4'), indent=4, \
                                                                                sort_keys=True))
            sys.stdout.write("\'IPv4\':\n")
            if ethernet_data[interface].get('IPv4StaticAddresses'):
                print(json.dumps(ethernet_data[interface].get('IPv4Addresses'), indent=4, \
                                                                                sort_keys=True))
            sys.stdout.write("\'StaticNameServers\':\n")
            if ethernet_data[interface].get('StaticNameServers'):
                print(json.dumps(ethernet_data[interface].get('StaticNameServers'), indent=4, \
                                                                                sort_keys=True))

    for ethernet in ethernet_data:
        sys.stdout.write("Ethernet Interface: %s\n" % ethernet)
        ans = input("Would you like to modify this interface? (y/n)\n")
        if "n" in ans:
            continue
        if 'DHCPv4' in ethernet_data[ethernet]:
            if ethernet_data[ethernet]['DHCPv4'].get('UseDNSServers'):
                resp = _redfishobj.patch(ethernet, {"DHCPv4": {"UseDNSServers": False}})
                ilo_response(_redfishobj, resp)
            if ethernet_data[ethernet]['DHCPv4'].get('UseGateway'):
                resp = _redfishobj.pathc(ethernet, {"DHCPv4": {"UseGateway": False}})
                ilo_response(_redfishobj, resp)
        if 'IPv4StaticAddresses' in ethernet_data[ethernet]:
            body.update({"IPv4Addresses": [ipv4_dict]})
        if 'StaticNameServers' in ethernet_data[ethernet]:
            body.update({"StaticNameServers" : [dns_dict.get('PrimaryDNS'), \
                                                                    dns_dict.get('SecondaryDNS')]})
        else:
            body.update({"Oem": {"Hpe": {"IPv4": {"DNSServers": [dns_dict.get('PrimaryDNS'), \
                                                                 dns_dict.get('SecondaryDNS')]}}}})
        resp = _redfishobj.patch(ethernet, body)
        ilo_response(_redfishobj, resp)
        break
```
  
  {% /tab %}
  {% /tabs %}

## Set iLO NTP Server Settings

Configure NTP Server Settings.

{% admonition type="info" name="NOTE" %}
The physical or shared ethernet networking adapter must be configured with *‘StaticNTPServers’:’True’*,
if static network time protocol servers are to be used. DHCP must also be disabled. The following is an error
message which will occur in the event DHCP is enabled while attempting to configure static NTP server entries.
{% /admonition %}

{% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "MessageArgs": [
        "StaticNTPServers"
    ],
    "MessageId": "iLO.2.14.SNTPConfigurationManagedByDHCPAndIsReadOnly"
}
```
  
{% /tab %}
{% tab label="Example" %}

```python Example
def set_ilo_ntp_servers(_redfishobj, ntp_server_list):

    date_time_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        date_time_uri = managers_members_response.obj.Oem.Hpe.Links['DateTimeService']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeiLODateTime.' in instance['@odata.type']:
                date_time_uri = instance['@odata.id']

    if date_time_uri:
        data = _redfishobj.get(date_time_uri)
        if data.dict.get('StaticNTPServers'):
            resp = _redfishobj.patch(date_time_uri, {'StaticNTPServers': ntp_server_list})
        else:
            raise Exception("\'StaticNTPServers\' property is not available/modifyable.\n")
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended " \
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
            ntp_data = _redfishobj.get(date_time_uri).dict.get('StaticNTPServers')
            print("Printing updated NTP Servers:\n")
            print(json.dumps(ntp_data, indent=4, sort_keys=True))
```
  
{% /tab %}
{% /tabs %}

### Response Example

Successful modification of StaticNTPServers. (Only displaying response from *iLODateTime*)

{% tabs %}
{% tab label="Example" %}

> ```JSON
> {
>     "error": {
>         "@Message.ExtendedInfo": [
>             {
>                 "MessageId": "iLO.2.14.SystemResetRequired"
>             }
>         ],
>         "code": "iLO.0.10.ExtendedInfo",
>         "message": "See @Message.ExtendedInfo for more information."
>     }
> }
> ```
  
  {% /tab %}
  {% /tabs %}

## Set Timezone

Configure Network Time Protocol Time zone.

{% admonition type="info" name="NOTE" %}
DHCP must be disabled. The following is an error message which will occur in the event DHCP is enabled while attempting to modify the NTP timezone.
{% /admonition %}

{% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "MessageArgs": [
        "StaticNTPServers"
    ],
    "MessageId": "iLO.2.14.SNTPConfigurationManagedByDHCPAndIsReadOnly"
}
```
  
{% /tab %}
{% tab label="Example" %}

```python Example
def set_timezone(_redfishobj, timezone):

    date_time_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        date_time_uri = managers_members_response.obj.Oem.Hpe.Links['DateTimeService']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeiLODateTime.' in instance['@odata.type']:
                date_time_uri = instance['@odata.id']

    if date_time_uri:
        data = _redfishobj.get(date_time_uri)
        if data.dict.get('TimeZone'):
            _data = {'TimeZone': {"Name": timezone}}
            resp = _redfishobj.patch(date_time_uri, _data)
        else:
            raise Exception("\'TimeZone\' property is not available/modifyable.\n")
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
                print(json.dumps(data.obj.get('TimeZoneList'), indent=4, sort_keys=True))
                sys.stderr.write("Check the TimeZone value...\n")
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended " \
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
            ntp_data = _redfishobj.get(date_time_uri).dict.get('TimeZone')
            print("Printing updated NTP Servers:\n")
            print(json.dumps(ntp_data, indent=4, sort_keys=True))
```
  
{% /tab %}
{% /tabs %}

### Response Example

Successful modification of iLO timezone.

{% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Configure iLO License Key

Configure iLO License Key.

{% tabs %}
{% tab label="Example" %}

```python Example
def set_license_key(_redfishobj, ilo_key):

    ilo_lic_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        ilo_lic_uri = managers_members_response.obj.Oem.Hpe.Links['LicenseService']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeiLOLicense.' in instance['@odata.type']:
                ilo_lic_uri = instance['@odata.id']

    if ilo_lic_uri:
        ilo_license_collection = _redfishobj.get(ilo_lic_uri)
        ilo_license_member_uri = next(iter(ilo_license_collection.obj['Members']))['@odata.id']
        try:
            ilo_license_data = _redfishobj.get(ilo_license_member_uri).obj['ConfirmationRequest']\
                                                                                            ['EON']
        except KeyError:
            sys.stdout.write("This machine will not show the full License Key.\n")
            ilo_license_data = _redfishobj.get(ilo_license_member_uri).obj['LicenseKey']

        sys.stdout.write("Current iLO License Data:\n")
        print(json.dumps(ilo_license_data, indent=4, sort_keys=True))
        resp = _redfishobj.post(ilo_lic_uri, {'LicenseKey' : ilo_key})
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
                sys.stderr.write("Check the validity of your license key...\n")
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO " \
                                 "Extended Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
{% /tab %}
{% /tabs %}

### Response Example Valid

Successful addition/modification of iLO license key.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

### Response Example Invalid

An invalid iLO license key.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.14.InvalidLicenseKey"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
{% /tab %}
{% /tabs %}

## Server Asset Tag

Configure Redfish asset tag.

  {% tabs %}
{% tab label="Example" %}

```python Example
def set_server_asset_tag(_redfishobj, tag):

    systems_members_uri = None
    systems_members_response = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#ComputerSystem.' in instance['@odata.type']:
                systems_members_uri = instance['@odata.id']
                systems_members_response = _redfishobj.get(systems_members_uri)

    if systems_members_response and systems_members_uri and tag:
        print("Current Asset Tag: \'%s\'\n" % systems_members_response.dict.get("AssetTag"))

        resp = _redfishobj.patch(systems_members_uri, {"AssetTag" : tag})
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
            time.sleep(10) #going to wait 10 seconds before obtaining the LED indicator state
            sys.stdout.write("\nUpdated Asset Tag: \'%s\'\n" % _redfishobj.\
                                                    get(systems_members_uri).dict.get("AssetTag"))
```
  
  {% /tab %}
{% /tabs %}

### Response Example

Successful addition/modification of Redfish asset tag.

{% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Server UID Light

Configure System Unit Identification Light as either ‘Lit’ or ‘Off’.

{% tabs %}
{% tab label="Example" %}

```python Example
def set_uid_light(_redfishobj):

    body = dict()
    systems_members_uri = None
    systems_members_response = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        systems_uri = _redfishobj.root.obj['Systems']['@odata.id']
        systems_response = _redfishobj.get(systems_uri)
        systems_members_uri = next(iter(systems_response.obj['Members']))['@odata.id']
        systems_members_response = _redfishobj.get(systems_members_uri)
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#ComputerSystem.' in instance['@odata.type']:
                systems_members_uri = instance['@odata.id']
                systems_members_response = _redfishobj.get(systems_members_uri)

    if systems_members_response and systems_members_uri:
        print("Current Indicator LED Status: \'%s\'\n" % systems_members_response.dict.\
                                                                            get("IndicatorLED"))
        if "Off" in systems_members_response.dict.get("IndicatorLED"):
            print("Will illuminate indicator LED.\n")
            body["IndicatorLED"] = "Lit"
        else:
            print("Will extinguish indicator LED.\n")
            body["IndicatorLED"] = "Off"

        resp = _redfishobj.patch(systems_members_uri, body)
        #If iLO responds with soemthing outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
            time.sleep(10) #going to wait 10 seconds before obtaining the LED indicator state
            sys.stdout.write("\nUpdated Indicator LED Status: \'%s\'\n" % _redfishobj.\
                                                    get(systems_members_uri).dict['IndicatorLED'])
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Successful addition/modification of UID light.

{% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "Base.1.4.Success"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Server Firmware Inventory

List all iLO onboard device firmware.

  {% tabs %}
{% tab label="Example" %}

```python Example
def get_inventory_uri(_redfishobj, select):

    update_service_uri = None
    inventory_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        update_service_uri = _redfishobj.root.obj['UpdateService']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#UpdateService.' in instance['@odata.type']:
                update_service_uri = instance['@odata.id']

    if update_service_uri:
        update_service_resp = _redfishobj.get(update_service_uri)
        if "software" in select.lower():
            inventory_uri = update_service_resp.obj['SoftwareInventory']['@odata.id']
        elif "firmware" in select.lower():
            inventory_uri = update_service_resp.obj['FirmwareInventory']['@odata.id']
        else:
            raise Exception("Invalid selection provided: Please select 'software' or 'firmware' " \
                            "to obtain the relevant invetory data.")
        sys.stdout.write("Printing data in invetory: %s\n" % inventory_uri)
        get_inventory(_redfishobj, inventory_uri)
```
  
  {% /tab %}
  {% /tabs %}

### Response Example

Snippet of Firmware Inventory Response.

  {% tabs %}
{% tab label="Example" %}

```JSON Example
[
    {
        "@odata.context": "/redfish/v1/$metadata#SoftwareInventory.SoftwareInventory",
        "@odata.etag": "W/\"0539D502\"",
        "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/15/",
        "@odata.type": "#SoftwareInventory.v1_0_0.SoftwareInventory",
        "Description": "102b0538159000e4",
        "Id": "15",
        "Name": "Embedded Video Controller",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeiLOSoftwareInventory.HpeiLOSoftwareInventory",
                "@odata.type": "#HpeiLOSoftwareInventory.v2_0_0.HpeiLOSoftwareInventory",
                "DeviceClass": null,
                "DeviceContext": "Embedded Device",
                "DeviceInstance": "PciRoot(0x0)/Pci(0x1C,0x4)/Pci(0x0,0x1)",
                "Targets": [
                    "a6b1a447-382a-5a4f-102b-0538159000e4"
                ]
            }
        },
        "Version": "2.5"
    },
    {
        "@odata.context": "/redfish/v1/$metadata#SoftwareInventory.SoftwareInventory",
        "@odata.etag": "W/\"0539D502\"",
        "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/13/",
        "@odata.type": "#SoftwareInventory.v1_0_0.SoftwareInventory",
        "Description": "14e41657103c22be",
        "Id": "13",
        "Name": "HPE Ethernet 1Gb 4-port 331i Adapter - NIC",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeiLOSoftwareInventory.HpeiLOSoftwareInventory",
                "@odata.type": "#HpeiLOSoftwareInventory.v2_0_0.HpeiLOSoftwareInventory",
                "DeviceClass": null,
                "DeviceContext": "Embedded LOM",
                "DeviceInstance": "PciRoot(0x0)/Pci(0x1C,0x0)/Pci(0x0,0x0)",
                "Targets": [
                    "a6b1a447-382a-5a4f-14e4-1657103c22be"
                ]
            }
        },
        "Version": "20.6.61"
    }
]
```
  
  {% /tab %}
  {% /tabs %}

## Test ESKM Connectivity

Test HPE Enterprise Secure Key Manager connectivity.

  {% tabs %}
{% tab label="Example" %}

```python Example
def test_ESKM_connection(_redfishobj):

    eskm_uri = None
    body = dict()

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        security_service_uri = managers_members_response.obj.Oem.Hpe.Links['SecurityService']\
                                                                                    ['@odata.id']
        security_service_response = _redfishobj.get(security_service_uri)
        eskm_uri = security_service_response.obj.Links['ESKM']['@odata.id']

    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeESKM.' in instance['@odata.type']:
                eskm_uri = instance['@odata.id']
                break

    if eskm_uri:
        eskm_test_conn_uri = _redfishobj.get(eskm_uri).obj['Actions']\
                                                    ['#HpeESKM.TestESKMConnections']['target']
        body["Action"] = "HpeESKM.TestESKMConnections"
        resp = _redfishobj.post(eskm_test_conn_uri, body)
        #If iLO responds with something outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example Not Configured

Response of a failed test ESKM connection action. (ESKM not properly configured)

{% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.14.ESKMServersNotConfigured"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Test ESKM Connectivity

Test HPE Enterprise Secure Key Manager connectivity.

  {% tabs %}
{% tab label="Example" %}

```python Example
def test_ESKM_connection(_redfishobj):

    eskm_uri = None
    body = dict()

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        managers_uri = _redfishobj.root.obj['Managers']['@odata.id']
        managers_response = _redfishobj.get(managers_uri)
        managers_members_uri = next(iter(managers_response.obj['Members']))['@odata.id']
        managers_members_response = _redfishobj.get(managers_members_uri)
        security_service_uri = managers_members_response.obj.Oem.Hpe.Links['SecurityService']\
                                                                                    ['@odata.id']
        security_service_response = _redfishobj.get(security_service_uri)
        eskm_uri = security_service_response.obj.Links['ESKM']['@odata.id']

    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#HpeESKM.' in instance['@odata.type']:
                eskm_uri = instance['@odata.id']
                break

    if eskm_uri:
        eskm_test_conn_uri = _redfishobj.get(eskm_uri).obj['Actions']\
                                                    ['#HpeESKM.TestESKMConnections']['target']
        body["Action"] = "HpeESKM.TestESKMConnections"
        resp = _redfishobj.post(eskm_test_conn_uri, body)
        #If iLO responds with something outside of 200 or 201 then lets check the iLO extended info
        #error message to see what went wrong
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, \
                                                                                sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.dict, indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

### Response Example Not Configured

Response of a failed test ESKM connection action. (ESKM not properly configured)

  {% tabs %}
{% tab label="Example" %}

```JSON Example
{
    "error": {
        "@Message.ExtendedInfo": [
            {
                "MessageId": "iLO.2.14.ESKMServersNotConfigured"
            }
        ],
        "code": "iLO.0.10.ExtendedInfo",
        "message": "See @Message.ExtendedInfo for more information."
    }
}
```
  
  {% /tab %}
  {% /tabs %}

## Update iLO Firmware

Process for a client to invoke a simple update of iLO firmware. Firmware is intended to be hosted
and gathered by iLO by pointing to a URL for iLO to consume. A valid URL will result in an http 202
response code; however, this only indicates iLO will separately handle both downloading and processing
the firmware update. The client will need to separately poll for status information regarding the update
progress.

  {% tabs %}
{% tab label="Example" %}

```python Example
def update_ilo_firmware(_redfishobj, fw_url, tpm_flag):

    body = dict()
    update_service_uri = None

    resource_instances = get_resource_directory(_redfishobj)
    if DISABLE_RESOURCE_DIR or not resource_instances:
        #if we do not have a resource directory or want to force it's non use to find the
        #relevant URI
        update_service_uri = _redfishobj.root.obj['UpdateService']['@odata.id']
    else:
        #Use Resource directory to find the relevant URI
        for instance in resource_instances:
            if '#UpdateService.' in instance['@odata.type']:
                update_service_uri = instance['@odata.id']
                break

    if update_service_uri and fw_url:
        update_uri = _redfishobj.get(update_service_uri).obj['Actions']\
                                                        ['#UpdateService.SimpleUpdate']['target']
        body["ImageURI"] = fw_url
        if tpm_flag:
            body["TPMOverrideFlag"] = tpm_flag
        resp = _redfishobj.post(update_uri, body)
        if resp.status == 400:
            try:
                print(json.dumps(resp.obj['error']\
                                 ['@Message.ExtendedInfo'], indent=4, sort_keys=True))
            except Exception as excp:
                sys.stderr.write("A response error occurred, unable to access iLO Extended "\
                                 "Message Info...")
        elif resp.status != 200:
            sys.stderr.write("An http response of \'%s\' was returned.\n" % resp.status)
        else:
            print("Success!\n")
            print(json.dumps(resp.obj['error']['@Message.ExtendedInfo'], indent=4, sort_keys=True))
```
  
  {% /tab %}
  {% /tabs %}

## Upload firmware to iLO Repository

Firmware can be stored and catalogued, to be
used at a later date or in the need to recover the platform from a failure condition. An http response code
of 200 will be supplied upon completion of a successful upload; no other extended message information is provided.

  {% tabs %}
{% tab label="Example" %}

```python Example
def upload_firmware(_redfishobj, firmware_loc, update_repo=True, update_target=False):
    resource_instances = get_resource_directory(_redfishobj)

    if DISABLE_RESOURCE_DIR or not resource_instances:
        #resource directory is not available so we will navigate through paths manually
        update_service_uri = _redfishobj.root.obj['UpdateService']['@odata.id']
    else:
        #obtain all account instances from resource directory
        for instance in resource_instances:
            if '#UpdateService.' in instance['@odata.type']:
                update_service_uri = instance['@odata.id']

    update_service_response = _redfishobj.get(update_service_uri)

    path = update_service_response.obj.HttpPushUri

    body = []
    json_data = {'UpdateRepository': update_repo, 'UpdateTarget': update_target, 'ETag': 'atag', 'Section': 0}
    session_key = _redfishobj.session_key

    filename = os.path.basename(firmware_loc)
    with open(firmware_loc, 'rb') as fle:
        output = fle.read()

    session_tuple = ('sessionKey', session_key)
    parameters_tuple = ('parameters', json.dumps(json_data))
    file_tuple = ('file', (filename, output, 'application/octet-stream'))

    #Build the payload from each multipart-form data tuple
    body.append(session_tuple)
    body.append(parameters_tuple)
    body.append(file_tuple)

    #Create our header dictionary
    header = {'Cookie': 'sessionKey=' + session_key}

    #We pass the whole list payload to post
    resp = _redfishobj.post(path, body, headers=header)

    if resp.status == 400:
        sys.stderr.write("Failed to upload firmware...")
    elif not resp.status in [200, 201]:
        sys.stderr.write("An http response of '%s' was returned.\n" % resp.status)
    else:
        print("Upload complete!\n")
```
  
  {% /tab %}
  {% /tabs %}
