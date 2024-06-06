---
excludeFromSearch: true
seo:
  title: Bios resource definitions
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Bios resource definitions of iLO 5 v3.01

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details.

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.

## Bios

`@odata.type: "#Bios.v1_0_0.Bios"`

Bios contains properties surrounding a BIOS Attribute Registry (where the system-specific BIOS attributes are described) and the Actions needed to perform changes to BIOS settings, which typically require a system reset to apply.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bios`|GET |
|`/redfish/v1/systems/{item}/bios/settings`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type|
|---|---|
|`@Redfish.Settings/SettingsObject`|[Bios](../ilo5_bios_resourcedefns301/#bios)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo5_hpe_resourcedefns301/#hpebaseconfigs)|
|`Oem/Hpe/Links/Boot`|[HpeServerBootSettings](../ilo5_hpe_resourcedefns301/#hpeserverbootsettings)|
|`Oem/Hpe/Links/Mappings`|[HpeBiosMapping](../ilo5_hpe_resourcedefns301/#hpebiosmapping)|
|`Oem/Hpe/Links/ScalablePmem`|[HpeScalablePmem](#hpescalablepmem)|
|`Oem/Hpe/Links/TlsConfig`|[HpeTlsConfig](../ilo5_hpe_resourcedefns301/#hpetlsconfig)|
|`Oem/Hpe/Links/iScsi`|[HpeiSCSISoftwareInitiator](../ilo5_hpe_resourcedefns301/#hpeiscsisoftwareinitiator)|

### AttributeRegistry

Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|The Resource ID of the Attribute Registry for the BIOS Attributes resource.|
|Type|string or null|
|Read Only|True|

### Attributes

**AcpiHpet (High Precision Event Timer (HPET) ACPI Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the High Precision Event Timer (HPET) table and device object in ACPI. When disabled, the HPET is not available to an operating system that supports the HPET through the industry standard ACPI name space.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AcpiRootBridgePxm (Memory Proximity Reporting for I/O)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When enabled, the System BIOS reports the proximity relationship between I/O devices and system memory to the operating system. Most operating systems can use this information to efficiently assign memory resources for devices, such as network controllers and storage devices. Additionally, certain I/O devices might not be able to take advantage of I/O handling benefits if their OS drivers are not properly optimized to support this feature. See your operating system and I/O device documentation for more details.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AcpiSlit (ACPI SLIT)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|The ACPI SLIT (System Locality Information Table) defines the relative access times between processors, memory subsystems, and I/O subsystems. Operating systems that support the SLIT can use this information to improve performance by allocating resources and workloads more efficiently.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AdjSecPrefetch (Adjacent Sector Prefetch)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the processor Adjacent Sector Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AdminEmail (Administrator E-mail Address)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter the server administrator's e-mail address.|
|Type|String|
|Read Only|False|

**AdminName (Administrator Name)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter the server administrator's name text.|
|Type|String|
|Read Only|False|

**AdminOtherInfo (Administrator Other Information)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter the server administrator's information text.|
|Type|String|
|Read Only|False|

**AdminPhone (Administrator Phone Number)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter the server administrator's phone number text.|
|Type|String|
|Read Only|False|

**AdvCrashDumpMode (Advanced Crash Dump Mode)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable the Advanced Crash Dump Mode. When enabled, the system will be configured to log additional debug information to the Active Health System logs when an unexpected system crash is experienced. This option should only be enabled when directed by qualified service personnel|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**AdvancedMemProtection (Advanced Memory Protection)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure additional memory protection with ECC (Error Checking and Correcting). Options and support vary per system. Advanced ECC keeps all installed memory available for use while still protecting the system against all single-bit failures and certain multi-bit failures. Online Spare Memory enables a system to automatically map out a group of memory that is detected to be at an increased risk of receiving uncorrected memory errors based on an advanced analysis of corrected memory errors. The mapped out memory is automatically replaced by a spare group of memory without interrupting the system. Mirrored Memory provides the maximum protection against uncorrected memory errors that might otherwise result in a system failure. Fault Tolerant Advanced Double Device Data Correction (ADDDC) enables the system to correct memory errors and continue to operate in cases of multiple DRAM device failures on a DIMM. This provides protection against uncorrectable memory errors beyond what is available with Advanced ECC.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`FastFaultTolerantADDDC`|Fault Tolerant Memory (ADDDC)|
|`AdvancedEcc`|Advanced ECC Support|
|`OnlineSpareAdvancedEcc`|Online Spare with Advanced ECC Support|
|`MirroredAdvancedEcc`|Mirrored Memory with Advanced ECC Support|

**AsrStatus (ASR Status)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the Automatic Server Recovery option, which enables the system to automatically reboot if the server locks up.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AsrTimeoutMinutes (ASR Timeout)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Automatic Server Recovery is enabled, you can use this option to set the time to wait before rebooting the server in the event of an operating system crash or server lockup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Timeout10`|10 Minutes|
|`Timeout15`|15 Minutes|
|`Timeout20`|20 Minutes|
|`Timeout30`|30 Minutes|
|`Timeout5`|5 Minutes|

**AssetTagProtection (Asset Tag Protection)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to lock Asset Tag information. When set to lock, the Asset Tag is not erased if the default system settings are restored.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Locked`|Locked|
|`Unlocked`|Unlocked|

**AutoPowerOn (Automatic Power-On)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the server power state when AC power is applied to the system.  Restore Last Power State returns the system to its previous power state when AC power is restored after an AC power loss.  Note: This option is not available on all systems.  Always Power On and Always Power Off causes the system to always return to the "on" and "off" state, respectively, whenever power is applied, even if the system is in the "off" state when power is lost.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AlwaysPowerOn`|Always Power On|
|`AlwaysPowerOff`|Always Power Off|
|`RestoreLastState`|Restore Last Power State|

**BootMode (Boot Mode)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the boot mode of the system. Selecting UEFI Mode configures the system to boot Unified Extensible Firmware Interface (UEFI) compatible operating systems. Selecting Legacy BIOS Mode configures the system to boot traditional operating systems in Legacy BIOS compatibility mode. The operating system can only boot in the mode in which it is installed. The following options require booting in UEFI Mode: Secure Boot, IPv6 PXE Boot, boot > 2.2 TB Disks in AHCI SATA Mode, and Smart Array SW RAID.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Uefi`|UEFI Mode|
|`LegacyBios`|Legacy BIOS Mode|

**BootOrderPolicy (Boot Order Policy)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure how the system attempts to boot devices per the Boot Order list when no bootable device is found. If configured to 'Retry Boot Order Indefinitely,' the system continuously attempts to process the Boot Order list until a bootable device is found. If configured to 'Attempt Boot Order Once,' the system attempts to process all items in the Boot Order list once, and if unsuccessful, waits for user input to proceed. If configured for 'Reset After Failed Boot Attempt,' the system attempts to process all items in the Boot Order list once, and then reboots the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`RetryIndefinitely`|Retry Boot Order Indefinitely|
|`AttemptOnce`|Attempt Boot Order Once|
|`ResetAfterFailed`|Reset After Failed Boot Attempt|

**ChannelInterleaving (Channel Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to modify the level of interleaving for which the memory system is configured. Typically, higher levels of memory interleaving result in maximum performance. However, reducing the level of interleaving can result in power savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**CollabPowerControl (Collaborative Power Control)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|For operating systems that support the Processor Clocking Control (PCC) Interface, enabling this option enables the Operating System to request processor frequency changes even if the Power Regulator option on the server are configured for Dynamic Power Savings Mode. For Operating Systems that do not support the PCC Interface, or when the Power Regulator Mode is not configured for Dynamic Power Savings Mode, this option has no effect on system operation.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ConsistentDevNaming (Consistent Device Naming)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the level of Consistent Device Naming. On supported operating systems, NIC ports are named based on their location in the system. CDN Support for LOMs Only names Embedded NICs and FlexibleLOMs. Existing NIC connections retain their names until reinstalled under the OS environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`LomsAndSlots`|CDN Support for LOMs and Slots|
|`LomsOnly`|CDN Support for LOMs Only|
|`Disabled`|Disabled|

**CoreBoosting (Core Boosting)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable the Core Boosting technology to increase processor performance on qualified processors. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**CustomPostMessage (Custom POST Message)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter a message to be displayed on POST screen during system startup. This feature limits POST screen messaging to 62 characters, special characters are also accepted.|
|Type|String|
|Read Only|False|

**DaylightSavingsTime (Daylight Savings Time)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option controls the Daylight Savings Time (DST) adjustment to the displayed local time.  If this option is disabled, the displayed local time will not be adjusted for DST.  If this option is enabled, the displayed local time will be advanced by one hour.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**DcuIpPrefetcher (DCU IP Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the processor DCU IP Prefetcher feature. In some cases, setting this option to disabled can improve performance. In most cases, the default value of enabled provides optimal performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**DcuStreamPrefetcher (DCU Stream Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the processor DCU Stream Prefetcher feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in your environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Dhcpv4 (DHCPv4)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When enabled, this option enables obtaining the pre-boot network IPv4 configuration from a DHCP server. Individual settings are not available. When disabled, you must configure static IP address settings individually.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**DirectToUpi (Direct To UPI (D2K))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Direct To UPI (D2K)|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**DynamicPowerCapping (Dynamic Power Capping Functionality)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure when the System BIOS executes power calibration during the boot process. In Auto mode, calibration is run the first time the server is booted, and is then only run again when the server's hardware configuration changes, configuration settings change, or if the system determines a new calibration is necessary. When disabled, the calibration does not run, and Dynamic Power Capping is not supported. When enabled, the calibration is run on every boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbNicAspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**EmbNicEnable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**EmbNicLinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|

**EmbNicPCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbSas1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**EmbSas1Boot (Embedded SAS Controller 1)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order list.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order list.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**EmbSas1Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**EmbSas1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**EmbSas1PcieOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbSata1Aspm (SATA Power Management(SALP))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Aggressive Link Power Management(SALP).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**EmbSata1Enable (SATA Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable SATA devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**EmbSata1PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbSata2Aspm (SATA Power Management(SALP))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Aggressive Link Power Management(SALP).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**EmbSata2Enable (SATA Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable SATA devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**EmbSata2PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbVideoConnection (Embedded Video Connection)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When configured for Auto mode, the external video connection to the embedded video controller is automatically disabled to save power when a monitor is not attached. It is automatically enabled when a monitor is attached, including when the server is operating. When configured for Always Disabled, the external video connection to the embedded video controller is disabled, and a monitor connected to this port does not display except during system boot. This can be used for security reasons. When configured for Always Enabled, the external video connection to the embedded video controller is always enabled. This option is only required if a monitor is attached with a monitor detection that does not function properly (making AUTO mode not work properly). Note: This option does not affect Integrated Remote Console video. Also, if you press F9 or F11 during system boot, the configured video connector behavior is overridden, and the video console remains enabled. This lets you reconfigure the Embedded Video Connection option even if the video is disabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`AlwaysDisabled`|Always Disabled|
|`AlwaysEnabled`|Always Enabled|

**EmbeddedDiagnostics (Embedded Diagnostics)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Embedded Diagnostics functionality. If disabled, you cannot launch Embedded Diagnostics. Enable this option to use the Embedded Diagnostics functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbeddedSata (Embedded SATA Configuration)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Important: Smart Array SW RAID is not supported when Boot Mode is set to Legacy BIOS Mode.   Use this option to configure the embedded chipset SATA controller. When selecting the Advanced Host Controller Interface (AHCI) or RAID (if supported), make sure the proper operating system drivers are used for proper operation.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Ahci`|SATA AHCI Support|
|`Raid`|Smart Array SW RAID Support|

