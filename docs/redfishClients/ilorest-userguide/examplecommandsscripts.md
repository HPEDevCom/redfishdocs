---
seo:
  title: Use case examples and macro commands
toc:
  enable: true
  maxDepth: 2
disableLastModified: false
---

# Use Case Examples and Macro Commands

This section outlines ready to use example commands, as well as some general
use scenarios for obtaining and configuring iLO 4 (iLO 4 2.00+) and later
systems through Redfish. Legacy modes are supported for older HPRest iLO 4 systems.

## Quick Reference Table: Available scripts for Linux and Windows

| **Name** | **Description** |
|---|---|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Abort_Directory_Test.sh" target="_blank">Abort\_Directory\_Test.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Abort_Directory_Test.bat" target="_blank">Abort\_Directory\_Test.bat</a> | Aborts the AD/LDAP directory test on HPE iLO 5 and later. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Add_Federation_Group.sh" target="_blank">Add\_Federation\_Group.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Add_Federation_Group.bat" target="_blank">Add\_Federation\_Group.bat</a> | Adds a Federation group membership and grant associated privileges on HPE iLO 4 and later. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/add_sso_rec.sh" target="_blank">add\_sso\_rec.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/add_sso_rec.bat" target="_blank">add\_sso\_rec.bat</a> | Adds an HPE SIM Single Sign-On (SSO) server record to the end of the database on HPE iLO 4 or later. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Add_User.sh" target="_blank">Add\_User.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Add_User.bat" target="_blank">Add\_User.bat</a> | Adds an iLO account to the server either locally or remotely. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Administrator_reset_pw.sh" target="_blank">Administrator\_reset\_pw.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Administrator_reset_pw.bat" target="_blank">Administrator\_reset\_pw.bat</a> | Sets the default HPE iLO Administrator account password. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Boot_spp.sh" target="_blank">Boot\_spp.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Boot_spp.bat" target="_blank">Boot\_spp.bat</a> | Mount a SPP media image, reboot the system, and boot to it. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Cert_Request.sh" target="_blank">Cert\_Request.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Cert_Request.bat" target="_blank">Cert\_Request.bat</a> | Gets a certificate signing request from an HPE iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Change_Password.sh" target="_blank">Change\_Password.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Change_Password.bat" target="_blank">Change\_Password.bat</a> | Change an HPE iLO user's password in the iLO local users database. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Clear_AHS_Data.sh" target="_blank">Clear\_AHS\_Data.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Clear_AHS_Data.bat" target="_blank">Clear\_AHS\_Data.bat</a> | Clears AHS data. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Clear_EventLog.sh" target="_blank">Clear\_EventLog.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Clear_EventLog.bat" target="_blank">Clear\_EventLog.bat</a> | Clears the event log. | |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Clear_IML.sh" target="_blank">Clear\_IML.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Clear_IML.bat" target="_blank">Clear\_IML.bat</a> | Clears the Integrated Management Log (IML). |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Computer_Lock_Config.sh" target="_blank">Computer\_Lock\_Config.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Computer_Lock_Config.bat" target="_blank">Computer\_Lock\_Config.bat</a> | Configures Computer Lock settings on HPE iLO 5 or later | |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Delete_Federation_Group.sh" target="_blank">Delete\_Federation\_Group.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Delete_Federation_Group.bat" target="_blank">Delete\_Federation\_Group.bat</a> | Deletes a Federation group membership. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Delete_User.sh" target="_blank">Delete\_User.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Delete_User.bat" target="_blank">Delete\_User.bat</a> | Deletes a user from the database of local users. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/delete_sso_rec.sh" target="_blank">delete\_sso\_rec.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/delete_sso_rec.bat" target="_blank">delete\_sso\_rec.bat</a> | Deletes an HPE SIM Single Sign-On (SSO) server record by index. | |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Eject_Virtual_Media.sh" target="_blank">Eject\_Virtual\_Media.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Eject_Virtual_Media.bat" target="_blank">Eject\_Virtual\_Media.bat</a> | Ejects virtual media. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/ERS_DC_SetWebProxy.sh" target="_blank">ERS\_DC\_SetWebProxy.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/ERS_DC_SetWebProxy.bat" target="_blank">ERS\_DC\_SetWebProxy.bat</a> | Set the Embedded Remote Support (ERS) Web proxy. | |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/ERS_Get_Settings.sh" target="_blank">ERS\_Get\_Settings.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/ERS_Get_Settings.bat" target="_blank">ERS\_Get\_Settings.bat</a> | Retrieves current ERS settings. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Factory_Defaults.sh" target="_blank">Factory\_Defaults.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Factory_Defaults.bat" target="_blank">Factory\_Defaults.bat</a> | Reset the HPE iLO to factory default settings. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_AHS_Status.sh" target="_blank">Get\_AHS\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_AHS_Status.bat" target="_blank">Get\_AHS\_Status.bat</a> | Provides the status of AHS being enabled or disabled. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_All_Languages.sh" target="_blank">Get\_All\_Languages.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_All_Languages.bat" target="_blank">Get\_All\_Languages.bat</a> | Get the list of iLO supported languages. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_All_Licenses.sh" target="_blank">Get\_All\_Licenses.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_All_Licenses.bat" target="_blank">Get\_All\_Licenses.bat</a> | Get iLO license information. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_All_User_Info.sh" target="_blank">Get\_All\_User\_Info.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_All_User_Info.bat" target="_blank">Get\_All\_User\_Info.bat</a> | Returns all local user's account information. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Asset_Tag.sh" target="_blank">Get\_Asset\_Tag.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Asset_Tag.bat" target="_blank">Get\_Asset\_Tag.bat</a> | Get the BIOS asset tag attribute. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Boot_Mode.sh" target="_blank">Get\_Boot\_Mode.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Boot_Mode.bat" target="_blank">Get\_Boot\_Mode.bat</a> | Obtains the pending boot mode. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Current_Boot_Mode.sh" target="_blank">Get\_Current\_Boot\_Mode.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Current_Boot_Mode.bat" target="_blank">Get\_Current\_Boot\_Mode.bat</a> | Obtains the current boot mode. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Directory_Test_Results.sh" target="_blank">Get\_Directory\_Test\_Results.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Directory_Test_Results.bat" target="_blank">Get\_Directory\_Test\_Results.bat</a> | Obtains directory test results. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Embedded_Health.sh" target="_blank">Get\_Embedded\_Health.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Embedded_Health.bat" target="_blank">Get\_Embedded\_Health.bat</a> | Retrieves the health information of the server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_EmHealth.sh" target="_blank">Get\_EmHealth.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_EmHealth.bat" target="_blank">Get\_EmHealth.bat</a> | Retrieves the health information of the server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Encrypt.sh" target="_blank">Get\_Encrypt.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Encrypt.bat" target="_blank">Get\_Encrypt.bat</a> | Returns the current encryption settings. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Federation_All_Groups_Info.sh" target="_blank">Get\_Federation\_All\_Groups\_Info.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Federation_All_Groups_Info.bat" target="_blank">Get\_Federation\_All\_Groups\_Info.bat</a> | Retrieves a list of all federation group memberships and granted privileges. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Federation_Group.sh" target="_blank">Get\_Federation\_Group.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Federation_Group.bat" target="_blank">Get\_Federation\_Group.bat</a> | Retrieves the privileges granted to a specified federation group. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Federation_Multicast_Options.sh" target="_blank">Get\_Federation\_Multicast\_Options.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Federation_Multicast_Options.bat" target="_blank">Get\_Federation\_Multicast\_Options.bat</a> | Retrieves the current federation multicast options. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_FIPS_Status.sh" target="_blank">Get\_FIPS\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_FIPS_Status.bat" target="_blank">Get\_FIPS\_Status.bat</a> | Returns the current FIPs mode. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_FW_Version.sh" target="_blank">Get\_FW\_Version.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_FW_Version.bat" target="_blank">Get\_FW\_Version.bat</a> | Returns the iLO current firmware version. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Global.sh" target="_blank">Get\_Global.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Global.bat" target="_blank">Get\_Global.bat</a> | Returns the current global settings. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Host_APO.sh" target="_blank">Get\_Host\_APO.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Host_APO.bat" target="_blank">Get\_Host\_APO.bat</a> | Obtains the automatic power on and power on delay settings of the server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Host_Power.sh" target="_blank">Get\_Host\_Power.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Host_Power.bat" target="_blank">Get\_Host\_Power.bat</a> | Returns the current power state for the host server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Host_Power_Saver.sh" target="_blank">Get\_Host\_Power\_Saver.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Host_Power_Saver.bat" target="_blank">Get\_Host\_Power\_Saver.bat</a> | Returns the current power state for the host server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Hotkey_Config.sh" target="_blank">Get\_Hotkey\_Config.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Hotkey_Config.bat" target="_blank">Get\_Hotkey\_Config.bat</a> | Obtains the remote console hot keys. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_IML.sh" target="_blank">Get\_IML.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_IML.bat" target="_blank">Get\_IML.bat</a> | Retrieves the Integrated Management Log (IML). |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_LDAP_CA_Cert_Status.sh" target="_blank">Get\_LDAP\_CA\_Cert\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_LDAP_CA_Cert_Status.bat" target="_blank">Get\_LDAP\_CA\_Cert\_Status.bat</a> | Obtains the LDAP CA certificate status on HPE iLO 4 and later. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Language.sh" target="_blank">Get\_Language.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Language.bat" target="_blank">Get\_Language.bat</a> | Reads the default language on iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Network.sh" target="_blank">Get\_Network.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Network.bat" target="_blank">Get\_Network.bat</a> | Returns the current network settings. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_OA_Info.sh" target="_blank">Get\_OA\_Info.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_OA_Info.bat" target="_blank">Get\_OA\_Info.bat</a> | Returns the enclosure data for c-Class blade infrastructure. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_One_Time_Boot_Order.sh" target="_blank">Get\_One\_Time\_Boot\_Order.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_One_Time_Boot_Order.bat" target="_blank">Get\_One\_Time\_Boot\_Order.bat</a> | Retrieves the current state of the One Time Boot. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_PS_Data.sh" target="_blank">Get\_PS\_Data.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_PS_Data.bat" target="_blank">Get\_PS\_Data.bat</a> | Retrieves power supply information from the server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Persistent_Boot_Order.sh" target="_blank">Get\_Persistent\_Boot\_Order.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Persistent_Boot_Order.bat" target="_blank">Get\_Persistent\_Boot\_Order.bat</a> | Retrieves the current state of the boot order. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Persmouse_Status.sh" target="_blank">Get\_Persmouse\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Persmouse_Status.bat" target="_blank">Get\_Persmouse\_Status.bat</a> | Obtains the persistent mouse and keyboard status. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_PowerCap.sh" target="_blank">Get\_PowerCap.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_PowerCap.bat" target="_blank">Get\_PowerCap.bat</a> | Returns the power cap setting on the host server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Power_On_Time.sh" target="_blank">Get\_Power\_On\_Time.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Power_On_Time.bat" target="_blank">Get\_Power\_On\_Time.bat</a> | Obtains the server power on time. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Power_Readings.sh" target="_blank">Get\_Power\_Readings.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Power_Readings.bat" target="_blank">Get\_Power\_Readings.bat</a> | Obtains the power readings from the server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Product_Name.sh" target="_blank">Get\_Product\_Name.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Product_Name.bat" target="_blank">Get\_Product\_Name.bat</a> | Obtains the product name. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Pwreg_Alert_Threshold.sh" target="_blank">Get\_Pwreg\_Alert\_Threshold.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Pwreg_Alert_Threshold.bat" target="_blank">Get\_Pwreg\_Alert\_Threshold.bat</a> | Obtains the power alert threshold. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Rack_Settings.sh" target="_blank">Get\_Rack\_Settings.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Rack_Settings.bat" target="_blank">Get\_Rack\_Settings.bat</a> | Returns the enclosure data for c-Class blade infrastructure. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_SDCard_Status.sh" target="_blank">Get\_SDCard\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_SDCard_Status.bat" target="_blank">Get\_SDCard\_Status.bat</a> | Provides information as to whether an SD card is connected to the server. Possible return values are "PRESENT", "Absent", and "UNKNOWN". |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_SNMP_IM.sh" target="_blank">Get\_SNMP\_IM.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_SNMP_IM.bat" target="_blank">Get\_SNMP\_IM.bat</a> | Returns current SNMP and HPE Insight Manager security settings. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_SSO_Settings.sh" target="_blank">Get\_SSO\_Settings.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_SSO_Settings.bat" target="_blank">Get\_SSO\_Settings.bat</a> | Retrieves the HPE SIM Single Sign-On (SSO) settings. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Security_Msg.sh" target="_blank">Get\_Security\_Msg.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Security_Msg.bat" target="_blank">Get\_Security\_Msg.bat</a> | Retrieves the current security text message set in the iLO login banner. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Server_FQDN.sh" target="_blank">Get\_Server\_FQDN.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Server_FQDN.bat" target="_blank">Get\_Server\_FQDN.bat</a> | Obtains the fully qualified domain name from the host server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Server_Name.sh" target="_blank">Get\_Server\_Name.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Server_Name.bat" target="_blank">Get\_Server\_Name.bat</a> | Obtains the host server name. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Supported_Boot_Mode.sh" target="_blank">Get\_Supported\_Boot\_Mode.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Supported_Boot_Mode.bat" target="_blank">Get\_Supported\_Boot\_Mode.bat</a> | Obtains the supported boot modes. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_TPM_Status.sh" target="_blank">Get\_TPM\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_TPM_Status.bat" target="_blank">Get\_TPM\_Status.bat</a> | Returns the status of the Trusted Platform Module (TPM). |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_UID_Status.sh" target="_blank">Get\_UID\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_UID_Status.bat" target="_blank">Get\_UID\_Status.bat</a> | Returns the current state of the Unit ID LED of the host server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_User.sh" target="_blank">Get\_User.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_User.bat" target="_blank">Get\_User.bat</a> | Returns data about the user account named in the GET_USER command. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_VM_Status.sh" target="_blank">Get\_VM\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_VM_Status.bat" target="_blank">Get\_VM\_Status.bat</a> | Obtains the status of the virtual media devices. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_iLO_Log.sh" target="_blank">Get\_iLO\_Log.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_iLO_Log.bat" target="_blank">Get\_iLO\_Log.bat</a> | Retrieves the event log. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Hotkey_Config.sh" target="_blank">Hotkey\_Config.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Hotkey_Config.bat" target="_blank">Hotkey\_Config.bat</a> | Configures a set of remote console hot keys for iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Import_Cert.sh" target="_blank">Import\_Cert.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Import_Cert.bat" target="_blank">Import\_Cert.bat</a> | Imports a signed certificate into iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Import_LDAP_CA_Cert.sh" target="_blank">Import\_LDAP\_CA\_Cert.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Import_LDAP_CA_Cert.bat" target="_blank">Import\_LDAP\_CA\_Cert.bat</a> | Imports an LDAP CA certificate on iLO 4 and iLO 5. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Insert_Virtual_Media.sh" target="_blank">Insert\_Virtual\_Media.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Insert_Virtual_Media.bat" target="_blank">Insert\_Virtual\_Media.bat</a> | Inserts a virtual media image. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/License.sh" target="_blank">License.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/License.bat" target="_blank">License.bat</a> | Applies the license key for the Integrated Lights-Out Advanced Pack. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Mod_Encrypt_Settings.sh" target="_blank">Mod\_Encrypt\_Settings.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Mod_Encrypt_Settings.bat" target="_blank">Mod\_Encrypt\_Settings.bat</a> | Configures the encryption settings for iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Mod_Federation_Group.sh" target="_blank">Mod\_Federation\_Group.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Mod_Federation_Group.bat" target="_blank">Mod\_Federation\_Group.bat</a> | Modifies a federation group membership and associated privileges on iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Mod_Network_Settings.sh" target="_blank">Mod\_Network\_Settings.sh</a><br>Script not available for Windows            | Configures the network settings for iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Mod_SNMP_IM_Settings.sh" target="_blank">Mod\_SNMP\_IM\_Settings.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Mod_SNMP_IM_Settings.bat" target="_blank">Mod\_SNMP\_IM\_Settings.bat</a> | Configures the SNMP and HPE Insight Manager integration settings. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Mod_SSO_Settings.sh" target="_blank">Mod\_SSO\_Settings.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Mod_SSO_Settings.bat" target="_blank">Mod\_SSO\_Settings.bat</a> | Configures HPE SIM Single Sign-ON (SSO) settings on iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Mod_User.sh" target="_blank">Mod\_User.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Mod_User.bat" target="_blank">Mod\_User.bat</a> | Modifies an existing password and privileges in the database of iLO users. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Mod_VLAN.sh" target="_blank">Mod\_VLAN.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Mod_VLAN.bat" target="_blank">Mod\_VLAN.bat</a> | Configures the iLO Shared Network Port with a user-defined VLAN ID. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Mod_VM_Port_Settings.sh" target="_blank">Mod\_VM\_Port\_Settings.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Mod_VM_Port_Settings.bat" target="_blank">Mod\_VM\_Port\_Settings.bat</a> | Configures the virtual media port functionality on iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/RBSU_POST_IP.sh" target="_blank">RBSU\_POST\_IP.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/RBSU_POST_IP.bat" target="_blank">RBSU\_POST\_IP.bat</a> | Configures the management processor RBSU to display the IP address during POST |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Reset_RIB.sh" target="_blank">Reset\_RIB.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Reset_RIB.bat" target="_blank">Reset\_RIB.bat</a> | Resets (reboots) the iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Reset_Server.sh" target="_blank">Reset\_Server.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Reset_Server.bat" target="_blank">Reset\_Server.bat</a> | Power cycles (off and then on) the host server in which the iLO is operating. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Send_Snmp_Test_Trap.sh" target="_blank">Send\_Snmp\_Test\_Trap.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Send_Snmp_Test_Trap.bat" target="_blank">Send\_Snmp\_Test\_Trap.bat</a> | Sends a test SNMP trap to the alert destinations configured for the iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_AHS_Status.sh" target="_blank">Set\_AHS\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_AHS_Status.bat" target="_blank">Set\_AHS\_Status.bat</a> | Enables or disables AHS logging. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Asset_Tag.sh" target="_blank">Set\_Asset\_Tag.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Asset_Tag.bat" target="_blank">Set\_Asset\_Tag.bat</a> | Sets the asset tag, which is limited to 32 characters. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Boot_Mode.sh" target="_blank">Set\_Boot\_Mode.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Boot_Mode.bat" target="_blank">Set\_Boot\_Mode.bat</a> | Sets the pending boot mode. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Brownout.sh" target="_blank">Set\_Brownout.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Brownout.bat" target="_blank">Set\_Brownout.bat</a> | Enables or disables brownout support. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_FIPS_Enable.sh" target="_blank">Set\_FIPS\_Enable.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_FIPS_Enable.bat" target="_blank">Set\_FIPS\_Enable.bat</a> | Enables FIPs mode. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Federation_Multicast_Options.sh" target="_blank">Set\_Federation\_Multicast\_Options.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Federation_Multicast_Options.bat" target="_blank">Set\_Federation\_Multicast\_Options.bat</a> | Sets the federation multicast options. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Host_APO.sh" target="_blank">Set\_Host\_APO.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Host_APO.bat" target="_blank">Set\_Host\_APO.bat</a> | Sets the automatic power on and power on delays settings of the server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Host_Power.sh" target="_blank">Set\_Host\_Power.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Host_Power.bat" target="_blank">Set\_Host\_Power.bat</a> | Toggles the power of the host server in which iLO 4 or iLO5 is executing. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Host_Power_Saver.sh" target="_blank">Set\_Host\_Power\_Saver.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Host_Power_Saver.bat" target="_blank">Set\_Host\_Power\_Saver.bat</a> | Sets the Power Regulator feature on the host server in iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Language.sh" target="_blank">Set\_Language.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Language.bat" target="_blank">Set\_Language.bat</a> | Sets the default language on iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_One_Time_Boot_Order.sh" target="_blank">Set\_One\_Time\_Boot\_Order.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_One_Time_Boot_Order.bat" target="_blank">Set\_One\_Time\_Boot\_Order.bat</a> | Sets a one-time boot order. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Persistent_Boot_Order.sh" target="_blank">Set\_Persistent\_Boot\_Order.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Persistent_Boot_Order.bat" target="_blank">Set\_Persistent\_Boot\_Order.bat</a> | Sets a persistent boot order. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Persmouse_Status.sh" target="_blank">Set\_Persmouse\_Status.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Persmouse_Status.bat" target="_blank">Set\_Persmouse\_Status.bat</a> | Sets the persistent mouse and keyboard. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Power_Cap.sh" target="_blank">Set\_Power\_Cap.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_PowerCap.bat" target="_blank">Set\_PowerCap.bat</a> | Sets the Power Cap feature on the host server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Pwreg_Alert_Threshold.sh" target="_blank">Set\_Pwreg\_Alert\_Threshold.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Pwreg_Alert_Threshold.bat" target="_blank">Set\_Pwreg\_Alert\_Threshold.bat</a> | Sets the power alert threshold for iLO. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Security_Msg.sh" target="_blank">Set\_Security\_Msg.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Security_Msg.bat" target="_blank">Set\_Security\_Msg.bat</a> | Configures a security text message in the iLO login banner. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Server_Name.sh" target="_blank">Set\_Server\_Name.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Server_Name.bat" target="_blank">Set\_Server\_Name.bat</a> | Sets the host server name. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Virtual_Power_BTN.sh" target="_blank">Set\_Virtual\_Power\_BTN.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Virtual_Power_BTN.bat" target="_blank">Set\_Virtual\_Power\_BTN.bat</a> | Simulates a physical press of the server power button or simulates the physical press and hold of the server power button for a cold boot or warm boot. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Shared_Network_Port.sh" target="_blank">Shared\_Network\_Port.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Shared_Network_Port.bat" target="_blank">Shared\_Network\_Port.bat</a> | Configures the iLO device to pass network traffic on the shared host network port. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Start_Directory_Test.sh" target="_blank">Start\_Directory\_Test.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Start_Directory_Test.bat" target="_blank">Start\_Directory\_Test.bat</a> | Validates the configured directory settings. The directory test results are reset when directory settings are saved or when the directory tests are started. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/UID_Control.sh" target="_blank">UID\_Control.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/UID_Control.bat" target="_blank">UID\_Control.bat</a> | Toggles the UID on the host server. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Update_Firmware.sh" target="_blank">Update\_Firmware.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Update_Firmware.bat" target="_blank">Update\_Firmware.bat</a> | Updates the iLO firmware. |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Update_Language.sh" target="_blank">Update\_Language.sh</a><br><a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Update_Language.bat" target="_blank">Update\_Language.bat</a> | Updates the language pack of HPE iLO. |

