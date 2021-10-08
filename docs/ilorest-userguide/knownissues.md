---
title: Known Issues
---
# Known Issues

The following are known issues present in the current release of ilorest. If available, a link to the relevant CA has been included:

Issue | CA | Issue Description  | Workaround
---------- |---------- |---------- |----------
Get Command unable to retrieve multiple properties. | | Get Command is unable to retrieve multiple, specific properties within a single path/type. The Get command can either retrieve a single property or all but not a specific subset. | Retrieve individually, use get on the full path/type or perform a save/rawget. External parsing/pruning suggested. 
'--serviceaddress' unavailabe in Directory Command (Kerberos) | | Directory command subcommand "Kerberos" optional argument "--serviceaddress" is not available. | use save and load to modify the "ServiceAddresses" lists for Active Directory and/or LDAP. Raw commands can also be utilized.