**EmbeddedSerialPort (Embedded Serial Port)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to assign the logical COM port address and associated default resources to the selected physical serial port. The operating system can overwrite this setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Com1Irq4`|COM 1; IRQ4; I/O: 3F8h-3FFh|
|`Com2Irq3`|COM 2; IRQ3; I/O: 2F8h-2FFh|
|`Disabled`|Disabled|

**EmbeddedUefiShell (Embedded UEFI Shell)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Embedded UEFI Shell. When enabled, you can launch the Embedded UEFI Shell from the pre-boot environment. When enabled and the Boot Mode is configured for UEFI Mode, you can add the Embedded UEFI Shell to the UEFI Boot Order list  by selecting the option entitled 'Add Embedded UEFI Shell to Boot Order'. When disabled, the Embedded UEFI Shell is not available in the pre-boot environment, and you cannot add it to the UEFI Boot Order list. The Embedded UEFI Shell is a pre-boot command line environment that you can use for scripting and running UEFI applications. It provides CLI-based commands to configure the server, update the System BIOS and other firmware, and obtain system information and error logs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmsConsole (EMS Console)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the ACPI serial port settings, which include the ability to redirect the Windows Server Emergency Management console (EMS) through either the physical or virtual serial port.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Physical`|Physical Serial Port|
|`Virtual`|Virtual Serial Port|

**EnabledCoresPerProc (Enabled Cores per Processor)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option enables limiting the number of enabled processor cores per physical processor. You can set the number of enabled cores to a value supported by the physical processor. Setting the value to 0 or a value larger than the number of supported cores of the installed processor will result in all processor cores in the socket being enabled.|
|Type|Integer|
|Read Only|False|

**EnergyEfficientTurbo (Energy Efficient Turbo)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option controls whether the processor uses an energy efficiency based policy when engaging turbo range frequencies. This option is only applicable when Turbo Mode is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EnergyPerfBias (Energy/Performance Bias)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to configure several processor subsystems to optimize the performance and power usage of the processor. Balanced Performance provides optimum power efficiency, and is recommended for most environments. Maximum Performance Mode is recommended for environments that require the highest performance and lowest latency but are not sensitive to power consumption. Only use Power Savings Mode in environments that are power sensitive and can accept reduced performance.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`MaxPerf`|Maximum Performance|
|`BalancedPerf`|Balanced Performance|
|`BalancedPower`|Balanced Power|
|`PowerSavingsMode`|Power Savings Mode|

**EnhancedProcPerf (Enhanced Processor Performance)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable the Enhanced Processor Performance setting.  When enabled, this option will adjust the processor settings to a more aggressive setting that can result in improved performance, but may result in a higher power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**EraseUserDefaults (Erase User Defaults)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to erase the user defaults backup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`No`|No, Cancel|
|`Yes`|Yes, erase the current settings.|