## BIOS Attributes Examples

[BIOS Attributes](/docs/concepts/biosdatamodel/#bios-attribute-registry-overview) are configurable selections for the system BIOS. Configured attributes in iLO are transferred from a staging area for implementation into the current settings area upon the next system reboot.

### Get the system asset tag BIOS attribute

|    **Linux**                   | **Windows**                                                                   |
|--------------------------------|------------------------------------------------------------------------------ |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Asset_Tag.sh" target="_blank">Get\_Asset\_Tag.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Asset_Tag.bat" target="_blank">Get\_Asset\_Tag.bat</a> |

```shell
.\Get_Asset_Tag.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
ServerAssetTag="MySystem"
Logging session out.
```

### Set the system asset tag BIOS attribute

|    **Linux**                   | **Windows**                                                                   |
|--------------------------------|------------------------------------------------------------------------------ |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Asset_Tag.sh" target="_blank">Set\_Asset\_Tag.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Asset_Tag.bat" target="_blank">Set\_Asset\_Tag.bat</a> |

```shell
.\Set_Asset_Tag.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
Committing changes...
One or more properties were changed and will not take effect until system is reset.
Logging session out.
```

### Set Server Name

|    **Linux**                   | **Windows**                                                                   |
|--------------------------------|------------------------------------------------------------------------------ |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Server_Name.sh" target="_blank">Set\_Server\_Name.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Server_Name.bat" target="_blank">Set\_Server\_Name.bat</a> |

```shell
.\Set_Server_Name.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
Committing changes...
One or more properties were changed and will not take effect until system is reset.
Logging session out.
```

## Changing BIOS Administrator Password

The `Bios` type has two properties that both need to be used to change the administrator password, `AdminPassword` and `OldAdminPassword`. `AdminPassword` is the new password you want to change to, and `OldAdminPassword` is the current password you have.

:::info NOTE
If there is no current password, you must include `OldAdminPassword=""`
:::

![BIOS Password Example 1](images/BIOSPassword_1.png "BIOS Password Example 1")

If you perform a `get` command to find the current `AdminPassword` and `OldAdminPassword` values, you will notice that their values are listed as `None`, regardless of what their actual values are, as seen above.

![BIOS Password Example 2](images/BIOSPassword_2.png "BIOS Password Example 2")

In order to change the administrator password, you need to set the `AdminPassword` (the new value you want) and the `OldAdminPassword` (what the admin password was before), as well as include the `–biospassword` flag if the system is iLO 4.

:::info NOTE
The `biospassword` value is the same as the `OldAdminPassword` value.
:::

![BIOS Password Example 3](images/BIOSPassword_3.png "BIOS Password Example 3")

After you&apos;ve set the values for `AdminPassword` and `OldAdminPassword`, you need to commit your changes and reboot your server:

:::info NOTE
To change the administrator password, `AdminPassword` and `OldAdminPassword` must be set in the same line.
:::

![BIOS Password Example 4](images/BIOSPassword_4.png "BIOS Password Example 4")

Then when you log into the server again, the BIOS password will have been updated to the new value. However, you cannot see the values for `AdminPassword` or `OldAdminPassword`.

## BIOS Boot Settings and Control

The following examples demonstrate methods to alter the boot configuration of the system.
:::info NOTE
Redfish BIOS boot settings only support UEFI (Unified Extensible Firmware Interface). Legacy options are not supported,
but may be available through configuration of BIOS attributes.
:::

### Get Current Boot Mode

|    **Linux**                   | **Windows**                                                                   |
|--------------------------------|------------------------------------------------------------------------------ |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Boot_Mode.sh" target="_blank">Get\_Boot\_Mode.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Boot_Mode.bat" target="_blank">Get\_Boot\_Mode.bat</a> |
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Current_Boot_Mode.sh" target="_blank">Get\_Current\_Boot\_Mode.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Current_Boot_Mode.bat" target="_blank">Get\_Current\_Boot\_Mode.bat</a> |

```shell
.\Get_Boot_Mode.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done

Logging session out.
```

### Get Default Boot Order


|    **Linux**                    | **Windows**                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Persistent_Boot_Order.sh" target="_blank">Get\_Persistent\_Boot\_Order.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Persistent_Boot_Order.bat" target="_blank">Get\_Persistent\_Boot\_Order.bat</a> |

```shell
.\Get_Persistent_Boot_Order.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
PersistentBootConfigOrder=HD.SD.1.2
                           HD.EmbRAID.1.3
                           CD.RearUSB.4.2
                           Generic.USB.1.1
                           HD.EmbRAID.1.2
                           NIC.FlexLOM.1.1.Httpv4
                           NIC.FlexLOM.1.1.IPv4
                           NIC.FlexLOM.1.1.Httpv6
                           NIC.FlexLOM.1.1.IPv6
Logging session out.
```

### Set Default Boot Order

|    **Linux**                    | **Windows**                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Persistent_Boot_Order.sh" target="_blank">Set\_Persistent\_Boot\_Order.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Persistent_Boot_Order.bat" target="_blank">Set\_Persistent\_Boot\_Order.bat</a> |

```shell
.\Set_Persistent_Boot_Order.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
Committing changes...
One or more properties were changed and will not take effect until system is reset.
Logging session out.
```

### Set One Time Boot

Configure one time boot selection. A subsequent system reboot will return the boot settings to normal (property is automatically altered following POST by the BIOS provider)

|    **Linux**                    | **Windows**                                                                 |
|---------------------------------|-----------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_One_Time_Boot_Order.sh" target="_blank">Set\_One\_Time\_Boot\_Order.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_One_Time_Boot_Order.bat"  target="_blank">Set\_One\_Time\_Boot\_Order.bat</a> |

```shell
.\Set_One_Time_Boot_Order.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done


Logging session out.

```

### Get Supported Boot Mode

|    **Linux**                    | **Windows**                                                                 |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Supported_Boot_Mode.sh" target="_blank">Get\_Supported\_Boot\_Mode.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Supported_Boot_Mode.bat" target="_blank">Get\_Supported\_Boot\_Mode.bat</a>|

```shell
.\Get_Supported_Boot_Mode.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
NAME
    BootMode


DISPLAY NAME
    Boot Mode


HELP TEXT
    Use this option to select the boot mode of the system. Selecting
    UEFI Mode configures the system to boot Unified Extensible
    Firmware Interface (UEFI) compatible operating systems. Selecting
    Legacy BIOS Mode configures the system to boot traditional
    operating systems in Legacy BIOS compatibility mode. The operating
    system can only boot in the mode in which it is installed. The
    following options require booting in UEFI Mode: Secure Boot, IPv6
    PXE Boot, boot > 2.2 TB Disks in AHCI SATA Mode, and Smart Array
    SW RAID.


************************************************

WARNING
    Boot Mode changes require a system reboot in order to take effect.
    Changing the Boot Mode can impact the ability of the server to
    boot the installed operating system. An operating system is
    installed in the same mode as the platform during the
    installation. If the Boot Mode does not match the operating system
    installation, the system cannot boot. The following features
    require that the server be configured for UEFI Mode: Secure Boot,
    IPv6 PXE Boot, Boot > 2.2 TB Disks in AHCI SATA Mode, and Smart
    Array SW RAID.


**********************************************


TYPE
    Enumeration


READ-ONLY
    False


POSSIBLE VALUES
    Uefi
    LegacyBios

Logging session out.
```

### Set Boot Mode

```shell
.\Set_Boot_Mode.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
Committing changes...

Logging session out.
```

Configure system boot mode.

|    **Linux**                    | **Windows**                                                                 |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_Boot_Mode.sh" target="_blank">Set\_Boot\_Mode.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_Boot_Mode.bat" target="_blank">Set\_Boot\_Mode.bat</a>|

## BootOrder Command Examples

The `bootorder` command is made up of a list of select, get,
and set commands. In order to demonstrate the order of these events,
the `bootorder` command is manually stepped through one step at
a time to show that it only uses other provided commands to perform its task.

![Bootorder Example 1](images/BootOrder_1.png "BootOrder example 1")

First the server is logged into, and the `select` and `get`
commands are performed on the `Bios` type and the `BootMode` property,
respectively.

![Bootorder Example 2](images/BootOrder_2.png "BootOrder example 2")

Next the `select` and `get` commands are used to retrieve the `BootSourceOverrideSupported`
property of the `ComputerSystem` type.

:::info NOTE
All of these operations, such as `select` and `get`,
are already implemented in the RESTful Interface Tool.
:::

![Bootorder Example 3](images/BootOrder_3.png "BootOrder example 3")

If the `bootmode` retrieved earlier is UEFI, then the `UefiTargetBootSourceOverrideSupported`
property (one time boot settings) is retrieved with the get command. If the `bootmode` is not UEFI,
then the one time boot settings would have been set to `None`.

![Bootorder Example 4](images/BootOrder_4.png "BootOrder example 4")

If this is not a one time boot or a continuous boot, and the `disable boot` flag
has not been set, then the `HpServerBootSettings` type is selected with
the `select`
command, and the `PersistentBootConfigOrder`
property is retrieved with the `get` command.

![Bootorder Example 5](images/BootOrder_5.png "BootOrder example 5")

Then, using this information along with the specified boot order provided
in the command, the new boot order is updated using the `set` command.

![Bootorder Example 6](images/BootOrder_6.png "BootOrder example 6")

After making all the changes to the boot order, the changes are finally
committed with the commit command.

All of the commands shown here are executed the same way in the
actual `bootorder` command, and are called in the same order to
execute the `bootorder` command. You can write your own scripts
to combine commands just like bootorder did,
to use the provided commands in the RESTful Interface Tool for higher-level
functionality.

## Resetting iLO

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Reset_RIB.sh" target="_blank">Reset_RIB.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Reset_RIB.bat" target="_blank">Reset_RIB.bat</a> |

```shell
.\Reset_RIB.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
After iLO resets the session will be terminated.
Please wait for iLO to initialize completely before logging in again.
This process may take up to 3 minutes.

A management processor reset is in progress.
```

## Reboot the Server

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Reset_Server.sh" target="_blank">Reset\_Server.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Reset_Server.bat" target="_blank">Reset\_Server.bat</a>|

```shell
.\Reset_Server.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
After the server is rebooted the session will be terminated.
Please wait for the server to boot completely to login again.
Rebooting server in 3 seconds...
The operation completed successfully.
Logging session out.
```

## Logging Examples

iLO Logs consist of Active Health System (AHS), Integrated Event Log (IEL),
and an Integrated Management Log (IML). Logs can be retrieved for analysis or
cleared to wipe the slate.

### Set AHS Status

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Set_AHS_Status.sh" target="_blank">Set\_AHS\_Status.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Set_AHS_Status.bat" target="_blank">Set\_AHS\_Status.bat</a> |

```shell
.\Set_AHS_Status.bat 100.100..100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
------------------------------------------------------------------------------
Discovering data...Done

Logging session out.

```

### Clear AHS Log

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Clear_AHS_Data.sh" target="_blank">Clear\_AHS\_Data.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Clear_AHS_Data.bat" target="_blank">Clear\_AHS\_Data.bat</a> |

```shell
.\Clear_AHS_Data.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done

Logging session out.
```

### Clear IML Log

|    **Linux**                    | **Windows**                                                                |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Clear_IML.sh" target="_blank">Clear\_IML.sh</a>|  <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Clear_IML.bat" target="_blank">Clear\_IML.bat</a> |

```shell
./Clear_IML.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done

Logging session out.
```

### Clear IEL Log

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Clear_EventLog.sh" target="_blank">Clear\_EventLog.sh</a>|  <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Clear_EventLog.bat" target="_blank">Clear\_EventLog.bat</a> |

```shell
./Clear_EventLog.bat 100.100.100.101 administrator password
word
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done

Logging session out.

```

## Directory Command Examples

HPE iLO based systems can be linked to domain controllers, usage of the the
directory command can perform modification and tests against Lightweight
Directory Access Protocol (LDAP) directory information services and Microsoft
based active directory (AD) domain network controllers. The following examples
are of interest:

### Get LDAP CA Certificate State

```shell
.\Get_LDAP_CA_Cert_Status.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
--------------------------------------------------------------------------------
Discovering data...Done
Oem=
     Hpe=
          Sessions=
                    LDAPAuthLicenced=True
Logging session out.

```

### Start Directory Test

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Start_Directory_Test.sh" target="_blank">Start\_Directory\_Test.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Start_Directory_Test.bat" target="_blank">Start\_Directory\_Test.bat</a> |

```shell
.\Start_Directory_Test.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2020 Hewlett Packard Enterprise Development LP
------------------------------------------------------------------------------
Discovering data...Done
The operation completed successfully.

The operation completed successfully.
Logging session out.
```

### Directory Test Abort

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Abort_Directory_Test.sh" target="_blank">Abort\_Directory\_Test.sh</a> |<a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Abort_Directory_Test.bat" target="_blank">Abort\_Directory\_Test.bat</a> |

```shell
.\Abort_Directory_Test.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2020 Hewlett Packard Enterprise Development LP
------------------------------------------------------------------------------
Discovering data...Done

The operation completed successfully.
Logging session out.
```

### Directory Test Results

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Directory_Test_Results.sh" target="_blank">Get\_Directory\_Test\_Results.sh</a> |<a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Directory_Test_Results.bat" target="_blank">Get\_Directory\_Test\_Results.bat</a> |

```shell
.\Get_Directory_Test_Results.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2020 Hewlett Packard Enterprise Development LP
------------------------------------------------------------------------------
Discovering data...Done
The operation completed successfully.

Test: Directory Server DNS Name
------------------------
Status: Failed
Notes: Unable to resolve host name

Test: Ping Directory Server
------------------------
Status: Failed
Notes:

Test: Connect to Directory Server
------------------------
Status: Failed
Notes: Unable to connect to the directory server LDAP port within timeout. Verify directory server address.

Test: Connect using SSL
------------------------
Status: Failed
Notes: Unable to connect to directory server within timeout.

Test: Bind to Directory Server
------------------------
Status: NotRun
Notes:

Test: Directory Administrator login
------------------------
Status: NotRun
Notes:

Test: User Authentication
------------------------
Status: NotRun
Notes:

Test: User Authorization
------------------------
Status: Failed
Notes:

Test: Directory User Contexts
------------------------
Status: NotRun
Notes:

Test: LOM Object exists
------------------------
Status: NotRun
Notes:

Logging session out.
```

## iLO User Management Examples

HPE iLO Management Account Users are able to perform a range of operations on a
system based on permissions levels (or in HPE iLO 5 and later, based on Redfish
predefined roles). This can vary from administrative level system changes to
monitoring/read-only get requests, as well as a number.

### Privileges Table (iLO 4 and iLO 5)

|          **Privileges**        |        **Description**        |**iLO Support start**|
|--------------------------------|-------------------------------|---------------|
|            LoginPriv           |            Login              |      iLO 5     |
|        RemoteConsolePriv       |         Remote Console        |   iLO 4  |
|     VirtualPowerandResetPriv   |    Virtual Power and Reset    |   iLO 4  |
|        VirtualMediaPriv        |        Virtual Media          |   iLO 4  |
|       HostBIOSConfigPriv       |          Host Bios            |      iLO 5     |
|          iLOConfigPriv         |    Configure iLO Settings     |   iLO4  |
|          UserConfigPriv        |   Administer User Accounts    |   iLO4  |
|        HostNICConfigPriv       |          Host NIC             |      iLO5     |
|     HostStorageConfigPriv      |        Host Storage           |      iLO5     |
|    SystemRecoveryConfigPriv    |     System Recovery Set       |      iLO5     |

### Predefined Roles Table (iLO 5 and later Only)

|  **Predefined Roles**  |                    **Privileges**                     |
|------------------------|-------------------------------------------------------|
|      Administrator     |  LoginPriv, RemoteConsolePriv, VirtualMediaPriv, VirtualPowerandResetPriv, HostBIOSConfigPriv, iLOConfigPriv, UserConfigPriv, HostNICConfigPriv, HostStorageConfigPriv, SystemRecoveryConfigPriv      |
|        Operator        |  HostBIOSConfigPriv, HostNICConfigPriv, LoginPriv, HostStorageConfigPriv, RemoteConsolePriv, VirtualMediaPriv, VirtualPowerandResetPriv |
|        ReadOnly        |                       LoginPriv                       |

### Add User

Add a new iLO management user account. By default only the login privilege is
provided (equivalent to read-only predefined role).
Additional privileges (and roleIDs for iLO 5 systems) can be configured.

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Add_User.sh" target="_blank">Add\_User.sh</a> |<a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Add_User.bat" target="_blank">Add\_User.bat</a>|

```shell
.\Add_User.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done
The operation completed successfully.

ilorest iloaccounts

iLO Account info:
[Id] UserName (LoginName):
Privileges
-----------------
[1] Administrator (Administrator):
ServiceAccount=False
HostNICConfigPriv=True
HostStorageConfigPriv=True
RemoteConsolePriv=True
iLOConfigPriv=True
VirtualMediaPriv=True
UserConfigPriv=True
HostBIOSConfigPriv=True
VirtualPowerAndResetPriv=True
LoginPriv=True
SystemRecoveryConfigPriv=True

[2] admin (admin):
ServiceAccount=False
HostNICConfigPriv=True
HostStorageConfigPriv=True
RemoteConsolePriv=True
iLOConfigPriv=True
VirtualMediaPriv=True
UserConfigPriv=True
HostBIOSConfigPriv=True
VirtualPowerAndResetPriv=True
LoginPriv=True
SystemRecoveryConfigPriv=False

[3] testUser (testAccount):
ServiceAccount=False
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False

Logging session out.
```

### Modify User Password

Reset an iLO management account password. The first example is specifically for
the default Administrator account, the second for any subsequently.
created account.

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Administrator_reset_pw.sh" target="_blank">Administrator\_reset\_pw.sh</a> |<a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Administrator_reset_pw.bat" target="_blank">Administrator\_reset\_pw.bat</a>|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Change_Password.sh" target="_blank">Change\_password.sh</a> |<a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Change_Password.bat" target="_blank">Change\_password.bat</a>|

```shell
.\Administrator_reset_pw.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done

Logging session out.
```

### Get All User Info

Get all iLO management account user privileges.

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_User.sh" target="_blank">Get\_User.sh</a> |<a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_User.bat" target="_blank">Get\_User.bat</a>|

```shell
.\Get_User.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done

Oem=
     Hpe=
          Privileges=
                      HostNICConfigPriv=True
                      HostStorageConfigPriv=True
                      RemoteConsolePriv=True
                      iLOConfigPriv=True
                      VirtualMediaPriv=True
                      UserConfigPriv=True
                      HostBIOSConfigPriv=True
                      VirtualPowerAndResetPriv=True
                      LoginPriv=True
                      SystemRecoveryConfigPriv=True
Logging session out.
```

### Delete User

Completely remove an iLO management account.

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Delete_User.sh" target="_blank">Delete\_User.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Delete_User.bat" target="_blank">Delete\_User.bat</a> |

```shell
.\Delete_User.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done

Logging session out.
```

## Federation Group Examples

iLO Federation allows management of a collection of servers from a single iLO.

### Add Federation Group

Add a new federation group by defining a federation name, key and associated
privileges for the group.

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Add_Federation_Group.sh" target="_blank">Add\_Federation\_Group.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Add_Federation_Group.bat" target="_blank">Add\_Federation\_Group.bat</a> |

```shell
.\Add_Federation_Group.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done


Logging session out.

iLOrest > ilofederation default

iLO Federation Id list with Privileges:

Name=DEFAULT:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=True
SystemRecoveryConfigPriv=False

Name=newfedname:
HostNICConfigPriv=False
HostStorageConfigPriv=False
RemoteConsolePriv=False
iLOConfigPriv=False
VirtualMediaPriv=False
UserConfigPriv=False
HostBIOSConfigPriv=False
VirtualPowerAndResetPriv=False
LoginPriv=False
SystemRecoveryConfigPriv=False
```

### Get Federation Group

Obtain Federation Group Privileges.

|    **Linux**                    | **Windows**                                                                  |
|---------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Federation_All_Groups_Info.sh" target="_blank">Get\_Federation\_All\_Groups\_Info.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Federation_All_Groups_Info.bat " target="_blank">Get\_Federation\_All\_Groups\_Info.bat</a> |

```shell
.\Get_Federation_Group.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done

Privileges=
            HostNICConfigPriv=False
            HostStorageConfigPriv=False
            RemoteConsolePriv=False
            iLOConfigPriv=False
            VirtualMediaPriv=False
            UserConfigPriv=False
            HostBIOSConfigPriv=False
            VirtualPowerAndResetPriv=False
            LoginPriv=True
            SystemRecoveryConfigPriv=False
Logging session out.
```

### Get Federation Multicast Options

Obtain Federation Group Multicast Settings. Settings are used in broadcast for
iLO collective control.

|    **Linux**                    | **Windows**                                                                  |
|---------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Federation_Multicast_Options.sh" target="_blank">Get\_Federation\_Multicast\_Options.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Federation_Multicast_Options.bat " target="_blank">Get\_Federation\_Multicast\_Options.bat</a> |

```shell
.\Get_Federation_Multicast_Options.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done

Oem=
     Hpe=
          FederationConfig=
                            MulticastDiscovery=Enabled
                            IPv6MulticastScope=Site
                            MulticastAnnouncementInterval=600
                            MulticastTimeToLive=5
                            iLOFederationManagement=Enabled
Logging session out.
```

### Delete a Federation Group

Deletion of a Federation Group

|    **Linux**                    | **Windows**                                                                  |
|---------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Delete_Federation_Group.sh" target="_blank">Delete\_Federation\_Group.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Delete_Federation_Group.bat" target="_blank">Delete\_Federation\_Group.bat</a> |

```shell
.\Delete_Federation_Group.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done
[200] The operation completed successfully.
The operation completed successfully.
Logging session out.

```

## Virtual Media

HPE iLO provides a method to boot from virtualized media by providing a remote
URL. This can include bootable virtualized USB, Floppy disk, CD/DVD ISO media.

### Mount Virtual Media

Mount Virtual Media (To Be Updated)

|    **Linux**                    | **Windows**                                                                  |
|---------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Insert_Virtual_Media.sh" target="_blank">Insert\_Virtual\_Media.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Insert_Virtual_Media.bat" target="_blank">Insert\_Virtual\_Media.bat</a> |

### Eject Virtual Media

Eject virtual media from the system.

|    **Linux**                    | **Windows**                                                                  |
|---------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Eject_Virtual_Media.sh" target="_blank">Eject\_Virtual\_Media.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Eject_Virtual_Media.bat" target="_blank">Eject\_Virtual\_Media.bat</a> |

```shell
.\Eject_Virtual_Media.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014, 2019 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done

Logging session out.
```

## Configuring iLO Management Network Interfaces

iLO's management networking interfaces can be customized to allow for
connectivity for physical, dedicated connections, shared networking
(single physical adapter contains internal VLAN capabilities) and virtual
networking interfaces for connectivity to the host operating system
(iLO 5 1.45 and later).

### Get Networking

Retrieve networking parameters, enablements and data ports.

|    **Linux**                    | **Windows**                                                                  |
|---------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Get_Network.sh" target="_blank">Get\_Network.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Get_Network.bat" target="_blank">Get\_Network.bat</a> |

```shell
.\Get_Network.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done
FQDN=ilocn771200w0.americas.hpqcorp.net
HTTP=
      ProtocolEnabled=True
      Port=80
HTTPS=
       ProtocolEnabled=True
       Port=443
HostName=ilocn771200w0
IPMI=
      ProtocolEnabled=False
      Port=623
KVMIP=
       ProtocolEnabled=True
       Port=17990
Oem=
     Hpe=
          RemoteSyslogServer=""
          VirtualMediaEncryptionEnabled=True
          AlertMailSMTPAuthPw=None
          FederationEnabled=True
          RemoteSyslogPort=514
          RemoteSyslogEnabled=False
          ConfigurationSettings=Current
          SerialOverLanLogging=False
          SNMPTrapPort=162
          AlertMailSMTPSecureEnabled=True
          XMLResponseEnabled=True
          AlertMailSMTPAuthEnabled=False
          AlertMailEnabled=False
          AlertMailSMTPAuthUser=""
          AlertMailEmail=""
          AlertMailSenderDomain=""
          AlertMailSMTPPort=25
          FederationSupported=True
          AlertMailSMTPServer=""
SNMP=
      ProtocolEnabled=True
      Port=161
SSDP=
      ProtocolEnabled=True
      NotifyMulticastIntervalSeconds=600
      NotifyTTL=5
      Port=1900
      NotifyIPv6Scope=Site
SSH=
     ProtocolEnabled=True
     Port=22
Status=
        State=Enabled
VirtualMedia=
              ProtocolEnabled=True
              Port=17988
Logging session out.
```

### Shared Network Port

Configure iLO shared networking port.

|    **Linux**                    | **Windows**                                                                  |
|---------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Shared_Network_Port.sh" target="_blank">Shared\_Network\_Port.sh</a>
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Shared_Network_Port.bat" target="_blank">Shared\_Network\_Port.bat</a> |

```shell
.\Shared_Network_Port.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done

Logging session out.
```

## Finding iLO MAC address

Finding the iLO MAC address is not implemented in the RESTful Interface Tool,
but is easily reached by a set of `select` and `list` commands.

![MAC Address Example 1](images/MacAddress1.png "Mac Address example 1")

First login to the server. Then `select` the `EthernetInterfaces.` type.

![MAC Address Example 2](images/MacAddress2.png "Mac Address example 2")

Now using the `list` command, list the `name`, `macaddress`, and `status`
values with the filter of the value `Name` starting with Manager.

## Setting Active iLO NIC

```json Gen10
{
    "path": "/redfish/v1/Managers/1/EthernetInterfaces/1",
    "body": {
        "Oem": {
            "Hpe": {
                "NICEnabled": true
            }
        }
     }
}
```

```json Gen9
{
    "path": "/redfish/v1/Managers/1/EthernetInterfaces/1",
    "body": {
        "Oem": {
            "Hp": {
                "NICEnabled": true
            }
        }
     }
}
```

To set the HPE iLO NIC, first login to the server. Then use a `rawpatch` command

![NIC Example 1](images/NIC.png "Mac Address example 1")

To set the NIC, first login to the server. Then we will be using a `rawpatch` command

## Updating Firmware

Firmware updates can be submitted to iLO for self update or can be utilized for
component level updates. On iLO 5 systems with integrated flash storage, these
updates can be uploaded and staged for later use or stored, for recovery
purposes (recovery install set).

### Update Component

Update a language pack component.

|    **Linux**                    | **Windows**                                                                  |
|---------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Update_Language.sh" target="_blank">Update\_Language.sh</a>| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Update_Language.bat" target="_blank">Update\_Language.bat</a> |

```shell
./Update_Language.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done
A component with the same name (PICGen10_1.0.7s.fwpkg) has been found. Would you like to upload and overwrite this file? (y/n)y
The operation completed successfully.
Component PICGen10_1.0.7s.fwpkg uploaded successfully
Waiting for iLO UpdateService to finish processing the component
0 hour(s) 1 minute(s) 18 second(s)
Logging session out.
```

## Trusted Platform Module (TPM)

### Disabling the TPM

![TPM Example](images/TPM_disable.png "TPM Example")

**Above:** When the server is rebooted, the `TpmState` is changed from
`PresentEnabled` to `PresentDisabled`.

If you need to disable TPM on a group of servers, you can use a set of commands
in RESTful Interface Tool. For example, if you are installing SPPs and OSs on
bare-metal servers, and you need to disable TPM prior to starting installation.

### Enabling the TPM

![TPM Example](images/TPM_enable.png "TPM Example")

To enable the TPM, you can set the `TpmState` to `PresentEnabled`. **See side example**.

:::info NOTE
When you are disabling or enabling TPM, depending on the TPM chip type on the
server, the TPM visibility might be `Tpm2Visibility` or `TpmVisibility`.
:::

## Raw commands Examples

### Updating the HPE iLO license key

```json
{
    "path": "/rest/v1/Managers/1/LicenseService",
    "body": {
        "LicenseKey": "license key"
    }
}
```

To update an iLO license key, use the `rawpost` command. For more information,
refer to the
[rawpost command](/docs/redfishclients/ilorest-userguide/rawcommands/#rawpost-command).

The following is an example of the JSON to include when using the `rawpost` command.

To delete an iLO license, use the `rawdelete` command. For more information, see
[rawdelete command](/docs/redfishclients/ilorest-userguide/rawcommands/#rawdelete-command).
The following is an example of the JSON to include when using the `rawdelete` command:

`rawdelete /rest/v1/Managers/1/LicenseService`

### Deploying a Service Pack for ProLiant (SPP)

```json
{
    "path": "/rest/v1/Managers/1/VirtualMedia/2",
    "body": {
        "Action": "InsertVirtualMedia",
        "Target": "/OEM/Hp",
        "Image": "https://xx.xxx.xxx.xxx:xx/spp.iso"
    }
}
```

To deploy a SPP, use the `rawpost` command. For more information, refer to the
[rawpost command](/docs/redfishclients/ilorest-userguide/rawcommands/#rawpost-command).

`ilorest -v --nologo rawpost virtualmedia.json --url=xx.xx.xx.xxx --user=Admin --password=password`

The following is an example of the JSON to include when using the
`rawpost` command.

## General Script Examples

### Selecting and getting properties from a type

```shell

:: selectget.bat [URI] [USERNAME] [PASSWORD]
@echo off

set argC=0
for %%x in (%*) do Set /A argC+=1
if %argC% LSS 3 goto :failCondition
goto :main

:failCondition
@echo Usage:
@echo selectget.bat [URI] [USERNAME] [PASSWORD]
goto :EOF

:main
@echo *****************************************
@echo ************* Logging in... *************
@echo *****************************************
ilorest.exe login %1 -u %2 -p %3
@echo *****************************************
@echo ******* selecting Bios type... ********
@echo *****************************************
ilorest.exe select Bios.
@echo *****************************************
@echo ********** getting BootMode... **********
@echo *****************************************
ilorest.exe get
pause
```

This is a batch file that logs into a remote server, selects the `Bios` type,
and gets the `BootMode` value.

### Saving and Loading a File Using File-Based Editing Mode

This is a file-based edit mode helper for HPE iLOrest.

1. Run to download selected type to a file called `ilorest.json`.

2. Edit the `ilorest.json` file to make changes.

3. Press any key running batch program to continue with program, uploading the
   newly edited program to the server.

```shell
:: saveload.bat [SELECTOR] [FILENAME]
:: Specify a type with the SELECTOR tag, and
:: save to a file called FILENAME
@echo off
set argC=0
for %%x in (%*) do Set /A argC+=1
if %argC% LSS 2 goto :failCondition
goto :main

:failCondition
@echo Usage:
@echo saveload.bat [SELECTOR] [FILENAME]
@echo specify a type with the SELECTOR tag, and
@echo save to a file called FILENAME
goto :EOF

:main
ilorest.exe login
ilorest.exe save --selector=%1 --json -f %2
@echo Edit the file, then:
pause
ilorest.exe load -f %2
```

## Miscellaneous

Configure iLO licensing, set unit identification lamp, hotkey configuration,
obtaining system power metrics, and configuring the iLO's time zone.

### iLO Licensing

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/License.sh" target="_blank">License.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/License.bat" target="_blank">License.bat</a>|

```shell
.\License.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done

Logging session out.
```

### UID Control

iLO based systems utilize a unit identification led which can be controlled to
easily and uniquely identify a physical device. This script
modifies the UID light state of HPE iLO 4 and iLO 5 only. Refer to the iLO 6
[Changelog](/docs/redfishservices/ilos/ilo6/ilo6_changelog/) for details.

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/UID_Control.sh" target="_blank">UID\_Control.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/UID_Control.bat" target="_blank">UID\_Control.bat</a>|

```shell
.\UID_Control.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
Discovering data...Done


Logging session out.

ilorest get IndicatorLED --selector=ComputerSystem.
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------

```

### Hotkey Configuration

|    **Linux**                   | **Windows**                                                                  |
|--------------------------------|------------------------------------------------------------------------------|
| <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Linux/Hotkey_Config.sh" target="_blank">Hotkey\_Config.sh</a> | <a href="https://github.com/HewlettPackard/python-redfish-utility/blob/master/examples/Windows/Hotkey_Config.bat" target="_blank">Hotkey\_Config.bat</a>|

```shell
./Hotkey_Config.bat 100.100.100.101 administrator password
iLOrest : RESTful Interface Tool version 3.1
Copyright (c) 2014-2020 Hewlett Packard Enterprise Development LP
-------------------------------------------------------------------------------
The operation completed successfully.
Logging session out.
```

### Setting iLO time zone

![Timezone Example 1](images/timezone1.png "Time zone example 1")

First we login and select the `HpeiLODateTime.` type. If using Gen9, select the
`HpiLODateTime` type instead. We then `list` the `TimeZoneList`.

Now scroll around looking for the time zone that is wanted. In the case of the
example, we will be using US/Hawaii. Take note of the index associated with the
Name(2 in the case of US/Hawaii).

![Time zone Example 2](images/timezone2.png "Time zone example 2")

Finally, we `set` the Index to 2. Check the status to make sure the change
is queued and finally make sure to `commit` to finalize the changes.

### Getting Powermetric average

First login to the server.

![Power Example 1](images/power.png "Powermetric example 1")

Next `select` the Power. type. Finally `list powercontrol`.
The power metric average is represented by the `AverageConsumedWatts` value.

### Getting Encryption Settings

To get the encryption settings, first login to the server

![Encryption Setting Example 1](images/encryptionsettings.png "Encryption Setting example 1")

Then `select` the `HpeSmartStorageArrayControllerCollection` type.
If on a `Gen9` server select `HpSmartStorageArrayControllerCollection` instead.

In the provided example, many of the resources for the encryption setting
are not available. If available there will be values of `Name`, `Model`,
`SerialNumber`, `EncryptionBootPasswordSet`,
`EncryptionCryptoOfficerPasswordSet`, `EncrpytionLocalKeyCacheEnabled`,
`EncryptionMixedVolumesEnabled`,`EncryptionPhyiscalDriveCount`,
`EncryptionRecoveryParamsSet`,`EncryptionStandaloneModeEnabled`,
and/or `EncryptionUserPasswordSet`.

### Retrieve SSD WearOut/WearStatus

Depending on the context, the life time status of SSD devices is called WearOut
or WearStatus. Redfish has standardized this property as
`PredictedMediaLifeLeftPercent` in the
[Drive schema](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_storage_resourcedefns{{process.env.LATEST_FW_VERSION}}/#drive).

For each drive in a server, the following example retrieves its URI,
predicted media life left percent, physical locations and the HPE legacy
WearStatus, from an HPE iLO6 based server with firmware 1.55 and latest UBMx firmware.

```shell Retrieval of PredictedMediaLifeLeftPercent

ilorest list "@odata.id" PredictedMediaLifeLeftPercent   \
             PhysicalLocation/PartLocation/ServiceLabel  \
             Oem/Hpe/WearStatus                          \
             --json --select Drive.
```

```json Output (truncated)
[
  {
    "@odata.id": "/redfish/v1/Chassis/3/Drives/3/",
    "Oem": {
      "Hpe": {
        "WearStatus": "OK"
      }
    },
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Embedded:Port=2:Box=2:Bay=3"
      }
    },
    "PredictedMediaLifeLeftPercent": 100
  },
  {
    "@odata.id": "/redfish/v1/Chassis/DE00D000/Drives/1",
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Slot=1:Port=1:Box=3:Bay=7"
      }
    },
    "PredictedMediaLifeLeftPercent": 100.0
  },
  {
    "@odata.id": "/redfish/v1/Chassis/DE00E000/Drives/5",
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Slot=14:Port=1:Box=1:Bay=2"
      }
    },
    "PredictedMediaLifeLeftPercent": 100.0
  },
  {
    "@odata.id": "/redfish/v1/Chassis/1/Drives/6/",
    "Oem": {
      "Hpe": {
        "WearStatus": "Unknown"
      }
    },
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Embedded:Port=2:Box=2"
      }
    }
  },
  {
    "@odata.id": "/redfish/v1/Chassis/1/Drives/1/",
    "Oem": {
      "Hpe": {
        "WearStatus": "OK"
      }
    },
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Embedded:Port=4A:Box=3:Bay=5"
      }
    },
    "PredictedMediaLifeLeftPercent": 100
  },
  {
    "@odata.id": "/redfish/v1/Chassis/DE00E000/Drives/64518",
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Slot=14:Port=1:Box=1:Bay=6"
      }
    }
  },
  {
    "@odata.id": "/redfish/v1/Chassis/2/Drives/1/",
    "Oem": {
      "Hpe": {
        "WearStatus": "OK"
      }
    },
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Embedded:Port=4A:Box=3:Bay=5"
      }
    },
    "PredictedMediaLifeLeftPercent": 100
  },
  {
    "@odata.id": "/redfish/v1/Chassis/3/Drives/4/",
    "Oem": {
      "Hpe": {
        "WearStatus": "Unknown"
      }
    },
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Embedded:Port=2:Box=2"
      }
    }
  },
  {
    "@odata.id": "/redfish/v1/Systems/1/Storage/DE00F000/Drives/0",
    "PhysicalLocation": {
      "PartLocation": {
        "ServiceLabel": "Slot=5:Port=1:Box=3:Bay=1"
      }
    },
    "PredictedMediaLifeLeftPercent": 100.0
  },
  ...
]
```