**ExtendedAmbientTemp (Extended Ambient Temperature Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable the server to operate at higher ambient temperatures than normally supported. These options are only supported with specific hardware configurations. See your server documentation before configuring the server to enable extended ambient temperature support. Improper system operation or damage to hardware components can result from enabling these options in unsupported configurations. Selecting Enabled for 40c Ambient (ASHRAE 3) enables the server to operate in environments with ambient temperatures up to 40 degrees Celsius. Selecting Enabled for 45c Ambient (ASHRAE 4) enables the server to operate in environments with ambient temperatures up to 45 degrees Celsius. Not all servers support both 40c Ambient (ASHRAE 3) and 45c Ambient (ASHRAE 4).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`ASHRAE3`|Enabled for 40c Ambient (ASHRAE 3)|
|`ASHRAE4`|Enabled for 45c Ambient (ASHRAE 4)|

**ExtendedMemTest (Extended Memory Test)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When enabled, the system validates memory during the memory initialization process. If uncorrectable memory errors are detected, the memory is mapped out, and the failed DIMMs are logged to the Integrated Management Log (IML). Enabling this option can result in a significant increase in the server boot time.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**F11BootMenu (One-Time Boot Menu (F11 Prompt))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the POST One-Time Boot F11 Prompt.  Note: When disabled, shell 'boot' command is not available for use.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**FCScanPolicy (Fibre Channel/FCoE Scan Policy)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to change the default Fibre Channel or FCoE policy for scanning for boot targets. When configured for Scan All Targets, each installed FC/FCoE adapter scans all available targets. When configured for Scan Configured Targets Only, the FC/FCoE adapters only scan targets that are preconfigured in the devices settings. This option overrides any individual device settings configured in the device-specific setup.This option is only supported in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Scan All Targets|
|`CardConfig`|Scan Configured Targets Only|

**FanFailPolicy (Fan Failure Policy)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure how the server reacts when fans fail, resulting in the server not having required fans in operation. When configured for "Shutdown/Halt on Critical Fan Failures," the server cannot boot or operate when it does not have required fans operating due to one or more fan failures.  When configured for "Allow Operation with Critical Fan Failures," the server can boot and operate if it does not have required fans operating due to one or more fan failures. It is recommended that you configure the Fan Failure Policy to the default state of "Shutdown/Halt on Critical Fan Failures." Operating without the required fans operating can result in damage to hardware components.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Shutdown`|Shutdown/Halt on Critical Fan Failures|
|`Allow`|Allow Operation with Critical Fan Failures|

**FanInstallReq (Fan Installation Requirements)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure how the server reacts when all required fans are not installed. When configured for Enable Messaging, the server displays messages and log events to the Integrated Management Log (IML) when required fans are not installed. The server can still boot and operate. When configured for Disable Messaging, the server does not display messages and log events when required fans are not installed. All indications that the server is operating without required fans are removed. It is recommended that you leave Fan Installation Requirements in the default state of Enable Messaging. Operating without the required fans can result in damage to hardware components.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`EnableMessaging`|Enable Messaging|
|`DisableMessaging`|Disable Messaging|

**FlexLom1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**FlexLom1Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**FlexLom1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**FlexLom1PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**HttpSupport (HTTP Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the UEFI HTTP(s) boot support when in UEFI Mode, and the 'Discover Shell Auto-Start Script using DHCP' option under 'Embedded UEFI Shell' settings. When 'Auto' is selected, the system automatically adds HTTP(S) boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTP or HTTPS URLs provided by the DHCP server. Any other URLs provided by the DHCP server are ignored.  When 'HTTP only' is selected, the system automatically adds HTTP boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTP URLs provided by the DHCP server, and to ignore any HTTPS or other URLs that are provided.  When 'HTTPS only' is selected, the system automatically adds HTTPS boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTPS URLs provided by the DHCP server, and to ignore any HTTP or other URLs that are provided.  To enable HTTPS boot either by selecting 'Auto' or 'HTTPS only', you must enroll the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  Note: This setting only affects the HTTP boot options added for the network ports, and the Discover Shell Auto-Start Script provided by the DHCP server. Other settings, such as Boot from URL, are not affected by this setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`HttpsOnly`|HTTPS only|
|`HttpOnly`|HTTP only|
|`Disabled`|Disabled|

**HwPrefetcher (HW Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the processor HW prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IntelDmiLinkFreq (Intel DMI Link Frequency)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to force the link speed between the processor and the southbridge to run at slower speeds to save power.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`DmiGen1`|Gen 1 Speed|
|`DmiGen2`|Gen 2 Speed|

**IntelNicDmaChannels (Intel NIC DMA Channels (IOAT))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the Intel NIC DMA Channels support. This is a NIC acceleration option that only runs on Intel-based NICs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IntelPerfMonitoring (Intel Performance Monitoring Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option does not impact performance. When enabled, this option exposes certain chipset devices that can be used with the Intel Performance Monitoring Toolkit.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**IntelProcVtd (Intel(R) VT-d)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|If enabled, a hypervisor or operating system supporting this option can use hardware capabilities provided by Intel VT for Directed I/O. You can leave this set to enabled even if you are not using a hypervisor or an operating system that uses this option.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IntelSpeedSelect (Intel(R) Speed Select)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Intel(R) Speed Select is available on only certain processor models.Speed Select processors have unique configurations that support higher base frequencies with fewer enabled core counts. Changing this setting will result in increasing the CPU base frequency along with a reduction in number of available cores. Consult documentation for the installed processor model for more information and core/frequency mappings of each configuration.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Base`|Base|
|`Config1`|Config 1|
|`Config2`|Config 2|

**IntelTxt (Intel(R) TXT Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to modify Intel TXT support.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IntelUpiFreq (Intel UPI Link Frequency)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the UPI Link frequency to a lower speed. Running at a lower frequency can reduce power consumption, but can also affect system performance. You can only configure this option if two or more CPUs are present and the Workload Profile is set to custom.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`MinUpiSpeed`|Min UPI Speed|

**IntelUpiLinkEn (Intel UPI Link Enablement)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the UPI topology to use fewer links between processors, when available. Changing from the default can reduce UPI bandwidth performance in exchange for less power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SingleLink`|Single Link Operation|

**IntelUpiPowerManagement (Intel UPI Link Power Management)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to place the Quick Path Interconnect (UPI) links into a low power state when the links are not being used. This lowers power usage with minimal effect on performance. You can only configure this option if two or more CPUs are present and the Workload Profile is set to custom.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IntelligentProvisioning (Intelligent Provisioning (F10 Prompt))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Intelligent Provisioning functionality. When disabled, you are prevented from entering the Intelligent Provisioning environment by pressing F10 during server boot. You must set this option to enabled to use Intelligent Provisioning functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**InternalSDCardSlot (Internal SD Card Slot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Internal SD Card Slot. When set to disabled, the SD card slot is disabled, regardless of whether an SD Card is installed or not. The SD Card will not be visible in the pre-boot environment or under the operating system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Ipv4Address (IPv4 Address)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4Gateway (IPv4 Gateway)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network gateway IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4PrimaryDNS (IPv4 Primary DNS)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Primary DNS Server IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4SecondaryDNS (IPv4 Secondary DNS)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Secondary DNS Server IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4SubnetMask (IPv4 Subnet Mask)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network subnet mask. Enter a static IP address using dotted-decimal notation (for example, 255.255.255.0). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6Address (IPv6 Address)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6ConfigPolicy (IPv6 Config Policy)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When set to Automatic, this option enables obtaining the pre-boot network IPv6 configuration automatically. Individual settings are not available. When set to Manual, you must configure static IP address settings individually.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Automatic`|Automatic|
|`Manual`|Manual|

**Ipv6Duid (IPv6 DHCP Unique Identifier)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the IPv6 DHCP Unique Identifier (DUID). If configured for Auto, the DUID is set using the Universal Unique Identifier (UUID) of the server, or using the DUID-LLT method if the server UUID is not available. If configured for DUID-LLT, the DUID is set based on the Link-layer Address Plus Time [DUID-LLT] method. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`DuidLlt`|DUID-LLT|

**Ipv6Gateway (IPv6 Gateway)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network gateway IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6PrimaryDNS (IPv6 Primary DNS)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Primary DNS Server IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6SecondaryDNS (IPv6 Secondary DNS)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Secondary DNS Server IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**LLCDeadLineAllocation (LLC Dead Line Allocation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enable  - Opportunistically fill dead lines in LLC. Disable - Never fill dead lines in LLC.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**LlcPrefetch (LLC Prefetch)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the processor Last Level Cache (LLC) prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**LocalRemoteThreshold (Local/Remote Threshold)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Local/Remote Threshold setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Low`|Low|
|`Medium`|Medium|
|`High`|High|
|`Disabled`|Disabled|

**MaxMemBusFreqMHz (Maximum Memory Bus Frequency)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the memory system to run memory at a lower maximum speed than that supported by the installed processor and DIMM configuration. Setting this option to Auto configures the system to run memory at the maximum speed supported.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`MaxMemBusFreq2933`|2933 MHz|
|`MaxMemBusFreq2667`|2667 MHz|
|`MaxMemBusFreq2400`|2400 MHz|
|`MaxMemBusFreq2133`|2133 MHz|
|`MaxMemBusFreq1867`|1867 MHz|

**MaxPcieSpeed (Maximum PCI Express Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|If a PCI Express device does not run properly at its optimal speed, lowering the speed at which the device is running can address this issue. This option enables you to lower the maximum PCI Express speed at which the server allows PCI Express devices to operate. You can also use it to address issues with problematic PCI Express devices. Setting this value to Maximum Supported configures the platform to run at the maximum speed supported by the platform or the PCIe device, whichever is lower.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`PerPortCtrl`|Per Port Control|
|`PcieGen1`|PCIe Generation 1.0|

**MemClearWarmReset (Memory Clear on Warm Reset)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure when memory is cleared on warm resets. When disabled, the contents of memory are only cleared on a warm reset if requested by the operating system. When enabled, memory is cleared on all reboots. Disabling this option can save boot time by skipping the clearing of memory on warm resets.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**MemFastTraining (Memory Fast Training)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option enables a boot time reduction by controlling when the BIOS bypasses the full memory training. When enabled, the server bypasses the full memory training during boot, and uses memory parameters determined on a previous boot to decrease boot time. Note that even when enabled, the BIOS performs a full memory training if the DIMM configuration or processor configuration changes, or if there is a change in any BIOS setting related to memory or processor configuration. When disabled, the server performs a full memory training on every server boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**MemMirrorMode (Memory Mirroring Mode)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select from the available Memory Mirroring modes. Full Mirror - reserves 50% of the total available memory for mirroring. Partial Mirror (20% above 4GB) - reserves 20% of the total available Memory above 4GB for Mirroring. Partial Mirror (10% above 4GB) - reserves 10% of the total available Memory above 4GB for Mirroring. Partial Mirror (Memory below 4GB) - depending on the memory configuration, sets up 2GB or 3GB of lower memory below 4GB for Mirroring. Partial Mirror (OS Configured) - sets up the system to configure Partial Mirroring at OS level. This option will be not active and grayed out unless Advanced Memory Protection is set to Mirrored Memory with Advanced ECC Support.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Full`|Full Mirror|
|`PartialOsConfig`|Partial Mirror (OS Configured)|
|`PartialFirst4GB`|Partial Mirror (Memory below 4GB)|
|`Partial10PercentAbove4GB`|Partial Mirror (10% above 4GB)|
|`Partial20PercentAbove4GB`|Partial Mirror (20% above 4GB)|

**MemPatrolScrubbing (Memory Patrol Scrubbing)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option corrects memory soft errors so that, over the length of the system runtime, the risk of producing multi-bit and uncorrectable errors is reduced.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**MemRefreshRate (Memory Refresh Rate)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option controls the refresh rate of the memory controller and might affect the performance and resiliency of the server memory. It is recommended that you leave this setting in the default state unless indicated in other documentation for this server.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Refreshx1`|1x Refresh|
|`Refreshx2`|2x Refresh|

**MemoryControllerInterleaving (Memory Controller Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the Memory Controller Interleaving option. When set to Auto, the system will automatically enable or disable memory controller interleaving based on the configuration of the system. When set to disabled, the user may force disable memory controller interleaving. In certain memory configurations, setting this option to disabled has showed a performance benefit across all memory in the system. It is recommended to leave this option to set to Auto.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**MemoryRemap (Memory Remap)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to remap memory that may have been previously disabled from the system due to a failure event, such as an uncorrectable memory error. The Remap All Memory Option causes the system to make all memory in the system available again on the next boot. The No Action option leaves any affected memory unavailable to the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`AllMemory`|All Memory|

**MinProcIdlePkgState (Minimum Processor Idle Power Package C-State)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|You can configure this option only if the Workload Profile is set to Custom. Use this option to select the lowest idle package power state (C-state) of the processor. The processor automatically transitions into package C-states based on the Core C-states in which cores on the processor have transitioned. The higher the package C-state, the lower the power usage of that idle package state. (Package C6 (retention) is the lowest power idle package state supported by the processor).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`C6Retention`|Package C6 (retention) State|
|`C6NonRetention`|Package C6 (non-retention) State|
|`NoState`|No Package State|

**MinProcIdlePower (Minimum Processor Idle Power Core C-State)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|You can only configure this option if Workload Profile is set to Custom. Use this option to select the lowest idle power state (C-state) of the processor that the operating system uses. The higher the C-state, the lower the power usage of that idle state. (C6 is the lowest power idle state supported by the processor).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`C6`|C6 State|
|`C1E`|C1E State|
|`NoCStates`|No C-states|

**MixedPowerSupplyReporting (Mixed Power Supply Reporting)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When enabled, the server logs a message that a mixed power supply configuration is present. When disabled, the server no longer logs messages that a mixed power supply configuration is present.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NetworkBootRetry (Network Boot Retry Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the Network Boot Retry Support. When enabled, the system BIOS attempts to boot the network device up to the number of times configured in the Network Boot Retry Count option before attempting to boot the next network device. This setting only takes effect when attempting to boot a network device from the F12 function key and one-time boot options.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NetworkBootRetryCount (Network Boot Retry Count)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the number of times the system BIOS attempts to boot a network device. The valid range is from 0 to 20.|
|Type|Integer|
|Read Only|False|

**NicBoot1 (Embedded NIC 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot10 (Embedded NIC 10 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot11 (Embedded NIC 11 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot12 (Embedded NIC 12 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot2 (Embedded NIC 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot3 (Embedded NIC 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot4 (Embedded NIC 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot5 (Embedded NIC 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot6 (Embedded NIC 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot7 (Embedded NIC 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot8 (Embedded NIC 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot9 (Embedded NIC 9 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NodeInterleaving (Node Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the NUMA architecture properties for the system. All operating system platforms support NUMA architectures. In most cases, optimum performance is obtained by disabling the Node Interleaving option. When this option is enabled, memory addresses are interleaved across the memory installed for each processor. Some workloads might experience improved performance when this option is enabled. Node Interleaving cannot be enabled when NVDIMMs are present in the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NumaGroupSizeOpt (NUMA Group Size Optimization)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure how the System BIOS reports the size of a NUMA node (number of logical processors), which assists the Operating System in grouping processors for application use (referred to as Kgroups). The default setting of Clustered provides better performance due to optimizing the resulting groups along NUMA boundaries. However, some applications might not be optimized to take advantage of processors spanning multiple groups. In such cases, selecting the Flat option might be necessary in order for those applications to utilize more logical processors.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Flat`|Flat|
|`Clustered`|Clustered|

**NvDimmNMemFunctionality (NVDIMM-N Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option controls whether NVDIMM-N support (including backing up the contents of the memory to flash on power down or reset) is enabled. If this option is configured for Disabled, then the NVDIMMs of type NVDIMM-N in the system are NOT used by the operating system as persistent storage, and are NOT used by the operating system as system memory.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvDimmNMemInterleaving (NVDIMM-N Interleaving)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option controls whether the NVDIMMs of type NVDIMM-N installed on a particular processor will be interleaved with each other in the memory map. This option does NOT impact the interleaving of standard DIMMs, and interleaving is never enabled across NVDIMMs of type NVDIMM-N and standard DIMMs. NVDIMMs of type NVDIMM-N installed on different processors are never interleaved together. If this setting is changed, then all installed NVDIMMs of type NVDIMM-N must be sanitized.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvDimmNSanitizePolicy (NVDIMM-N Sanitize/Erase on Next Reboot Policy)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option is used to Sanitize/Erase all user data and error status data saved in the selected NVDIMMs of type NVDIMM-N. Selected NVDIMMs of type NVDIMM-N are sanitized/erased on the next reboot of the system. This process is required BEFORE the NVDIMM-N Memory Interleaving option can be modified. An NVDIMM-N must be sanitized/erased when it is initially installed in the system or installed in a different DIMM slot on the system. In addition, an NVDIMM-N can be recovered to normal operation if it has received an Uncorrectable Memory Error, a Backup Error, a Restore Error, or an Arming Error (if the NVDIMM hardware is functional). Note that the largest group of NVDIMMs of type NVDIMM-N selected are sanitized/erased. For instance, if 'Sanitize/Erase all NVDIMM-N on Processor 1' is enabled and 'Sanitize/Erase Processor 1 DIMM 8' is disabled, all NVDIMMs of type NVDIMM-N on Processor 1 are sanitized/erased including Processor 1 DIMM 8. There are four policies that control the action of the system after NVDIMMs of type NVDIMM-N are sanitized/erased. The options are to power off the system after sanitizing/erasing NVDIMMs, to enable the system to boot to the operating system after sanitizing/erasing NVDIMMs, to boot to the System Utilities after sanitizing/erasing NVDIMMs, or to sanitize/erase the NVDIMMs back to the factory default settings and power off the system. 'Sanitize/Erase to Factory Defaults and Power System Off' is recommended when retiring the NVDIMMs with no intention of reuse.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`SanitizeAndRebootSystem`|Sanitize/Erase and Boot to Operating System|
|`SanitizeAndShutdownSystem`|Sanitize/Erase and Power System Off|
|`SanitizeAndBootToFirmwareUI`|Sanitize/Erase and Boot to System Utilities|
|`SanitizeToFactoryDefaults`|Sanitize/Erase to Factory Defaults and Power System Off|

**NvdimmLabelSupport (NVDIMM-N OS Label Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable NVDIMM OS Label support via the ACPI methods _LSI, _LSR, and _LSW.When this option is enabled, the ACPI methods will be generated for each active NVDIMM in the system.  When this option is disabled, those methods will not be generated.  This option does NOT apply to Intel Optane Memory devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat1 (NVMe Drive 1)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat10 (NVMe Drive 10)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat11 (NVMe Drive 11)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat12 (NVMe Drive 12)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat13 (NVMe Drive 13)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat14 (NVMe Drive 14)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat15 (NVMe Drive 15)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat16 (NVMe Drive 16)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat17 (NVMe Drive 17)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat18 (NVMe Drive 18)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat19 (NVMe Drive 19)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat2 (NVMe Drive 2)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat20 (NVMe Drive 20)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat21 (NVMe Drive 21)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat22 (NVMe Drive 22)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat23 (NVMe Drive 23)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat24 (NVMe Drive 24)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat25 (NVMe Drive 25)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat26 (NVMe Drive 26)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat27 (NVMe Drive 27)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat28 (NVMe Drive 28)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat29 (NVMe Drive 29)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat3 (NVMe Drive 3)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat30 (NVMe Drive 30)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat31 (NVMe Drive 31)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat32 (NVMe Drive 32)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat33 (NVMe Drive 33)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat34 (NVMe Drive 34)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat35 (NVMe Drive 35)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat36 (NVMe Drive 36)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat37 (NVMe Drive 37)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat38 (NVMe Drive 38)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat39 (NVMe Drive 39)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat4 (NVMe Drive 4)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat40 (NVMe Drive 40)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat41 (NVMe Drive 41)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat42 (NVMe Drive 42)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat43 (NVMe Drive 43)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat44 (NVMe Drive 44)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat45 (NVMe Drive 45)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat46 (NVMe Drive 46)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat47 (NVMe Drive 47)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat48 (NVMe Drive 48)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat49 (NVMe Drive 49)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat5 (NVMe Drive 5)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat50 (NVMe Drive 50)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat6 (NVMe Drive 6)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat7 (NVMe Drive 7)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat8 (NVMe Drive 8)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeFormat9 (NVMe Drive 9)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**NvmeOptionRom (Embedded NVM Express Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable embedded NVM Express Option ROM. When enabled, the system loads the NVM Express Option ROM provided by the system BIOS. When disabled, the system loads the NVM Express Option ROM provided by the adapter.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**OpportunisticSelfRefresh (Opportunistic Self-Refresh)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enables or disables opportunistic self-refresh.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciPeerToPeerSerialization (PCI Peer to Peer Serialization)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to configure the PCIe Peer to Peer Serialization Option. When set to enabled, PCIe transactions are interleaved across PCIe root ports of a processor which can result in increased performance in peer to peer communication. Certain configurations such as systems populated with multiple GPUs on a processor socket may see increased performance when this feature is enabled. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciResourcePadding (NVMe PCIe Resource Padding)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure PCIe resources to support PCIe hot-add for NVMe drives. When Normal is selected, PCIe resources are only allocated to devices installed at boot time, and PCIe hot-add is not supported. When Medium is selected, additional PCIe resources are allocated for each PCIe Root Port, which might enable a PCIe hot-add event to work without requiring a system reboot to enumerate the device. When High is selected, a maximum amount of PCIe resources are set aside to allow for the best chance of supporting a PCIe hot-add event.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Normal`|Normal|
|`Medium`|Medium|
|`High`|High|

**PciSlot1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**PciSlot1Bifurcation (PCIe Slot 1 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot1Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**PciSlot1OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot2Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**PciSlot2Bifurcation (PCIe Slot 2 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot2Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot2LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**PciSlot2OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot3Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**PciSlot3Bifurcation (PCIe Slot 3 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot3Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot3LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**PciSlot3OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot4Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**PciSlot4Bifurcation (PCIe Slot 4 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot4Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot4LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**PciSlot4OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot5Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**PciSlot5Bifurcation (PCIe Slot 5 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot5Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot5LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**PciSlot5OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot6Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**PciSlot6Bifurcation (PCIe Slot 6 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot6Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot6LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**PciSlot6OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot7Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**PciSlot7Bifurcation (PCIe Slot 7 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot7Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot7LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**PciSlot7OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot8Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`AspmL1Enabled`|L1 Enabled|

**PciSlot8Bifurcation (PCIe Slot 8 Bifurcation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot8Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot8LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|

**PciSlot8OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PersistentMemAddressRangeScrub (Persistent Memory Address Range Scrub)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the NVDIMM memory Address Range Scrub support. When enabled, this option allows a supported OS to attempt recovery from an uncorrectable memory error detected in the NVDIMM memory. When disabled, the NVDIMM memory will be disabled on the following boot after detecting an uncorrectable memory error in the NVDIMM. If the NVDIMM memory Memory Interleaving option is enabled, a disabled NVDIMM will include all the modules or regions within the set.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PersistentMemBackupPowerPolicy (Persistent Memory Backup Power Policy)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option controls whether the system waits during system boot for batteries to charge if sufficient battery backup power for the installed persistent memory is not available. If this option is configured for 'Continue Boot without Backup Power', the server boots even if sufficient battery backup power is not installed. In this case, if sufficient battery backup power is not enabled, the configured memory will NOT be used by the operating system as persistent storage or as system memory.  If this option is configured for 'Use External Backup Power', the server will depend on an external UPS to handle an AC loss condition.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`WaitForBackupPower`|Wait for Backup Power on Boot|
|`BootWithoutBackupPower`|Continue Boot without Backup Power|
|`UseExternalBackupPower`|Use External Backup Power|

**PersistentMemScanMem (Persistent Memory Integrity Check)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When this option is enabled, persistent memory will be checked during system boot to determine data integrity. Depending on the Persistent Memory Address Range Scrub setting, discovered errors during the data integrity check will either be presented to the operating system for recovery or cause the persistent memory to be mapped out and unavailable to the operating system. If this option is disabled, any persistent memory which has issues with the ability to read data or which has bad data may result in uncorrectable errors that result in a system crash.   If this option is disabled, Persistent Memory Address Range Scrub functionality might be impacted.For NVDIMM-N, this option will be automatically enabled if Persistent Memory Address Range Scrub functionality is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PostBootProgress (POST Verbose Boot Progress)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable verbose boot progress messaging. Because this option displays additional debug information to the screen and serial console, it might be helpful for determining why a server became unresponsive during the boot process.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Serial`|Serial Only|
|`All`|All|

**PostDiscoveryMode (UEFI POST Discovery Mode)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the UEFI POST Discovery Mode. When Auto is selected, the system selectively starts devices which are required for booting the devices in the UEFI Boot Order list. Note: For some situations like system configuration change, the system will change to start all devices for discovering all boot devices. When Force Full Discovery is selected, the system starts all devices in the system providing full boot target availability. Note: When Force Full Discovery is selected, boot time might significantly increase. When Force Fast Discovery is selected, the system starts as few devices as possible to get minimal boot time. Note: When Force Fast Discovery is selected, some unsupported devices may not work properly. You may need to replace the unsupported device with one that supports Fast Discovery.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`ForceFullDiscovery`|Force Full Discovery|
|`ForceFastDiscovery`|Force Fast Discovery|

**PostF1Prompt (POST F1 Prompt)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the system to display the F1 key on the server POST screen. If an error is encountered, you can press the F1 key to continue with the server power-up sequence. Select one of the following options:  Delayed 20 Seconds - If an error occurs, the system pauses for 20 seconds at the F1 prompt and continues to boot the OS.  Delayed 2 Seconds - If an error occurs, the system pauses for 2 seconds at the F1 prompt and continues to boot the OS.  Disabled - If an error occurs, the system bypasses the F1 prompt and continues to boot the OS.  Note: For critical errors, the system pauses for 20 seconds at the F1 prompt, regardless of how this option is configured.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Delayed20Sec`|Delayed 20 seconds|
|`Delayed2Sec`|Delayed 2 seconds|
|`Disabled`|Disabled|

**PostVideoSupport (POST Video Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the POST Video Support setting. When set to Display All, the system will display POST video to all installed video controllers. When set to Display Embedded Only, the system will only display POST video to the embedded video controller. This option is only supported in UEFI Boot Mode and only applies to video output during the POST (pre-boot) environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`DisplayAll`|Display All|
|`DisplayEmbeddedOnly`|Display Embedded Only|

**PowerButton (Power Button Mode)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Disabling this option disables the momentary power button functionality. This option does not affect the four-second power button override or the remote power control functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PowerOnDelay (Power-On Delay)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to delay the server from turning on for a specified time. Pressing the power button (using the Virtual Power Button), or Wake-ON LAN events, and RTC Wake-up events override the delay and power on the server without any additional delay. This enables staggering when servers power-up after a power loss to prevent power usage spikes.Note that the actual delay before the server is powered on will be longer than the specified time because the server must always wait for iLO FW to initialize before the server attempts to power on.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoDelay`|No Delay|
|`Random`|Random Delay|
|`Delay15Sec`|15 Second Delay|
|`Delay30Sec`|30 Second Delay|
|`Delay45Sec`|45 Second Delay|
|`Delay60Sec`|60 Second Delay|

**PowerRegulator (Power Regulator)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to configure the following Power Regulator support:  - Dynamic Power Savings Mode: Automatically varies processor speed and power usage based on processor utilization. Enables the reduction of overall power consumption with little or no impact on performance. Does not require OS support.  - Static Low Power Mode: Reduces processor speed and power usage. Guarantees a lower maximum power usage for the system. Performance impacts are greater for environments with higher processor utilization.  - Static High Performance Mode: Processors run in their maximum power/performance state at all times, regardless of the OS power management policy.  - OS Control Mode: Processors run in their maximum power/performance state at all times unless the OS enables a power management policy.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`DynamicPowerSavings`|Dynamic Power Savings Mode|
|`StaticLowPower`|Static Low Power Mode|
|`StaticHighPerf`|Static High Performance Mode|
|`OsControl`|OS Control Mode|

**PreBootNetwork (Pre-Boot Network Interface)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the network interface used for pre-boot network connections. When the selection is Auto, the system uses the first available port with a network connection.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`EmbNicPort1`|Embedded NIC Port 1|
|`EmbNicPort2`|Embedded NIC Port 2|
|`EmbNicPort3`|Embedded NIC Port 3|
|`EmbNicPort4`|Embedded NIC Port 4|
|`EmbNicPort5`|Embedded NIC Port 5|
|`EmbNicPort6`|Embedded NIC Port 6|
|`EmbNicPort7`|Embedded NIC Port 7|
|`EmbNicPort8`|Embedded NIC Port 8|
|`FlexLom1Port1`|Embedded FlexibleLOM 1 Port 1|
|`FlexLom1Port2`|Embedded FlexibleLOM 1 Port 2|
|`FlexLom1Port3`|Embedded FlexibleLOM 1 Port 3|
|`FlexLom1Port4`|Embedded FlexibleLOM 1 Port 4|
|`FlexLom1Port5`|Embedded FlexibleLOM 1 Port 5|
|`FlexLom1Port6`|Embedded FlexibleLOM 1 Port 6|
|`FlexLom1Port7`|Embedded FlexibleLOM 1 Port 7|
|`FlexLom1Port8`|Embedded FlexibleLOM 1 Port 8|
|`Slot1NicPort1`|Slot 1 NIC Port 1|
|`Slot1NicPort2`|Slot 1 NIC Port 2|
|`Slot1NicPort3`|Slot 1 NIC Port 3|
|`Slot1NicPort4`|Slot 1 NIC Port 4|
|`Slot1NicPort5`|Slot 1 NIC Port 5|
|`Slot1NicPort6`|Slot 1 NIC Port 6|
|`Slot1NicPort7`|Slot 1 NIC Port 7|
|`Slot1NicPort8`|Slot 1 NIC Port 8|
|`Slot2NicPort1`|Slot 2 NIC Port 1|
|`Slot2NicPort2`|Slot 2 NIC Port 2|
|`Slot2NicPort3`|Slot 2 NIC Port 3|
|`Slot2NicPort4`|Slot 2 NIC Port 4|
|`Slot2NicPort5`|Slot 2 NIC Port 5|
|`Slot2NicPort6`|Slot 2 NIC Port 6|
|`Slot2NicPort7`|Slot 2 NIC Port 7|
|`Slot2NicPort8`|Slot 2 NIC Port 8|
|`Slot3NicPort1`|Slot 3 NIC Port 1|
|`Slot3NicPort2`|Slot 3 NIC Port 2|
|`Slot3NicPort3`|Slot 3 NIC Port 3|
|`Slot3NicPort4`|Slot 3 NIC Port 4|
|`Slot3NicPort5`|Slot 3 NIC Port 5|
|`Slot3NicPort6`|Slot 3 NIC Port 6|
|`Slot3NicPort7`|Slot 3 NIC Port 7|
|`Slot3NicPort8`|Slot 3 NIC Port 8|
|`Slot4NicPort1`|Slot 4 NIC Port 1|
|`Slot4NicPort2`|Slot 4 NIC Port 2|
|`Slot4NicPort3`|Slot 4 NIC Port 3|
|`Slot4NicPort4`|Slot 4 NIC Port 4|
|`Slot4NicPort5`|Slot 4 NIC Port 5|
|`Slot4NicPort6`|Slot 4 NIC Port 6|
|`Slot4NicPort7`|Slot 4 NIC Port 7|
|`Slot4NicPort8`|Slot 4 NIC Port 8|
|`Slot5NicPort1`|Slot 5 NIC Port 1|
|`Slot5NicPort2`|Slot 5 NIC Port 2|
|`Slot5NicPort3`|Slot 5 NIC Port 3|
|`Slot5NicPort4`|Slot 5 NIC Port 4|
|`Slot5NicPort5`|Slot 5 NIC Port 5|
|`Slot5NicPort6`|Slot 5 NIC Port 6|
|`Slot5NicPort7`|Slot 5 NIC Port 7|
|`Slot5NicPort8`|Slot 5 NIC Port 8|
|`Slot6NicPort1`|Slot 6 NIC Port 1|
|`Slot6NicPort2`|Slot 6 NIC Port 2|
|`Slot6NicPort3`|Slot 6 NIC Port 3|
|`Slot6NicPort4`|Slot 6 NIC Port 4|
|`Slot6NicPort5`|Slot 6 NIC Port 5|
|`Slot6NicPort6`|Slot 6 NIC Port 6|
|`Slot6NicPort7`|Slot 6 NIC Port 7|
|`Slot6NicPort8`|Slot 6 NIC Port 8|
|`Slot7NicPort1`|Slot 7 NIC Port 1|
|`Slot7NicPort2`|Slot 7 NIC Port 2|
|`Slot7NicPort3`|Slot 7 NIC Port 3|
|`Slot7NicPort4`|Slot 7 NIC Port 4|
|`Slot7NicPort5`|Slot 7 NIC Port 5|
|`Slot7NicPort6`|Slot 7 NIC Port 6|
|`Slot7NicPort7`|Slot 7 NIC Port 7|
|`Slot7NicPort8`|Slot 7 NIC Port 8|
|`Slot8NicPort1`|Slot 8 NIC Port 1|
|`Slot8NicPort2`|Slot 8 NIC Port 2|
|`Slot8NicPort3`|Slot 8 NIC Port 3|
|`Slot8NicPort4`|Slot 8 NIC Port 4|
|`Slot8NicPort5`|Slot 8 NIC Port 5|
|`Slot8NicPort6`|Slot 8 NIC Port 6|
|`Slot8NicPort7`|Slot 8 NIC Port 7|
|`Slot8NicPort8`|Slot 8 NIC Port 8|

**PrebootNetworkEnvPolicy (Pre-Boot Network Environment)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the preference for Pre-Boot Network. If configured for Auto, all the network operations initiated in the pre boot environment occur over IPv4 or IPv6. The order of the existing network boot targets is not modified in the UEFI Boot Order list. New network boot targets are added to the end of the list using the default policy of the System BIOS. If configured for IPv4, all the network operations initiated in the pre boot environment only occur over IPv4. All existing IPv6 network boot targets are removed in the UEFI Boot Order. No new IPv6 network boot targets are added to the list. If configured for IPv6, all the network operations initiated in the pre boot environment only occur over IPv6. All existing IPv4 network boot targets in the UEFI Boot Order are removed. No new IPv4 network boot targets are added to the list. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`IPv4`|IPv4|
|`IPv6`|IPv6|

**PrebootNetworkProxy (Pre-Boot Network Proxy)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a pre-boot network proxy. When set, network operations for 'Pre-Boot Network Interface' are attempted through the configured proxy. The proxy must be in a HTTP URL format, and can be specified as http://IPv4_address:port, http://IPv6 address:port or http://FQDN:port.|
|Type|String|
|Read Only|False|

**ProcAes (Processor AES-NI Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Advanced Encryption Standard Instruction Set (AES-NI) in the processor.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ProcHyperthreading (Intel(R) Hyper-Threading)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Intel Hyper-Threading. When enabled, each physical processor core operates as two logical processor cores. When disabled, each physical processor core operates as one logical processor core. Enabling this option can improve overall performance for applications that benefit from a higher processor core count.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ProcTurbo (Intel(R) Turbo Boost Technology)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Turbo Boost Technology enables the processor to transition to a higher frequency than the processor's rated speed if the processor has available power and is within temperature specifications. Disabling this option reduces power usage, and also reduces the system's maximum achievable performance under some workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**ProcVirtualization (Intel(R) Virtualization Technology (Intel VT) )**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When enabled, a hypervisor or operating system supporting this option can use hardware capabilities provided by Intel VT. Some hypervisors require that you enable Intel VT. You can leave this set to enabled even if you are not using a hypervisor or an operating system that uses this option.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ProcX2Apic (Processor x2APIC Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|x2APIC support enables operating systems to run more efficiently on high core count configurations. It also optimizes interrupt distribution in virtualized environments. In most cases, set this option to enabled. This configures the operating system to optionally enable x2APIC support when it loads. Some older hypervisors and operating systems might have issues with optional x2APIC support, in which case disabling x2APIC might be necessary to address those issues. Additionally, some hypervisors and operating systems will not use X2APIC unless this option is set to Force Enabled prior to booting.  The Force Enabled option also causes the Intel(R) VT-d setting to be set to enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`ForceEnabled`|Force Enabled|
|`Disabled`|Disabled|

**ProcessorConfigTDPLevel (Processor Config TDP Level)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to override the default CPU policy for SSE, AVX, and AVX-512 deterministic frequencies.This will result in lowering the deterministic operational frequency (P1) based on the setting.Disabling Turbo Mode will enhance the deterministic behavior, but result in a lower operational frequency.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Normal`|Normal|
|`Level1`|Level 1|
|`Level2`|Level 2|

**ProcessorJitterControl (Processor Jitter Control)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Processor Jitter Control allows the customer to manage processor frequency variance to do technologies such as Turbo which vary the frequency based on power, thermals, and active cores. When configured for Auto-tuned, the platform will monitor frequency variance and automatically make adjustments to minimize variance over time. When configured for Manual-tuned, the customer can choose to attempt to operate the processor at a fixed frequency and can select lower or higher frequencies statically.Note:Auto-tuned mode requires that processor C-states be disabled for proper operation. Refer to the Intelligent System Tuning Whitepaper at hpe.com/info/IST on how to properly disable C-states in UEFI System Utilities and/or the Linux Operating System.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Auto-tuned`|Auto-tuned|
|`Manual-tuned`|Manual-tuned|

**ProcessorJitterControlFrequency (Processor Jitter Control Frequency)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Processor Jitter Control Frequency allows the customer to stipulate the starting frequency in the Auto-tuned mode, or the desired frequency in the Manual-tuned mode. The input frequency is in units of Megahertz. System firmware will adjust the frequency to the nearest higher intermediate frequency supported by the processor if the input frequency is not supported.|
|Type|Integer|
|Read Only|False|

**ProcessorJitterControlOptimization (Processor Jitter Control Optimization)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option optimizes the thresholds used when the Auto-tuned function detects fluctuations in processor frequency. Optimizing for throughput allows only the amount of fluctuations that doesn't impact overall compute throughput. Optimizing for Latency allows for a very small amount of occasional fluctuations to occur before reducing processor frequency. Zero Latency attempts to eliminate any frequency fluctuations. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`OptimizedForThroughput`|Optimized for Throughput|
|`OptimizedForLatency`|Optimized for Latency|
|`ZeroLatency`|Zero Latency|

**ProductId (Product ID)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the system product ID. This value must always match the product ID sticker located on the chassis.|
|Type|String|
|Read Only|False|

**RedundantPowerSupply (Redundant Power Supply Mode)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure how the system handles redundant power supply configurations. Balanced Mode shares the power delivery equally between all installed power supplies. All High Efficiency Mode options provide the most power efficient operation with redundant power supplies by keeping half of the power supplies in standby mode at lower power usage levels. The High Efficiency Mode options enable the system to select which power supply to place in standby. Auto enables the system to select between the odd or even power supply based on a semi-random distribution within a group of systems.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`BalancedMode`|Balanced Mode|
|`HighEfficiencyAuto`|High Efficiency Mode (Auto)|
|`HighEfficiencyOddStandby`|High Efficiency Mode (Odd Supply Standby)|
|`HighEfficiencyEvenStandby`|High Efficiency Mode (Even Supply Standby)|

**RemovableFlashBootSeq (Removable Flash Media Boot Sequence)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select which USB or SD Card devices you want to search for first when enumerating boot devices. You can select whether the system boots to external USB drive keys, internal USB drive keys, or the internal SD card slot. This option does not override the device boot order in the Standard Boot Order (IPL) option. You can only configure this option when Boot Mode is set to Legacy BIOS.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`InternalSdCardFirst`|Internal SD Card First|
|`InternalKeysFirst`|Internal DriveKeys First|
|`ExternalKeysFirst`|External DriveKeys First|

**RestoreDefaults (Restore Default System Settings)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to reset all configuration settings to their default values. Changes that have been made might be lost. You must reboot the system for changes to take effect.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`No`|No, cancel the restore procedure.|
|`Yes`|Yes, restore the default settings.|

**RestoreManufacturingDefaults (Restore Default Manufacturing Settings)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to reset all configuration settings to their default manufacturing values. Changes that have been made might be lost. If Secure Boot is enabled, related security settings might be lost. You must reboot the system for changes to take effect.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`No`|No, cancel restore procedure.|
|`Yes`|Yes, restore the default settings.|

**RomSelection (ROM Selection)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to revert the server to a previous BIOS ROM image. The backup image is the BIOS ROM image that was used prior to the last flash event.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`CurrentRom`|Use Current ROM|
|`BackupRom`|Switch to Backup ROM|

**SanitizeAllNvDimmN (Sanitize/Erase all NVDIMM-N in the System)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N in the system are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm1 (Sanitize/Erase Processor 1 DIMM 1)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm10 (Sanitize/Erase Processor 1 DIMM 10)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm11 (Sanitize/Erase Processor 1 DIMM 11)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm12 (Sanitize/Erase Processor 1 DIMM 12)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm2 (Sanitize/Erase Processor 1 DIMM 2)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm3 (Sanitize/Erase Processor 1 DIMM 3)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm4 (Sanitize/Erase Processor 1 DIMM 4)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm5 (Sanitize/Erase Processor 1 DIMM 5)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm6 (Sanitize/Erase Processor 1 DIMM 6)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm7 (Sanitize/Erase Processor 1 DIMM 7)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm8 (Sanitize/Erase Processor 1 DIMM 8)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1Dimm9 (Sanitize/Erase Processor 1 DIMM 9)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc1NvDimmN (Sanitize/Erase all NVDIMM-N on Processor 1)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N installed on the selected processor are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm1 (Sanitize/Erase Processor 2 DIMM 1)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm10 (Sanitize/Erase Processor 2 DIMM 10)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm11 (Sanitize/Erase Processor 2 DIMM 11)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm12 (Sanitize/Erase Processor 2 DIMM 12)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm2 (Sanitize/Erase Processor 2 DIMM 2)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm3 (Sanitize/Erase Processor 2 DIMM 3)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm4 (Sanitize/Erase Processor 2 DIMM 4)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm5 (Sanitize/Erase Processor 2 DIMM 5)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm6 (Sanitize/Erase Processor 2 DIMM 6)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm7 (Sanitize/Erase Processor 2 DIMM 7)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm8 (Sanitize/Erase Processor 2 DIMM 8)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2Dimm9 (Sanitize/Erase Processor 2 DIMM 9)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SanitizeProc2NvDimmN (Sanitize/Erase all NVDIMM-N on Processor 2)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N installed on the selected processor are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SataSecureErase (SATA Secure Erase)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control whether Secure Erase functionality is supported. When enabled, the Security Freeze Lock command is not sent to supported SATA hard drives, enabling Secure erase to function (the Secure Erase command is supported). This option is only supported when the SATA controller is in AHCI mode. Secure Erase only operates with hard drives that support the Secure Erase command.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SaveUserDefaults (Save User Defaults)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to save the current settings as the system defaults.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`No`|No, Cancel|
|`Yes`|Yes, Save|

**SecStartBackupImage (Backup ROM Image Authentication)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable cryptographic authentication of the backup ROM image on startup. When this option is disabled, only the primary image is authenticated on each startup. Enable this option to also perform cryptographic authentication of the backup ROM image.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SecureBootStatus (Secure Boot Status)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|The current state of Secure Boot configuration.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SerialConsoleBaudRate (BIOS Serial Console Baud Rate)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This is the transfer rate at which data is transmitted through the serial port.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`BaudRate9600`|9600|
|`BaudRate19200`|19200|
|`BaudRate38400`|38400|
|`BaudRate57600`|57600|
|`BaudRate115200`|115200|

**SerialConsoleEmulation (BIOS Serial Console Emulation Mode)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the emulation mode type. The option you select depends on the emulation you want to use in your serial terminal program (such as HyperTerminal or PuTTy). The BIOS emulation mode must match the mode you select in your terminal program.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Vt100`|VT100|
|`Ansi`|ANSI|
|`Vt100Plus`|VT100+|
|`VtUtf8`|VT-UTF8|

**SerialConsolePort (BIOS Serial Console Port)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to re-direct video and keystrokes through the serial port to OS boot. This option can interfere with non-terminal devices attached to the serial port. In such cases, set this option to disabled. This option is only supported in English language mode when running in the UEFI pre-boot System Utilities.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|
|`Physical`|Physical Serial Port|
|`Virtual`|Virtual Serial Port|

**SerialNumber (Serial Number)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the system serial number. This value must always match the serial number sticker located on the chassis.|
|Type|String|
|Read Only|False|

**ServerAssetTag (Server Asset Tag)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to modify the Server Asset Tag text line.|
|Type|String|
|Read Only|False|

**ServerConfigLockStatus (Server Configuration Lock Status)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|The current state of the Server Configuration Lock feature.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ServerName (Server Name)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to modify the server name text line.|
|Type|String|
|Read Only|False|

**ServerOtherInfo (Server Other Information)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to modify the Other Server text line.|
|Type|String|
|Read Only|False|

**ServerPrimaryOs (Server Primary OS)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to modify the Server Primary OS text line.|
|Type|String|
|Read Only|False|

**ServiceEmail (Service Contact E-mail Address)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter the server service contact e-mail address.|
|Type|String|
|Read Only|False|

**ServiceName (Service Contact Name)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter the server service contact name text.|
|Type|String|
|Read Only|False|

**ServiceOtherInfo (Service Contact Other Information)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter the other server service contact information text.|
|Type|String|
|Read Only|False|

**ServicePhone (Service Contact Phone Number)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enter the server service contact phone number text.|
|Type|String|
|Read Only|False|

**SetupBrowserSelection (Setup Browser Selection)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select which setup browser to use: GUI or Text. Auto mode uses text when the user enters RBSU via serial console, and uses GUI via IRC or physical terminal.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`GUI`|GUI|
|`Text`|Text|
|`Auto`|Auto|

**Slot1NicBoot1 (Slot 1 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot2 (Slot 1 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot3 (Slot 1 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot4 (Slot 1 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot5 (Slot 1 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot6 (Slot 1 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot7 (Slot 1 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot8 (Slot 1 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1StorageBoot (PCIe Slot 1)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**Slot2NicBoot1 (Slot 2 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot2 (Slot 2 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot3 (Slot 2 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot4 (Slot 2 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot5 (Slot 2 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot6 (Slot 2 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot7 (Slot 2 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot8 (Slot 2 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2StorageBoot (PCIe Slot 2)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**Slot3NicBoot1 (Slot 3 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot2 (Slot 3 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot3 (Slot 3 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot4 (Slot 3 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot5 (Slot 3 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot6 (Slot 3 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot7 (Slot 3 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot8 (Slot 3 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3StorageBoot (PCIe Slot 3)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**Slot4NicBoot1 (Slot 4 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot2 (Slot 4 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot3 (Slot 4 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot4 (Slot 4 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot5 (Slot 4 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot6 (Slot 4 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot7 (Slot 4 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot8 (Slot 4 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4StorageBoot (PCIe Slot 4)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**Slot5NicBoot1 (Slot 5 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot2 (Slot 5 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot3 (Slot 5 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot4 (Slot 5 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot5 (Slot 5 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot6 (Slot 5 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot7 (Slot 5 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot8 (Slot 5 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5StorageBoot (PCIe Slot 5)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**Slot6NicBoot1 (Slot 6 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot2 (Slot 6 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot3 (Slot 6 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot4 (Slot 6 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot5 (Slot 6 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot6 (Slot 6 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot7 (Slot 6 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot8 (Slot 6 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6StorageBoot (PCIe Slot 6)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**Slot7NicBoot1 (Slot 7 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot7NicBoot2 (Slot 7 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot7NicBoot3 (Slot 7 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot7NicBoot4 (Slot 7 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot7StorageBoot (PCIe Slot 7)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**Slot8NicBoot1 (Slot 8 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot8NicBoot2 (Slot 8 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot8NicBoot3 (Slot 8 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot8NicBoot4 (Slot 8 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot8StorageBoot (PCIe Slot 8)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`TwentyFourTargets`|Boot Limit to 24 Targets|
|`NoTargets`|Boot No Targets|

**Sriov (SR-IOV)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|If enabled, SR-IOV support enables a hypervisor to create virtual instances of a PCI-express device, potentially increasing performance. If enabled, the BIOS allocates additional resources to PCI-express devices. You can leave this option set to enabled even if you are not using a hypervisor.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**StaleAtoS (Stale A to S)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Stale A to S directory optimization.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SubNumaClustering (Sub-NUMA Clustering)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When enabled, Sub-NUMA Clustering divides the processor's cores, cache, and memory into multiple NUMA domains. Enabling this feature can increase performance for workloads that are NUMA aware and optimized.  Note: When this option is enabled, up to 1GB of system memory may become unavailable.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ThermalConfig (Thermal Configuration)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the fan cooling solution for the system. Optimal Cooling provides the most efficient solution by configuring fan speeds to the minimum required speed to provide adequate cooling. Increased Cooling runs fans at higher speeds to provide additional cooling. Select Increased Cooling when third-party storage controllers are cabled to the embedded hard drive cage, or if the system is experiencing thermal issues that cannot be resolved. Maximum cooling provides the maximum cooling available on this platform. Enhanced CPU Cooling runs the fans at a higher speed to provide additional cooling to the processors. Selecting Enhanced CPU Cooling may improve system performance with certain processor intensive workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`OptimalCooling`|Optimal Cooling|
|`IncreasedCooling`|Increased Cooling|
|`MaxCooling`|Maximum Cooling|
|`EnhancedCPUCooling`|Enhanced CPU Cooling|

**ThermalShutdown (Thermal Shutdown)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the reaction of the system to caution level thermal events. When disabled, the System Management Firmware ignores thermal events, and the system immediately powers off in data-destructive situations.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**TimeFormat (Time Format)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option controls how the system time is stored in the hardware Real Time Clock (RTC). When configured to 'Coordinated Universal Time (UTC)' (default) the local time is calculated from the associated time zone value. When configured to 'Local Time' the time is stored directly as local time and the time zone option does not have meaning. Setting this option to 'Local Time' works around an issue when using Microsoft Windows operating systems in Legacy Boot Mode where the time is set incorrectly.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Utc`|Coordinated Universal Time (UTC)|
|`Local`|Local Time|

**TimeZone (Time Zone)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option displays the current time zone setting for the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`UtcM12`|UTC-12:00, International Date Line West|
|`UtcM11`|UTC-11:00, Midway Island, Samoa|
|`UtcM10`|UTC-10:00, Hawaii|
|`UtcM9`|UTC-09:00, Alaska|
|`UtcM8`|UTC-08:00, Pacific Time(US & Canada)|
|`UtcM7`|UTC-07:00, Mountain Time (US & Canada)|
|`UtcM6`|UTC-06:00, Central America, Central Time(US & Canada)|
|`UtcM5`|UTC-05:00, Eastern Time(US & Canada)|
|`UtcM430`|UTC-04:30, Caracas|
|`UtcM4`|UTC-04:00, Atlantic Time(Canada), Caracas, Santiago|
|`UtcM330`|UTC-03:30, Newfoundland|
|`UtcM3`|UTC-03:00, Brasilia, Buenos Aires, Georgetown, Greenland|
|`UtcM2`|UTC-02:00, Mid-Atlantic|
|`UtcM1`|UTC-01:00, Azores, Cape Verde Is.|
|`Utc0`|UTC-00:00, Greenwich Mean Time, Dublin, London|
|`UtcP1`|UTC+01:00, Amsterdam, Berlin, Rome, Paris, West Central Africa|
|`UtcP2`|UTC+02:00, Athens, Istanbul, Cairo, Jerusalem|
|`UtcP3`|UTC+03:00, Baghdad, Kuwait, Riyadh, Moscow, Nairobi|
|`UtcP330`|UTC+03:30, Tehran|
|`UtcP4`|UTC+04:00, Abu Dhabi, Muscat, Baku, Tbilisi, Yerevan|
|`UtcP430`|UTC+04:30, Kabul|
|`UtcP5`|UTC+05:00, Ekaterinburg, Islamabad, Karachi, Tashkent|
|`UtcP530`|UTC+05:30, Chennai, Kolkata, Mumbai, New Delhi|
|`UtcP545`|UTC+05:45, Kathmandu|
|`UtcP6`|UTC+06:00, Almaty, Novosibirsk, Astana, Dhaka|
|`UtcP630`|UTC+06:30, Rangoon|
|`UtcP7`|UTC+07:00, Bangkok, Hanoi, Jakarta, Krasnoyarsk|
|`UtcP8`|UTC+08:00, Taipei, Beijing, Chongqing, Hong Kong, Urumqi|
|`UtcP9`|UTC+09:00, Osaka, Sapporo, Tokyo, Seoul, Yakutsk|
|`UtcP930`|UTC+09:30, Adelaide, Darwin|
|`UtcP10`|UTC+10:00, Canberra, Melbourne, Sydney, Guam, Hobart, Vladivostok|
|`UtcP11`|UTC+11:00, Magadan, Solomon Is., New Caledonia|
|`UtcP12`|UTC+12:00, Auckland, Wellington, Fiji, Kamchatka, Marshall Is.|
|`UtcP13`|UTC+13:00, Nuku'alofa|
|`UtcP14`|UTC+14:00, Line Islands|
|`Unspecified`|Unspecified Time Zone|

**Tpm20SoftwareInterfaceOperation (TPM 2.0 Software Interface Operation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|TPM 2.0 Software Interface Operation: FIFO or CRB.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`Fifo`|FIFO interface|
|`Crb`|CRB interface|

**Tpm20SoftwareInterfaceStatus (Current TPM 2.0 Software Interface Status)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Current TPM 2.0 Software Interface Status: FIFO or CRB.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`Fifo`|FIFO interface|
|`Crb`|CRB interface|

**Tpm2Operation (TPM 2.0 Operation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to perform a clear operation on the TPM. Clearing the TPM can prevent the server from booting to a TPM-aware operating system if the operating system uses TPM's measurements. TPM 2.0 is only supported in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`Clear`|Clear|

**TpmActivePcrs (Current TPM 2.0 Active PCRs)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Current TPM 2.0 Active PCRs: SHA1, SHA256 or SHA1_SHA256|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`NotSpecified`|Not specified|
|`Sha1`|SHA1 only|
|`Sha256`|SHA256 only|
|`Sha1Sha256`|SHA1 and SHA256|

**TpmChipId (Current TPM Chip ID)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Current TPM Chip: STMicro, Intel PTT fTPM or Nationz TPM20|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`None`|None|
|`StMicroGen10`|ST Micro Gen10|
|`IntelPttFTpm`|Intel PTT fTPM|
|`NationzTpm20`|Nationz TPM20|

**TpmFips (Current TPM FIPS mode)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Current TPM FIPS (Federal Information Processing Standard) status: Not specified; non-FIPS certified; FIPS certified.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`NotSpecified`|Not specified|
|`NonFipsMode`|Non-FIPS Mode|
|`FipsMode`|FIPS mode|

**TpmFipsModeSwitch (TPM FIPS Mode Switch)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to switch the TPM chip to FIPS mode, regular mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`RegularMode`|Regular mode|
|`FipsMode`|FIPS mode|

**TpmModeSwitchOperation (TPM Mode Switch Operation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to switch the TPM chip to TPM 1.2/2.0, FIPS mode or non-FIPS mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`Tpm12`|TPM 1.2|
|`Tpm20`|TPM 2.0|

**TpmOperation (TPM 1.2 Operation)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable the Trusted Platform Module and BIOS secure startup. When enabled, the TPM is fully functional. When disabled, the TPM is visible; however, functionality is limited. This option also enables you to reset the TPM to factory settings, which clears any assigned passwords, keys, or ownership data. Clearing the TPM can prevent the server from booting to a TPM-aware operating system if the operating system uses TPM's measurements.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`Enable`|Enable|
|`Disable`|Disable|
|`Clear`|Clear|

**TpmState (Current TPM State)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Current TPM device state: Not Present; Present and Disabled; Present and Enabled.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`NotPresent`|Not Present|
|`PresentDisabled`|Present and Disabled|
|`PresentEnabled`|Present and Enabled|

**TpmType (Current TPM Type)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Current TPM device type.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`NoTpm`|No TPM|
|`Tpm12`|TPM 1.2|
|`Tpm20`|TPM 2.0|

**TpmUefiOpromMeasuring (TPM UEFI Option ROM Measurement)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable measuring the UEFI PCI option ROMs. Disabling this option skips measuring the UEFI PCI option ROMs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**TpmVisibility (TPM Visibility)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to hide the TPM from the operating system. When the TPM is hidden, BIOS secure startup is disabled, and the TPM does not respond to any commands. Intended use is for removing the TPM option from the system without removing the actual hardware.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Hidden`|Hidden|
|`Visible`|Visible|

**UefiOptimizedBoot (UEFI Optimized Boot)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When enabled, the system BIOS boots using native UEFI graphics drivers. When disabled, the system BIOS boots using INT10 legacy video support. You cannot disable this option if Secure Boot is enabled. You can only configure this option if Boot Mode is configured to UEFI Mode.  Set this option to disabled for compatibility with Microsoft Windows 2008 and Windows 2008 R2 operating systems on a system configured for UEFI Mode.  Set this option to enabled for compatibility with VMWare ESXi operating systems on a system configured for UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UefiSerialDebugLevel (UEFI Serial Debug Message Level)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable the UEFI Serial Debug output and verbosity level. Selecting Verbose can impact server boot time significantly. This option is only applicable in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`ErrorsOnly`|Errors Only|
|`Medium`|Medium|
|`Network`|Network|
|`Verbose`|Verbose|
|`Custom`|Custom|

**UefiShellBootOrder (Add Embedded UEFI Shell to Boot Order)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|When enabled, this option adds the Embedded UEFI Shell as an entry in the UEFI Boot Order list. This option is only available when the Boot Mode is configured to UEFI Mode and the Embedded UEFI Shell is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UefiShellScriptVerification (Shell Script Verification)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Enable this option to allow verification of UEFI shell script files when Secure Boot is enabled. For successful execution of script, make sure that UEFI shell scripts are enrolled in the Secure Boot database (db).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UefiShellStartup (UEFI Shell Script Auto-Start)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable automatic execution of the Embedded UEFI Shell startup script. You can store the script file on local media or access it from a network location. You must name the script file "startup.nsh" and place it on local media or a network location accessible to the server.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UefiShellStartupLocation (Shell Auto-Start Script Location)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the location of the Embedded UEFI Shell startup script. For the 'File Systems on Attached Media' option, you must name the script file "startup.nsh" and place it on a UEFI accessible local file system, such as a FAT32 partition on a USB disk or HDD. For the 'Network Location' option, the file must end with a .nsh extension, and must be placed at an HTTP/HTTPS or FTP location accessible to the system. When you select the 'Auto' option, the system attempts to retrieve the startup script from the network location first, followed by locally attached media.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`AttachedMedia`|File Systems on Attached Media|
|`NetworkLocation`|Network Location|

**UefiShellStartupUrl (Network Location for Shell Auto-Start Script)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a UEFI Shell startup script. This option is available and used only when the Auto-Start Script Location is set to 'Network Location', or 'Auto', and the Shell Auto-Start Script discovery using DHCP is set to 'Disabled'. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. FTP formats are accepted using either an IPv4 server address or a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/file.nsh, http://example.com/file/file.nsh, https://example.com/file/file.nsh, http://[1234::1000]/file.nsh. The file must end with an .nsh extension. When configured, the Embedded UEFI Shell attempts to load and execute the startup script from the network location pointed to by this URL. When a HTTPS URL is configured, you must enroll the respective HTTPS server's TLS certificate under Server Security > TLS(HTTPS) Options.|
|Type|String|
|Read Only|False|

**UefiShellStartupUrlFromDhcp (Discover Shell Auto-Start Script using DHCP)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to let the Shell discover its startup script URL using DHCP. This option is available only if the 'HTTP Support' policy is not set to 'Disabled' and Auto-Start Script Location is set to 'Network Location', or 'Auto'. When set to 'Enabled', the Shell sends DHCP requests with the DHCP User Class option set to the string 'UEFIShell'. The DHCP server must be configured to provide HTTP/HTTPS or FTP URLs when this DHCP User Class string is present in the DHCP request. The User Class option is Option 77 when using DHCP over IPv4, and Option 15 when using DHCP over IPv6. URLs in HTTP/HTTPS must use either an IPv4 or IPv6 server address, or a host name. FTP formats are accepted using either an IPv4 server address or a host name. The URL provided by the DHCP server should match the 'HTTP Support' policy. When 'HTTP Support' policy is set to 'Auto', any HTTP/HTTPS or FTP URL provided by the DHCP server is used. When policy is set to 'HTTPS only', only HTTPS URLs are used, and other URLs are ignored. When policy is set to 'HTTP only', only HTTP or FTP URLs are used, and other URLs are ignored. When policy is set to 'Disabled', the Shell does not send any DHCP request.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UncoreFreqScaling (Uncore Frequency Scaling)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|This option controls the frequency scaling of the processor's internal busses (the uncore.) Setting this option to Auto enables the processor to dynamically change frequencies based on workload. Forcing to the maximum or minimum frequency enables tuning for latency or power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Maximum`|Maximum|
|`Minimum`|Minimum|

**UpiPrefetcher (UPI Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the processor UPI Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. This option must be enabled when Sub-Numa Clustering (SNC) is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UrlBootFile (Boot from URL 1)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso.  When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu.  This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings. This is only applicable in UEFI Mode.  Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile2 (Boot from URL 2)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso.  When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu.  This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings. This is only applicable in UEFI Mode.  Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile3 (Boot from URL 3)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso.  When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu.  This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings. This is only applicable in UEFI Mode.  Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile4 (Boot from URL 4)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso.  When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu.  This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings. This is only applicable in UEFI Mode.  Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UsbBoot (USB Boot Support)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Set this option to disabled to prevent the system from booting to any USB devices connected to the server. This includes preventing boot to virtual media devices, and the embedded SD or uSD card slot (if supported).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UsbControl (USB Control)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|All USB Ports Enabled: Enables all USB ports and embedded devices.All USB Ports Disabled: Disables all USB ports and embedded devices.External USB Ports Disabled: Disables only external USB ports.Internal USB Ports Disabled: Disables only internal USB ports.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`UsbEnabled`|All USB Ports Enabled|
|`UsbDisabled`|All USB Ports Disabled|
|`ExternalUsbDisabled`|External USB Ports Disabled|
|`InternalUsbDisabled`|Internal USB Ports Disabled|

**UserDefaultsState (User Defaults)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Displays whether user default settings are enabled or disabled.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UtilityLang (Utility Language)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to adjust the current language for the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`English`|English|
|`Japanese`|Japanese|
|`Chinese`|Chinese|

**VideoOptions (Video Options)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure video settings in the system. When set to Add-in Video Enabled, Embedded Video Disabled, the system only displays video to the first discovered add-in video controller. When set to Both Add-in and Embedded Video Enabled, the system displays video to both the embedded and the first discovered add-in video controllers. In both modes, early system startup video is displayed to the embedded video controller.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`OptionalVideoOnly`|Add-in Video Enabled, Embedded Video Disabled|
|`BothVideoEnabled`|Both Add-in and Embedded Video Enabled|

**VirtualInstallDisk (Virtual Install Disk)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the Virtual Install Disk. The Virtual Install Disk contains drivers specific to this server that an OS can use during installation. If enabled, the Virtual Install Disk appears as a drive in the operating system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**VirtualSerialPort (Virtual Serial Port)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to assign the logical COM port address and associated default resources used by the Virtual Serial Port (VSP). VSP enables the Management Processor to present an emulated serial port to support the BIOS Serial Console and operating system serial console.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Com1Irq4`|COM 1; IRQ4; I/O: 3F8h-3FFh|
|`Com2Irq3`|COM 2; IRQ3; I/O: 2F8h-2FFh|
|`Disabled`|Disabled|

**VlanControl (VLAN Control)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable VLAN tagging on all enabled network interfaces.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**VlanId (VLAN ID)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the global VLAN ID for all enabled network interfaces. Valid values are 0 to 4094.A value of 0 sets the device to send untagged frames.|
|Type|Integer|
|Read Only|False|

**VlanPriority (VLAN Priority)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the priority for the VLAN tagged frames. Valid values are 0 to 7.|
|Type|Integer|
|Read Only|False|

**WakeOnLan (Wake-On LAN)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|You can configure the server to be powered on remotely when it receives a special packet. This option requires a NIC, NIC driver, and operating system that are WOL-capable.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**WorkloadProfile (Workload Profile)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Select this option to change the Workload Profile to accommodate your desired workload. Settings that are changed by the Workload Profile are grayed out and unchangeable unless in the 'Custom' profile. Please refer to the 'UEFI Workload-based Performance Tuning Guide' for details on which profiles affect which options. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`GeneralPowerEfficientCompute`|General Power Efficient Compute|
|`GeneralPeakFrequencyCompute`|General Peak Frequency Compute|
|`GeneralThroughputCompute`|General Throughput Compute|
|`Virtualization-PowerEfficient`|Virtualization - Power Efficient|
|`Virtualization-MaxPerformance`|Virtualization - Max Performance|
|`LowLatency`|Low Latency|
|`MissionCritical`|Mission Critical|
|`TransactionalApplicationProcessing`|Transactional Application Processing|
|`HighPerformanceCompute(HPC)`|High Performance Compute (HPC)|
|`DecisionSupport`|Decision Support|
|`GraphicProcessing`|Graphic Processing|
|`I/OThroughput`|I/O Throughput|
|`Custom`|Custom|

**XptPrefetcher (XPT Prefetcher)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable the processor XPT Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. This option must be enabled when Sub-Numa Clustering (SNC) is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**iSCSIPolicy (iSCSI Policy)**
Member of [Bios.v1\_0\_0.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the iSCSI Policy. If configured to Software Initiator, the iSCSI software initiator will be used to access iSCSI targets on any configured NIC ports. If configured to Adapter Initiator, the adapter specific iSCSI initiator will be used instead. The adapter firmware must be configured to access iSCSI targets from the adapter initiator.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`SoftwareInitiator`|Software Initiator|
|`AdapterInitiator`|Adapter Initiator|

