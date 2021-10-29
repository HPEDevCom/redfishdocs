**AcpiHpet (High Precision Event Timer (HPET) ACPI Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the High Precision Event Timer (HPET) table and device object in ACPI. When disabled, the HPET is not available to an operating system that supports the HPET through the industry standard ACPI name space.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AcpiRootBridgePxm (Memory Proximity Reporting for I/O)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When enabled, the System BIOS reports the proximity relationship between I/O devices and system memory to the operating system. Most operating systems can use this information to efficiently assign memory resources for devices, such as network controllers and storage devices. Additionally, certain I/O devices might not be able to take advantage of I/O handling benefits if their OS drivers are not properly optimized to support this feature. See your operating system and I/O device documentation for more details.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AcpiSlit (ACPI SLIT)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|The ACPI SLIT (System Locality Information Table) defines the relative access times between processors, memory subsystems, and I/O subsystems. Operating systems that support the SLIT can use this information to improve performance by allocating resources and workloads more efficiently.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AdjSecPrefetch (Adjacent Sector Prefetch)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the processor Adjacent Sector Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AdminEmail (Administrator E-mail Address)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter the server administrator's e-mail address.|
|Type|String|
|Read Only|False|

**AdminName (Administrator Name)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter the server administrator's name text.|
|Type|String|
|Read Only|False|

**AdminOtherInfo (Administrator Other Information)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter the server administrator's information text.|
|Type|String|
|Read Only|False|

**AdminPhone (Administrator Phone Number)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter the server administrator's phone number text.|
|Type|String|
|Read Only|False|

**AdvCrashDumpMode (Advanced Crash Dump Mode)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable the Advanced Crash Dump Mode. When enabled, the system will be configured to log additional debug information to the Active Health System logs when an unexpected system crash is experienced. This option should only be enabled when directed by qualified service personnel|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**AdvancedMemProtection (Advanced Memory Protection)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure additional memory protection with ECC (Error Checking and Correcting). Options and support vary per system.
Advanced ECC keeps all installed memory available for use while still protecting the system against all single-bit failures and certain multi-bit failures.
Online Spare Memory enables a system to automatically map out a group of memory that is detected to be at an increased risk of receiving uncorrected memory errors based on an advanced analysis of corrected memory errors. The mapped out memory is automatically replaced by a spare group of memory without interrupting the system.
Mirrored Memory provides the maximum protection against uncorrected memory errors that might otherwise result in a system failure.
Fault Tolerant Advanced Double Device Data Correction (ADDDC) enables the system to correct memory errors and continue to operate in cases of multiple DRAM device failures on a DIMM. This provides protection against uncorrectable memory errors beyond what is available with Advanced ECC.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```FastFaultTolerantADDDC```|Fault Tolerant Memory (ADDDC)|
|```AdvancedEcc```|Advanced ECC Support|
|```OnlineSpareAdvancedEcc```|Online Spare with Advanced ECC Support|
|```MirroredAdvancedEcc```|Mirrored Memory with Advanced ECC Support|

**AsrStatus (ASR Status)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the Automatic Server Recovery option, which enables the system to automatically reboot if the server locks up.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**AsrTimeoutMinutes (ASR Timeout)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Automatic Server Recovery is enabled, you can use this option to set the time to wait before rebooting the server in the event of an operating system crash or server lockup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Timeout10```|10 Minutes|
|```Timeout15```|15 Minutes|
|```Timeout20```|20 Minutes|
|```Timeout30```|30 Minutes|
|```Timeout5```|5 Minutes|

**AssetTagProtection (Asset Tag Protection)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to lock Asset Tag information. When set to lock, the Asset Tag is not erased if the default system settings are restored.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Locked```|Locked|
|```Unlocked```|Unlocked|

**AutoPowerOn (Automatic Power-On)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the server power state when AC power is applied to the system. 
Restore Last Power State returns the system to its previous power state when AC power is restored after an AC power loss. 
Note: This option is not available on all systems. 
Always Power On and Always Power Off causes the system to always return to the "on" and "off" state, respectively, whenever power is applied, even if the system is in the "off" state when power is lost.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AlwaysPowerOn```|Always Power On|
|```AlwaysPowerOff```|Always Power Off|
|```RestoreLastState```|Restore Last Power State|

**BootMode (Boot Mode)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select the boot mode of the system. Selecting UEFI Mode configures the system to boot Unified Extensible Firmware Interface (UEFI) compatible operating systems. Selecting Legacy BIOS Mode configures the system to boot traditional operating systems in Legacy BIOS compatibility mode. The operating system can only boot in the mode in which it is installed. The following options require booting in UEFI Mode: Secure Boot, IPv6 PXE Boot, boot > 2.2 TB Disks in AHCI SATA Mode, and Smart Array SW RAID.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Uefi```|UEFI Mode|
|```LegacyBios```|Legacy BIOS Mode|

**BootOrderPolicy (Boot Order Policy)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure how the system attempts to boot devices per the Boot Order list when no bootable device is found. If configured to 'Retry Boot Order Indefinitely,' the system continuously attempts to process the Boot Order list until a bootable device is found. If configured to 'Attempt Boot Order Once,' the system attempts to process all items in the Boot Order list once, and if unsuccessful, waits for user input to proceed. If configured for 'Reset After Failed Boot Attempt,' the system attempts to process all items in the Boot Order list once, and then reboots the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```RetryIndefinitely```|Retry Boot Order Indefinitely|
|```AttemptOnce```|Attempt Boot Order Once|
|```ResetAfterFailed```|Reset After Failed Boot Attempt|

**ChannelInterleaving (Channel Interleaving)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to modify the level of interleaving for which the memory system is configured. Typically, higher levels of memory interleaving result in maximum performance. However, reducing the level of interleaving can result in power savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**CollabPowerControl (Collaborative Power Control)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|For operating systems that support the Processor Clocking Control (PCC) Interface, enabling this option enables the Operating System to request processor frequency changes even if the Power Regulator option on the server are configured for Dynamic Power Savings Mode. For Operating Systems that do not support the PCC Interface, or when the Power Regulator Mode is not configured for Dynamic Power Savings Mode, this option has no effect on system operation.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ConsistentDevNaming (Consistent Device Naming)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select the level of Consistent Device Naming. On supported operating systems, NIC ports are named based on their location in the system. CDN Support for LOMs Only names Embedded NICs and FlexibleLOMs. Existing NIC connections retain their names until reinstalled under the OS environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```LomsAndSlots```|CDN Support for LOMs and Slots|
|```LomsOnly```|CDN Support for LOMs Only|
|```Disabled```|Disabled|

**CoreBoosting (Core Boosting)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable the Core Boosting technology to increase processor performance on qualified processors. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**CustomPostMessage (Custom POST Message)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter a message to be displayed on POST screen during system startup. This feature limits POST screen messaging to 62 characters, special characters are also accepted.|
|Type|String|
|Read Only|False|

**DaylightSavingsTime (Daylight Savings Time)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option controls the Daylight Savings Time (DST) adjustment to the displayed local time.  If this option is disabled, the displayed local time will not be adjusted for DST.  If this option is enabled, the displayed local time will be advanced by one hour.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**DcuIpPrefetcher (DCU IP Prefetcher)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the processor DCU IP Prefetcher feature. In some cases, setting this option to disabled can improve performance. In most cases, the default value of enabled provides optimal performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**DcuStreamPrefetcher (DCU Stream Prefetcher)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the processor DCU Stream Prefetcher feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in your environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**Dhcpv4 (DHCPv4)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When enabled, this option enables obtaining the pre-boot network IPv4 configuration from a DHCP server. Individual settings are not available. When disabled, you must configure static IP address settings individually.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**DirectToUpi (Direct To UPI (D2K))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Direct To UPI (D2K)|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**DynamicPowerCapping (Dynamic Power Capping Functionality)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure when the System BIOS executes power calibration during the boot process. In Auto mode, calibration is run the first time the server is booted, and is then only run again when the server's hardware configuration changes, configuration settings change, or if the system determines a new calibration is necessary. When disabled, the calibration does not run, and Dynamic Power Capping is not supported. When enabled, the calibration is run on every boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbNicAspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**EmbNicEnable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**EmbNicLinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|

**EmbNicPCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbSas1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**EmbSas1Boot (Embedded SAS Controller 1)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order list.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order list.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**EmbSas1Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**EmbSas1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**EmbSas1PcieOptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbSata1Aspm (SATA Power Management(SALP))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Aggressive Link Power Management(SALP).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**EmbSata1Enable (SATA Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable SATA devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**EmbSata1PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbSata2Aspm (SATA Power Management(SALP))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Aggressive Link Power Management(SALP).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**EmbSata2Enable (SATA Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable SATA devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**EmbSata2PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbVideoConnection (Embedded Video Connection)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When configured for Auto mode, the external video connection to the embedded video controller is automatically disabled to save power when a monitor is not attached. It is automatically enabled when a monitor is attached, including when the server is operating. When configured for Always Disabled, the external video connection to the embedded video controller is disabled, and a monitor connected to this port does not display except during system boot. This can be used for security reasons. When configured for Always Enabled, the external video connection to the embedded video controller is always enabled. This option is only required if a monitor is attached with a monitor detection that does not function properly (making AUTO mode not work properly). Note: This option does not affect Integrated Remote Console video. Also, if you press F9 or F11 during system boot, the configured video connector behavior is overridden, and the video console remains enabled. This lets you reconfigure the Embedded Video Connection option even if the video is disabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```AlwaysDisabled```|Always Disabled|
|```AlwaysEnabled```|Always Enabled|

**EmbeddedDiagnostics (Embedded Diagnostics)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Embedded Diagnostics functionality. If disabled, you cannot launch Embedded Diagnostics. Enable this option to use the Embedded Diagnostics functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmbeddedSata (Embedded SATA Configuration)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Important: Smart Array SW RAID is not supported when Boot Mode is set to Legacy BIOS Mode. 

Use this option to configure the embedded chipset SATA controller. When selecting the Advanced Host Controller Interface (AHCI) or RAID (if supported), make sure the proper operating system drivers are used for proper operation.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Ahci```|SATA AHCI Support|
|```Raid```|Smart Array SW RAID Support|

**EmbeddedSerialPort (Embedded Serial Port)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to assign the logical COM port address and associated default resources to the selected physical serial port. The operating system can overwrite this setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Com1Irq4```|COM 1; IRQ4; I/O: 3F8h-3FFh|
|```Com2Irq3```|COM 2; IRQ3; I/O: 2F8h-2FFh|
|```Disabled```|Disabled|

**EmbeddedUefiShell (Embedded UEFI Shell)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Embedded UEFI Shell. When enabled, you can launch the Embedded UEFI Shell from the pre-boot environment. When enabled and the Boot Mode is configured for UEFI Mode, you can add the Embedded UEFI Shell to the UEFI Boot Order list  by selecting the option entitled 'Add Embedded UEFI Shell to Boot Order'. When disabled, the Embedded UEFI Shell is not available in the pre-boot environment, and you cannot add it to the UEFI Boot Order list. The Embedded UEFI Shell is a pre-boot command line environment that you can use for scripting and running UEFI applications. It provides CLI-based commands to configure the server, update the System BIOS and other firmware, and obtain system information and error logs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EmsConsole (EMS Console)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the ACPI serial port settings, which include the ability to redirect the Windows Server Emergency Management console (EMS) through either the physical or virtual serial port.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Physical```|Physical Serial Port|
|```Virtual```|Virtual Serial Port|

**EnabledCoresPerProc (Enabled Cores per Processor)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option enables limiting the number of enabled processor cores per physical processor. You can set the number of enabled cores to a value supported by the physical processor. Setting the value to 0 or a value larger than the number of supported cores of the installed processor will result in all processor cores in the socket being enabled.|
|Type|Integer|
|Read Only|False|

**EnergyEfficientTurbo (Energy Efficient Turbo)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option controls whether the processor uses an energy efficiency based policy when engaging turbo range frequencies. This option is only applicable when Turbo Mode is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**EnergyPerfBias (Energy/Performance Bias)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to configure several processor subsystems to optimize the performance and power usage of the processor. Balanced Performance provides optimum power efficiency, and is recommended for most environments. Maximum Performance Mode is recommended for environments that require the highest performance and lowest latency but are not sensitive to power consumption. Only use Power Savings Mode in environments that are power sensitive and can accept reduced performance.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```MaxPerf```|Maximum Performance|
|```BalancedPerf```|Balanced Performance|
|```BalancedPower```|Balanced Power|
|```PowerSavingsMode```|Power Savings Mode|

**EnhancedProcPerf (Enhanced Processor Performance)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable the Enhanced Processor Performance setting.  When enabled, this option will adjust the processor settings to a more aggressive setting that can result in improved performance, but may result in a higher power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**EraseUserDefaults (Erase User Defaults)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to erase the user defaults backup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```No```|No, Cancel|
|```Yes```|Yes, erase the current settings.|

**ExtendedAmbientTemp (Extended Ambient Temperature Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable the server to operate at higher ambient temperatures than normally supported. These options are only supported with specific hardware configurations. See your server documentation before configuring the server to enable extended ambient temperature support. Improper system operation or damage to hardware components can result from enabling these options in unsupported configurations. Selecting Enabled for 40c Ambient (ASHRAE 3) enables the server to operate in environments with ambient temperatures up to 40 degrees Celsius. Selecting Enabled for 45c Ambient (ASHRAE 4) enables the server to operate in environments with ambient temperatures up to 45 degrees Celsius. Not all servers support both 40c Ambient (ASHRAE 3) and 45c Ambient (ASHRAE 4).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```ASHRAE3```|Enabled for 40c Ambient (ASHRAE 3)|
|```ASHRAE4```|Enabled for 45c Ambient (ASHRAE 4)|

**ExtendedMemTest (Extended Memory Test)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When enabled, the system validates memory during the memory initialization process. If uncorrectable memory errors are detected, the memory is mapped out, and the failed DIMMs are logged to the Integrated Management Log (IML). Enabling this option can result in a significant increase in the server boot time.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**F11BootMenu (One-Time Boot Menu (F11 Prompt))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the POST One-Time Boot F11 Prompt. 
Note: When disabled, shell 'boot' command is not available for use.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**FCScanPolicy (Fibre Channel/FCoE Scan Policy)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to change the default Fibre Channel or FCoE policy for scanning for boot targets. When configured for Scan All Targets, each installed FC/FCoE adapter scans all available targets. When configured for Scan Configured Targets Only, the FC/FCoE adapters only scan targets that are preconfigured in the devices settings. This option overrides any individual device settings configured in the device-specific setup.This option is only supported in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Scan All Targets|
|```CardConfig```|Scan Configured Targets Only|

**FanFailPolicy (Fan Failure Policy)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure how the server reacts when fans fail, resulting in the server not having required fans in operation. When configured for "Shutdown/Halt on Critical Fan Failures," the server cannot boot or operate when it does not have required fans operating due to one or more fan failures.  When configured for "Allow Operation with Critical Fan Failures," the server can boot and operate if it does not have required fans operating due to one or more fan failures. It is recommended that you configure the Fan Failure Policy to the default state of "Shutdown/Halt on Critical Fan Failures." Operating without the required fans operating can result in damage to hardware components.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Shutdown```|Shutdown/Halt on Critical Fan Failures|
|```Allow```|Allow Operation with Critical Fan Failures|

**FanInstallReq (Fan Installation Requirements)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure how the server reacts when all required fans are not installed. When configured for Enable Messaging, the server displays messages and log events to the Integrated Management Log (IML) when required fans are not installed. The server can still boot and operate. When configured for Disable Messaging, the server does not display messages and log events when required fans are not installed. All indications that the server is operating without required fans are removed. It is recommended that you leave Fan Installation Requirements in the default state of Enable Messaging. Operating without the required fans can result in damage to hardware components.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```EnableMessaging```|Enable Messaging|
|```DisableMessaging```|Disable Messaging|

**FlexLom1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**FlexLom1Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**FlexLom1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**FlexLom1PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**HttpSupport (HTTP Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to control the UEFI HTTP(s) boot support when in UEFI Mode, and the 'Discover Shell Auto-Start Script using DHCP' option under 'Embedded UEFI Shell' settings.
When 'Auto' is selected, the system automatically adds HTTP(S) boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTP or HTTPS URLs provided by the DHCP server. Any other URLs provided by the DHCP server are ignored. 
When 'HTTP only' is selected, the system automatically adds HTTP boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTP URLs provided by the DHCP server, and to ignore any HTTPS or other URLs that are provided. 
When 'HTTPS only' is selected, the system automatically adds HTTPS boot options to the UEFI Boot Order list for every network port that is enabled for Network Boot. Selecting this option enables the system to boot to the HTTPS URLs provided by the DHCP server, and to ignore any HTTP or other URLs that are provided. 
To enable HTTPS boot either by selecting 'Auto' or 'HTTPS only', you must enroll the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
Note: This setting only affects the HTTP boot options added for the network ports, and the Discover Shell Auto-Start Script provided by the DHCP server. Other settings, such as Boot from URL, are not affected by this setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```HttpsOnly```|HTTPS only|
|```HttpOnly```|HTTP only|
|```Disabled```|Disabled|

**HwPrefetcher (HW Prefetcher)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the processor HW prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelDmiLinkFreq (Intel DMI Link Frequency)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to force the link speed between the processor and the southbridge to run at slower speeds to save power.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```DmiGen1```|Gen 1 Speed|
|```DmiGen2```|Gen 2 Speed|

**IntelNicDmaChannels (Intel NIC DMA Channels (IOAT))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select the Intel NIC DMA Channels support. This is a NIC acceleration option that only runs on Intel-based NICs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelPerfMonitoring (Intel Performance Monitoring Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option does not impact performance. When enabled, this option exposes certain chipset devices that can be used with the Intel Performance Monitoring Toolkit.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**IntelProcVtd (Intel(R) VT-d)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|If enabled, a hypervisor or operating system supporting this option can use hardware capabilities provided by Intel VT for Directed I/O. You can leave this set to enabled even if you are not using a hypervisor or an operating system that uses this option.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelSpeedSelect (Intel(R) Speed Select)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Intel(R) Speed Select is available on only certain processor models.Speed Select processors have unique configurations that support higher base frequencies with fewer enabled core counts. Changing this setting will result in increasing the CPU base frequency along with a reduction in number of available cores. Consult documentation for the installed processor model for more information and core/frequency mappings of each configuration.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Base```|Base|
|```Config1```|Config 1|
|```Config2```|Config 2|

**IntelTxt (Intel(R) TXT Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to modify Intel TXT support.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelUpiFreq (Intel UPI Link Frequency)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to set the UPI Link frequency to a lower speed. Running at a lower frequency can reduce power consumption, but can also affect system performance. You can only configure this option if two or more CPUs are present and the Workload Profile is set to custom.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```MinUpiSpeed```|Min UPI Speed|

**IntelUpiLinkEn (Intel UPI Link Enablement)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the UPI topology to use fewer links between processors, when available. Changing from the default can reduce UPI bandwidth performance in exchange for less power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SingleLink```|Single Link Operation|

**IntelUpiPowerManagement (Intel UPI Link Power Management)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to place the Quick Path Interconnect (UPI) links into a low power state when the links are not being used. This lowers power usage with minimal effect on performance. You can only configure this option if two or more CPUs are present and the Workload Profile is set to custom.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**IntelligentProvisioning (Intelligent Provisioning (F10 Prompt))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Intelligent Provisioning functionality. When disabled, you are prevented from entering the Intelligent Provisioning environment by pressing F10 during server boot. You must set this option to enabled to use Intelligent Provisioning functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**InternalSDCardSlot (Internal SD Card Slot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Internal SD Card Slot. When set to disabled, the SD card slot is disabled, regardless of whether an SD Card is installed or not. The SD Card will not be visible in the pre-boot environment or under the operating system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**Ipv4Address (IPv4 Address)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4Gateway (IPv4 Gateway)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network gateway IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4PrimaryDNS (IPv4 Primary DNS)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Primary DNS Server IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4SecondaryDNS (IPv4 Secondary DNS)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Secondary DNS Server IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4SubnetMask (IPv4 Subnet Mask)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network subnet mask. Enter a static IP address using dotted-decimal notation (for example, 255.255.255.0). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6Address (IPv6 Address)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6ConfigPolicy (IPv6 Config Policy)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When set to Automatic, this option enables obtaining the pre-boot network IPv6 configuration automatically. Individual settings are not available. When set to Manual, you must configure static IP address settings individually.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Automatic```|Automatic|
|```Manual```|Manual|

**Ipv6Duid (IPv6 DHCP Unique Identifier)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to control the IPv6 DHCP Unique Identifier (DUID). If configured for Auto, the DUID is set using the Universal Unique Identifier (UUID) of the server, or using the DUID-LLT method if the server UUID is not available. If configured for DUID-LLT, the DUID is set based on the Link-layer Address Plus Time [DUID-LLT] method. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```DuidLlt```|DUID-LLT|

**Ipv6Gateway (IPv6 Gateway)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network gateway IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6PrimaryDNS (IPv6 Primary DNS)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Primary DNS Server IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6SecondaryDNS (IPv6 Secondary DNS)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Secondary DNS Server IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**LLCDeadLineAllocation (LLC Dead Line Allocation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enable  - Opportunistically fill dead lines in LLC. Disable - Never fill dead lines in LLC.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**LlcPrefetch (LLC Prefetch)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the processor Last Level Cache (LLC) prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**LocalRemoteThreshold (Local/Remote Threshold)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Local/Remote Threshold setting.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Low```|Low|
|```Medium```|Medium|
|```High```|High|
|```Disabled```|Disabled|

**MaxMemBusFreqMHz (Maximum Memory Bus Frequency)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the memory system to run memory at a lower maximum speed than that supported by the installed processor and DIMM configuration. Setting this option to Auto configures the system to run memory at the maximum speed supported.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```MaxMemBusFreq2933```|2933 MHz|
|```MaxMemBusFreq2667```|2667 MHz|
|```MaxMemBusFreq2400```|2400 MHz|
|```MaxMemBusFreq2133```|2133 MHz|
|```MaxMemBusFreq1867```|1867 MHz|

**MaxPcieSpeed (Maximum PCI Express Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|If a PCI Express device does not run properly at its optimal speed, lowering the speed at which the device is running can address this issue. This option enables you to lower the maximum PCI Express speed at which the server allows PCI Express devices to operate. You can also use it to address issues with problematic PCI Express devices. Setting this value to Maximum Supported configures the platform to run at the maximum speed supported by the platform or the PCIe device, whichever is lower.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```PerPortCtrl```|Per Port Control|
|```PcieGen1```|PCIe Generation 1.0|

**MemClearWarmReset (Memory Clear on Warm Reset)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure when memory is cleared on warm resets. When disabled, the contents of memory are only cleared on a warm reset if requested by the operating system. When enabled, memory is cleared on all reboots. Disabling this option can save boot time by skipping the clearing of memory on warm resets.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**MemFastTraining (Memory Fast Training)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option enables a boot time reduction by controlling when the BIOS bypasses the full memory training. When enabled, the server bypasses the full memory training during boot, and uses memory parameters determined on a previous boot to decrease boot time. Note that even when enabled, the BIOS performs a full memory training if the DIMM configuration or processor configuration changes, or if there is a change in any BIOS setting related to memory or processor configuration. When disabled, the server performs a full memory training on every server boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**MemMirrorMode (Memory Mirroring Mode)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select from the available Memory Mirroring modes. Full Mirror - reserves 50% of the total available memory for mirroring. Partial Mirror (20% above 4GB) - reserves 20% of the total available Memory above 4GB for Mirroring. Partial Mirror (10% above 4GB) - reserves 10% of the total available Memory above 4GB for Mirroring. Partial Mirror (Memory below 4GB) - depending on the memory configuration, sets up 2GB or 3GB of lower memory below 4GB for Mirroring. Partial Mirror (OS Configured) - sets up the system to configure Partial Mirroring at OS level. This option will be not active and grayed out unless Advanced Memory Protection is set to Mirrored Memory with Advanced ECC Support.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Full```|Full Mirror|
|```PartialOsConfig```|Partial Mirror (OS Configured)|
|```PartialFirst4GB```|Partial Mirror (Memory below 4GB)|
|```Partial10PercentAbove4GB```|Partial Mirror (10% above 4GB)|
|```Partial20PercentAbove4GB```|Partial Mirror (20% above 4GB)|

**MemPatrolScrubbing (Memory Patrol Scrubbing)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option corrects memory soft errors so that, over the length of the system runtime, the risk of producing multi-bit and uncorrectable errors is reduced.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**MemRefreshRate (Memory Refresh Rate)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option controls the refresh rate of the memory controller and might affect the performance and resiliency of the server memory. It is recommended that you leave this setting in the default state unless indicated in other documentation for this server.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Refreshx1```|1x Refresh|
|```Refreshx2```|2x Refresh|

**MemoryControllerInterleaving (Memory Controller Interleaving)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to control the Memory Controller Interleaving option. When set to Auto, the system will automatically enable or disable memory controller interleaving based on the configuration of the system. When set to disabled, the user may force disable memory controller interleaving. In certain memory configurations, setting this option to disabled has showed a performance benefit across all memory in the system. It is recommended to leave this option to set to Auto.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**MemoryRemap (Memory Remap)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to remap memory that may have been previously disabled from the system due to a failure event, such as an uncorrectable memory error. The Remap All Memory Option causes the system to make all memory in the system available again on the next boot. The No Action option leaves any affected memory unavailable to the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```AllMemory```|All Memory|

**MinProcIdlePkgState (Minimum Processor Idle Power Package C-State)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|You can configure this option only if the Workload Profile is set to Custom. Use this option to select the lowest idle package power state (C-state) of the processor. The processor automatically transitions into package C-states based on the Core C-states in which cores on the processor have transitioned. The higher the package C-state, the lower the power usage of that idle package state. (Package C6 (retention) is the lowest power idle package state supported by the processor).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```C6Retention```|Package C6 (retention) State|
|```C6NonRetention```|Package C6 (non-retention) State|
|```NoState```|No Package State|

**MinProcIdlePower (Minimum Processor Idle Power Core C-State)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|You can only configure this option if Workload Profile is set to Custom. Use this option to select the lowest idle power state (C-state) of the processor that the operating system uses. The higher the C-state, the lower the power usage of that idle state. (C6 is the lowest power idle state supported by the processor).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```C6```|C6 State|
|```C1E```|C1E State|
|```NoCStates```|No C-states|

**MixedPowerSupplyReporting (Mixed Power Supply Reporting)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When enabled, the server logs a message that a mixed power supply configuration is present. When disabled, the server no longer logs messages that a mixed power supply configuration is present.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NetworkBootRetry (Network Boot Retry Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the Network Boot Retry Support. When enabled, the system BIOS attempts to boot the network device up to the number of times configured in the Network Boot Retry Count option before attempting to boot the next network device. This setting only takes effect when attempting to boot a network device from the F12 function key and one-time boot options.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NetworkBootRetryCount (Network Boot Retry Count)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to control the number of times the system BIOS attempts to boot a network device. The valid range is from 0 to 20.|
|Type|Integer|
|Read Only|False|

**NicBoot1 (Embedded NIC 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot10 (Embedded NIC 10 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot11 (Embedded NIC 11 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot12 (Embedded NIC 12 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot2 (Embedded NIC 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot3 (Embedded NIC 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot4 (Embedded NIC 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot5 (Embedded NIC 5 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot6 (Embedded NIC 6 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot7 (Embedded NIC 7 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot8 (Embedded NIC 8 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NicBoot9 (Embedded NIC 9 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI, FCoE or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**NodeInterleaving (Node Interleaving)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the NUMA architecture properties for the system. All operating system platforms support NUMA architectures. In most cases, optimum performance is obtained by disabling the Node Interleaving option. When this option is enabled, memory addresses are interleaved across the memory installed for each processor. Some workloads might experience improved performance when this option is enabled. Node Interleaving cannot be enabled when NVDIMMs are present in the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NumaGroupSizeOpt (NUMA Group Size Optimization)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure how the System BIOS reports the size of a NUMA node (number of logical processors), which assists the Operating System in grouping processors for application use (referred to as Kgroups). The default setting of Clustered provides better performance due to optimizing the resulting groups along NUMA boundaries. However, some applications might not be optimized to take advantage of processors spanning multiple groups. In such cases, selecting the Flat option might be necessary in order for those applications to utilize more logical processors.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Flat```|Flat|
|```Clustered```|Clustered|

**NvDimmNMemFunctionality (NVDIMM-N Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option controls whether NVDIMM-N support (including backing up the contents of the memory to flash on power down or reset) is enabled. If this option is configured for Disabled, then the NVDIMMs of type NVDIMM-N in the system are NOT used by the operating system as persistent storage, and are NOT used by the operating system as system memory.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvDimmNMemInterleaving (NVDIMM-N Interleaving)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option controls whether the NVDIMMs of type NVDIMM-N installed on a particular processor will be interleaved with each other in the memory map. This option does NOT impact the interleaving of standard DIMMs, and interleaving is never enabled across NVDIMMs of type NVDIMM-N and standard DIMMs. NVDIMMs of type NVDIMM-N installed on different processors are never interleaved together. If this setting is changed, then all installed NVDIMMs of type NVDIMM-N must be sanitized.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvDimmNSanitizePolicy (NVDIMM-N Sanitize/Erase on Next Reboot Policy)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option is used to Sanitize/Erase all user data and error status data saved in the selected NVDIMMs of type NVDIMM-N. Selected NVDIMMs of type NVDIMM-N are sanitized/erased on the next reboot of the system. This process is required BEFORE the NVDIMM-N Memory Interleaving option can be modified. An NVDIMM-N must be sanitized/erased when it is initially installed in the system or installed in a different DIMM slot on the system. In addition, an NVDIMM-N can be recovered to normal operation if it has received an Uncorrectable Memory Error, a Backup Error, a Restore Error, or an Arming Error (if the NVDIMM hardware is functional). Note that the largest group of NVDIMMs of type NVDIMM-N selected are sanitized/erased. For instance, if 'Sanitize/Erase all NVDIMM-N on Processor 1' is enabled and 'Sanitize/Erase Processor 1 DIMM 8' is disabled, all NVDIMMs of type NVDIMM-N on Processor 1 are sanitized/erased including Processor 1 DIMM 8. There are four policies that control the action of the system after NVDIMMs of type NVDIMM-N are sanitized/erased. The options are to power off the system after sanitizing/erasing NVDIMMs, to enable the system to boot to the operating system after sanitizing/erasing NVDIMMs, to boot to the System Utilities after sanitizing/erasing NVDIMMs, or to sanitize/erase the NVDIMMs back to the factory default settings and power off the system. 'Sanitize/Erase to Factory Defaults and Power System Off' is recommended when retiring the NVDIMMs with no intention of reuse.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```SanitizeAndRebootSystem```|Sanitize/Erase and Boot to Operating System|
|```SanitizeAndShutdownSystem```|Sanitize/Erase and Power System Off|
|```SanitizeAndBootToFirmwareUI```|Sanitize/Erase and Boot to System Utilities|
|```SanitizeToFactoryDefaults```|Sanitize/Erase to Factory Defaults and Power System Off|

**NvdimmLabelSupport (NVDIMM-N OS Label Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable NVDIMM OS Label support via the ACPI methods _LSI, _LSR, and _LSW.When this option is enabled, the ACPI methods will be generated for each active NVDIMM in the system.  When this option is disabled, those methods will not be generated.  This option does NOT apply to Intel Optane Memory devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat1 (NVMe Drive 1)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat10 (NVMe Drive 10)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat11 (NVMe Drive 11)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat12 (NVMe Drive 12)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat13 (NVMe Drive 13)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat14 (NVMe Drive 14)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat15 (NVMe Drive 15)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat16 (NVMe Drive 16)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat17 (NVMe Drive 17)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat18 (NVMe Drive 18)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat19 (NVMe Drive 19)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat2 (NVMe Drive 2)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat20 (NVMe Drive 20)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat21 (NVMe Drive 21)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat22 (NVMe Drive 22)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat23 (NVMe Drive 23)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat24 (NVMe Drive 24)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat25 (NVMe Drive 25)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat26 (NVMe Drive 26)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat27 (NVMe Drive 27)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat28 (NVMe Drive 28)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat29 (NVMe Drive 29)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat3 (NVMe Drive 3)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat30 (NVMe Drive 30)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat31 (NVMe Drive 31)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat32 (NVMe Drive 32)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat33 (NVMe Drive 33)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat34 (NVMe Drive 34)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat35 (NVMe Drive 35)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat36 (NVMe Drive 36)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat37 (NVMe Drive 37)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat38 (NVMe Drive 38)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat39 (NVMe Drive 39)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat4 (NVMe Drive 4)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat40 (NVMe Drive 40)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat41 (NVMe Drive 41)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat42 (NVMe Drive 42)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat43 (NVMe Drive 43)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat44 (NVMe Drive 44)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat45 (NVMe Drive 45)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat46 (NVMe Drive 46)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat47 (NVMe Drive 47)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat48 (NVMe Drive 48)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat49 (NVMe Drive 49)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat5 (NVMe Drive 5)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat50 (NVMe Drive 50)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat6 (NVMe Drive 6)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat7 (NVMe Drive 7)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat8 (NVMe Drive 8)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeFormat9 (NVMe Drive 9)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to decommission NVM Express drives. Selected NVM Express drives are securely erased in the following boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**NvmeOptionRom (Embedded NVM Express Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable embedded NVM Express Option ROM. When enabled, the system loads the NVM Express Option ROM provided by the system BIOS. When disabled, the system loads the NVM Express Option ROM provided by the adapter.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**OpportunisticSelfRefresh (Opportunistic Self-Refresh)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enables or disables opportunistic self-refresh.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciPeerToPeerSerialization (PCI Peer to Peer Serialization)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to configure the PCIe Peer to Peer Serialization Option. When set to enabled, PCIe transactions are interleaved across PCIe root ports of a processor which can result in increased performance in peer to peer communication. Certain configurations such as systems populated with multiple GPUs on a processor socket may see increased performance when this feature is enabled. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciResourcePadding (NVMe PCIe Resource Padding)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure PCIe resources to support PCIe hot-add for NVMe drives. When Normal is selected, PCIe resources are only allocated to devices installed at boot time, and PCIe hot-add is not supported. When Medium is selected, additional PCIe resources are allocated for each PCIe Root Port, which might enable a PCIe hot-add event to work without requiring a system reboot to enumerate the device. When High is selected, a maximum amount of PCIe resources are set aside to allow for the best chance of supporting a PCIe hot-add event.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Normal```|Normal|
|```Medium```|Medium|
|```High```|High|

**PciSlot1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot1Bifurcation (PCIe Slot 1 Bifurcation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot1Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot1LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot1OptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot2Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot2Bifurcation (PCIe Slot 2 Bifurcation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot2Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot2LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot2OptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot3Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot3Bifurcation (PCIe Slot 3 Bifurcation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot3Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot3LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot3OptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot4Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot4Bifurcation (PCIe Slot 4 Bifurcation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot4Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot4LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot4OptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot5Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot5Bifurcation (PCIe Slot 5 Bifurcation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot5Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot5LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot5OptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot6Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot6Bifurcation (PCIe Slot 6 Bifurcation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot6Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot6LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot6OptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot7Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot7Bifurcation (PCIe Slot 7 Bifurcation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot7Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot7LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot7OptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PciSlot8Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Power Management (ASPM) support for the selected device. When configured for L0s Enabled, the selected device's link enters a standby energy savings state. When configured for L1 Enabled, the selected device's link enters a lower power standby state at the expense of a longer exit latency. When configured for L1 and L0s Enabled, the selected device's link enters either power savings mode, depending on link utilization, and provides the highest energy savings.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```AspmL1Enabled```|L1 Enabled|

**PciSlot8Bifurcation (PCIe Slot 8 Bifurcation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When Auto is selected, the PCIe slot will train at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```SlotBifurcated```|Bifurcate|
|```SlotDualBifurcated```|Dual Bifurcate|

**PciSlot8Enable (PCIe Device Disable)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|

**PciSlot8LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the PCIe Link Speed for the selected device. When configured for Auto, the selected device trains at the maximum supported speed of the PCIe link. When configured for PCIe Generation 2 Link Speed, the selected device trains at a maximum of PCIe Generation 2 speed. When configured for PCIe Generation  Link 1 speed, the selected device trains at a maximum of PCIe Generation 1 speed.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```PcieGen1```|PCIe Generation 1.0|
|```PcieGen2```|PCIe Generation 2.0|

**PciSlot8OptionROM (PCIe Option ROM)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PersistentMemAddressRangeScrub (Persistent Memory Address Range Scrub)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the NVDIMM memory Address Range Scrub support. When enabled, this option allows a supported OS to attempt recovery from an uncorrectable memory error detected in the NVDIMM memory. When disabled, the NVDIMM memory will be disabled on the following boot after detecting an uncorrectable memory error in the NVDIMM. If the NVDIMM memory Memory Interleaving option is enabled, a disabled NVDIMM will include all the modules or regions within the set.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PersistentMemBackupPowerPolicy (Persistent Memory Backup Power Policy)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option controls whether the system waits during system boot for batteries to charge if sufficient battery backup power for the installed persistent memory is not available. If this option is configured for 'Continue Boot without Backup Power', the server boots even if sufficient battery backup power is not installed. In this case, if sufficient battery backup power is not enabled, the configured memory will NOT be used by the operating system as persistent storage or as system memory.  If this option is configured for 'Use External Backup Power', the server will depend on an external UPS to handle an AC loss condition.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```WaitForBackupPower```|Wait for Backup Power on Boot|
|```BootWithoutBackupPower```|Continue Boot without Backup Power|
|```UseExternalBackupPower```|Use External Backup Power|

**PersistentMemScanMem (Persistent Memory Integrity Check)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When this option is enabled, persistent memory will be checked during system boot to determine data integrity. Depending on the Persistent Memory Address Range Scrub setting, discovered errors during the data integrity check will either be presented to the operating system for recovery or cause the persistent memory to be mapped out and unavailable to the operating system. If this option is disabled, any persistent memory which has issues with the ability to read data or which has bad data may result in uncorrectable errors that result in a system crash. 
 If this option is disabled, Persistent Memory Address Range Scrub functionality might be impacted.For NVDIMM-N, this option will be automatically enabled if Persistent Memory Address Range Scrub functionality is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PostBootProgress (POST Verbose Boot Progress)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable verbose boot progress messaging. Because this option displays additional debug information to the screen and serial console, it might be helpful for determining why a server became unresponsive during the boot process.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Serial```|Serial Only|
|```All```|All|

**PostDiscoveryMode (UEFI POST Discovery Mode)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the UEFI POST Discovery Mode. When Auto is selected, the system selectively starts devices which are required for booting the devices in the UEFI Boot Order list. Note: For some situations like system configuration change, the system will change to start all devices for discovering all boot devices. When Force Full Discovery is selected, the system starts all devices in the system providing full boot target availability. Note: When Force Full Discovery is selected, boot time might significantly increase. When Force Fast Discovery is selected, the system starts as few devices as possible to get minimal boot time. Note: When Force Fast Discovery is selected, some unsupported devices may not work properly. You may need to replace the unsupported device with one that supports Fast Discovery.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```ForceFullDiscovery```|Force Full Discovery|
|```ForceFastDiscovery```|Force Fast Discovery|

**PostF1Prompt (POST F1 Prompt)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the system to display the F1 key on the server POST screen. If an error is encountered, you can press the F1 key to continue with the server power-up sequence. Select one of the following options: 
Delayed 20 Seconds - If an error occurs, the system pauses for 20 seconds at the F1 prompt and continues to boot the OS. 
Delayed 2 Seconds - If an error occurs, the system pauses for 2 seconds at the F1 prompt and continues to boot the OS. 
Disabled - If an error occurs, the system bypasses the F1 prompt and continues to boot the OS. 
Note: For critical errors, the system pauses for 20 seconds at the F1 prompt, regardless of how this option is configured.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Delayed20Sec```|Delayed 20 seconds|
|```Delayed2Sec```|Delayed 2 seconds|
|```Disabled```|Disabled|

**PostVideoSupport (POST Video Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure the POST Video Support setting. When set to Display All, the system will display POST video to all installed video controllers. When set to Display Embedded Only, the system will only display POST video to the embedded video controller. This option is only supported in UEFI Boot Mode and only applies to video output during the POST (pre-boot) environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```DisplayAll```|Display All|
|```DisplayEmbeddedOnly```|Display Embedded Only|

**PowerButton (Power Button Mode)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Disabling this option disables the momentary power button functionality. This option does not affect the four-second power button override or the remote power control functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**PowerOnDelay (Power-On Delay)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to delay the server from turning on for a specified time. Pressing the power button (using the Virtual Power Button), or Wake-ON LAN events, and RTC Wake-up events override the delay and power on the server without any additional delay. This enables staggering when servers power-up after a power loss to prevent power usage spikes.Note that the actual delay before the server is powered on will be longer than the specified time because the server must always wait for iLO FW to initialize before the server attempts to power on.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoDelay```|No Delay|
|```Random```|Random Delay|
|```Delay15Sec```|15 Second Delay|
|```Delay30Sec```|30 Second Delay|
|```Delay45Sec```|45 Second Delay|
|```Delay60Sec```|60 Second Delay|

**PowerRegulator (Power Regulator)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to configure the following Power Regulator support: 
- Dynamic Power Savings Mode: Automatically varies processor speed and power usage based on processor utilization. Enables the reduction of overall power consumption with little or no impact on performance. Does not require OS support. 
- Static Low Power Mode: Reduces processor speed and power usage. Guarantees a lower maximum power usage for the system. Performance impacts are greater for environments with higher processor utilization. 
- Static High Performance Mode: Processors run in their maximum power/performance state at all times, regardless of the OS power management policy. 
- OS Control Mode: Processors run in their maximum power/performance state at all times unless the OS enables a power management policy.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```DynamicPowerSavings```|Dynamic Power Savings Mode|
|```StaticLowPower```|Static Low Power Mode|
|```StaticHighPerf```|Static High Performance Mode|
|```OsControl```|OS Control Mode|

**PreBootNetwork (Pre-Boot Network Interface)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select the network interface used for pre-boot network connections. When the selection is Auto, the system uses the first available port with a network connection.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```EmbNicPort1```|Embedded NIC Port 1|
|```EmbNicPort2```|Embedded NIC Port 2|
|```EmbNicPort3```|Embedded NIC Port 3|
|```EmbNicPort4```|Embedded NIC Port 4|
|```EmbNicPort5```|Embedded NIC Port 5|
|```EmbNicPort6```|Embedded NIC Port 6|
|```EmbNicPort7```|Embedded NIC Port 7|
|```EmbNicPort8```|Embedded NIC Port 8|
|```FlexLom1Port1```|Embedded FlexibleLOM 1 Port 1|
|```FlexLom1Port2```|Embedded FlexibleLOM 1 Port 2|
|```FlexLom1Port3```|Embedded FlexibleLOM 1 Port 3|
|```FlexLom1Port4```|Embedded FlexibleLOM 1 Port 4|
|```FlexLom1Port5```|Embedded FlexibleLOM 1 Port 5|
|```FlexLom1Port6```|Embedded FlexibleLOM 1 Port 6|
|```FlexLom1Port7```|Embedded FlexibleLOM 1 Port 7|
|```FlexLom1Port8```|Embedded FlexibleLOM 1 Port 8|
|```Slot1NicPort1```|Slot 1 NIC Port 1|
|```Slot1NicPort2```|Slot 1 NIC Port 2|
|```Slot1NicPort3```|Slot 1 NIC Port 3|
|```Slot1NicPort4```|Slot 1 NIC Port 4|
|```Slot1NicPort5```|Slot 1 NIC Port 5|
|```Slot1NicPort6```|Slot 1 NIC Port 6|
|```Slot1NicPort7```|Slot 1 NIC Port 7|
|```Slot1NicPort8```|Slot 1 NIC Port 8|
|```Slot2NicPort1```|Slot 2 NIC Port 1|
|```Slot2NicPort2```|Slot 2 NIC Port 2|
|```Slot2NicPort3```|Slot 2 NIC Port 3|
|```Slot2NicPort4```|Slot 2 NIC Port 4|
|```Slot2NicPort5```|Slot 2 NIC Port 5|
|```Slot2NicPort6```|Slot 2 NIC Port 6|
|```Slot2NicPort7```|Slot 2 NIC Port 7|
|```Slot2NicPort8```|Slot 2 NIC Port 8|
|```Slot3NicPort1```|Slot 3 NIC Port 1|
|```Slot3NicPort2```|Slot 3 NIC Port 2|
|```Slot3NicPort3```|Slot 3 NIC Port 3|
|```Slot3NicPort4```|Slot 3 NIC Port 4|
|```Slot3NicPort5```|Slot 3 NIC Port 5|
|```Slot3NicPort6```|Slot 3 NIC Port 6|
|```Slot3NicPort7```|Slot 3 NIC Port 7|
|```Slot3NicPort8```|Slot 3 NIC Port 8|
|```Slot4NicPort1```|Slot 4 NIC Port 1|
|```Slot4NicPort2```|Slot 4 NIC Port 2|
|```Slot4NicPort3```|Slot 4 NIC Port 3|
|```Slot4NicPort4```|Slot 4 NIC Port 4|
|```Slot4NicPort5```|Slot 4 NIC Port 5|
|```Slot4NicPort6```|Slot 4 NIC Port 6|
|```Slot4NicPort7```|Slot 4 NIC Port 7|
|```Slot4NicPort8```|Slot 4 NIC Port 8|
|```Slot5NicPort1```|Slot 5 NIC Port 1|
|```Slot5NicPort2```|Slot 5 NIC Port 2|
|```Slot5NicPort3```|Slot 5 NIC Port 3|
|```Slot5NicPort4```|Slot 5 NIC Port 4|
|```Slot5NicPort5```|Slot 5 NIC Port 5|
|```Slot5NicPort6```|Slot 5 NIC Port 6|
|```Slot5NicPort7```|Slot 5 NIC Port 7|
|```Slot5NicPort8```|Slot 5 NIC Port 8|
|```Slot6NicPort1```|Slot 6 NIC Port 1|
|```Slot6NicPort2```|Slot 6 NIC Port 2|
|```Slot6NicPort3```|Slot 6 NIC Port 3|
|```Slot6NicPort4```|Slot 6 NIC Port 4|
|```Slot6NicPort5```|Slot 6 NIC Port 5|
|```Slot6NicPort6```|Slot 6 NIC Port 6|
|```Slot6NicPort7```|Slot 6 NIC Port 7|
|```Slot6NicPort8```|Slot 6 NIC Port 8|
|```Slot7NicPort1```|Slot 7 NIC Port 1|
|```Slot7NicPort2```|Slot 7 NIC Port 2|
|```Slot7NicPort3```|Slot 7 NIC Port 3|
|```Slot7NicPort4```|Slot 7 NIC Port 4|
|```Slot7NicPort5```|Slot 7 NIC Port 5|
|```Slot7NicPort6```|Slot 7 NIC Port 6|
|```Slot7NicPort7```|Slot 7 NIC Port 7|
|```Slot7NicPort8```|Slot 7 NIC Port 8|
|```Slot8NicPort1```|Slot 8 NIC Port 1|
|```Slot8NicPort2```|Slot 8 NIC Port 2|
|```Slot8NicPort3```|Slot 8 NIC Port 3|
|```Slot8NicPort4```|Slot 8 NIC Port 4|
|```Slot8NicPort5```|Slot 8 NIC Port 5|
|```Slot8NicPort6```|Slot 8 NIC Port 6|
|```Slot8NicPort7```|Slot 8 NIC Port 7|
|```Slot8NicPort8```|Slot 8 NIC Port 8|

**PrebootNetworkEnvPolicy (Pre-Boot Network Environment)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to set the preference for Pre-Boot Network.
If configured for Auto, all the network operations initiated in the pre boot environment occur over IPv4 or IPv6. The order of the existing network boot targets is not modified in the UEFI Boot Order list. New network boot targets are added to the end of the list using the default policy of the System BIOS.
If configured for IPv4, all the network operations initiated in the pre boot environment only occur over IPv4. All existing IPv6 network boot targets are removed in the UEFI Boot Order. No new IPv6 network boot targets are added to the list.
If configured for IPv6, all the network operations initiated in the pre boot environment only occur over IPv6. All existing IPv4 network boot targets in the UEFI Boot Order are removed. No new IPv4 network boot targets are added to the list.
|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```IPv4```|IPv4|
|```IPv6```|IPv6|

**PrebootNetworkProxy (Pre-Boot Network Proxy)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure a pre-boot network proxy. When set, network operations for 'Pre-Boot Network Interface' are attempted through the configured proxy. The proxy must be in a HTTP URL format, and can be specified as http://IPv4_address:port, http://IPv6 address:port or http://FQDN:port.|
|Type|String|
|Read Only|False|

**ProcAes (Processor AES-NI Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Advanced Encryption Standard Instruction Set (AES-NI) in the processor.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ProcHyperthreading (Intel(R) Hyper-Threading)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable Intel Hyper-Threading. When enabled, each physical processor core operates as two logical processor cores. When disabled, each physical processor core operates as one logical processor core. Enabling this option can improve overall performance for applications that benefit from a higher processor core count.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ProcTurbo (Intel(R) Turbo Boost Technology)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Turbo Boost Technology enables the processor to transition to a higher frequency than the processor's rated speed if the processor has available power and is within temperature specifications. Disabling this option reduces power usage, and also reduces the system's maximum achievable performance under some workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Enabled```|Enabled|

**ProcVirtualization (Intel(R) Virtualization Technology (Intel VT) )**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When enabled, a hypervisor or operating system supporting this option can use hardware capabilities provided by Intel VT. Some hypervisors require that you enable Intel VT. You can leave this set to enabled even if you are not using a hypervisor or an operating system that uses this option.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ProcX2Apic (Processor x2APIC Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|x2APIC support enables operating systems to run more efficiently on high core count configurations. It also optimizes interrupt distribution in virtualized environments. In most cases, set this option to enabled. This configures the operating system to optionally enable x2APIC support when it loads. Some older hypervisors and operating systems might have issues with optional x2APIC support, in which case disabling x2APIC might be necessary to address those issues. Additionally, some hypervisors and operating systems will not use X2APIC unless this option is set to Force Enabled prior to booting.  The Force Enabled option also causes the Intel(R) VT-d setting to be set to enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```ForceEnabled```|Force Enabled|
|```Disabled```|Disabled|

**ProcessorConfigTDPLevel (Processor Config TDP Level)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to override the default CPU policy for SSE, AVX, and AVX-512 deterministic frequencies.This will result in lowering the deterministic operational frequency (P1) based on the setting.Disabling Turbo Mode will enhance the deterministic behavior, but result in a lower operational frequency.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Normal```|Normal|
|```Level1```|Level 1|
|```Level2```|Level 2|

**ProcessorJitterControl (Processor Jitter Control)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Processor Jitter Control allows the customer to manage processor frequency variance to do technologies such as Turbo which vary the frequency based on power, thermals, and active cores. When configured for Auto-tuned, the platform will monitor frequency variance and automatically make adjustments to minimize variance over time. When configured for Manual-tuned, the customer can choose to attempt to operate the processor at a fixed frequency and can select lower or higher frequencies statically.Note:Auto-tuned mode requires that processor C-states be disabled for proper operation. Refer to the Intelligent System Tuning Whitepaper at hpe.com/info/IST on how to properly disable C-states in UEFI System Utilities and/or the Linux Operating System.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```Auto-tuned```|Auto-tuned|
|```Manual-tuned```|Manual-tuned|

**ProcessorJitterControlFrequency (Processor Jitter Control Frequency)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Processor Jitter Control Frequency allows the customer to stipulate the starting frequency in the Auto-tuned mode, or the desired frequency in the Manual-tuned mode. The input frequency is in units of Megahertz. System firmware will adjust the frequency to the nearest higher intermediate frequency supported by the processor if the input frequency is not supported.|
|Type|Integer|
|Read Only|False|

**ProcessorJitterControlOptimization (Processor Jitter Control Optimization)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option optimizes the thresholds used when the Auto-tuned function detects fluctuations in processor frequency. Optimizing for throughput allows only the amount of fluctuations that doesn't impact overall compute throughput. Optimizing for Latency allows for a very small amount of occasional fluctuations to occur before reducing processor frequency. Zero Latency attempts to eliminate any frequency fluctuations. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```OptimizedForThroughput```|Optimized for Throughput|
|```OptimizedForLatency```|Optimized for Latency|
|```ZeroLatency```|Zero Latency|

**ProductId (Product ID)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to set the system product ID. This value must always match the product ID sticker located on the chassis.|
|Type|String|
|Read Only|False|

**RedundantPowerSupply (Redundant Power Supply Mode)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure how the system handles redundant power supply configurations. Balanced Mode shares the power delivery equally between all installed power supplies. All High Efficiency Mode options provide the most power efficient operation with redundant power supplies by keeping half of the power supplies in standby mode at lower power usage levels. The High Efficiency Mode options enable the system to select which power supply to place in standby. Auto enables the system to select between the odd or even power supply based on a semi-random distribution within a group of systems.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```BalancedMode```|Balanced Mode|
|```HighEfficiencyAuto```|High Efficiency Mode (Auto)|
|```HighEfficiencyOddStandby```|High Efficiency Mode (Odd Supply Standby)|
|```HighEfficiencyEvenStandby```|High Efficiency Mode (Even Supply Standby)|

**RemovableFlashBootSeq (Removable Flash Media Boot Sequence)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select which USB or SD Card devices you want to search for first when enumerating boot devices. You can select whether the system boots to external USB drive keys, internal USB drive keys, or the internal SD card slot. This option does not override the device boot order in the Standard Boot Order (IPL) option. You can only configure this option when Boot Mode is set to Legacy BIOS.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```InternalSdCardFirst```|Internal SD Card First|
|```InternalKeysFirst```|Internal DriveKeys First|
|```ExternalKeysFirst```|External DriveKeys First|

**RestoreDefaults (Restore Default System Settings)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to reset all configuration settings to their default values. Changes that have been made might be lost. You must reboot the system for changes to take effect.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```No```|No, cancel the restore procedure.|
|```Yes```|Yes, restore the default settings.|

**RestoreManufacturingDefaults (Restore Default Manufacturing Settings)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to reset all configuration settings to their default manufacturing values. Changes that have been made might be lost. If Secure Boot is enabled, related security settings might be lost. You must reboot the system for changes to take effect.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```No```|No, cancel restore procedure.|
|```Yes```|Yes, restore the default settings.|

**RomSelection (ROM Selection)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to revert the server to a previous BIOS ROM image. The backup image is the BIOS ROM image that was used prior to the last flash event.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```CurrentRom```|Use Current ROM|
|```BackupRom```|Switch to Backup ROM|

**SanitizeAllNvDimmN (Sanitize/Erase all NVDIMM-N in the System)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N in the system are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm1 (Sanitize/Erase Processor 1 DIMM 1)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm10 (Sanitize/Erase Processor 1 DIMM 10)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm11 (Sanitize/Erase Processor 1 DIMM 11)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm12 (Sanitize/Erase Processor 1 DIMM 12)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm2 (Sanitize/Erase Processor 1 DIMM 2)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm3 (Sanitize/Erase Processor 1 DIMM 3)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm4 (Sanitize/Erase Processor 1 DIMM 4)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm5 (Sanitize/Erase Processor 1 DIMM 5)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm6 (Sanitize/Erase Processor 1 DIMM 6)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm7 (Sanitize/Erase Processor 1 DIMM 7)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm8 (Sanitize/Erase Processor 1 DIMM 8)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1Dimm9 (Sanitize/Erase Processor 1 DIMM 9)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc1NvDimmN (Sanitize/Erase all NVDIMM-N on Processor 1)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N installed on the selected processor are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm1 (Sanitize/Erase Processor 2 DIMM 1)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm10 (Sanitize/Erase Processor 2 DIMM 10)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm11 (Sanitize/Erase Processor 2 DIMM 11)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm12 (Sanitize/Erase Processor 2 DIMM 12)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm2 (Sanitize/Erase Processor 2 DIMM 2)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm3 (Sanitize/Erase Processor 2 DIMM 3)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm4 (Sanitize/Erase Processor 2 DIMM 4)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm5 (Sanitize/Erase Processor 2 DIMM 5)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm6 (Sanitize/Erase Processor 2 DIMM 6)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm7 (Sanitize/Erase Processor 2 DIMM 7)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm8 (Sanitize/Erase Processor 2 DIMM 8)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2Dimm9 (Sanitize/Erase Processor 2 DIMM 9)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in the selected NVDIMM-N are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SanitizeProc2NvDimmN (Sanitize/Erase all NVDIMM-N on Processor 2)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Enabled, all user data in ALL NVDIMMs of type NVDIMM-N installed on the selected processor are erased on the next reboot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SataSecureErase (SATA Secure Erase)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to control whether Secure Erase functionality is supported. When enabled, the Security Freeze Lock command is not sent to supported SATA hard drives, enabling Secure erase to function (the Secure Erase command is supported). This option is only supported when the SATA controller is in AHCI mode. Secure Erase only operates with hard drives that support the Secure Erase command.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SaveUserDefaults (Save User Defaults)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to save the current settings as the system defaults.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```No```|No, Cancel|
|```Yes```|Yes, Save|

**SecStartBackupImage (Backup ROM Image Authentication)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable cryptographic authentication of the backup ROM image on startup. When this option is disabled, only the primary image is authenticated on each startup. Enable this option to also perform cryptographic authentication of the backup ROM image.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SecureBootStatus (Secure Boot Status)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|The current state of Secure Boot configuration.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SerialConsoleBaudRate (BIOS Serial Console Baud Rate)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This is the transfer rate at which data is transmitted through the serial port.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```BaudRate9600```|9600|
|```BaudRate19200```|19200|
|```BaudRate38400```|38400|
|```BaudRate57600```|57600|
|```BaudRate115200```|115200|

**SerialConsoleEmulation (BIOS Serial Console Emulation Mode)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select the emulation mode type. The option you select depends on the emulation you want to use in your serial terminal program (such as HyperTerminal or PuTTy). The BIOS emulation mode must match the mode you select in your terminal program.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Vt100```|VT100|
|```Ansi```|ANSI|
|```Vt100Plus```|VT100+|
|```VtUtf8```|VT-UTF8|

**SerialConsolePort (BIOS Serial Console Port)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to re-direct video and keystrokes through the serial port to OS boot. This option can interfere with non-terminal devices attached to the serial port. In such cases, set this option to disabled. This option is only supported in English language mode when running in the UEFI pre-boot System Utilities.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Disabled```|Disabled|
|```Physical```|Physical Serial Port|
|```Virtual```|Virtual Serial Port|

**SerialNumber (Serial Number)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to set the system serial number. This value must always match the serial number sticker located on the chassis.|
|Type|String|
|Read Only|False|

**ServerAssetTag (Server Asset Tag)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to modify the Server Asset Tag text line.|
|Type|String|
|Read Only|False|

**ServerConfigLockStatus (Server Configuration Lock Status)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|The current state of the Server Configuration Lock feature.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ServerName (Server Name)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to modify the server name text line.|
|Type|String|
|Read Only|False|

**ServerOtherInfo (Server Other Information)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to modify the Other Server text line.|
|Type|String|
|Read Only|False|

**ServerPrimaryOs (Server Primary OS)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to modify the Server Primary OS text line.|
|Type|String|
|Read Only|False|

**ServiceEmail (Service Contact E-mail Address)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter the server service contact e-mail address.|
|Type|String|
|Read Only|False|

**ServiceName (Service Contact Name)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter the server service contact name text.|
|Type|String|
|Read Only|False|

**ServiceOtherInfo (Service Contact Other Information)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter the other server service contact information text.|
|Type|String|
|Read Only|False|

**ServicePhone (Service Contact Phone Number)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enter the server service contact phone number text.|
|Type|String|
|Read Only|False|

**SetupBrowserSelection (Setup Browser Selection)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select which setup browser to use: GUI or Text. Auto mode uses text when the user enters RBSU via serial console, and uses GUI via IRC or physical terminal.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```GUI```|GUI|
|```Text```|Text|
|```Auto```|Auto|

**Slot1NicBoot1 (Slot 1 NIC Port 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot2 (Slot 1 NIC Port 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot3 (Slot 1 NIC Port 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot4 (Slot 1 NIC Port 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot5 (Slot 1 NIC Port 5 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot6 (Slot 1 NIC Port 6 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot7 (Slot 1 NIC Port 7 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1NicBoot8 (Slot 1 NIC Port 8 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot1StorageBoot (PCIe Slot 1)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot2NicBoot1 (Slot 2 NIC Port 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot2 (Slot 2 NIC Port 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot3 (Slot 2 NIC Port 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot4 (Slot 2 NIC Port 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot5 (Slot 2 NIC Port 5 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot6 (Slot 2 NIC Port 6 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot7 (Slot 2 NIC Port 7 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2NicBoot8 (Slot 2 NIC Port 8 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot2StorageBoot (PCIe Slot 2)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot3NicBoot1 (Slot 3 NIC Port 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot2 (Slot 3 NIC Port 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot3 (Slot 3 NIC Port 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot4 (Slot 3 NIC Port 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot5 (Slot 3 NIC Port 5 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot6 (Slot 3 NIC Port 6 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot7 (Slot 3 NIC Port 7 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3NicBoot8 (Slot 3 NIC Port 8 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot3StorageBoot (PCIe Slot 3)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot4NicBoot1 (Slot 4 NIC Port 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot4NicBoot2 (Slot 4 NIC Port 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot4NicBoot3 (Slot 4 NIC Port 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot4NicBoot4 (Slot 4 NIC Port 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot4NicBoot5 (Slot 4 NIC Port 5 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot4NicBoot6 (Slot 4 NIC Port 6 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot4NicBoot7 (Slot 4 NIC Port 7 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot4NicBoot8 (Slot 4 NIC Port 8 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot4StorageBoot (PCIe Slot 4)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot5NicBoot1 (Slot 5 NIC Port 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot5NicBoot2 (Slot 5 NIC Port 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot5NicBoot3 (Slot 5 NIC Port 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot5NicBoot4 (Slot 5 NIC Port 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot5NicBoot5 (Slot 5 NIC Port 5 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot5NicBoot6 (Slot 5 NIC Port 6 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot5NicBoot7 (Slot 5 NIC Port 7 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot5NicBoot8 (Slot 5 NIC Port 8 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot5StorageBoot (PCIe Slot 5)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot6NicBoot1 (Slot 6 NIC Port 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot6NicBoot2 (Slot 6 NIC Port 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot6NicBoot3 (Slot 6 NIC Port 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot6NicBoot4 (Slot 6 NIC Port 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot6NicBoot5 (Slot 6 NIC Port 5 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot6NicBoot6 (Slot 6 NIC Port 6 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot6NicBoot7 (Slot 6 NIC Port 7 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot6NicBoot8 (Slot 6 NIC Port 8 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot6StorageBoot (PCIe Slot 6)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot7NicBoot1 (Slot 7 NIC Port 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot7NicBoot2 (Slot 7 NIC Port 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot7NicBoot3 (Slot 7 NIC Port 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot7NicBoot4 (Slot 7 NIC Port 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot7StorageBoot (PCIe Slot 7)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Slot8NicBoot1 (Slot 8 NIC Port 1 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot8NicBoot2 (Slot 8 NIC Port 2 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot8NicBoot3 (Slot 8 NIC Port 3 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot8NicBoot4 (Slot 8 NIC Port 4 Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable UEFI PXE Boot, UEFI HTTP Boot and iSCSI Software Initiator for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NetworkBoot```|Network Boot|
|```Disabled```|Disabled|

**Slot8StorageBoot (PCIe Slot 8)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 24 Targets is selected, 24 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```AllTargets```|Boot All Targets|
|```TwentyFourTargets```|Boot Limit to 24 Targets|
|```NoTargets```|Boot No Targets|

**Sriov (SR-IOV)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|If enabled, SR-IOV support enables a hypervisor to create virtual instances of a PCI-express device, potentially increasing performance. If enabled, the BIOS allocates additional resources to PCI-express devices. You can leave this option set to enabled even if you are not using a hypervisor.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**StaleAtoS (Stale A to S)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Stale A to S directory optimization.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**SubNumaClustering (Sub-NUMA Clustering)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When enabled, Sub-NUMA Clustering divides the processor's cores, cache, and memory into multiple NUMA domains. Enabling this feature can increase performance for workloads that are NUMA aware and optimized. 
Note: When this option is enabled, up to 1GB of system memory may become unavailable.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**ThermalConfig (Thermal Configuration)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select the fan cooling solution for the system. Optimal Cooling provides the most efficient solution by configuring fan speeds to the minimum required speed to provide adequate cooling. Increased Cooling runs fans at higher speeds to provide additional cooling. Select Increased Cooling when third-party storage controllers are cabled to the embedded hard drive cage, or if the system is experiencing thermal issues that cannot be resolved. Maximum cooling provides the maximum cooling available on this platform. Enhanced CPU Cooling runs the fans at a higher speed to provide additional cooling to the processors. Selecting Enhanced CPU Cooling may improve system performance with certain processor intensive workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```OptimalCooling```|Optimal Cooling|
|```IncreasedCooling```|Increased Cooling|
|```MaxCooling```|Maximum Cooling|
|```EnhancedCPUCooling```|Enhanced CPU Cooling|

**ThermalShutdown (Thermal Shutdown)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to control the reaction of the system to caution level thermal events. When disabled, the System Management Firmware ignores thermal events, and the system immediately powers off in data-destructive situations.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**TimeFormat (Time Format)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option controls how the system time is stored in the hardware Real Time Clock (RTC). When configured to 'Coordinated Universal Time (UTC)' (default) the local time is calculated from the associated time zone value. When configured to 'Local Time' the time is stored directly as local time and the time zone option does not have meaning. Setting this option to 'Local Time' works around an issue when using Microsoft Windows operating systems in Legacy Boot Mode where the time is set incorrectly.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Utc```|Coordinated Universal Time (UTC)|
|```Local```|Local Time|

**TimeZone (Time Zone)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option displays the current time zone setting for the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```UtcM12```|UTC-12:00, International Date Line West|
|```UtcM11```|UTC-11:00, Midway Island, Samoa|
|```UtcM10```|UTC-10:00, Hawaii|
|```UtcM9```|UTC-09:00, Alaska|
|```UtcM8```|UTC-08:00, Pacific Time(US & Canada)|
|```UtcM7```|UTC-07:00, Mountain Time (US & Canada)|
|```UtcM6```|UTC-06:00, Central America, Central Time(US & Canada)|
|```UtcM5```|UTC-05:00, Eastern Time(US & Canada)|
|```UtcM430```|UTC-04:30, Caracas|
|```UtcM4```|UTC-04:00, Atlantic Time(Canada), Caracas, Santiago|
|```UtcM330```|UTC-03:30, Newfoundland|
|```UtcM3```|UTC-03:00, Brasilia, Buenos Aires, Georgetown, Greenland|
|```UtcM2```|UTC-02:00, Mid-Atlantic|
|```UtcM1```|UTC-01:00, Azores, Cape Verde Is.|
|```Utc0```|UTC-00:00, Greenwich Mean Time, Dublin, London|
|```UtcP1```|UTC+01:00, Amsterdam, Berlin, Rome, Paris, West Central Africa|
|```UtcP2```|UTC+02:00, Athens, Istanbul, Cairo, Jerusalem|
|```UtcP3```|UTC+03:00, Baghdad, Kuwait, Riyadh, Moscow, Nairobi|
|```UtcP330```|UTC+03:30, Tehran|
|```UtcP4```|UTC+04:00, Abu Dhabi, Muscat, Baku, Tbilisi, Yerevan|
|```UtcP430```|UTC+04:30, Kabul|
|```UtcP5```|UTC+05:00, Ekaterinburg, Islamabad, Karachi, Tashkent|
|```UtcP530```|UTC+05:30, Chennai, Kolkata, Mumbai, New Delhi|
|```UtcP545```|UTC+05:45, Kathmandu|
|```UtcP6```|UTC+06:00, Almaty, Novosibirsk, Astana, Dhaka|
|```UtcP630```|UTC+06:30, Rangoon|
|```UtcP7```|UTC+07:00, Bangkok, Hanoi, Jakarta, Krasnoyarsk|
|```UtcP8```|UTC+08:00, Taipei, Beijing, Chongqing, Hong Kong, Urumqi|
|```UtcP9```|UTC+09:00, Osaka, Sapporo, Tokyo, Seoul, Yakutsk|
|```UtcP930```|UTC+09:30, Adelaide, Darwin|
|```UtcP10```|UTC+10:00, Canberra, Melbourne, Sydney, Guam, Hobart, Vladivostok|
|```UtcP11```|UTC+11:00, Magadan, Solomon Is., New Caledonia|
|```UtcP12```|UTC+12:00, Auckland, Wellington, Fiji, Kamchatka, Marshall Is.|
|```UtcP13```|UTC+13:00, Nuku'alofa|
|```UtcP14```|UTC+14:00, Line Islands|
|```Unspecified```|Unspecified Time Zone|

**Tpm20SoftwareInterfaceOperation (TPM 2.0 Software Interface Operation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|TPM 2.0 Software Interface Operation: FIFO or CRB.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Fifo```|FIFO interface|
|```Crb```|CRB interface|

**Tpm20SoftwareInterfaceStatus (Current TPM 2.0 Software Interface Status)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Current TPM 2.0 Software Interface Status: FIFO or CRB.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Fifo```|FIFO interface|
|```Crb```|CRB interface|

**Tpm2Operation (TPM 2.0 Operation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to perform a clear operation on the TPM. Clearing the TPM can prevent the server from booting to a TPM-aware operating system if the operating system uses TPM's measurements. TPM 2.0 is only supported in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Clear```|Clear|

**TpmActivePcrs (Current TPM 2.0 Active PCRs)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Current TPM 2.0 Active PCRs: SHA1, SHA256 or SHA1_SHA256|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NotSpecified```|Not specified|
|```Sha1```|SHA1 only|
|```Sha256```|SHA256 only|
|```Sha1Sha256```|SHA1 and SHA256|

**TpmChipId (Current TPM Chip ID)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Current TPM Chip: STMicro, Intel PTT fTPM or Nationz TPM20|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```None```|None|
|```StMicroGen10```|ST Micro Gen10|
|```IntelPttFTpm```|Intel PTT fTPM|
|```NationzTpm20```|Nationz TPM20|

**TpmFips (Current TPM FIPS mode)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Current TPM FIPS (Federal Information Processing Standard) status: Not specified; non-FIPS certified; FIPS certified.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NotSpecified```|Not specified|
|```NonFipsMode```|Non-FIPS Mode|
|```FipsMode```|FIPS mode|

**TpmFipsModeSwitch (TPM FIPS Mode Switch)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to switch the TPM chip to FIPS mode, regular mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```RegularMode```|Regular mode|
|```FipsMode```|FIPS mode|

**TpmModeSwitchOperation (TPM Mode Switch Operation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to switch the TPM chip to TPM 1.2/2.0, FIPS mode or non-FIPS mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Tpm12```|TPM 1.2|
|```Tpm20```|TPM 2.0|

**TpmOperation (TPM 1.2 Operation)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable the Trusted Platform Module and BIOS secure startup. When enabled, the TPM is fully functional. When disabled, the TPM is visible; however, functionality is limited. This option also enables you to reset the TPM to factory settings, which clears any assigned passwords, keys, or ownership data. Clearing the TPM can prevent the server from booting to a TPM-aware operating system if the operating system uses TPM's measurements.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```NoAction```|No Action|
|```Enable```|Enable|
|```Disable```|Disable|
|```Clear```|Clear|

**TpmState (Current TPM State)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Current TPM device state: Not Present; Present and Disabled; Present and Enabled.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NotPresent```|Not Present|
|```PresentDisabled```|Present and Disabled|
|```PresentEnabled```|Present and Enabled|

**TpmType (Current TPM Type)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Current TPM device type.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```NoTpm```|No TPM|
|```Tpm12```|TPM 1.2|
|```Tpm20```|TPM 2.0|

**TpmUefiOpromMeasuring (TPM UEFI Option ROM Measurement)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable measuring the UEFI PCI option ROMs. Disabling this option skips measuring the UEFI PCI option ROMs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**TpmVisibility (TPM Visibility)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to hide the TPM from the operating system. When the TPM is hidden, BIOS secure startup is disabled, and the TPM does not respond to any commands. Intended use is for removing the TPM option from the system without removing the actual hardware.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Hidden```|Hidden|
|```Visible```|Visible|

**UefiOptimizedBoot (UEFI Optimized Boot)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When enabled, the system BIOS boots using native UEFI graphics drivers. When disabled, the system BIOS boots using INT10 legacy video support. You cannot disable this option if Secure Boot is enabled. You can only configure this option if Boot Mode is configured to UEFI Mode. 
Set this option to disabled for compatibility with Microsoft Windows 2008 and Windows 2008 R2 operating systems on a system configured for UEFI Mode. 
Set this option to enabled for compatibility with VMWare ESXi operating systems on a system configured for UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiSerialDebugLevel (UEFI Serial Debug Message Level)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable the UEFI Serial Debug output and verbosity level. Selecting Verbose can impact server boot time significantly. This option is only applicable in UEFI Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Disabled```|Disabled|
|```ErrorsOnly```|Errors Only|
|```Medium```|Medium|
|```Network```|Network|
|```Verbose```|Verbose|
|```Custom```|Custom|

**UefiShellBootOrder (Add Embedded UEFI Shell to Boot Order)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|When enabled, this option adds the Embedded UEFI Shell as an entry in the UEFI Boot Order list. This option is only available when the Boot Mode is configured to UEFI Mode and the Embedded UEFI Shell is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiShellScriptVerification (Shell Script Verification)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Enable this option to allow verification of UEFI shell script files when Secure Boot is enabled. For successful execution of script, make sure that UEFI shell scripts are enrolled in the Secure Boot database (db).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiShellStartup (UEFI Shell Script Auto-Start)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable automatic execution of the Embedded UEFI Shell startup script. You can store the script file on local media or access it from a network location. You must name the script file "startup.nsh" and place it on local media or a network location accessible to the server.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UefiShellStartupLocation (Shell Auto-Start Script Location)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to select the location of the Embedded UEFI Shell startup script. For the 'File Systems on Attached Media' option, you must name the script file "startup.nsh" and place it on a UEFI accessible local file system, such as a FAT32 partition on a USB disk or HDD. For the 'Network Location' option, the file must end with a .nsh extension, and must be placed at an HTTP/HTTPS or FTP location accessible to the system. When you select the 'Auto' option, the system attempts to retrieve the startup script from the network location first, followed by locally attached media.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```AttachedMedia```|File Systems on Attached Media|
|```NetworkLocation```|Network Location|

**UefiShellStartupUrl (Network Location for Shell Auto-Start Script)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a UEFI Shell startup script. This option is available and used only when the Auto-Start Script Location is set to 'Network Location', or 'Auto', and the Shell Auto-Start Script discovery using DHCP is set to 'Disabled'. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. FTP formats are accepted using either an IPv4 server address or a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/file.nsh, http://example.com/file/file.nsh, https://example.com/file/file.nsh, http://[1234::1000]/file.nsh. The file must end with an .nsh extension. When configured, the Embedded UEFI Shell attempts to load and execute the startup script from the network location pointed to by this URL. When a HTTPS URL is configured, you must enroll the respective HTTPS server's TLS certificate under Server Security > TLS(HTTPS) Options.|
|Type|String|
|Read Only|False|

**UefiShellStartupUrlFromDhcp (Discover Shell Auto-Start Script using DHCP)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to let the Shell discover its startup script URL using DHCP. This option is available only if the 'HTTP Support' policy is not set to 'Disabled' and Auto-Start Script Location is set to 'Network Location', or 'Auto'. When set to 'Enabled', the Shell sends DHCP requests with the DHCP User Class option set to the string 'UEFIShell'. The DHCP server must be configured to provide HTTP/HTTPS or FTP URLs when this DHCP User Class string is present in the DHCP request. The User Class option is Option 77 when using DHCP over IPv4, and Option 15 when using DHCP over IPv6. URLs in HTTP/HTTPS must use either an IPv4 or IPv6 server address, or a host name. FTP formats are accepted using either an IPv4 server address or a host name. The URL provided by the DHCP server should match the 'HTTP Support' policy. When 'HTTP Support' policy is set to 'Auto', any HTTP/HTTPS or FTP URL provided by the DHCP server is used. When policy is set to 'HTTPS only', only HTTPS URLs are used, and other URLs are ignored. When policy is set to 'HTTP only', only HTTP or FTP URLs are used, and other URLs are ignored. When policy is set to 'Disabled', the Shell does not send any DHCP request.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UncoreFreqScaling (Uncore Frequency Scaling)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|This option controls the frequency scaling of the processor's internal busses (the uncore.) Setting this option to Auto enables the processor to dynamically change frequencies based on workload. Forcing to the maximum or minimum frequency enables tuning for latency or power consumption.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Maximum```|Maximum|
|```Minimum```|Minimum|

**UpiPrefetcher (UPI Prefetcher)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the processor UPI Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. This option must be enabled when Sub-Numa Clustering (SNC) is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UrlBootFile (Boot from URL 1)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso. 
When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu. 
This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings.
This is only applicable in UEFI Mode. 
Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile2 (Boot from URL 2)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso. 
When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu. 
This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings.
This is only applicable in UEFI Mode. 
Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile3 (Boot from URL 3)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso. 
When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu. 
This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings.
This is only applicable in UEFI Mode. 
Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile4 (Boot from URL 4)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso. 
When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu. 
This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When a HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options. 
This option does not depend on the \"DHCPv4\" and \"IPv6 Config Policy\" settings.
This is only applicable in UEFI Mode. 
Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UsbBoot (USB Boot Support)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Set this option to disabled to prevent the system from booting to any USB devices connected to the server. This includes preventing boot to virtual media devices, and the embedded SD or uSD card slot (if supported).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UsbControl (USB Control)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|All USB Ports Enabled: Enables all USB ports and embedded devices.All USB Ports Disabled: Disables all USB ports and embedded devices.External USB Ports Disabled: Disables only external USB ports.Internal USB Ports Disabled: Disables only internal USB ports.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```UsbEnabled```|All USB Ports Enabled|
|```UsbDisabled```|All USB Ports Disabled|
|```ExternalUsbDisabled```|External USB Ports Disabled|
|```InternalUsbDisabled```|Internal USB Ports Disabled|

**UserDefaultsState (User Defaults)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Displays whether user default settings are enabled or disabled.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**UtilityLang (Utility Language)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to adjust the current language for the system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```English```|English|
|```Japanese```|Japanese|
|```Chinese```|Chinese|

**VideoOptions (Video Options)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to configure video settings in the system. When set to Add-in Video Enabled, Embedded Video Disabled, the system only displays video to the first discovered add-in video controller. When set to Both Add-in and Embedded Video Enabled, the system displays video to both the embedded and the first discovered add-in video controllers. In both modes, early system startup video is displayed to the embedded video controller.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```OptionalVideoOnly```|Add-in Video Enabled, Embedded Video Disabled|
|```BothVideoEnabled```|Both Add-in and Embedded Video Enabled|

**VirtualInstallDisk (Virtual Install Disk)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to control the Virtual Install Disk. The Virtual Install Disk contains drivers specific to this server that an OS can use during installation. If enabled, the Virtual Install Disk appears as a drive in the operating system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**VirtualSerialPort (Virtual Serial Port)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to assign the logical COM port address and associated default resources used by the Virtual Serial Port (VSP). VSP enables the Management Processor to present an emulated serial port to support the BIOS Serial Console and operating system serial console.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Com1Irq4```|COM 1; IRQ4; I/O: 3F8h-3FFh|
|```Com2Irq3```|COM 2; IRQ3; I/O: 2F8h-2FFh|
|```Disabled```|Disabled|

**VlanControl (VLAN Control)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to enable or disable VLAN tagging on all enabled network interfaces.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**VlanId (VLAN ID)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to set the global VLAN ID for all enabled network interfaces. Valid values are 0 to 4094.A value of 0 sets the device to send untagged frames.|
|Type|Integer|
|Read Only|False|

**VlanPriority (VLAN Priority)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to set the priority for the VLAN tagged frames. Valid values are 0 to 7.|
|Type|Integer|
|Read Only|False|

**WakeOnLan (Wake-On LAN)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|You can configure the server to be powered on remotely when it receives a special packet. This option requires a NIC, NIC driver, and operating system that are WOL-capable.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**WorkloadProfile (Workload Profile)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Select this option to change the Workload Profile to accommodate your desired workload. Settings that are changed by the Workload Profile are grayed out and unchangeable unless in the 'Custom' profile. Please refer to the 'UEFI Workload-based Performance Tuning Guide' for details on which profiles affect which options. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```GeneralPowerEfficientCompute```|General Power Efficient Compute|
|```GeneralPeakFrequencyCompute```|General Peak Frequency Compute|
|```GeneralThroughputCompute```|General Throughput Compute|
|```Virtualization-PowerEfficient```|Virtualization - Power Efficient|
|```Virtualization-MaxPerformance```|Virtualization - Max Performance|
|```LowLatency```|Low Latency|
|```MissionCritical```|Mission Critical|
|```TransactionalApplicationProcessing```|Transactional Application Processing|
|```HighPerformanceCompute(HPC)```|High Performance Compute (HPC)|
|```DecisionSupport```|Decision Support|
|```GraphicProcessing```|Graphic Processing|
|```I/OThroughput```|I/O Throughput|
|```Custom```|Custom|

**XptPrefetcher (XPT Prefetcher)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to disable the processor XPT Prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment. This option must be enabled when Sub-Numa Clustering (SNC) is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```Auto```|Auto|
|```Enabled```|Enabled|
|```Disabled```|Disabled|

**iSCSIPolicy (iSCSI Policy)**
Member of [Bios.v1_0_0.Bios](#bios-v1_0_0-bios)

| | |
|---|---|
|Description|Use this option to set the iSCSI Policy. If configured to Software Initiator, the iSCSI software initiator will be used to access iSCSI targets on any configured NIC ports. If configured to Adapter Initiator, the adapter specific iSCSI initiator will be used instead. The adapter firmware must be configured to access iSCSI targets from the adapter initiator.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|```SoftwareInitiator```|Software Initiator|
|```AdapterInitiator```|Adapter Initiator|

## Certificate.v1_1_0.Certificate
```@odata.type: "#Certificate.v1_1_0.Certificate"```

The Certificate resource describes an X509 certificate.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/accountservice/externalaccountproviders/ldap/certificates/{item}/```|GET DELETE |

### CertificateString
Member of [Certificate.v1_1_0.Certificate](#certificate-v1_1_0-certificate)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|
|Format|text|

### CertificateType
Member of [Certificate.v1_1_0.Certificate](#certificate-v1_1_0-certificate)

| | |
|---|---|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|```PEM```|A PEM encoded certificate.|
|```PKCS7```|A PEM encoded PKCS7 certificate.|

### Issuer
Member of [Certificate.v1_1_0.Certificate](#certificate-v1_1_0-certificate)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SerialNumber
Member of [Certificate.v1_1_0.Certificate](#certificate-v1_1_0-certificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Subject
Member of [Certificate.v1_1_0.Certificate](#certificate-v1_1_0-certificate)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### ValidNotAfter
Member of [Certificate.v1_1_0.Certificate](#certificate-v1_1_0-certificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

### ValidNotBefore
Member of [Certificate.v1_1_0.Certificate](#certificate-v1_1_0-certificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

## CertificateLocations.v1_0_2.CertificateLocations
```@odata.type: "#CertificateLocations.v1_0_2.CertificateLocations"```

The CertificateLocations schema describes a Resource that an administrator can use in order to locate all certificates installed on a given service.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/certificateservice/certificatelocations/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Links/Certificates[]```|[Certificate](#certificate-v1_1_0-certificate)|

## EventService.v1_0_8.EventService
```@odata.type: "#EventService.v1_0_8.EventService"```

The EventService resource describes the Event Service.  It represents the properties for the service itself and has links to the actual list of subscriptions.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/eventservice/```|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Oem/Hpe```|[EventService](#eventservice-v1_0_8-eventservice)|
|```Oem/Hpe/CACertificates```|HpeCertificateCollection|
|```Subscriptions```|EventDestinationCollection|

### DeliveryRetryAttempts
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)

| | |
|---|---|
|Description|This is the number of attempts an event posting is retried before the subscription is terminated.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### DeliveryRetryIntervalSeconds
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)

| | |
|---|---|
|Description|This represents the number of seconds between retry attempts for sending any given Event|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### EventTypesForSubscription (array)
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)
```EventTypesForSubscription``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```StatusChange```|The status of this resource has changed|
|```ResourceUpdated```|The value of this resource has been updated|
|```ResourceAdded```|A resource has been added|
|```ResourceRemoved```|A resource has been removed|
|```Alert```|A condition exists which requires attention|

### Oem.Hpe.CACertificates
The value of this property shall be a reference to a Collection of HpeCertificate resources.
CACertificates is a link (```"@odata.id": URI```) to another resource.

### Oem.Hpe.RequestedMaxEventsToQueueDefault
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)

| | |
|---|---|
|Description|This represents the default number of events the service should queue.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.RetireOldEventInMinutesDefault
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)

| | |
|---|---|
|Description|This represents the default number of minutes until an event is expired.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TTLCountDefault
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)

| | |
|---|---|
|Description|The default number of TTLUnits until this listener destination subscription expires.  It may be renewed prior to expire to reset the Time to Live counter.  The value 999999 is reserved to mean a perpetual subscription.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TTLUnitsDefault
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)

| | |
|---|---|
|Description|The default time unit used to measure the subscription time of this listener destination.  This is the units for TTLCount and is used to express the subscription lifetime of the listener destination.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```seconds```|Time to Live (TTL) in Seconds|
|```minutes```|Time to Live (TTL) in Minutes|
|```days```|Time to Live (TTL) in Days|

### ServiceEnabled
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Status
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)
See the Redfish standard schema and specification for information on common Status object.

### Subscriptions
This is a reference to a collection of ListenerDestination resources.
Subscriptions is a link (```"@odata.id": URI```) to another resource.

### Actions

**EventService.SubmitTestEvent**
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)

**Parameters:**

**EventId (string)**

**EventTimestamp (string)**

**EventType (string)**

|Value|Description|
|---|---|
|StatusChange|
|ResourceUpdated|
|ResourceAdded|
|ResourceRemoved|
|Alert|

**Message (string)**

**MessageArgs (array)**

**MessageId (string)**

**OriginOfCondition (string)**

**Severity (string)**

|Value|Description|
|---|---|
|OK|
|Warning|
|Critical|

**HpeEventService.ImportCACertificate**
Member of [EventService.v1_0_8.EventService](#eventservice-v1_0_8-eventservice)
Imports a Trusted CA Certificate


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).
## HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter
```@odata.type: "#HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter"```

The HpeBaseNetworkAdapter resource describes an Ethernet Adapter and its ports.  Clients should use the Redfish NetworkAdapter and NetworkInterface resources when available instead of this.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/basenetworkadapters/{item}/```|GET |

### FcPorts (array)
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)
```FcPorts``` is an array containing elements of:

**FcPorts[{item}].PortNumber**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|Port Number.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**FcPorts[{item}].WWNN**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|World Wide Node Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**FcPorts[{item}].WWPN**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|World Wide Port Name.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Firmware
**Firmware.Current**
**Firmware.Current.VersionString**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|Location of the device.|
|Type|string|
|Read Only|True|

### PartNumber
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|The device part number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalPorts (array)
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)
```PhysicalPorts``` is an array containing elements of:

**PhysicalPorts[{item}].FullDuplex**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|Full-duplex data transmission means that data can be transmitted in both directions on a signal carrier at the same time.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].IPv4Addresses (array)**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)
```IPv4Addresses``` is an array containing elements of:

**IPv4Addresses[{item}].Address**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|This is the IPv4 Address.|
|Type|string or null|
|Read Only|True|

**PhysicalPorts[{item}].IPv6Addresses (array)**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)
```IPv6Addresses``` is an array containing elements of:

**IPv6Addresses[{item}].Address**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|This is the IPv6 Address.|
|Type|string or null|
|Read Only|True|
|Format|ipv6|

**PhysicalPorts[{item}].LinkStatus**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|The link status of this interface (port).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|```LinkUp```|
|```NoLink```|
|```LinkDown```|
|```Null```|

**PhysicalPorts[{item}].MacAddress**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|The port MAC address.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.BadReceives**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames that were received by the adapter but which had an error.  This counter is the sum of mib items cpqNicIfPhysAdapterAlignmentErrors, cpqNicIfPhysAdapterFCSErrors, cpqNicIfPhysAdapterFrameTooLongs, and cpqNicIfPhysAdapterInternalMacReceiveErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.BadTransmits**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames that were not transmitted by the adapter because of an error.  This counter is the sum of MIB items cpqNicIfPhysAdapterDeferredTransmissions, cpqNicIfPhysAdapterLateCollisions, cpqNicIfPhysAdapterExcessiveCollisions, cpqNicIfPhysAdapterCarrierSenseErrors, and cpqNicIfPhysAdapterInternalMacTransmitErrors. If this counter increments frequently, check the more detailed error statistics and take appropriate action.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.GoodReceives**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames successfully received by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.GoodTransmits**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|A count of frames successfully transmitted by the physical adapter.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.StructuredName**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Oem.Hpe.Team**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|If a port is configured for NIC teaming, the name of the configured link between the physical ports that form a logical network adapter. This value is displayed for system NICs only (embedded and stand-up).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].SpeedMbps**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|An estimate of the interface's current bandwidth in Megabits per second.  For interfaces which do not vary in bandwidth or for those where no accurate estimation can be made, this object should contain the nominal bandwidth.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

**PhysicalPorts[{item}].Status**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)
See the Redfish standard schema and specification for information on common Status object.

**PhysicalPorts[{item}].UEFIDevicePath**
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|The device serial number.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Status
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)
See the Redfish standard schema and specification for information on common Status object.

### StructuredName
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|PCI device structured name in UTF-8 format (e.g. 'NIC.LOM.1.1' - see PCIDevices in /rest/v1/Systems/x/PCIDevices - this comes from SMBIOS|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePath
Member of [HpeBaseNetworkAdapter.v2_0_0.HpeBaseNetworkAdapter](#hpebasenetworkadapter-v2_0_0-hpebasenetworkadapter)

| | |
|---|---|
|Description|UEFIDevice Path for correlation purposes|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeBundleUpdateReport.v1_0_0.HpeBundleUpdateReport
```@odata.type: "#HpeBundleUpdateReport.v1_0_0.HpeBundleUpdateReport"```

This resource contains Bundle Update report
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/bundleupdatereport/current/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Entries```|HpeComponentUpdateEntryCollection|

### Entries
This lists Bundle Update report entries.
Entries is a link (```"@odata.id": URI```) to another resource.

## HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection
```@odata.type: "#HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection"```

A Collection of HpeComponentBundleUpdateReport resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/bundleupdatereport/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[HpeBundleUpdateReport](#hpebundleupdatereport-v1_0_0-hpebundleupdatereport)|

### Members (array)
Member of HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeBundleUpdateReportCollection.HpeBundleUpdateReportCollection

| | |
|---|---|
|Description|The total number of reports supported - Completed and Current|
|Type|integer|
|Read Only|True|

## HpeCertAuth.v1_1_0.HpeCertAuth
```@odata.type: "#HpeCertAuth.v1_1_0.HpeCertAuth"```

The HpeCertAuth resource describes the BMC certificate based authentication feature.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/securityservice/certificateauthentication/```|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```CACertificates```|HpeCertificateCollection|
|```Links/UserCertificateMapping```|Collection of [HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap-v1_0_1-hpeiloaccountcertificatemap)|

### CACertificates
The value of this property shall be a reference to a Collection of HpeCertificate resources.
CACertificates is a link (```"@odata.id": URI```) to another resource.

### CRLIssuer
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)

| | |
|---|---|
|Description|Issuer of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### CRLSerial
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)

| | |
|---|---|
|Description|Serial Number of the installed CRL, if present.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### CertificateLoginEnabled
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)

| | |
|---|---|
|Description|Specifies whether Certificate login is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### LDAPCertificateNameMapping
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)

| | |
|---|---|
|Description|The method used to map a certificate to its associated LDAP user account.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```SubjectCN```|The CN portion of the certificate subject will be used as the LDAP username.|
|```SubjectDN```|The fully qualified DN of the certificate subject will be used as the LDAP username.|
|```SANRFC822```|The RFC822 name from the certificate's subjectAlternativeName extension will be used as the LDAP username.|
|```SANUPN```|The UserPrincipalName from the certificate's subjectAlternativeName extension will be used as the LDAP username.|

### OCSPUri
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)

| | |
|---|---|
|Description|URL to use for OCSP certificate checking.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.15|
|Format|uri-reference|

### StrictCACModeEnabled
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)

| | |
|---|---|
|Description|Whether or not Strict CAC Mode is enabled.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeCertAuth.DeleteCRL**
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)
Remove an installed Certificate Revocation List (CRL).

There are no parameters for this action.

**HpeCertAuth.ImportCACertificate**
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)
Imports a Trusted Certificate


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate or PKCS7 certificate chain (Base64 encoded).

**HpeCertAuth.ImportCRL**
Member of [HpeCertAuth.v1_1_0.HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)
Imports a Certificate Revocation List (CRL).


**Parameters:**

**ImportUri (string)**

Contains URI of PEM formatted certificate revocation list (CRL) (Base64 encoded).
## HpeCertificate.v1_0_0.HpeCertificate
```@odata.type: "#HpeCertificate.v1_0_0.HpeCertificate"```

The HpeCertificate resource describes an X509 certificate.

This resource type was added in iLO 5 1.20

### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/securityservice/certificateauthentication/cacertificates/2/```|GET DELETE |

### Issuer
Member of [HpeCertificate.v1_0_0.HpeCertificate](#hpecertificate-v1_0_0-hpecertificate)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [HpeCertificate.v1_0_0.HpeCertificate](#hpecertificate-v1_0_0-hpecertificate)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Subject
Member of [HpeCertificate.v1_0_0.HpeCertificate](#hpecertificate-v1_0_0-hpecertificate)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ValidNotAfter
Member of [HpeCertificate.v1_0_0.HpeCertificate](#hpecertificate-v1_0_0-hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### ValidNotBefore
Member of [HpeCertificate.v1_0_0.HpeCertificate](#hpecertificate-v1_0_0-hpecertificate)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

## HpeComponent.v1_0_1.HpeComponent
```@odata.type: "#HpeComponent.v1_0_1.HpeComponent"```

The HpeComponent resource describes a software or firmware update component.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/componentrepository/{item}/```|GET PATCH DELETE |

### Activates
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|Indicates when a component becomes active after being updated.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Immediately```|The update activates immediately.|
|```AfterReboot```|The update activates after a host server reboot.|
|```AfterDeviceReset```|The update activates after a device reset.|
|```AfterHardPowerCycle```|The update activates after a full power supply disconnect or E-Fuse reset.|

### ComponentType
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|HTTP-style content-type of binary|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ComponentUri
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|URI of the component binary.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Configuration
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|string defining customized parameters for some components provided by client at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Created
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|ISO 8601 time string indicating when this component was added to the NAND.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Criticality
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)
### Criticality
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)
### Criticality
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```Optional```|
|```Recommended```|
|```Critical```|

### DeviceClass
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|Device type GUID from iLO secure flash header|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### ExecutionParameters
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|Client supplied execution parameters.  These are supplied at upload time and given to the component at execution time (Type D only).|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### Filename
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|The unique filename of the component.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Filepath
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|Path of file on the USB LUN if you mount the repo as USB.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Locked
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|If true, this component cannot be removed with DELETE because it is referenced by an Install Set|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### SizeBytes
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|Size of the component file in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Targets (array)
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)
```Targets``` is an array containing elements of:


| | |
|---|---|
|Description|Target GUIDs from secure flash header or sidecar file.|
|Type|string|
|Read Only|True|

### UpdatableBy (array)
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)
```UpdatableBy``` is an array containing elements of:


| | |
|---|---|
|Description|Describes which types of update agents may apply this component.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```Uefi```|This component may be scheduled for update by UEFI BIOS.|
|```RuntimeAgent```|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|
|```Bmc```|This component may be scheduled for update by iLO.|

### Version
Member of [HpeComponent.v1_0_1.HpeComponent](#hpecomponent-v1_0_1-hpecomponent)

| | |
|---|---|
|Description|Version of the component from secure flash header or sidecar file.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeComponentCollection.HpeComponentCollection
```@odata.type: "#HpeComponentCollection.HpeComponentCollection"```

A Collection of HpeComponent resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/componentrepository/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[HpeComponent](#hpecomponent-v1_0_1-hpecomponent)|

### Members (array)
Member of HpeComponentCollection.HpeComponentCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.ComponentCount
Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The number of files reported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.FreeSizeBytes
Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The available repository space in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.TotalSizeBytes
Member of HpeComponentCollection.HpeComponentCollection

| | |
|---|---|
|Description|The total repository size in bytes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet
```@odata.type: "#HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet"```

The HpeComponentInstallSet resource describes an Install Set, an ordered list of installation instructions that may be invoked.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/installsets/{item}/```|GET POST PATCH DELETE |

### Created
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install set creation.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### IsRecovery
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

| | |
|---|---|
|Description|If true, this install set is reserved to hold only critical firmware recovery updatable by iLO.  Additionally the 'Administrate Recovery Set' iLO privilege is required to modify or remove this install set.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Modified
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

| | |
|---|---|
|Description|ISO-time of install modification.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Sequence (array)
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)
```Sequence``` is an array containing elements of:

**Sequence[{item}].Command**
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

| | |
|---|---|
|Description|Command to execute.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```ApplyUpdate```|Apply an update using the specified component.|
|```ResetServer```|Reset the server.|
|```ResetBmc```|Reset the BMC.|
|```Wait```|Wait for the WaitTimeSeconds number of seconds.|

**Sequence[{item}].Component**
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

**Sequence[{item}].ExecutionTimeoutMinutes**
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

| | |
|---|---|
|Description|The number of minutes that this update will likely take to apply.  Applies if the command is 'ApplyUpdate'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|

**Sequence[{item}].Filename**
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

| | |
|---|---|
|Description|The unique filename of the component.  This correlates to 'Filename' in the HpeComponent.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

**Sequence[{item}].UpdatableBy (array)**
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)
```UpdatableBy``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|False|

The following are the supported values:

|Value|Description|
|---|---|
|```Bmc```|This component may be scheduled for update by iLO.|
|```Uefi```|This component may be scheduled for update by UEFI BIOS.|
|```RuntimeAgent```|This component may be scheduled for update by a runtime update agent such as Smart Update Manager or Smart Update Tool.|

**Sequence[{item}].WaitTimeSeconds**
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

| | |
|---|---|
|Description|The number of seconds to pause if the command is 'Wait'.  Ignored otherwise.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeComponentInstallSet.Invoke**
Member of [HpeComponentInstallSet.v1_1_0.HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)

**Parameters:**

**ClearTaskQueue (boolean)**

Previous items in the task queue can be cleared before the Install Set is invoked
## HpeComponentInstallSetCollection.HpeComponentInstallSetCollection
```@odata.type: "#HpeComponentInstallSetCollection.HpeComponentInstallSetCollection"```

A Collection of HpeComponentInstallSet resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/installsets/```|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[HpeComponentInstallSet](#hpecomponentinstallset-v1_1_0-hpecomponentinstallset)|

### Members (array)
Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeComponentInstallSetCollection.HpeComponentInstallSetCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection
```@odata.type: "#HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection"```

A Collection of HpeComponentUpdateEntry resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/bundleupdatereport/current/entries/```|GET |

### Members (array)
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.context**
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Members[{item}].@odata.etag**
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|

**Members[{item}].@odata.id**
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**Members[{item}].@odata.type**
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|

**Members[{item}].ComponentStatus**
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

| | |
|---|---|
|Description|Status|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```PENDING```|Update is pending and has not started.|
|```RUNNING```|Update Service in Progress.|
|```SUSPENDED```|Update has been suspended.|
|```COMPLETED```|Update completed successfully|
|```EXCEPTION```|Update has stopped due to an exception condition.|
|```KILLED```|Update was terminated.|
|```NEW```|A new update.|
|```INTERRUPTED```|Update has been interrupted.|
|```STOPPING```|Update is in the process of stopping.|
|```SERVICE```|Update has been suspended.|

**Members[{item}].DependencyStatus**
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

| | |
|---|---|
|Description|DependencyStatus|
|Type|boolean|
|Read Only|True|

**Members[{item}].Version**
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

| | |
|---|---|
|Description|Version of the component.|
|Type|string|
|Read Only|True|

### Members@odata.count
Member of HpeComponentUpdateEntryCollection.HpeComponentUpdateEntryCollection

| | |
|---|---|
|Description|The total number of components in the InstallSet|
|Type|integer|
|Read Only|True|

## HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection
```@odata.type: "#HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection"```

A Collection of HpeComponentUpdateTaskQueue resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/updatetaskqueue/```|GET POST |

### Members (array)
Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeComponentUpdateTaskQueueCollection.HpeComponentUpdateTaskQueueCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeDirectoryTest.v1_0_0.HpeDirectoryTest
```@odata.type: "#HpeDirectoryTest.v1_0_0.HpeDirectoryTest"```

The HpeDirectoryTest resource describes the BMC directory test.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/accountservice/directorytest/```|GET POST |

### OverallStatus
Member of [HpeDirectoryTest.v1_0_0.HpeDirectoryTest](#hpedirectorytest-v1_0_0-hpedirectorytest)

| | |
|---|---|
|Description|Represents the overall status of directory tests.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```NotRun```|The Overall Directory Test was not run.|
|```InProgress```|The Overall Directory Test is in progress.|
|```Success```|The Overall Directory Test has completed successfully.|
|```Warning```|The Overall Directory Test has completed with warning.|
|```Failed```|The Overall Directory Test has failed.|
|```Error```|The Directory Test has encountered an error condition.|

### TestResults (array)
Member of [HpeDirectoryTest.v1_0_0.HpeDirectoryTest](#hpedirectorytest-v1_0_0-hpedirectorytest)
```TestResults``` is an array containing elements of:

**TestResults[{item}].Notes**
Member of [HpeDirectoryTest.v1_0_0.HpeDirectoryTest](#hpedirectorytest-v1_0_0-hpedirectorytest)

| | |
|---|---|
|Description|This provides additional details on the directory test.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**TestResults[{item}].Status**
Member of [HpeDirectoryTest.v1_0_0.HpeDirectoryTest](#hpedirectorytest-v1_0_0-hpedirectorytest)
See the Redfish standard schema and specification for information on common Status object.

**TestResults[{item}].TestName**
Member of [HpeDirectoryTest.v1_0_0.HpeDirectoryTest](#hpedirectorytest-v1_0_0-hpedirectorytest)

| | |
|---|---|
|Description|The name of directory test.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### Actions

**HpeDirectoryTest.StartTest**
Member of [HpeDirectoryTest.v1_0_0.HpeDirectoryTest](#hpedirectorytest-v1_0_0-hpedirectorytest)
Start the directory test.


**Parameters:**
## HpeESKM.v2_0_0.HpeESKM
```@odata.type: "#HpeESKM.v2_0_0.HpeESKM"```

The HpeESKM resource describes properties for managing the ESKM feature.  ESKM (Enterprise Security Key Manager) enables connections to an operational key manager,change redundancy settings,view the key manager connection settings,test the connection,and view key management events.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/securityservice/eskm/```|GET POST PATCH |

### ESKMEvents (array)
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)
```ESKMEvents``` is an array containing elements of:

**ESKMEvents[{item}].Event**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|ESKM event description.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ESKMEvents[{item}].Timestamp**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Time of ESKM event.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### KeyManagerConfig
**KeyManagerConfig.AccountGroup**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Account group on ESKM.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.AccountName**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Account name on ESKM.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.ESKMLocalCACertificateName**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|This is the name of Local CA (Certificate Authority) in ESKM that is used to sign the ESKM server certificate. iLO will retrieve this certificate from the ESKM server.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.ImportedCertificateIssuer**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Imported certificate issuer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.ImportedCertificateSubject**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Imported certificate subject.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**KeyManagerConfig.LoginName**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account login name. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

**KeyManagerConfig.Password**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|ESKM administrator account password. This property always returns null on GET.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### KeyServerRedundancyReq
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|If true encryption keys will be maintained on both the configured key servers. When this option is disabled, iLO will not verify that encryption keys are copied to both of the configured key servers.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### PrimaryKeyServerAddress
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Primary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### PrimaryKeyServerPort
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Primary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecondaryKeyServerAddress
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Secondary key server IP address or FQDN. Set to null to clear the value.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecondaryKeyServerPort
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)

| | |
|---|---|
|Description|Secondary key server port number. Set to null to clear the value.|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeESKM.ClearESKMLog**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)
Clears ESKM log.

There are no parameters for this action.

**HpeESKM.TestESKMConnections**
Member of [HpeESKM.v2_0_0.HpeESKM](#hpeeskm-v2_0_0-hpeeskm)
Test ESKM connections.

There are no parameters for this action.
## HpeHttpsCert.v2_0_0.HpeHttpsCert
```@odata.type: "#HpeHttpsCert.v2_0_0.HpeHttpsCert"```

The HpeHttpsCert resource describes an X509 certificate.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/securityservice/httpscert/```|GET POST DELETE |

### CertificateSigningRequest
Member of [HpeHttpsCert.v2_0_0.HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)

| | |
|---|---|
|Description|GenerateCSR action, wait few minutes (upto 10), perform GET operation, fills CSR. Contains a public and private key pair.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### X509CertificateInformation
**X509CertificateInformation.Issuer**
Member of [HpeHttpsCert.v2_0_0.HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.SerialNumber**
Member of [HpeHttpsCert.v2_0_0.HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)

| | |
|---|---|
|Description|The serial number that the Certificate Authority assigned to the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.Subject**
Member of [HpeHttpsCert.v2_0_0.HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**X509CertificateInformation.ValidNotAfter**
Member of [HpeHttpsCert.v2_0_0.HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**X509CertificateInformation.ValidNotBefore**
Member of [HpeHttpsCert.v2_0_0.HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Actions

**HpeHttpsCert.GenerateCSR**
Member of [HpeHttpsCert.v2_0_0.HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)

**Parameters:**

**City (string)**

The city or locality where the company or organization that owns this iLO subsystem is located.

**CommonName (string)**

The FQDN of this iLO subsystem.

**Country (string)**

The two-character country code where the company or organization that owns this Manager subsystem is located. Eg: US

**IncludeIP (boolean)**

Include the IP Addresses in the CSR.

**OrgName (string)**

The name of the company or organization that owns this iLO subsystem.

**OrgUnit (string)**

The unit within the company or organization that owns this iLO subsystem.

**State (string)**

The state where the company or organization that owns this iLO subsystem is located.

**HpeHttpsCert.ImportCertificate**
Member of [HpeHttpsCert.v2_0_0.HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)
Imports a Trusted Certificate and iLO is reset.


**Parameters:**

**Certificate (string)**

Contains PEM formatted X509 certificate (Base64 encoded).
## HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap
```@odata.type: "#HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap"```

The HpeiLOAccountCertificateMap resource describes mapping X509 certificates to user accounts.

This resource type was added in iLO 5 1.20

### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/accountservice/usercertificatemapping/{item}/```|GET POST DELETE |

### Fingerprint
Member of [HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap-v1_0_1-hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The fingerprint which uniquely identifies the mapped certificate.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### FingerprintDigestAlgorithm
Member of [HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap-v1_0_1-hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The algorithm used to calculate the fingerprint.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

### UserName
Member of [HpeiLOAccountCertificateMap.v1_0_1.HpeiLOAccountCertificateMap](#hpeiloaccountcertificatemap-v1_0_1-hpeiloaccountcertificatemap)

| | |
|---|---|
|Description|The name used to log in to the management processor.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeiLOBackupFileCollection.HpeiLOBackupFileCollection
```@odata.type: "#HpeiLOBackupFileCollection.HpeiLOBackupFileCollection"```

A Collection of HpeiLOBackupFile resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/backuprestoreservice/backupfiles/```|GET POST |

### Members (array)
Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.BackupFileCount
Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The number of backup files reported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.BackupFilesAllowed
Member of HpeiLOBackupFileCollection.HpeiLOBackupFileCollection

| | |
|---|---|
|Description|The number of backup files supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.40|

## HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService
```@odata.type: "#HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService"```

The HpeiLOBackupRestoreService resource describes the properties for using the BMC backup and restore features.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/backuprestoreservice/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```BackupFiles```|HpeiLOBackupFileCollection|

### BackupFileLocation
Member of [HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService](#hpeilobackuprestoreservice-v2_2_0-hpeilobackuprestoreservice)

| | |
|---|---|
|Description|The URI to which a client may POST to create and download a file for a subsequent restore operation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|
|Format|uri-reference|

### BackupFiles
Link to backup files.
BackupFiles is a link (```"@odata.id": URI```) to another resource.

### HttpPushUri
Member of [HpeiLOBackupRestoreService.v2_2_0.HpeiLOBackupRestoreService](#hpeilobackuprestoreservice-v2_2_0-hpeilobackuprestoreservice)

| | |
|---|---|
|Description|The URI to which a client may POST a file for a subsequent restore operation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|
|Format|uri-reference|

## HpeiLODateTime.v2_0_0.HpeiLODateTime
```@odata.type: "#HpeiLODateTime.v2_0_0.HpeiLODateTime"```

The HpeiLODateTime resource describes the properties for managing the BMC data and time.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/datetime/```|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Links/EthernetNICs```|Collection of [EthernetInterface](#ethernetinterface-v1_4_1-ethernetinterface)|

### ConfigurationSettings
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|The state of the currently displayed configuration settings.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```Current```|
|```SomePendingReset```|

### DateTime
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|The date and time used by management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### NTPServers (array)
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)
```NTPServers``` is an array containing elements of:


| | |
|---|---|
|Description|The current NTP server's IPv4 address, IPv6 address, or FQDN. The value either comes from DHCP or is static depending on the DHCP settings.|
|Type|string or null|
|Read Only|True|

### PropagateTimeToHost
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|Determines whether the server time is synchronized with the management processor time during the first POST after AC power is applied.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### StaticNTPServers (array)
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)
```StaticNTPServers``` is an array containing elements of:


| | |
|---|---|
|Description|The static NTP server's IPv4 address, IPv6 address, or FQDN. To set this property, management processor must not be configured to use NTP servers provided by DHCPv4 or DHCPv6.|
|Type|string|
|Read Only|True|

### TimeZone
**TimeZone.Index**
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|The index of the current time zone. To set a new time zone, specify a different time zone index. This property can be set only when DHCPv4 or DHCPv6 supplied time settings are disabled. Since the time zone list might vary from one firmware version to another (which often leads to differences in time zone indices), setting the time zone by name is recommended over setting by index, for better compatibility.|
|Type|number|
|Read Only|False|
|Added|iLO 5 1.10|

**TimeZone.UtcOffset**
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the current time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZone.Value**
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### TimeZoneList (array)
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)
```TimeZoneList``` is an array containing elements of:

**TimeZoneList[{item}].Index**
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|The time zone index.|
|Type|number|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZoneList[{item}].UtcOffset**
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|The UTC offset of the time zone, in the format {+/-}hh:mm|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**TimeZoneList[{item}].Value**
Member of [HpeiLODateTime.v2_0_0.HpeiLODateTime](#hpeilodatetime-v2_0_0-hpeilodatetime)

| | |
|---|---|
|Description|The environment variable value.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia
```@odata.type: "#HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia"```

The HpeiLOEmbeddedMedia resource describes the properties for the embedded media.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/embeddedmedia/```|GET |

### Controller
**Controller.Firmware**
**Controller.Firmware.Current**
**Controller.Firmware.Current.VersionString**
Member of [HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmedia-v2_0_0-hpeiloembeddedmedia)

| | |
|---|---|
|Description|The current version of the embedded media controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Controller.Status**
Member of [HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmedia-v2_0_0-hpeiloembeddedmedia)
See the Redfish standard schema and specification for information on common Status object.

### SDCard
**SDCard.SizeMB**
Member of [HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmedia-v2_0_0-hpeiloembeddedmedia)

| | |
|---|---|
|Description|The size of the SD card present in the server, in MB.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**SDCard.Status**
Member of [HpeiLOEmbeddedMedia.v2_0_0.HpeiLOEmbeddedMedia](#hpeiloembeddedmedia-v2_0_0-hpeiloembeddedmedia)
See the Redfish standard schema and specification for information on common Status object.

## HpeiLOFederatedGroupCapping.v2_0_0.HpeiLOFederatedGroupCapping
```@odata.type: "#HpeiLOFederatedGroupCapping.v2_0_0.HpeiLOFederatedGroupCapping"```

The HpeiLOFederatedGroupCapping resource describes the properties for managing Federated Group Capping.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/chassis/{item}/power/federatedgroupcapping/```|GET PATCH |

### CapWatts
Member of [HpeiLOFederatedGroupCapping.v2_0_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping-v2_0_0-hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The configured power cap for all servers in a group. This value is 0 if the power cap is not configured.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityWatts
Member of [HpeiLOFederatedGroupCapping.v2_0_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping-v2_0_0-hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|The total power supply capacity for all servers in a group.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Groups
### Throttle
Member of [HpeiLOFederatedGroupCapping.v2_0_0.HpeiLOFederatedGroupCapping](#hpeilofederatedgroupcapping-v2_0_0-hpeilofederatedgroupcapping)

| | |
|---|---|
|Description|High, Med, or Low based on the percentage of power usage.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup
```@odata.type: "#HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup"```

The HpeiLOFederationGroup resource describes the properties for managing Federation groups.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/federationgroups/{item}/```|GET PATCH DELETE |

### Key
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|The password used by the Federation Group.|
|Type|string or null|
|Read Only|False|

### Privileges
**Privileges.HostBIOSConfigPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|Host BIOS configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.HostNICConfigPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|Host NIC configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.HostStorageConfigPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|Host Storage configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.LoginPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|Login privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.RemoteConsolePriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|Remote console privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.SystemRecoveryConfigPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|System Recovery configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.UserConfigPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|User configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.VirtualMediaPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual media privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.VirtualPowerAndResetPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|Virtual power and reset privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**Privileges.iLOConfigPriv**
Member of [HpeiLOFederationGroup.v2_0_0.HpeiLOFederationGroup](#hpeilofederationgroup-v2_0_0-hpeilofederationgroup)

| | |
|---|---|
|Description|The management processor configuration privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

## HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers
```@odata.type: "#HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers"```

The HpeiLOFederationPeers resource describes the properties for viewing Federation peers.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/federationpeers/{item}/```|GET |

### Peers (array)
Member of [HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers](#hpeilofederationpeers-v2_0_0-hpeilofederationpeers)
```Peers``` is an array containing elements of:

**Peers[{item}].HttpErrorCode**
Member of [HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers](#hpeilofederationpeers-v2_0_0-hpeilofederationpeers)

| | |
|---|---|
|Description|Error code for success or failure.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Peers[{item}].ManagerIPAddress**
Member of [HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers](#hpeilofederationpeers-v2_0_0-hpeilofederationpeers)

| | |
|---|---|
|Description|Manager IP address of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Peers[{item}].Time**
Member of [HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers](#hpeilofederationpeers-v2_0_0-hpeilofederationpeers)

| | |
|---|---|
|Description|Time when the federation peer was added.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**Peers[{item}].URL**
Member of [HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers](#hpeilofederationpeers-v2_0_0-hpeilofederationpeers)

| | |
|---|---|
|Description|URL of the federation peer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|url|

**Peers[{item}].UUID**
Member of [HpeiLOFederationPeers.v2_0_0.HpeiLOFederationPeers](#hpeilofederationpeers-v2_0_0-hpeilofederationpeers)

| | |
|---|---|
|Description|UUID peers that are part of the federation group.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeiLOGUIService.v1_1_0.HpeiLOGUIService
```@odata.type: "#HpeiLOGUIService.v1_1_0.HpeiLOGUIService"```

The HpeiLOGUIService resource describes properties used by the BMC Graphical User Interface.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/guiservice/```|GET |

### Features
**Features.AhsViewer**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Active Health System Viewer feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.AnonymousData**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Anonymous Data feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.BiosPrivilege**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host BIOS privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.CacSmartcard**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Certificate Authentication feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ComputeCloudConsoleFlag**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Compute Cloud Console Feature is enabled.|
|Type|boolean|
|Read Only|True|

**Features.CoolingModuleSupport**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Liquid Cooling modules are available on this platform.|
|Type|boolean|
|Read Only|True|

**Features.DotNetConsole**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote console feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.EAPTLSSupport**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether 802.1X feature is supported on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Encryption**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Encryption feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.EventDetails**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Event Details feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ExternalMonitor**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Server Health on External Monitor feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Federation**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Federation feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.HighEfficiencyMode**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether High Efficiency Mode on redundant power supply is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.HostNicPrivilege**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host NIC Privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.IntelligentProvisioning**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Intelligent Provisioning is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.IpManager**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether the BMC is managed by Remote Manager software.|
|Type|boolean|
|Read Only|True|

**Features.IpxeBoot**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates Embedded iPXE boot option is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.JavaConsole**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Java based Remote console feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Kerberos**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Kerberos authentication feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Licensing**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Licensing feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Mobile**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Mobile view feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.PowerDiscovery**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether HPE Power Discovery Service feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RIBCL**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether RIBCL feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RecoverySet**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Recovery Set privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RemoteConsoleSecurity**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote Console Security feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.RemoteSupport**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Remote Support feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Repository**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Repository feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SecurityDashboard**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Security Dashboard feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ServiceAccount**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Service Account feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SharedNicOcp**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether SNP device is an NC-SI compliant Open Computing Project 3.0 or later NIC.|
|Type|boolean|
|Read Only|True|

**Features.SingleSignOn**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Single Sign-On (SSO) feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.StoragePrivilege**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Host Storage privilege is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SwapROM**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Swap ROM feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SystemAutoHeal**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Intelligent Diagnostics feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.SystemDefaults**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether System Defaults feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.ThermalGraph**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Power Meter feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.Thumbnail**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Thumbnail feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.UefiSerialDbgMsg**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates Uefi Serial debug Message option is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.UpdateService**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Firmware update feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

**Features.VirtualMedia**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|This property indicates whether Virtual Media feature is enabled on this platform.|
|Type|boolean|
|Read Only|True|

### TreeList (array)
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)
```TreeList``` is an array containing elements of:

**TreeList[{item}].Features**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|The name of the feature associated with the navigation link.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].LangKey**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|The localization key in reference to the navigation link.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

**TreeList[{item}].Link**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

**TreeList[{item}].RightHandMenu**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|Name of the component.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].TabSet**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|The name of the navigation item linked with the tabs.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

**TreeList[{item}].Tabs (array)**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)
```Tabs``` is an array containing elements of:

**Tabs[{item}].Features**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|The name of the feature associated with the tab.|
|Type|string|
|Read Only|False|

**Tabs[{item}].LangKey**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|The localization key in reference to the name of the tab.|
|Type|string|
|Read Only|True|

**Tabs[{item}].Link**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|The name of the HTML file for this tab.|
|Type|string|
|Read Only|False|

**Tabs[{item}].Text**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|The default text used for this tab.|
|Type|string|
|Read Only|False|

**TreeList[{item}].Text**
Member of [HpeiLOGUIService.v1_1_0.HpeiLOGUIService](#hpeiloguiservice-v1_1_0-hpeiloguiservice)

| | |
|---|---|
|Description|The default text used for this navigation link.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

## HpeiLOLicense.v2_3_0.HpeiLOLicense
```@odata.type: "#HpeiLOLicense.v2_3_0.HpeiLOLicense"```

The HpeiLOLicense resource describes the properties for managing BMC licenses.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/licenseservice/{item}/```|GET DELETE |

### Confirmation
**Confirmation.Code**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Confirmation service response code.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Message**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|User-friendly confirmation information for the current managment processor license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Service**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Confirmation service URI.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Confirmation.Status**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)
See the Redfish standard schema and specification for information on common Status object.

### ConfirmationRequest
**ConfirmationRequest.EON**
**ConfirmationRequest.EON.License**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.LicenseKey**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The license key installed on this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.Quantity**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The number of entitlements licensed.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.EON.State**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The current licensing state and behavior of the management processor.  This is affected by license installation, activation and confirmation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```unlicensed```|standard baseline functionality|
|```evaluation```|evaluation / demonstration temporary licensed functionality|
|```nfr```|not for resale experimental functionality|
|```expired```|standard baseline functionality and evaluation licenses no longer accepted|
|```unconfirmed```|licensed functionality that has not been confirmed|
|```timeout```|licensed functionality is disabled until the license is confirmed|
|```confirmed```|licensed functionality has been confirmed for use|
|```static```|system has active built-in licensed functionality that does not require confirmation|
|```err```|error|

**ConfirmationRequest.Signer**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Source of confirmation request.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System**
**ConfirmationRequest.System.ChipId**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Management processor unique chip identifier.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System.Product**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|System housing management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ConfirmationRequest.System.SerialNumber**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|System serial number.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### License
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The current license of this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseClass
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The class of current license on this management processor.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|```FQL```|
|```BETA```|
|```EVALUATION```|
|```AKA```|
|```DL```|
|```FFQL```|
|```SL```|
|```SITE```|
|```EVAL```|
|```MLA```|

### LicenseErr
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Error information from the most recent attempt to alter the installed management processor license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseExpire
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|User-friendly expiration information of the installed management processor license. For example, for demo license, Evaluation period 2 months 5 days 6 hours remain.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseFeatures
**LicenseFeatures.DirectoryAuth**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Directory integrated authentication.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.DowngradePolicy**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Firmware downgrade policy setting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**LicenseFeatures.EmailAlert**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Email based alerting.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.FWScan**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Runtime FW Integrity check.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Federation**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Distributed peer to peer management.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Jitter**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Jitter Control.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.KD**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Kernel Debugging (VSP raw mode).|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.KeyMgr**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Store and retrieve keys from an external key manager.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.MURC**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Shared Multi-User Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.ODIM**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Open Distributed Infrastructure Management.|
|Type|boolean|
|Read Only|True|

**LicenseFeatures.PowerReg**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Power Regulator.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.RC**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Graphical Remote Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Recovery**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|OS Recovery Event.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.17|

**LicenseFeatures.RemoteSyslog**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Remote Syslog.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.Scrncap**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Video Capture.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SecureErase**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Secure Erase of embedded media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SmartCard**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|2-Factor Authentication (Smart Card).|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.SuiteB**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|SuiteB/CNSA mode support.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.TextCons**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Text Console.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VM**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Remote Console based Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VMScript**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Scripted Virtual Media.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**LicenseFeatures.VSPLogging**
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|Virtual Serial Port Logging and Playback.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseInstallDate
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|User-friendly installation date information of the installed management processor license. For example, 19 May 2017|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LicenseKey
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|User-visible license key installed on this management processor. License keys are 25 or 29 characters and contain letters, numbers and hypens. Use POST method to collection of membertype HpeiLOLicense to install / update the license.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LicenseSeats
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The number of systems authorized to use this activation key.|
|Type|integer|
|Read Only|True|

### LicenseTier
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The licensed feature-set of the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```STD```|
|```BLSTD```|
|```ADV```|
|```BLADV```|
|```ESS```|
|```SCALEOUT```|
|```APSE```|

### LicenseType
Member of [HpeiLOLicense.v2_3_0.HpeiLOLicense](#hpeilolicense-v2_3_0-hpeilolicense)

| | |
|---|---|
|Description|The type of current license activation on this management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```Unlicensed```|
|```Evaluation```|
|```Perpetual```|
|```Subscription```|
|```Internal```|
|```Duration```|
|```Expired```|

## HpeiLOSecurityDashboard.v1_0_0.HpeiLOSecurityDashboard
```@odata.type: "#HpeiLOSecurityDashboard.v1_0_0.HpeiLOSecurityDashboard"```

The HpeiLOSecurityDashboard resource describes the BMC security dashboard.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/securityservice/securitydashboard/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```SecurityParameters```|Collection of [HpeiLOSecurityParam](#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)|

### OverallSecurityStatus
Member of [HpeiLOSecurityDashboard.v1_0_0.HpeiLOSecurityDashboard](#hpeilosecuritydashboard-v1_0_0-hpeilosecuritydashboard)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Ok```|The Overall security state of the system is OK.|
|```Risk```|The Overall security state of the system is Risk.|
|```Ignored```|The user has ignored (or suppressed) the risk on all the security parameters (whose Status value is Risk).|

### SecurityParameters
This property references a resource of type Collection with a MemberType of HpeiLOSecurityParam.
SecurityParameters is a link (```"@odata.id": URI```) to another resource.

### ServerConfigurationLockStatus
Member of [HpeiLOSecurityDashboard.v1_0_0.HpeiLOSecurityDashboard](#hpeilosecuritydashboard-v1_0_0-hpeilosecuritydashboard)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Enabled```|Server Configuration Lock is Enabled.|
|```Disabled```|Server Configuration Lock is Disabled.|

## HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam
```@odata.type: "#HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam"```

The HpeiLOSecurityParam resource describes the properties for BMC security dashboard parameters.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/securityservice/securitydashboard/securityparams/{item}/```|GET PATCH |

### Ignore
Member of [HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam](#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)

| | |
|---|---|
|Description|This indicates if the security status of the security parameter is set to ignored or not.|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### IgnoredBy
Member of [HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam](#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the user who changed the value of Ignore.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### IgnoredTime
Member of [HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam](#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the time when the risk configuration was suppressed.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### RecommendedAction
Member of [HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam](#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the recommended action.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SecurityStatus
Member of [HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam](#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)

| | |
|---|---|
|Description|This represents if the status of the security parameter.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Risk```|This indicates a security issue associated with the security parameter.|
|```Ok```|This indicates no security issue associated with the security parameter.|

### State
Member of [HpeiLOSecurityParam.v1_1_0.HpeiLOSecurityParam](#hpeilosecurityparam-v1_1_0-hpeilosecurityparam)

| | |
|---|---|
|Description|This represents the state or value of the security parameter.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```On```|The state of the Security Parameter is On.|
|```Off```|The state of the Security Parameter is Off.|
|```Enabled```|The state of the Security Parameter is Enabled.|
|```Disabled```|The state of the Security Parameter is Disabled.|
|```Failed```|The status of the Security Parameter or the result of an operation represented by the Security Parameter is Failed.|
|```Ok```|The status of the Security Parameter or the result of an operation represented by the Security Parameter is Ok.|
|```Insufficient```|The value of the Security Parameter is Insufficient or less than the default value.|
|```Repaired```|The state of the Security Parameter is Repaired.|
|```True```|The state of the Security Parameter is True.|
|```False```|The state of the Security Parameter is False.|

## HpeiLOSSO.v2_0_0.HpeiLOSSO
```@odata.type: "#HpeiLOSSO.v2_0_0.HpeiLOSSO"```

The HpeiLOSSO resource describes the configuration of the HPE BMC single-sign-on trusted server feature.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/securityservice/sso/```|GET POST PATCH |

### ManagerTrustedCertificates (array)
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)
```ManagerTrustedCertificates``` is an array containing elements of:

**ManagerTrustedCertificates[{item}].@odata.id**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

**ManagerTrustedCertificates[{item}].@odata.type**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Type|string|
|Read Only|True|

**ManagerTrustedCertificates[{item}].Certificate**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Contains PEM formatted X509 certificate (Base64 encoded).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails**
**ManagerTrustedCertificates[{item}].CertificateDetails.Issuer**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|The Certificate Authority that issued the certificate.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails.Subject**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|The entity to which the certificate was issued.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotAfter**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period ends.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**ManagerTrustedCertificates[{item}].CertificateDetails.ValidNotBefore**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|The date on which the certificate validity period begins.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**ManagerTrustedCertificates[{item}].RecordType**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Specifies the type of SSO record imported.|
|Type|string|
|Read Only|true|
|Added|iLO 5 1.15|

The following are the supported values:

|Value|Description|
|---|---|
|```Certificate```|It is a PEM formatted X509 certificate (Base64 encoded).|
|```DNSName```|It is a DNS name or an IP address of the HPE SSO-compliant application.|

**ManagerTrustedCertificates[{item}].SerialNumber**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Contains the Serial number for the SSO records.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].ServerName**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|The Server name (or certificate subject).|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

**ManagerTrustedCertificates[{item}].Status**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)
See the Redfish standard schema and specification for information on common Status object.

### SSOsettings
**SSOsettings.AdminPrivilege**
**SSOsettings.AdminPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.AdminPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege**
**SSOsettings.OperatorPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.OperatorPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.SSOTrustMode**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Represents the SSO Trust Mode.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```TrustNone```|Rejects all SSO connection request.|
|```TrustAll```|Accepts any SSO connection initiated from any HPE SSO compliant application.|
|```TrustbyName```|Enables SSO connections from an HPE SSO compliant application by matching a directly imported IP address or DNS name.|
|```TrustbyCert```|Enables SSO connections from an HPE SSO compliant application by matching a certificate previously imported to iLO.|

**SSOsettings.UserPrivilege**
**SSOsettings.UserPrivilege.HostBIOSConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host BIOS Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.HostNICConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host NIC Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.HostStorageConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Host Storage Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.LoginPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Login Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.RemoteConsolePriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Remote Console Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.SystemRecoveryConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|System Recovery Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.UserConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|User Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.VirtualMediaPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Virtual Media Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.VirtualPowerAndResetPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|Power and Reset Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

**SSOsettings.UserPrivilege.iLOConfigPriv**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)

| | |
|---|---|
|Description|iLO Configuration Privileges.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.10|

### Actions

**HpeiLOSSO.DeleteAllSSORecords**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)
Delete all the SSO records.

There are no parameters for this action.

**HpeiLOSSO.DeleteSSORecordbyNumber**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)
Delete SSO record by record number.


**Parameters:**

**RecordNumber (integer)**

Index of the SSO record to be deleted.

**HpeiLOSSO.ImportCertificate**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)
Import the HPE SSO Certificate.


**Parameters:**

**CertInput (string)**

PEM formatted X509 certificate (Base64 encoded)/DNS name or IP address to import the certificate.

**CertType (string)**

Specifies the type of certificate imported.

|Value|Description|
|---|---|
|DirectImportCert|iLO directly imports the Certificate.|
|ImportCertUri|iLO imports the certificate from the HPE SSO compliant application over the network.|

**HpeiLOSSO.ImportDNSName**
Member of [HpeiLOSSO.v2_0_0.HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)
Add DNS Name to the record list.


**Parameters:**

**DNSName (string)**

DNS Name of the HPE SSO Trusted Server.
## HpeInvalidImageCollection.HpeInvalidImageCollection
```@odata.type: "#HpeInvalidImageCollection.HpeInvalidImageCollection"```

A Collection of HpeInvalidImage resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/invalidimagerepository/```|GET |

### Members (array)
Member of HpeInvalidImageCollection.HpeInvalidImageCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeInvalidImageCollection.HpeInvalidImageCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeInvalidImageCollection.HpeInvalidImageCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection
```@odata.type: "#HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection"```

A Collection of HpeMaintenanceWindow resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/maintenancewindows/```|GET POST |

### Members (array)
Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeMaintenanceWindowCollection.HpeMaintenanceWindowCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpePowerMeter.v2_0_1.HpePowerMeter
```@odata.type: "#HpePowerMeter.v2_0_1.HpePowerMeter"```

The HpePowerMeter resource contains the computer system power history logged by the BMC.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/chassis/{item}/power/fastpowermeter/```|GET |
|```/redfish/v1/chassis/{item}/power/powermeter/```|GET |
|```/redfish/v1/chassis/{item}/power/slowpowermeter/```|GET |

### Average
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Average power across all samples, over the last 24 hours.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Maximum
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Maximum power across all samples, taken from the 24 hour history.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Minimum
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Minimum power across all samples, taken from the 24 hour history.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerDetail (array)
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)
```PowerDetail``` is an array containing elements of:

**PowerDetail[{item}].AmbTemp**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Ambient temperature, in degrees Celsius.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Average**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Average power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Cap**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|The applicable power cap in Watts at the time of this power sample.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuAvgFreq**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|CPU average frequency in MHz.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuCapLim**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Measures the effect of the power cap on performance in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuMax**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|The percentage of time the CPU spent in its maximum power mode.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuPwrSavLim**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Measures the effect of CPU Power Regulator state switching on performance in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuUtil**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|CPU utilization in percent.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].CpuWatts**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the system CPUs in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].DimmWatts**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the system memory DIMMs in Watts.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].GpuWatts**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|The power consumed by the GPU(s) in Watts.  This will be 0 if no GPUs are installed or if the drivers are not loaded.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.30|

**PowerDetail[{item}].Minimum**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Minimum power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Peak**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Peak power in Watts over the sample time.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].PrMode**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Power Regulator mode, which can be OS Control, Static High, Static Low or Dynamic.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```dyn```|Dynamic Mode - CPU power regulation is managed dynamically by the firmware.|
|```min```|Minimum Mode - CPU power regulation is configured to save as much power as possible at the possible expense of performance.|
|```max```|Maximum Mode - CPU power regulation is configured for maximum performance at the possible expense of power efficiency.|
|```osc```|OS Control Mode - CPU power regulation is managed by the Operating System.|

**PowerDetail[{item}].PunCap**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|If true, CPU performance is being penalized by the current power cap.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**PowerDetail[{item}].Time**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Time at which the power sample detail was captured.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

**PowerDetail[{item}].UnachCap**
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|If true, the configured power cap could not be achieved due to system power requirements.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Samples
Member of [HpePowerMeter.v2_0_1.HpePowerMeter](#hpepowermeter-v2_0_1-hpepowermeter)

| | |
|---|---|
|Description|Number of samples in the array.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeRemoteSupport.v2_6_0.HpeRemoteSupport
```@odata.type: "#HpeRemoteSupport.v2_6_0.HpeRemoteSupport"```

The HpeRemoteSupport resource describes the properties for management of HPE Embedded Report Support.

This resource type was added in iLO 5 1.20

HpeRemoteSupport enables management of HPE Remote Support configuration on iLO 5.

### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/remotesupportservice/```|GET POST PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```ServiceEventLogs```|LogEntryCollection|

### ConnectModel
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|The Remote Support connect model type.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|```DirectConnect```|
|```CentralConnect```|

### DataCollectionFrequencyInDays
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|The frequency of data collection in days. This is applicable only when the server is registered using Direct Connect.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### DestinationPort
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|The port number of the Insight Remote Support server. This is applicable for Central Connect only. |
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### DestinationURL
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|The host name or IP address of the Remote Support server. This is applicable for Central Connect only.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### DirectConnectRegistrationIsCompleted
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|Step 2 of Direct Connect Registration completion status.|
|Type|boolean|
|Read Only|True|

### ExternalAgentName
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|This indicates the name of external Remote Support agent.|
|Type|string|
|Read Only|True|

### HpePassportPassword
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|HPE Passport Account Password.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

### HpePassportUserId
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|HPE Passport Account Id.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LastTransmissionDate
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|The last transmission date.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|
|Format|date-time|

### LastTransmissionError
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|The last transmission error.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### LastTransmissionType
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|The last transmission type. |
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|
|---|
|```ActiveHealthSystemData```|
|```L2DataCollection```|
|```Registration```|
|```Deregistration```|
|```ServiceEvent```|
|```NoTransmission```|
|```Null```|

### MaintenanceModeEnabled
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|This indicates if the server is in Maintenance Mode or not.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.30|

### MaintenanceTimeLeftInMinutes
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|This indicates the time remaining in minutes for the server to be in the maintenance mode.|
|Type|integer|
|Read Only|True|

### ProxySettings
**ProxySettings.Password**
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|Password for web proxy server authentication. |
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

**ProxySettings.Port**
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|Port number on which to communicate with the web proxy server. |
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

**ProxySettings.Url**
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|Web proxy server host name or IP address.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.20|
|Format|url|

**ProxySettings.Username**
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|Username for web proxy server authentication. |
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.20|

### RemoteSupportEnabled
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

| | |
|---|---|
|Description|This indicates if the Remote Support Service is available or not. |
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### ServiceEventLogs
A reference to the collection of service event logs.
ServiceEventLogs is a link (```"@odata.id": URI```) to another resource.

### Actions

**HpeRemoteSupport.ClearServiceEventLog**
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)
There are no parameters for this action.

**HpeRemoteSupport.CompleteDirectConnectRegistration**
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)
There are no parameters for this action.

**HpeRemoteSupport.DisableRemoteSupport**
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

**Parameters:**

**MessageId (string)**

A unique message identifier in UUID format used to match the test Service Event with this request. It is returned in the submission package SOAP envelope header.

**HpeRemoteSupport.RegisterDeviceToRemoteSupport**
Member of [HpeRemoteSupport.v2_6_0.HpeRemoteSupport](#hperemotesupport-v2_6_0-hperemotesupport)

**Parameters:**

**ConnectionType (string)**

This indicates whether the device will be registered using Direct Connect or Central Connect.

|Value|Description|
|---|---|
|DirectConnect|
|CentralConnect|

**DestinationPort (integer)**

The port number of the Remote Support server. This is applicable for Central Connect only.

**DestinationUrl (string)**

The host name or IP address of the Remote Support server. This is applicable for Central Connect only.
## HpeSecureEraseReportCollection.HpeSecureEraseReportCollection
```@odata.type: "#HpeSecureEraseReportCollection.HpeSecureEraseReportCollection"```

A Collection of HpeSecureEraseReport resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/secureerasereportservice/secureerasereportentries/```|GET |

### Members (array)
Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of HpeSecureEraseReportCollection.HpeSecureEraseReportCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## HpeSecureEraseReportService.v1_0_0.HpeSecureEraseReportService
```@odata.type: "#HpeSecureEraseReportService.v1_0_0.HpeSecureEraseReportService"```

The HpeSecureEraseReportService resource describes the properties of the Secure Erase Report feature.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/secureerasereportservice/```|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Links/SecureEraseReportEntries```|HpeSecureEraseReportCollection|

### EraseInitiatedBy
Member of [HpeSecureEraseReportService.v1_0_0.HpeSecureEraseReportService](#hpesecureerasereportservice-v1_0_0-hpesecureerasereportservice)

| | |
|---|---|
|Description|This indicates the user name who initiated the secure system erase process.|
|Type|string or null|
|Read Only|True|

### ServerSerialNumber
Member of [HpeSecureEraseReportService.v1_0_0.HpeSecureEraseReportService](#hpesecureerasereportservice-v1_0_0-hpesecureerasereportservice)

| | |
|---|---|
|Description|This represents the server serial number.|
|Type|string or null|
|Read Only|True|

### Actions

**HpeSecureEraseReportService.DeleteSecureEraseReport**
Member of [HpeSecureEraseReportService.v1_0_0.HpeSecureEraseReportService](#hpesecureerasereportservice-v1_0_0-hpesecureerasereportservice)
There are no parameters for this action.
## HpeSecurityService.v2_3_1.HpeSecurityService
```@odata.type: "#HpeSecurityService.v2_3_1.HpeSecurityService"```

The HpeSecurityService resource describes the properties for management of the security configuration of the BMC.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/securityservice/```|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Links/CertAuth```|[HpeCertAuth](#hpecertauth-v1_1_0-hpecertauth)|
|```Links/ESKM```|[HpeESKM](#hpeeskm-v2_0_0-hpeeskm)|
|```Links/HttpsCert```|[HpeHttpsCert](#hpehttpscert-v2_0_0-hpehttpscert)|
|```Links/SSO```|[HpeiLOSSO](#hpeilosso-v2_0_0-hpeilosso)|
|```Links/SecurityDashboard```|[HpeiLOSecurityDashboard](#hpeilosecuritydashboard-v1_0_0-hpeilosecuritydashboard)|
|```PlatformCert/Certificates```|CertificateCollection|
|```PlatformCertUpdate/Certificates```|[ERROR_UNKNOWN](#error_unknown-v0_0_0-error_unknown)|
|```SystemIAK/Certificates```|CertificateCollection|
|```SystemIDevID/Certificates```|CertificateCollection|
|```iLOIDevID/Certificates```|CertificateCollection|
|```iLOLDevID/Certificates```|CertificateCollection|

### CurrentCipher
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|Current cipher in use.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

### LoginSecurityBanner
**LoginSecurityBanner.IsEnabled**
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|Login security banner is enabled or not.|
|Type|boolean|
|Read Only|False|
|Added|iLO 5 1.15|

**LoginSecurityBanner.SecurityMessage**
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|Text message to appear on the iLO login page and iLO SSH pre-authentication banner when login security banner is enabled.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.15|

### PlatformCert
**PlatformCert.Certificates**
This is a reference to a collection of certificates used for PlatformCert by this manager.
Certificates is a link (```"@odata.id": URI```) to another resource.

### PlatformCertUpdate
**PlatformCertUpdate.Certificates**
This is a reference to a collection of certificates used for PlatformCert Updates by this manager.
Certificates is a link (```"@odata.id": URI```) to another resource.

### SSHHostKey
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|SSH Host Key identifying the service.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

### SecurityState
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|The operational security level of this Manager.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Wipe```|Manager is currently wiping security related content and returning to a lower security mode.  This state will transition automatically when finished.|
|```Production```|Manager is operating in a normal security mode.  Default state for new systems.|
|```HighSecurity```|Manager is operating in high security mode, requiring extra authentication on host interface(s), and stronger encryption on network interfaces.|
|```FIPS```|Similar to High Security. This mode is intended to meet the FIPS 140-2 level 1 and Common Criteria security requirements. A reset to defaults is required to exit this mode.|
|```CNSA```|Same as FIPS. Additionally meets the criteria for NSA Commercial National Security Algorithm suite.  Must be in FIPS mode to transition to CNSA.|
|```SuiteB```|Same as FIPS. Additionally meets the criteria for NSA SuiteB Top Secret installations.  Must be in FIPS mode to transition to SuiteB.|
|```SynergySecurityMode```|Synergy Security Mode is the mode supported by the Synergy Composer.|

### SecurityState@Redfish.AllowableValues (array)
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)
```SecurityState@Redfish.AllowableValues``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|
|---|
|```Wipe```|
|```Production```|
|```HighSecurity```|
|```FIPS```|
|```CNSA```|
|```SuiteB```|

### SystemIAK
**SystemIAK.Certificates**
This is a reference to a collection of certificates used for System IAK by this manager.
Certificates is a link (```"@odata.id": URI```) to another resource.

### SystemIDevID
**SystemIDevID.Certificates**
This is a reference to a collection of certificates used for System IDevId by this manager.
Certificates is a link (```"@odata.id": URI```) to another resource.

### TrustedOSSecurity
**TrustedOSSecurity.EnableBackgroundScan**
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|Enables or disables background scan of host OS software.|
|Type|boolean|
|Read Only|False|

**TrustedOSSecurity.LastScanResult**
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|Health of the host after the last scan done by Trusted OS Security scan engine.|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```OK```|The last Trusted OS Security scan completed without finding any issues.|
|```Critical```|The last Trusted OS Security scan completed finding issue(s). Refer to the SL log for details.|
|```Unknown```|The health is Unknown because either the scan data is unavailable or scan is not enabled or last scan failed to complete.|

**TrustedOSSecurity.LastScanTime**
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|The time stamp of the last Trusted OS Security scan.|
|Type|string or null|
|Read Only|True|
|Format|date-time|

**TrustedOSSecurity.OnIntegrityFailure**
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|Sets the policy for how the Trusted OS Security check handles integrity failures.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```NoAction```|No action will be taken when a failure is detected.|
|```Alert```|Generate an alert when a failure is detected.|
|```PowerOff```|Gracefully power system off when a failure is detected.|
|```PowerOffForce```|Force system power off when a failure is detected.|
|```Reset```|Reset system power off when a failure is detected.|
|```ColdBoot```|ColdBoot system power off when a failure is detected.|
|```ForceNMI```|ForceNMI system power off when a failure is detected.|

**TrustedOSSecurity.ScanEverySeconds**
Member of [HpeSecurityService.v2_3_1.HpeSecurityService](#hpesecurityservice-v2_3_1-hpesecurityservice)

| | |
|---|---|
|Description|Sets the interval between Trusted OS Security scans in second increments.|
|Type|integer or null|
|Read Only|False|

### iLOIDevID
**iLOIDevID.Certificates**
This is a reference to a collection of certificates used for iLO IDevId by this manager.
Certificates is a link (```"@odata.id": URI```) to another resource.

### iLOLDevID
**iLOLDevID.Certificates**
This is a reference to a collection of certificates used for iLO LDevId by this manager.
Certificates is a link (```"@odata.id": URI```) to another resource.

## HpeServerPCISlot.v2_1_0.HpeServerPCISlot
```@odata.type: "#HpeServerPCISlot.v2_1_0.HpeServerPCISlot"```

The HpeServerPCISlot resource describes the properties of PCI slots.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/pcislots/{item}/```|GET |

### BusNumber
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot bus number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### Characteristics
**Characteristics.Provides3_3Volts**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|Provides 3.3 volts.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.Provides5Volts**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|Provides 5.0 volts.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SlotIsShared**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|The slot shares its opening with another slot.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsCardBus**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Card Bus.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsHotPlugDevices**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|Slot supports hot-plug devices.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsModemRingResume**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Modem Ring Resume.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsPCCard16**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports PC Card-16.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsPowerManagementEventSignal**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot supports Power Management Event signal.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsSMBusSignal**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot supports SMBUS signal.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

**Characteristics.SupportsZoomVideo**
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PC Card slot supports Zoom Video.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### DeviceNumber
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot device number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### FunctionNumber
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot function number.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.20|

### Length
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PCI slot length|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```Short```|
|```Long```|
|```Other```|

### LinkLanes
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|Bandwidth capacity of the slot, measured by the number of PCI Express Lanes present. Also known as the slot width.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```8 bit```|
|```16 bit```|
|```32 bit```|
|```64 bit```|
|```128 bit```|
|```x1```|
|```x2```|
|```x4```|
|```x8```|
|```x16```|
|```x32```|
|```Other```|

### Status
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)
See the Redfish standard schema and specification for information on common Status object.

### SupportsHotPlug
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|Specifies whether the slot supports hot-plug devices.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Technology
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|PCI technology|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```Proprietary```|
|```OCP NIC 3.0```|
|```PCIExpressGen4```|
|```PCIExpressGen3```|
|```PCIExpressGen2```|
|```PCIExpress```|

### UEFIDevicePath
Member of [HpeServerPCISlot.v2_1_0.HpeServerPCISlot](#hpeserverpcislot-v2_1_0-hpeserverpcislot)

| | |
|---|---|
|Description|Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeSmartStorage.v2_0_0.HpeSmartStorage
```@odata.type: "#HpeSmartStorage.v2_0_0.HpeSmartStorage"```

The HpeSmartStorage resource describes the properties of the HPE Smart Storage controller,drives,and volumes.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/smartstorage/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Links/ArrayControllers```|Collection of [HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)|
|```Links/HostBusAdapters```|HpeSmartStorageHostBusAdapterCollection|

### Status
Member of [HpeSmartStorage.v2_0_0.HpeSmartStorage](#hpesmartstorage-v2_0_0-hpesmartstorage)
See the Redfish standard schema and specification for information on common Status object.

## HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController
```@odata.type: "#HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController"```

The HpeSmartStorageArrayController resource describes the properties of the HPE Smart Storage controller,drives,and volumes.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Links/LogicalDrives```|Collection of [HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)|
|```Links/PhysicalDrives```|Collection of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|
|```Links/StorageEnclosures```|Collection of [HpeSmartStorageStorageEnclosure](#hpesmartstoragestorageenclosure-v2_0_0-hpesmartstoragestorageenclosure)|
|```Links/UnconfiguredDrives```|Collection of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|

### AdapterType
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Type of Smart controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```SmartArray```|A controller that supports all SmartArray features and configuration|
|```SmartHBA```|A controller that functions natively as an HBA, but has a ValueRAID mode for basic RAID configuration|
|```DynamicSmartArray```|A controller that allows software RAID configuration|

### ArrayCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of arrays configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### BackupPowerSourceStatus
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current status of the backup power source (battery, capacitor, megacell etc.)|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Present```|The backup power source is present but charging information is unknown|
|```NotPresent```|The backup power source is not present|
|```PresentAndCharged```|The backup power source is present and fully charged|
|```PresentAndCharging```|The backup power source is present and is currently charging|

### BootVolumePrimary
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The primary boot volume of this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### BootVolumeSecondary
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The secondary boot volume of this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheArrayCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of cache arrays configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheLogicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of cache logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheMemorySizeMiB
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The total cache memory size for the controller in MiB|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CacheModuleSerialNumber
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The serial number of the Cache Module.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

### CacheModuleStatus
**CacheModuleStatus.Health**
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This represents the health state of this resource in the absence of its dependent resources.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```OK```|Normal|
|```Warning```|A condition exists that requires attention|
|```Critical```|A critical condition exists that requires immediate attention|

**CacheModuleStatus.HealthRollup**
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This represents the overall health state from the view of this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```OK```|Normal|
|```Warning```|A condition exists that requires attention|
|```Critical```|A critical condition exists that requires immediate attention|

**CacheModuleStatus.State**
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This indicates the known state of the resource, such as if it is enabled.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```Enabled```|This function or resource has been enabled.|
|```Disabled```|This function or resource has been disabled.|
|```StandbyOffline```|This function or resource is enabled, but awaiting an external action to activate it.|
|```StandbySpare```|This function or resource is part of a redundancy set and is awaiting a failover or other external action to activate it.|
|```InTest```|This function or resource is undergoing testing.|
|```Starting```|This function or resource is starting.|
|```Absent```|This function or resource is not present or not detected.|
|```UnavailableOffline```|This function or resource is present but cannot be used.|
|```Deferring```|The element will not process any commands but will queue new requests.|
|```Quiesced```|The element is enabled but only processes a restricted set of commands.|
|```Updating```|The element is updating and may be unavailable or degraded.|

### CachePhysicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives assigned as cache drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ControllerBoard
**ControllerBoard.Status**
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)
See the Redfish standard schema and specification for information on common Status object.

### ControllerPartNumber
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Smart Array Controller Part Number|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CurrentOperatingMode
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current operating mode of the controller.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```RAID```|The controller is currently functioning in RAID mode|
|```HBA```|The controller is currently functioning in HBA mode|
|```Mixed```|The controller is currently functioning in Mixed mode|

### CurrentParallelSurfaceScanCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Number of disks the controller is scanning in parallel|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DataLogicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of data logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DataPhysicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives assigned as data drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DegradedPerformanceOptimization
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to attempt to improve performance on RAID 5/50/6(ADG)/60 logical drives when one or more physical drives in the logical drive are failed|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Enabled```|The controller will attempt to improve performance by buffering physical drive requests|
|```Disabled```|The controller will not buffer, which may result in reading from the same drive multiple times|

### DriveWriteCache
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables or disables the write cache of the physical drives attached to the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Enabled```|The write cache of the physical drives attached to the controller are enabled|
|```Disabled```|The write cache of the physical drives attached to the controller are enabled|

### DualModeControllerSupported
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will support BMIC and RDE.|
|Type|boolean|
|Read Only|True|

### ElevatorSort
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to sort requests to a physical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Enabled```|The controller will sort the requests to minimize the amount of seeking the drive must perform in order to reduce seek times|
|```Disabled```|The controller will perform the requests as they are recieved in order to improve request throughput|

### EncryptionBootPasswordSet
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if there is a boot password set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionCryptoOfficerPasswordSet
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a password has been set for the Encryption Crypto Officer, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionCspTestPassed
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption CSP test passed, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionEnabled
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if encryption is currently enabled for this controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionFwLocked
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller firmware has been locked, preventing firmware updates, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasLockedVolumes
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has one or more volumes that are locked, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasLockedVolumesMissingBootPassword
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if there are locked drives due to a missing boot password, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionHasSuspendedVolumes
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller password has been temporarily suspended, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionKeySet
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the Master Key has been set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionLocalKeyCacheEnabled
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller caches encryption keys locally when a remote key manager is being used, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionMixedVolumesEnabled
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will allow plaintext and encrypted volumes to exist simultaneously, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionPhysicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of encrypted physical drives attached to the controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionRecoveryParamsSet
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption password recovery question and answer have been set, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionSelfTestPassed
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the encryption self test passed, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### EncryptionStandaloneModeEnabled
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller manages encryption keys locally, false if a remote key manager is being used|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EncryptionUserPasswordSet
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a password has been set for the Encryption User, false otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### ExpandPriority
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The level of priority that transformations have over handling current operating system requests|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```High```|Transformations will complete as fast as possible at the expense of normal I/O|
|```Medium```|Transformations will perform with some impact on normal I/O|
|```Low```|Transformations will perform only when normal I/O is not occurring and may take longer to complete|

### ExternalPortCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of external ports|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### FirmwareVersion
**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### FlexibleLatencySchedulerSetting
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This allows the controller to process certain high-latency requests after a delay that may time out when elevator sorting|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Default```|The controller will rely only on elevator sorting|
|```Low250```|The controller will apply a cutoff value of 250ms when suspending elevator sorting|
|```Middle100```|The controller will apply a cutoff value of 100ms when suspending elevator sorting|
|```Middle50```|The controller will apply a cutoff value of 50ms when suspending elevator sorting|
|```Aggressive30```|The controller will apply a cutoff value of 30ms when suspending elevator sorting|
|```Aggressive10```|The controller will apply a cutoff value of 10ms when suspending elevator sorting|

### HardwareRevision
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The hardware revision of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### InconsistencyRepairPolicy
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables the controller to update data on RAID 6(ADG) and 60 volumes based on parity information when an inconsistency is discovered during surface scan|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Enabled```|The controller will update the data on the drives based on the parity information|
|```Disabled```|The controller will only update the parity information and leave the data untouched|

### InternalPortCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of internal ports|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### IsBootController
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if this controller is the OS boot controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Location identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationFormat
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Format for Location Identifier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```PCISlot```|The PCI slot the controller is located at. For embedded controllers, the slot is 0|

### LogicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of logical drives configured on this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Manufacturer
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The manufacturer of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### MaxParallelSurfaceScanCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Maximum number of disks that the controller supports scanning in parallel|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Model
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The model number for the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### OperatingModeAfterReboot
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The operating mode the controller will be functioning in (RAID versus HBA) after a reboot|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```RAID```|The controller will be functioning in RAID mode after rebooting|
|```HBA```|The controller will be functioning in HBA mode after rebooting|
|```Mixed```|The controller will be functioning in Mixed mode after rebooting|

### ParallelSurfaceScanSupported
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller supports scanning multiple disk surfaces|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PhysicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of physical drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeAfterReboot
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The power mode of the controller after a reboot|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Invalid```|The controller will be operating in an unknown power mode after a reboot|
|```Low```|The controller will be operating in minimum power mode after a reboot|
|```LowAutomated```|The controller will be operating in a balanced mode after a reboot|
|```Performant```|The controller will be operating in maximum performance power mode after a reboot|

### PowerModeConfigured
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The current power mode of the controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Invalid```|The power mode can not be determined|
|```Low```|The controller is currently operating in minimum power mode|
|```LowAutomated```|The controller is currently operating in a balanced power mode|
|```Performant```|The controller is currently operating in maximum performance power mode|

### PowerModeWarningChangedDrive
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller's drive configuration has changed while using configuration based power settings, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeWarningChangedMode
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has a new power mode configured, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerModeWarningReboot
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if a reboot is required to change the active power mode on the controller, false otherwise|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```NotRequired```|No reboot is required|
|```RequiredNoReason```|A reboot is required for the configured power mode on the controller|
|```RequiredPowerSavings```|Rebooting will enable additional power savings on the controller|
|```RequiredPerformance```|Rebooting will enhance the performance of the controller|

### PowerModeWarningTemperature
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller has crossed a critical temperature threshold and performance has been reduced to prevent damage to the controller, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### PredictiveSpareRebuild
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Enables or disables predictive spare rebuild mode|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Enabled```|Spare drives will replace physical drives that are predicted to fail preemptively|
|```Disabled```|Spare drives will replace physical drives only when they fail|

### QueueDepth
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This sets the maximum number of requests the controller will submit to a drive at any given time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```2```|2 requests|
|```4```|4 requests|
|```8```|8 requests|
|```16```|16 requests|
|```32```|32 requests|
|```Automatic```|Automatically determine the best queue depth for the controller|

### ReadCachePercent
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This indicates the percentage of cache used for read cache on the controller, with the rest of the cache being used for write cache|
|Type|integer or null|
|Read Only|False|
|Added|iLO 5 1.20|

### RebuildPriority
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The level of priority that rebuilds have over handling current operating system requests|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```High```|Rebuilds will complete as fast as possible at the expense of normal I/O|
|```Medium```|Rebuilds will perform with some impact on normal I/O|
|```Low```|Rebuilds will perform only when normal I/O is not occurring and may take longer to complete|
|```RapidHigh```|Rebuilds will complete as fast as possible at the expense of normal I/O|
|```RapidMediumHigh```|Rebuilds will perform with an impact on normal I/O|
|```RapidMedium```|Rebuilds will perform with some impact on normal I/O|
|```RapidLow```|Rebuilds will perform only when normal I/O is not occurring and may take longer to complete|

### SerialNumber
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The serial number for this controller|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SoftwareRaidHbaFirmwareRev
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The firmware version of the underlying HBA that is being used by the software RAID stack|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SoftwareRaidHbaModeOptionRomRev
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The option ROM firmware version used to bootstrap the software RAID stack|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SparePhysicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|he number of physical drives assigned as spare drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Status
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)
See the Redfish standard schema and specification for information on common Status object.

### SupportedOperatingModes (array)
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)
```SupportedOperatingModes``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```RAID```|The controller supports functioning in RAID mode|
|```HBA```|The controller supports functioning in HBA mode|
|```Mixed```|The controller supports functioning in Mixed mode|

### SupportedPowerModes (array)
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)
```SupportedPowerModes``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```Low```|The controller is currently operating in minimum power mode|
|```LowAutomated```|The controller is currently operating in a balanced power mode|
|```Performant```|The controller is currently operating in maximum performance power mode|

### SupportedRaidLevels (array)
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)
```SupportedRaidLevels``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```0```|There is no fault tolerance used on the logical drive|
|```1```|Two sets of duplicate data is being stored on a pair of drives|
|```1ADM```|Three sets of duplicate data is being stored on a trio of drives|
|```10```|Data is duplicated and striped across pairs of disk drives|
|```10ADM```|Data is duplicated and striped across trios of disk drives|
|```5```|Fault tolerance is achieved by storing parity data across 3 or more disk drives|
|```50```|Fault tolerance is achieved by storing parity data and striping the data across 6 or more disk drives|
|```6```|Fault tolerance is achieved by storing multiple sets parity data across 4 or more disk drives|
|```60```|Fault tolerance is achieved by storing multiple sets parity data and striping the data across 8 or more disk drives|

### SurfaceScanAnalysisPriority
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|Priority that the controller takes to find and correct disk surface errors|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Disabled```|Surface scan is disabled and may lead to data loss|
|```High```|Surface scan commands will be sent with the host I/O, resulting in faster scanning, but may inpact host I/O performance|
|```Medium```|Surface scan commands have a medium priority, and will have some impact on host I/O performance|
|```Low```|Surface scan commands have a low priority, and will have little impact on host I/O performance|
|```Idle```|Surface scan commands will ony be issued when no host I/O is present after a delay|

### UnassignedPhysicalDriveCount
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|The number of unassigned physical drives attached to this controller|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### WriteCacheBypassThresholdKB
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|This value sets the write cache bypass threshold, ranging from 16 KB to 1040 KB in multiples of 16 KB, where all writes larger than the specified value in KB units will bypass the write cache and be written directly to the disk for non-parity RAID volumes.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.20|

### WriteCacheWithoutBackupPowerEnabled
Member of [HpeSmartStorageArrayController.v2_2_0.HpeSmartStorageArrayController](#hpesmartstoragearraycontroller-v2_2_0-hpesmartstoragearraycontroller)

| | |
|---|---|
|Description|True if the controller will continue to use write cache even if the backup power source is not available. False, otherwise.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

## HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive
```@odata.type: "#HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive"```

The HpeSmartStorageDiskDrive resource describes the properties of the HPE Smart Storage controller,drives,and volumes.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/diskdrives/2/```|GET |
|```/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/diskdrives/{item}/```|GET |

### BlockSizeBytes
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Block size of the drive in bytes. This is the block size presented by the drive to clients such as the array controller or operating system.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityGB
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total capacity of the drive in GB. This denotes the marketing capacity (base 10)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityLogicalBlocks
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total number of logical blocks in the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityMiB
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Total capacity of the drive in MiB|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CarrierApplicationVersion
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Carrier PIC firmware version currently running|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### CarrierAuthenticationStatus
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Authentication status of the drive carrier|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```OK```|Carrier authenticated as genuine HPE product|
|```Fail```|Carrier authentication failed|
|```NoCommunication```|Communication could not be established with the carrier|
|```NotApplicable```|Carrier does not support authentication|

### CurrentTemperatureCelsius
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The current temperature of the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DiskDriveStatusReasons (array)
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)
```DiskDriveStatusReasons``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```None```|No status reason available|
|```Unknown```|Reason is unknown|
|```CommunicationFailure```|Cannot communicate with drive|
|```Zoned```|Drive is currently zoned, only basic information can be displayed|
|```EraseInProgress```|Drive is currently in process of an erase operation|
|```QueuedForErase```|Drive is currently queued for an erase operation|
|```EraseCompleted```|Drive has completed the erase operation|
|```EraseFailed```|The erase operation has failed for the drive|
|```EraseAborted```|The erase operation was aborted|
|```Failed```|The drive has failed|
|```NonAuthenticDrive```|The drive is not an authentic drive|
|```CarrierCommunicationFailure```|The drive carrier has a communication fault|
|```PredictiveFail```|Drive failure is imminent|
|```NotSupported```|The drive is not supported by the controller|
|```SizeNotValid```|The drive size is invalid. Typically occurs if a drive part of a raid volume is replaced with a smaller sized drive|
|```FailedDueToPredictiveSpareActivation```|The drive was failed due to a predictive spare activation|
|```Rebuilding```|The drive is currently rebuilding|
|```TransientDataDrive```|The drive is part of a volume that is currently undergoing a transformation. After the transformation is complete the drive's state will change|
|```Unrecoverable```|The drive is in an unrecoverable condition|

### DiskDriveUse
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The current use of the physical drive.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Data```|It is a Data drive which is a part of an array.|
|```Spare```|It is a spare drive which is a part of an array.|
|```Raw```|Indicates the drive is available to the OS via HBA mode on the controller.|
|```Unconfigured```|Indicates the drive is not available to the OS as controller is in RAID mode.|
|```Unknown```|The current use of the disk drive is not known.|

### EncryptedDrive
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|True if encryption is currently enabled on this disk drive, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### EraseCompletionPercentage
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The percent complete for an erase operation currently occurring on the disk drive or null if not currently erasing a drive.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### ErasePattern
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The pattern used for erasing the disk drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### FirmwareVersion
**FirmwareVersion.Current**
**FirmwareVersion.Current.VersionString**
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This string represents the version of the firmware image.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### IndicatorLED
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The state of the indicator LED.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```Unknown```|The state of the Indicator LED cannot be determined.|
|```Lit```|The Indicator LED is lit.|
|```Blinking```|The Indicator LED is blinking.|
|```Off```|The Indicator LED is off.|

### InterfaceSpeedMbps
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Native interface speed for the device|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### InterfaceType
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The connection interface of the drive. The value NVME has been deprecated.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```SAS```|SAS|
|```SATA```|SATA|
|```NVME```|Non-volatile memory (deprecated)|
|```PCIe```|PCIe interface|
|```Unknown```|Information is unavailable|

### LegacyBootPriority
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This indicates that the array controller should provide legacy boot support.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Primary```|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this physical drive. The physical drive will be listed as first in the LUN list returned via SCSI commands|
|```Secondary```|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this physical drive. The physical drive will be listed as second in the LUN list returned via SCSI commands|
|```None```|Legacy boot not supported on this physical drive|

### Location
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The location of the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LocationFormat
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Format for the location property|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```ControllerPort:Box:Bay```|This format typically used in controller context where the drive would be identified using the controller port, JBOD box number and drive bay|
|```SwitchPort:Box:Bay```|This format typically used in a SAS switch context where the drive would be identified using the switch port, JBOD box number and drive bay|
|```SwitchPort:SwitchBay:Bay```|This format typically used in a SAS switch context where the drive would be identified using the switch port, ICM bay number for the switch and drive bay|

### Manufacturer
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Manufacturer of the disk drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### MaximumTemperatureCelsius
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The maximum recommended temperature for the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### MediaType
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Type of disk|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```HDD```|The drive media type is traditional magnetic platters|
|```SSD```|The drive media type is solid state or flash memory|
|```SMR```|The drive media type is shingled magnetic recording|

### MinimumGoodFirmwareVersion
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The minimum recommended firmware revision for the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Model
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Drive model number|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### NativeBlockSizeBytes
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Native block size of the drive in bytes. This is the underlying sector size used by the physical drive to store data. For example, an advanced format drive that uses 4K sector sizes to store data will return 4K as the NativeBlockSizeBytes but may return 512 for the BlockSizeBytes when running in 512e (emulation) mode for backward compatibility|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PhyCount
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of phys the drive has|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PortCount
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of ports on the drive. Typically 1 (single-domain) or 2 (dual-domain)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PowerOnHours
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of lifetime hours that the drive has been powered on. The value is null if the disk power on hours cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### RotationalSpeedRpm
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The rotational speed of the drive, only applicable on HDDs|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SSDEnduranceUtilizationPercentage
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|This is the percentage of the drive that has been worn out and can no longer be used. When this values reaches 100%, the drive has 0% usage remaining and is completely worn out. The value is null if percent endurance used cannot be determined or is not supported.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SerialNumber
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The serial number of the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### SpareRebuildMode
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Method to used activate this drive when another drive fails, this is only applicable if the drive is configured as a spare drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Dedicated```|This drive will take over a failed drive temporarily. When the failed drive is replaced, this will return to being a spare. This drive be shared between arrays.|
|```Roaming```|This drive will permanently replace a failed drive. The failed drive will become a spare. This spare drive cannot be shared between arrays.|

### Status
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)
See the Redfish standard schema and specification for information on common Status object.

### TransferSpeedMbps
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Effective transfer speed to the device taking into account hardware acceleration such as edge-buffering|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### UncorrectedReadErrors
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of read errors that have occurred on a drive that could not be recovered by a drive's Error Correction Code (ECC) algorithm or through retries. Over time, a drive may produce these errors, and a problem may exist. The value increases every time the physical drive detects another error. The severity of these errors depends on if the drive is in a fault tolerant mode and the controller can remap data to eliminate problems.  If an increase in this counter is seen, run diagnostics on the drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### UncorrectedWriteErrors
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|The number of write errors that have occurred on a drive that could not be recovered through retries. Over time, a drive may produce these errors, and a problem may exist. The value increases every time the physical drive detects another error. If an increase in this counter is seen, run diagnostics on the drive.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.40|

### WWID
Member of [HpeSmartStorageDiskDrive.v2_1_0.HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)

| | |
|---|---|
|Description|Unique identifier for the device|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive
```@odata.type: "#HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive"```

The HpeSmartStorageLogicalDrive resource describes the properties of the HPE Smart Storage controller,drives,and volumes.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/smartstorage/arraycontrollers/{item}/logicaldrives/{item}/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Links/DataDrives```|Collection of [HpeSmartStorageDiskDrive](#hpesmartstoragediskdrive-v2_1_0-hpesmartstoragediskdrive)|

### AccelerationMethod
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The acceleration method of the logical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.20|

The following are the supported values:

|Value|Description|
|---|---|
|```None```|Logical drive acceleration is disabled|
|```ControllerCache```|Reads and writes to the logical drive are being cached by the controller.|
|```IOBypass```|For logical drives on SSDs, read and write information directly from the drive.|
|```SmartCache```|Reads and writes to the logical drive are being cached by a caching logical drive.|

### BlockSizeBytes
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The block size of the disk drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### CapacityMiB
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Total usable capacity available on this logical drive in MiB units|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveAccessName
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The access ID of the logical drive given by the OS|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometryCylinders
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of cylinders on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometryHeads
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of heads on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### DriveGeometrySectors
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The number of sectors on the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### InterfaceType
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The connection interface of the logical drive.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```SAS```|SAS|
|```SATA```|SATA|
|```Mixed```|Contains both SAS and SATA.|
|```NVMe```|NVMe|
|```Unknown```|Information is unavailable|

### LegacyBootPriority
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Primary```|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this logical drive. The logical drive will be listed as first in the LUN list returned via SCSI commands|
|```Secondary```|This indicates that the array controller should provide legacy boot support (Interrupt 13h BIOS support) for this logical drive. The logical drive will be listed as second in the LUN list returned via SCSI commands|
|```None```|Legacy boot not supported on this logical drive|

### LogicalDriveEncryption
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if encryption is currently enabled on this logical drive, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatile
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if volatile keys are enabled for encryption, false otherwise|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatileBackup
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|True if volatile keys are backed up to a remote key manager, false if volatile keys are not backed up|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveEncryptionDataKeysVolatileStatus
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The status of the encryption volatile keys|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```NoOp```|No operations are pending for the volatile keys|
|```BackupInProgress```|The volatile keys are being backed up to a remote key manager|
|```BackupAndSetInProgress```|The volatile keys are being set and being backed up to a remote key manager|
|```RestoreInProgress```|The volatile keys are being restored from a remote key manager|
|```DeleteInProgress```|The volatile keys are being removed|

### LogicalDriveName
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Label given to the logical drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveNumber
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|logical drive number|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### LogicalDriveStatusReasons (array)
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)
```LogicalDriveStatusReasons``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```Unknown```|The state of the logical drive is unknown|
|```Ok```|The logical drive is in normal operation mode|
|```Failed```|Indicates that more physical drives have failed than the fault tolerance mode of the logical drive can handle without data loss|
|```Unconfigured```|The logical drive is not configured|
|```Recovering```|The logical drive is using Interim Recovery Mode. In Interim Recovery Mode, at least one physical drive has failed, but the logical drive's fault tolerance mode lets the drive continue to operate with no data loss|
|```ReadyForRebuild```|The logical drive is ready for Automatic Data Recovery. A failed physical drive has been replaced, but the logical drive is still operating in Interim Recovery Mode|
|```Rebuilding```|The logical drive is currently doing Automatic Data Recovery, where fault tolerance algorithms restore data to the replacement drive|
|```WrongDrive```|The wrong physical drive was replaced after a failure|
|```BadConnect```|A physical drive is not responding|
|```Overheating```|The drive array enclosure that contains the logical drive is overheating. The drive array is still functional, but should be shutdown|
|```Shutdown```|The drive array enclosure that contains the logical drive has overheated. The logical drive is no longer functional|
|```Expanding```|The logical drive is currently undergoing a transformation (expansion, shrinkage or movement). During transformation, fault tolerance algorithms redistribute logical drive data according to the transformation operation selected|
|```NotAvailable```|The logical drive is currently unavailable. If a logical drive is expanding and the new configuration frees additional disk space, this free space can be configured into another logical volume. If this is done, the new volume will be set to not available|
|```QueuedForExpansion```|The logical drive is ready for transformation (expansion, shrinkage or movement). The logical drive is in the queue for transformation|
|```MultipathAccessDegraded```|Previously all disk drives of this logical drive had more than one I/O path to the controller, but now one or few of them have only one I/O path|
|```Erasing```|The logical drive is currently being erased|
|```PredictiveSpareRebuildReady```|The logical drive is ready to perform a predictive spare rebuild. The logical drive is in the queue for rebuild|
|```RapidParityInitInProgress```|The logical drive is currently undergoing rapid parity initialization (RPI). The logical drive is unavailable to the operating system during RPI and will be made available once RPI has completed|
|```RapidParityInitPending```|The logical drive is currently pending RPI and will be unavailable|
|```NoAccessEncryptedNoControllerKey```|The logical drive is currently encrypted and cannot be accessed because the array controller has not yet received the encryption key nor was it found in the controller's CSP NVRAM|
|```UnencryptedToEncryptedInProgress```| The logical drive is currently being transformed from unencrypted to encrypted and the volume is online. Data will be written unencrypted if the write is directed to an LBA range on th e logical drive that has not yet been migrated|
|```NewKeyRekeyInProgress```|The logical drive is currently encrypted and all data is currently being rekeyed with a new logical drive key using the background capacity expansion transformation task. The logical drive is online|
|```NoAccessEncryptedControllerEncryptionNotEnabled```|The logical drive is currently encrypted and cannot be accessed because the array controller does not have encryption enabled|
|```UnencryptedToEncryptedNotStarted```|The logical drive has received a request to transform from unencrypted to encrypted but this process has not yet started. The unencrypted logical drive is currently online|
|```NewLogDrvKeyRekeyRequestReceived```|The logical drive is encrypted and has received a request to rekey all data with a new logical drive encryption key. The logical drive is online|
|```Unsupproted```|The state of the logical drive is unsupported|
|```Offline```|Logical volume is comprised of  one or more Locked SEDs. Volume is offline|
|```SEDQualinprogress```|Logical volume SED Qualification is in progress|
|```SEDQualFailed```|Logical volume SED Qualification failed|

### LogicalDriveType
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|How the logical drive is being used|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Data```|The drive is being used as a storage drive|
|```Cache```|The drive is being used as a cache drive for a different storage drive|
|```SplitMirrorSetPrimary```|This drive is being used as the primary storage drive of a split mirror set after a Split Mirror Array has been performed|
|```SplitMirrorSetBackup```|This drive is being used as the backup storage drive of a split mirror set after a Split Mirror Array has been performed|
|```SplitMirrorSetBackupOrphan```|This drive was being used as the backup storage drive of a split mirror set that no longer exists|

### MediaType
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Type of the disk this logical drive is associated with.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```HDD```|Spinning disk hard drive.|
|```SSD```|Solid state disk.|
|```SMR```|Shingled Magnetic Recording.|
|```Mixed```|Contains both HDD and SSD.|
|```Unknown```|Information is unavailable|

### ParityInitializationCompletionPercentage
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|Parity initialization complete percentage for a parity based logical drive (e.g. RAID 5)|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ParityInitializationType
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|When creating a logical drive with a RAID level that requires parity, parity blocks can be initialized with two different methods|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Default```|Parity blocks are initialized in the background and the logical drive is available during this time|
|```Rapid```|Both data and parity blocks are initialized in the foreground and the logical drive will not be available to the operating system until initialization completes|

### PartitionInformation
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|OS partition information for the drive|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Raid
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The current RAID level configured on the logical drive|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```0```|There is no fault tolerance used on this logical drive|
|```1```|Two sets of duplicate data is being stored on a pair of drives|
|```1ADM```|Three sets of duplicate data is being stored on a trio of drives|
|```10```|Data is duplicated and striped across pairs of disk drives|
|```10ADM```|Data is duplicated and striped across trios of disk drives|
|```5```|Fault tolerance is achieved by storing parity data across 3 or more disk drives|
|```50```|Fault tolerance is achieved by storing parity data and striping the data across 6 or more disk drives|
|```6```|Fault tolerance is achieved by storing multiple sets parity data across 4 or more disk drives|
|```60```|Fault tolerance is achieved by storing multiple sets parity data and striping the data across 8 or more disk drives|

### RebuildCompletionPercentage
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The percent complete for a rebuild operation currently occurring on the logical drive|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SmartCacheState
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The state of the SmartCache cache. This is valid if this drive either is a cache drive, or has a cache drive attached to it|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Good```|The cache is functioning properly|
|```Limited```|The cache is functioning in a degraded mode, and may not be functioning at maximum performance|
|```DDRUnsafe```|The DDR is unsafe for the cache drive|
|```CacheLUNOffline```|The cache drive is offline|
|```PrimaryLUNOffline```|The primary logical drive that is being cached is offline|
|```Destroyed```|The cache is destroyed and not functional|
|```Flushing```|The cache drive is flushing|
|```Configuring```|The caching pair is being configured|
|```PairFailAtPowerup```|The primary and cache drive were unable to be paired at powerup|
|```Unknown```|The state of the cache is unknown|

### Status
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)
See the Redfish standard schema and specification for information on common Status object.

### StripSizeBytes
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The strip size of the logical drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### StripeSizeBytes
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The stripe size of the logical drive in bytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### TransformationCompletionPercentage
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|The percent complete for any transformations the logical drive may be undergoing such as RAID migration, stripesize migration, capacity expansion etc.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### VolumeUniqueIdentifier
Member of [HpeSmartStorageLogicalDrive.v2_3_0.HpeSmartStorageLogicalDrive](#hpesmartstoragelogicaldrive-v2_3_0-hpesmartstoragelogicaldrive)

| | |
|---|---|
|Description|An identifier (typically SCSI Inquiry based such as Inquiry VPD Page 0x83 NAA 64 identifier) used to uniquely identify this volume.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeUSBDevice.v2_0_0.HpeUSBDevice
```@odata.type: "#HpeUSBDevice.v2_0_0.HpeUSBDevice"```

The HpeUSBDevice resource describes the properties of USB devices.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/usbdevices/{item}/```|GET |

### DeviceCapacityMB
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|USB device usable capacity (if applicable) in Mbytes|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceClass
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|USB device Class code as defined by the USB HID device specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceName
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|USB device name in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceProtocol
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|Protocol code as defined by the USB HID specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### DeviceSubClass
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|USB device SubClass code as defined by the USB HID device specification.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|Location of the USB device on the server|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### ProductID
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|USB product ID as defined by manufacturer.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### StructuredName
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|USB device structured name in UTF-8 format.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UEFIDevicePath
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|UEFI device path of USB device. Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### VendorID
Member of [HpeUSBDevice.v2_0_0.HpeUSBDevice](#hpeusbdevice-v2_0_0-hpeusbdevice)

| | |
|---|---|
|Description|Vendor ID of detected USB device.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeUSBPort.v2_0_0.HpeUSBPort
```@odata.type: "#HpeUSBPort.v2_0_0.HpeUSBPort"```

The HpeUSBPort resource describes the properties of USB ports.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/usbports/{item}/```|GET |

### InstanceNumber
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|Instance number of the USB Port|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### Location
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|Location of the USB Device on the server|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```Back```|Located on the rear panel of the server.|
|```Front```|Located on the front bezel of the server.|
|```Internal```|Located internally within the server chassis.|
|```InternalManagement```|Internal management media.|
|```InternalSDCard```|The internal SD-Card slot.|
|```iLOManagement```|iLO virtual USB devices.|

### PCIBusNumber
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|PCI Bus number of the USB controller that controls this USB port |
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PCIDeviceNumber
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|PCI Device Number of the USB Controller that controls this USB Port.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### PCIFunctionNumber
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|PCI Function Number of the USB Controller that controls this USB Port.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### ParentHubInstance
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|Parent Hub Instance that provides an instance number of the internal hub this USB Port is connected to.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### SharedCapability
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|Shared Capability of the USB Port|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```UnsharedManagement```|Not shared as a Management Port.|
|```SharedManagementPhysicalSwitch```|Shared management port w/ physical switch to control whether muxed to iLO or host.|
|```SharedManagementPortAutomaticControl```||

### SpeedCapability
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|USB speed capability of the USB port as configured by the BIOS during POST.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```USB1FullSpeed```|USB 1.0 Full Speed|
|```USB2HighSpeed```|USB 2.0 High Speed|
|```USB3SuperSpeed```|USB 3.x SuperSpeed|

### UEFIDevicePath
Member of [HpeUSBPort.v2_0_0.HpeUSBPort](#hpeusbport-v2_0_0-hpeusbport)

| | |
|---|---|
|Description|UEFI Device Path of USB Endpoint. Standardized text representation of the UEFI device path, in UTF-8 format|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor
```@odata.type: "#HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor"```

The HpeWorkloadPerformanceAdvisor resource describes the properties for managing the HPE Workload Performance Advisor.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/workloadperformanceadvisor/{item}/```|GET |

### Duration
Member of [HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|Specifies the duration over which the workload performance advisor is computed.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

### PerformanceTuningOption (array)
Member of [HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)
```PerformanceTuningOption``` is an array containing elements of:

**PerformanceTuningOption[{item}].BIOSAttributeName**
Member of [HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The attribute name of the BIOS settings.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**PerformanceTuningOption[{item}].RecommendedValue**
Member of [HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|Recommended value for the corresponding BIOS attribute. Please refer to BIOS attribute registry schema for more information.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

### WorkloadCharacteristics (array)
Member of [HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)
```WorkloadCharacteristics``` is an array containing elements of:

**WorkloadCharacteristics[{item}].MetricId**
Member of [HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The id of the metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**WorkloadCharacteristics[{item}].MetricValue**
Member of [HpeWorkloadPerformanceAdvisor.v1_0_0.HpeWorkloadPerformanceAdvisor](#hpeworkloadperformanceadvisor-v1_0_0-hpeworkloadperformanceadvisor)

| | |
|---|---|
|Description|The workload utilization of the metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Low```|Utilization is low.|
|```Medium```|Utilization is medium.|
|```High```|Utilization is high.|

## JsonSchemaFile.v1_0_4.JsonSchemaFile
```@odata.type: "#JsonSchemaFile.v1_0_4.JsonSchemaFile"```

The JSON Schema File resource describes the location (URI) of a particular Redfish schema definition being implemented or referenced by a Redfish service.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/jsonschemas/{item}/```|GET |

### Languages (array)
Member of [JsonSchemaFile.v1_0_4.JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)
```Languages``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

### Location (array)
Member of [JsonSchemaFile.v1_0_4.JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)
```Location``` is an array containing elements of:

**Location[{item}].Language**
Member of [JsonSchemaFile.v1_0_4.JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)

| | |
|---|---|
|Description|The RFC 5646 language code for this schema or registry item.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Location[{item}].Uri**
Member of [JsonSchemaFile.v1_0_4.JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)

| | |
|---|---|
|Description|Link to locally available URI for schema.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|uri-reference|

### Schema
Member of [JsonSchemaFile.v1_0_4.JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)

| | |
|---|---|
|Description|The typename this schema describes.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## LogService.v1_0_0.LogService
```@odata.type: "#LogService.v1_0_0.LogService"```

This resource contains properties for monitoring and configuring an event log service for the resource or service to which it is associated.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/managers/{item}/logservices/iel/```|GET POST |
|```/redfish/v1/systems/{item}/logservices/iml/```|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Entries```|LogEntryCollection|

### Entries
The URI to this log entries collection resource.
Entries is a link (```"@odata.id": URI```) to another resource.

### MaxNumberOfRecords
Member of [LogService.v1_0_0.LogService](#logservice-v1_0_0-logservice)

| | |
|---|---|
|Description|The maximum number of log entries.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

### OverWritePolicy
Member of [LogService.v1_0_0.LogService](#logservice-v1_0_0-logservice)

| | |
|---|---|
|Description|When the log is full, the overwrite policy is enforced.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Unknown```|The overwrite policy is not known or is undefined.|
|```WrapsWhenFull```|When the log is full, new entries will overwrite previous entries.|
|```NeverOverwrites```|When the log is full, new entries are discarded.|

### Actions

**LogService.ClearLog**
Member of [LogService.v1_0_0.LogService](#logservice-v1_0_0-logservice)
There are no parameters for this action.
## MemoryCollection.MemoryCollection
```@odata.type: "#MemoryCollection.MemoryCollection"```

A Collection of Memory resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/memory/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[Memory](#memory-v1_7_1-memory)|

### Members (array)
Member of MemoryCollection.MemoryCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.AmpModeActive
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Unknown```|The management software cannot determine the AMP, host OS may not have provided it yet.|
|```Other```||
|```None```|The management software cannot determine the AMP, or the system is not configured for AMP.|
|```Mirroring```|The system is configured for mirrored memory protection. All memory banks are duplicated in mirrored memory, as opposed to only one for online spare memory. If enough ECC errors occur, the spare memory is activated and the memory that is experiencing the errors is disabled.|
|```OnlineSpare```|A single spare bank of memory is set aside at boot time. If enough ECC errors occur, the spare memory is activated and the memory that is experiencing the errors is disabled.|
|```RAIDXOR```|The system is configured for AMP with the XOR engine.|
|```AdvancedECC```|The system is configured for AMP with the Advanced ECC engine.|
|```Lockstep```||
|```A3DC```|The system is configured for AMP with A3DC.|
|```DIMMECC```|The system is configured for AMP with DIMM ECC (Error Correcting Code) only.|

### Oem.Hpe.AmpModeStatus
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Unknown```|The management software cannot determine the status, host OS may not have provided it yet.|
|```Other```|The system does not support AMP, or the management software cannot determine the status.|
|```NotProtected```|The system supports AMP, but the feature is disabled.|
|```Protected```|The system supports AMP. The feature is enabled but not engaged.|
|```Degraded```|The system was protected, but AMP is engaged. Therefore, AMP is no longer available.|
|```DIMMECC```|The system is protected by DIMM ECC (Error Correcting Code) only.|
|```Mirroring```|The system is protected by AMP in the mirrored mode. No DIMM faults have been detected.|
|```DegradedMirroring```|The system is protected by AMP in the mirrored mode. One or more DIMM faults have been detected.|
|```OnlineSpare```|The system is protected by AMP in the hot spare mode. No DIMM faults have been detected.|
|```DegradedOnlineSpare```||
|```RAIDXOR```|The system is protected by AMP in the XOR memory mode. No DIMM faults have been detected.|
|```DegradedRAIDXOR```|The system is protected by AMP in the XOR memory mode. One or more DIMM faults have been detected.|
|```AdvancedECC```|The system is protected by AMP in the Advanced ECC mode.|
|```DegradedAdvancedECC```|The system is protected by AMP in the Advanced ECC mode. One or more DIMM faults have been detected.|
|```Lockstep```||
|```DegradedLockstep```||
|```A3DC```|The system is protected by AMP in the A3DC mode.|
|```DegradedA3DC```|The system is protected by AMP in the A3DC mode. One or more DIMM faults have been deteced.|

### Oem.Hpe.AmpModeSupported (array)
Member of MemoryCollection.MemoryCollection
```AmpModeSupported``` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```RAIDXOR```|The system can be configured for AMP using the XOR engine.|
|```DualBoardMirroring```|The system can be configured for mirrored advanced memory protection in a dual memory board configuration. The mirrored memory can be swapped with memory on the same memory board or with memory on the second memory board.|
|```SingleBoardMirroring```|The system can be configured for mirrored advanced memory protection in a single memory board.|
|```AdvancedECC```|The system can be configured for Advanced ECC.|
|```Mirroring```|The system can be configured for mirrored AMP.|
|```OnlineSpare```|The system can be configured for online spare AMP.|
|```OnlineSpareRank```|The system can be configured for Online Spare Rank AMP.|
|```OnlineSpareChannel```|The system can be configured for Online Spare Channel AMP.|
|```IntersocketMirroring```|The system can be configured for mirrored intersocket AMP between the memory of two processors or boards.|
|```IntrasocketMirroring```|The system can be configured for mirrored intrasocket AMP between the memory of a single processor or board.|
|```Lockstep```||
|```A3DC```|The system can be configured for A3DC.|
|```None```|The system cannot be configured for AMP.|
|```DIMMECC```|The system can be configured for DIMM ECC (Error Correcting Code) only.|

### Oem.Hpe.MemoryList (array)
Member of MemoryCollection.MemoryCollection
```MemoryList``` is an array containing elements of:

**MemoryList[{item}].BoardCpuNumber**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Type|integer or null|
|Read Only|True|

**MemoryList[{item}].BoardNumberOfSockets**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The number of present memory module sockets.|
|Type|integer or null|
|Read Only|True|

**MemoryList[{item}].BoardOperationalFrequency**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The frequency at which memory on the board is operating in MHz.|
|Type|integer or null|
|Read Only|True|

**MemoryList[{item}].BoardOperationalVoltage**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The voltage at which memory on the board is operating in mV.|
|Type|integer or null|
|Read Only|True|

**MemoryList[{item}].BoardTotalMemorySize**
Member of MemoryCollection.MemoryCollection

| | |
|---|---|
|Description|The total size of the memory populated on the board in MB.|
|Type|integer or null|
|Read Only|True|

## MessageRegistryFile.v1_0_4.MessageRegistryFile
```@odata.type: "#MessageRegistryFile.v1_0_4.MessageRegistryFile"```

The MessageRegistryFile resource describes the Schema File locator resource.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/registries/{item}/```|GET |

### Languages (array)
Member of [MessageRegistryFile.v1_0_4.MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)
```Languages``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

### Location (array)
Member of [MessageRegistryFile.v1_0_4.MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)
```Location``` is an array containing elements of:

**Location[{item}].Language**
Member of [MessageRegistryFile.v1_0_4.MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)

| | |
|---|---|
|Description|The RFC 5646 language code for this schema or registry item.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

**Location[{item}].Uri**
Member of [MessageRegistryFile.v1_0_4.MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)

| | |
|---|---|
|Description|Link to locally available URI for schema.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|
|Format|uri-reference|

### Registry
Member of [MessageRegistryFile.v1_0_4.MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)

| | |
|---|---|
|Description|The Registry Name, Major and Minor version used in MessageID construction.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.15|

## MetricDefinition.v1_0_0.MetricDefinition
```@odata.type: "#MetricDefinition.v1_0_0.MetricDefinition"```

The metadata information about a metric.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/telemetryservice/metricdefinitions/cpuutil/```|GET |

### Calculable
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|The types of calculations which can be applied to the metric reading.  This property provides information to the client on the suitability of calculatiion using the metric reading.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```NonCalculatable```|No calculations should be performed on the metric reading.|
|```Summable```|The sum of the metric reading across multiple instances is meaningful.|
|```NonSummable```|The sum of the metric reading across multiple instances is not meaningful.|

### CalculationAlgorithm
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|The calculation which is performed on a source metric to obtain the metric being defined.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Average```|The metric is calculated as the average of a metric reading over a sliding time interval.|
|```Maximum```|The metric is calculated as the maximum value of a metric reading over during a time interval.|
|```Minimum```|The metric is calculated as the minimum value of a metric reading over a sliding time interval.|

### Implementation
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|The implementation of the metric.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```PhysicalSensor```|The metric is implemented as a physical sensor.|
|```Calculated```|The metric is implemented by applying a calculation on another metric property.  The calculation is specified in the CalculationAlgorithm property.|
|```Synthesized```|The metric is implemented by applying a calculation on one or more metric properties.  (The calculation is not specified.  For expressing generalized formula, see MathSON).|
|```DigitalMeter```|The metric is implemented as digital meter.|

### IsLinear
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|Indicates whether the metric values are linear (vs non-linear).|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.40|

### MaxReadingRange
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|Maximum value for metric reading.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.40|

### MetricDataType
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|The data type of the related metric values.  The property provides information to the client on the nature of the metric reading.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Boolean```|The data type follows the JSON Boolean definition.|
|```DateTime```|The data type follows the JSON String definition with the Date-Time format applied.|
|```Decimal```|The data type follows the JSON Decimal definition.|
|```Integer```|The data type follows the JSON Integer definition.|
|```String```|The data type follows the JSON String definition.|
|```Enumeration```|The data type follows the JSON String definition with a set of enumerations defined.|

### MetricProperties (array)
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)
```MetricProperties``` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### MetricType
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|Specifies the type of metric provided.  The property provides information to the client on how the metric can be handled.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Numeric```|The metric is a numeric metric.  The metric value is any real number.|
|```Discrete```|The metric is a discrete metric.  The metric value is discrete.  The possible values are listed in the DiscreteValues property.|
|```Gauge```|The metric is a gauge metric.  The metric value is a real number.  When the metric value reaches the gauges extrema, it stays at that value, until the reading falls within the extrema.|
|```Counter```|The metric is a counter metric.  The metric reading is a non-negative integer which increases monotonically.  When a counter reaches its maximum, the value resets to 0 and resumes counting.|
|```Countdown```|The metric is a countdown metric.  The metric reading is a non-negative integer which decreases monotonically.  When a counter reaches its minimum, the value resets to preset value and resumes counting down.|

### MinReadingRange
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|Minimum value for metric reading.|
|Type|number or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Units
Member of [MetricDefinition.v1_0_0.MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)

| | |
|---|---|
|Description|The units of measure for this metric.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

## MetricReport.v1_0_0.MetricReport
```@odata.type: "#MetricReport.v1_0_0.MetricReport"```

The metric definitions used to create a metric report.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/telemetryservice/metricreports/cpuutilcustom1/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```MetricReportDefinition```|[MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)|
|```MetricValues[]/MetricDefinition```|[MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)|

### MetricReportDefinition
The metric definitions used to create a metric report.
MetricReportDefinition is a link (```"@odata.id": URI```) to another resource.

### MetricValues (array)
Member of [MetricReport.v1_0_0.MetricReport](#metricreport-v1_0_0-metricreport)
```MetricValues``` is an array containing elements of:

**MetricValues[{item}].MetricDefinition**
A link to the Metric Definition.
MetricDefinition is a link (```"@odata.id": URI```) to another resource.

**MetricValues[{item}].MetricId**
Member of [MetricReport.v1_0_0.MetricReport](#metricreport-v1_0_0-metricreport)

| | |
|---|---|
|Description|The metric definitions identifier for this metric.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**MetricValues[{item}].MetricValue**
Member of [MetricReport.v1_0_0.MetricReport](#metricreport-v1_0_0-metricreport)

| | |
|---|---|
|Description|The value identifies this resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**MetricValues[{item}].Timestamp**
Member of [MetricReport.v1_0_0.MetricReport](#metricreport-v1_0_0-metricreport)

| | |
|---|---|
|Description|The time when the value of the metric is obtained.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

## MetricReportDefinition.v1_0_0.MetricReportDefinition
```@odata.type: "#MetricReportDefinition.v1_0_0.MetricReportDefinition"```

A set of metrics that are collected into a metric report.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/telemetryservice/metricreportdefinitions/cpuutilcustom1/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```MetricReport```|[MetricReport](#metricreport-v1_0_0-metricreport)|

### MetricProperties (array)
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)
```MetricProperties``` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### MetricReport
Specifies the location where the resultant metric report is placed.
MetricReport is a link (```"@odata.id": URI```) to another resource.

### MetricReportDefinitionType
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)

| | |
|---|---|
|Description|Indicates when the metric report is generated.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Periodic```|The metric report is generated at a periodic time interval, specified in the Schedule property.|
|```OnChange```|The metric report is generated when any of the metric values change.|
|```OnRequest```|The metric report is generated when a HTTP GET is performed on the specified metric report.|

### Metrics (array)
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)
```Metrics``` is an array containing elements of:

**Metrics[{item}].CollectionDuration**
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)

| | |
|---|---|
|Description|Specifies the duration over which the function is computed.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**Metrics[{item}].CollectionFunction**
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)

| | |
|---|---|
|Description|Specifies the function to apply to the list of metric properties.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Average```|The metric is calculated as the average of a metric reading over a sliding time interval.|
|```Maximum```|The metric is calculated as the maximum value of a metric reading over during a time interval.|
|```Minimum```|The metric is calculated as the minimum value of a metric reading over a sliding time interval.|
|```Summation```|The metric is calculated as the sum of the values over a sliding time interval.|

**Metrics[{item}].CollectionTimeScope**
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)

| | |
|---|---|
|Description|The time scope of the related metric values.|
|Type|string|
|Read Only|False|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Point```|The corresponding metric values apply to a point in time.  On the corresponding metric value instances, the value of Timestamp shall specify the point in time.|
|```Interval```|The corresponding metric values apply to a time interval.  On the corresponding metric value instances, the value of Timestamp shall specify the end of the time interval and Duration shall specify its duration.|
|```StartupInterval```|The corresponding metric values apply to a time interval that began at the startup of the measured resource (i.e. the Resources associated by Links.MetricDefinitionForResources).  On the corresponding metric value instances, the value of Timestamp shall specify the end of the time interval.  The value of Duration shall specifies the duration between startup of the resource and TimeStamp.|

**Metrics[{item}].MetricId**
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)

| | |
|---|---|
|Description|Specifies the label for the metric definition which is derived by applying the CollectionFunction to the metric property.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

**Metrics[{item}].MetricProperties (array)**
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)
```MetricProperties``` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### Status
Member of [MetricReportDefinition.v1_0_0.MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)
See the Redfish standard schema and specification for information on common Status object.

## NetworkAdapterCollection.NetworkAdapterCollection
```@odata.type: "#NetworkAdapterCollection.NetworkAdapterCollection"```

A Collection of NetworkAdapter resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/chassis/{item}/networkadapters/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[NetworkAdapter](#networkadapter-v1_4_0-networkadapter)|

### Members (array)
Member of NetworkAdapterCollection.NetworkAdapterCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.MemberContents
Member of NetworkAdapterCollection.NetworkAdapterCollection

| | |
|---|---|
|Description|Provides the discovery status of this collection.  For some server platforms, only partial device discovery is possible under auxiliary power.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```AllDevices```|The server state allows complete device discovery.  All installed devices are listed as members.|
|```AuxPowerDevices```|The server architecture may not support power to all installed devices in the current auxiliary power state. Only devices capable of operating in this power state are listed as members.  Additional devices may be listed when the server is fully powered.|

## NetworkInterface.v1_1_1.NetworkInterface
```@odata.type: "#NetworkInterface.v1_1_1.NetworkInterface"```

A NetworkInterface contains references linking NetworkAdapter, NetworkPort, and NetworkDeviceFunction resources and represents the functionality available to the containing system.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/networkinterfaces/dc07b000/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Links/NetworkAdapter```|[NetworkAdapter](#networkadapter-v1_4_0-networkadapter)|
|```NetworkDeviceFunctions```|Collection of [NetworkDeviceFunction](#networkdevicefunction-v1_3_0-networkdevicefunction)|
|```NetworkPorts```|Collection of [NetworkPort](#networkport-v1_2_5-networkport)|

### NetworkDeviceFunctions
link to collection of membertype NetworkDeviceFunction. The collection of device functions avaliable on this network interface.
NetworkDeviceFunctions is a link (```"@odata.id": URI```) to another resource.

### NetworkPorts
Link to a collection of membertype NetworkPort. The collection of ports avaliable on this network interface.
NetworkPorts is a link (```"@odata.id": URI```) to another resource.

### Status
Member of [NetworkInterface.v1_1_1.NetworkInterface](#networkinterface-v1_1_1-networkinterface)
See the Redfish standard schema and specification for information on common Status object.

## NetworkInterfaceCollection.NetworkInterfaceCollection
```@odata.type: "#NetworkInterfaceCollection.NetworkInterfaceCollection"```

A Collection of NetworkInterface resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/networkinterfaces/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[NetworkInterface](#networkinterface-v1_1_1-networkinterface)|

### Members (array)
Member of NetworkInterfaceCollection.NetworkInterfaceCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

### Oem.Hpe.MemberContents
Member of NetworkInterfaceCollection.NetworkInterfaceCollection

| | |
|---|---|
|Description|Provides the discovery status of this collection.  For some server platforms, only partial device discovery is possible under auxiliary power.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Null```|A value is temporarily unavailable|
|```AllDevices```|The server state allows complete device discovery.  All installed devices are listed as members.|
|```AuxPowerDevices```|The server is in the auxiliary power state and only devices capable of operating in this power state are listed as members.  Additional devices may be listed when the server is fully powered.|

## SecureBoot.v1_0_0.SecureBoot
```@odata.type: "#SecureBoot.v1_0_0.SecureBoot"```

This resource contains UEFI Secure Boot information. It represents properties for managing the UEFI Secure Boot functionality of a system.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/systems/{item}/secureboot/```|GET POST PATCH |

### SecureBootCurrentBoot
Member of [SecureBoot.v1_0_0.SecureBoot](#secureboot-v1_0_0-secureboot)

| | |
|---|---|
|Description|Secure Boot state during the current boot cycle.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```Enabled```|Secure Boot is currently enabled.|
|```Disabled```|Secure Boot is currently disabled.|

### SecureBootEnable
Member of [SecureBoot.v1_0_0.SecureBoot](#secureboot-v1_0_0-secureboot)

| | |
|---|---|
|Description|Enable or disable UEFI Secure Boot (takes effect on next boot).|
|Type|boolean or null|
|Read Only|False|
|Added|iLO 5 1.10|

### SecureBootMode
Member of [SecureBoot.v1_0_0.SecureBoot](#secureboot-v1_0_0-secureboot)

| | |
|---|---|
|Description|Current Secure Boot Mode.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|Description|
|---|---|
|```SetupMode```|Secure Boot is currently in Setup Mode.|
|```UserMode```|Secure Boot is currently in User Mode.|
|```AuditMode```|Secure Boot is currently in Audit Mode.|
|```DeployedMode```|Secure Boot is currently in Deployed Mode.|

### Actions

**SecureBoot.ResetKeys**
Member of [SecureBoot.v1_0_0.SecureBoot](#secureboot-v1_0_0-secureboot)
Action to perform reset of the Secure Boot Keys.


**Parameters:**

**ResetKeysType (string)**

This parameter specifies what type of reset action to perform.

|Value|Description|
|---|---|
|DeleteAllKeys|Delete all Secure Boot keys on next boot.|
|DeletePK|Delete Secure Boot platform keys on next boot.|
|ResetAllKeysToDefault|Reset to default Secure Boot keys on next boot.|
## ServiceRoot.v1_5_1.ServiceRoot
```@odata.type: "#ServiceRoot.v1_5_1.ServiceRoot"```

The ServiceRoot resource describes the Redfish API service root.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1```|GET |
|```/redfish/v1/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```AccountService```|[AccountService](#accountservice-v1_5_0-accountservice)|
|```CertificateService```|[CertificateService](#certificateservice-v1_0_3-certificateservice)|
|```Chassis```|Collection of [Chassis](#chassis-v1_10_2-chassis)|
|```EventService```|[EventService](#eventservice-v1_0_8-eventservice)|
|```JsonSchemas```|Collection of [JsonSchemaFile](#jsonschemafile-v1_0_4-jsonschemafile)|
|```Links/Sessions```|Collection of [Session](#session-v1_0_0-session)|
|```Managers```|Collection of [Manager](#manager-v1_5_1-manager)|
|```Oem/Hpe/Links/ResourceDirectory```|[HpeiLOResourceDirectory](#hpeiloresourcedirectory-v2_0_0-hpeiloresourcedirectory)|
|```Registries```|Collection of [MessageRegistryFile](#messageregistryfile-v1_0_4-messageregistryfile)|
|```SessionService```|[SessionService](#sessionservice-v1_0_0-sessionservice)|
|```Systems```|Collection of [ComputerSystem](#computersystem-v1_10_0-computersystem)|
|```Tasks```|[TaskService](#taskservice-v1_1_1-taskservice)|
|```TelemetryService```|[TelemetryService](#telemetryservice-v1_0_0-telemetryservice)|
|```UpdateService```|[UpdateService](#updateservice-v1_1_1-updateservice)|

### AccountService
The URI to this account service resource.
AccountService is a link (```"@odata.id": URI```) to another resource.

### CertificateService
The URI to the certificate service resource.
CertificateService is a link (```"@odata.id": URI```) to another resource.

### Chassis
The URI to this chassis resource.
Chassis is a link (```"@odata.id": URI```) to another resource.

### EventService
The URI to the event service resource.
EventService is a link (```"@odata.id": URI```) to another resource.

### JsonSchemas
The URI to this registries resource.
JsonSchemas is a link (```"@odata.id": URI```) to another resource.

### Managers
The URI to this managers resource.
Managers is a link (```"@odata.id": URI```) to another resource.

### Oem.Hpe.DebugCode
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether the iLO has debug firmware flashed.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

### Oem.Hpe.DevSystem
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether the test key is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.20|

### Oem.Hpe.Manager (array)
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)
```Manager``` is an array containing elements of:

**Manager[{item}].Blade**
**Manager[{item}].Blade.BayNumber**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies the location of the blade in the enclosure.|
|Type|string|
|Read Only|True|

**Manager[{item}].Blade.EnclosureName**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies the name of the enclosure in which the blade is present.|
|Type|string|
|Read Only|True|

**Manager[{item}].Blade.RackName**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies the name of the rack in which the enclosure is present.|
|Type|string|
|Read Only|True|

**Manager[{item}].DefaultLanguage**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Default language used for the Web interface.|
|Type|string|
|Read Only|True|

**Manager[{item}].FQDN**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Fully qualified domain name of the management processor.|
|Type|string or null|
|Read Only|True|

**Manager[{item}].HostName**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The name of management processor.|
|Type|string or null|
|Read Only|True|

**Manager[{item}].IPManager**
**Manager[{item}].Languages (array)**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)
```Languages``` is an array containing elements of:

**Languages[{item}].Language**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies one of the languages supported by the management processor.|
|Type|string|
|Read Only|True|

**Languages[{item}].TranslationName**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies one of the languages supported by the management processor.|
|Type|string|
|Read Only|True|

**Languages[{item}].Version**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies the version of the management processor in the respective language.|
|Type|string|
|Read Only|True|

**Manager[{item}].ManagerFirmwareVersion**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The major and minor management processor version numbers.|
|Type|string|
|Read Only|True|

**Manager[{item}].ManagerFirmwareVersionPass**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The build or pass number of the management processor version.|
|Type|string|
|Read Only|True|

**Manager[{item}].ManagerType**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The type of the service manager.|
|Type|string|
|Read Only|True|

**Manager[{item}].SelfTestErrors (array)**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)
```SelfTestErrors``` is an array containing elements of:

**SelfTestErrors[{item}].SelfTestName**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|iLO Self Test Name.|
|Type|string|
|Read Only|True|

**Manager[{item}].Status**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.Moniker
**Oem.Hpe.Moniker.ADVLIC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Optional Licensed functionality tier name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.BMC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Generic abbreviation for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.BSYS**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Product category name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.CLASS**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Management processor product category.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.FEDGRP**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Default federation group name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.IPROV**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Product name for provisioning and deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODABR**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Abbreviated product name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODFAM**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Full product family.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODGEN**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Abbreviated product name and generation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODNAM**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Full product name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.PRODTAG**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Branded, abbreviated product name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.STDLIC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Base licensed functionality tier name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.SUMABR**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Acronym for update deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.SUMGR**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Product name for update deployment suite.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.SYSFAM**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Host system product family.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.SYSMGMT**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|System Management Experience.|
|Type|string|
|Read Only|True|

**Oem.Hpe.Moniker.VENDABR**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Abbreviated vendor name (like stock ticker).|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.VENDNAM**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Full vendor name.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.VNIC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Virtual USB network interface to BMC name.|
|Type|string|
|Read Only|True|

**Oem.Hpe.Moniker.WWW**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Top level public internet vendor URI.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWAHSV**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Active Health viewer.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWBMC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWDOC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor documentation / manuals.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWERS**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Embedded Remote Support.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWGLIS**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for management processor licensing infrastructure.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWINFOSIGHT**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet resource for active health.|
|Type|string|
|Read Only|True|

**Oem.Hpe.Moniker.WWWIOL**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Online Insight service.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWLIC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWLML**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Learn More Links.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWPASS**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for accessing support account.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWPRV**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for privacy policy statement.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWQSPEC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for Quick Specs.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWRESTDOC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for REST API documentation.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWSUP**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for management processor and product support.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Moniker.WWWSWLIC**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Public internet vendor URI for vendor software licensing.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.PreProd
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether the system identifies as pre-production.|
|Type|boolean|
|Read Only|True|

### Oem.Hpe.Sessions
**Oem.Hpe.Sessions.CertCommonName**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The name of the management processor as it appears in the digital certificate when a secure web GUI session is established to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.CertificateLoginEnabled**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether Certificate login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.KerberosEnabled**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether Kerberos login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LDAPAuthLicenced**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether a valid license is installed for LDAP use.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LDAPEnabled**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether LDAP login is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LocalLoginEnabled**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether local users can log in.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LoginFailureDelay**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The delay (seconds) when a management processor login attempt has failed.|
|Type|integer|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LoginHint**
**Oem.Hpe.Sessions.LoginHint.Hint**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The information on how to log in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LoginHint.HintPOSTData**
**Oem.Hpe.Sessions.LoginHint.HintPOSTData.Password**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The password for logging in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.LoginHint.HintPOSTData.UserName**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The user name for logging in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.SecurityMessage**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The login security banner message that is displayed on the management processor Login page.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.SecurityOverride**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Specifies whether the security override switch is enabled.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Sessions.ServerName**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The name of the server that this management processor is managing.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.System (array)
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)
```System``` is an array containing elements of:

**System[{item}].Status**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)
See the Redfish standard schema and specification for information on common Status object.

### Oem.Hpe.Time
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The current Redfish service time.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Product
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The product associated with this Redfish service.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

### ProtocolFeaturesSupported
**ProtocolFeaturesSupported.ExpandQuery**
**ProtocolFeaturesSupported.ExpandQuery.ExpandAll**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of asterisk (expand all entries) is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.ExpandQuery.Levels**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of the $levels qualifier is supported by the service.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.ExpandQuery.MaxLevels**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|This indicates the maximum number value of the $levels qualifier in expand operations.|
|Type|number|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.ExpandQuery.NoLinks**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|This indicates whether the expand support of period (expand only entries not in the Links section) is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.FilterQuery**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|This indicates whether the filter query parameter is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

**ProtocolFeaturesSupported.OnlyMemberQuery**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|This indicates whether Management Processor supports the only query option.|
|Type|boolean|
|Read Only|True|

**ProtocolFeaturesSupported.SelectQuery**
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|This indicates whether the select query parameter is supported.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

### RedfishVersion
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The version of the Redfish service|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Registries
The URI to this registries resource.
Registries is a link (```"@odata.id": URI```) to another resource.

### SessionService
The URI to this sessions service resource.
SessionService is a link (```"@odata.id": URI```) to another resource.

### Systems
The URI to this systems resource.
Systems is a link (```"@odata.id": URI```) to another resource.

### Tasks
The URI to this tasks service resource.
Tasks is a link (```"@odata.id": URI```) to another resource.

### TelemetryService
The URI to the TelemetryService resource.
TelemetryService is a link (```"@odata.id": URI```) to another resource.

### UUID
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|Unique identifier for a service instance.  This value should be an exact match of the UUID value returned in a 200OK from an SSDP M-SEARCH request during discovery.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.10|

### UpdateService
The URI to this UpdateService resource.
UpdateService is a link (```"@odata.id": URI```) to another resource.

### Vendor
Member of [ServiceRoot.v1_5_1.ServiceRoot](#serviceroot-v1_5_1-serviceroot)

| | |
|---|---|
|Description|The vendor of the product associated with this Redfish service.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

## Session.v1_0_0.Session
```@odata.type: "#Session.v1_0_0.Session"```

The Session resource describes a single connection (session) between a client and a Redfish service instance.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/sessionservice/sessions/{item}/```|GET DELETE |

### Oem.Hpe.AccessTime
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|User session last-access time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Oem.Hpe.LoginTime
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|User session login time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Oem.Hpe.MySession
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|Indicates whether this is a session I own.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.Privileges
**Oem.Hpe.Privileges.HostBIOSConfigPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host Bios Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.HostNICConfigPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host NIC Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.HostStorageConfigPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to configure Host Storage Settings.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.LoginPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to log in to the management processor. All local accounts have the login privilege. This privilege is added automatically if it is not specified.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.RemoteConsolePriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to remotely access the host system Remote Console, including video, keyboard, and mouse control.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.SystemRecoveryConfigPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to manage the critical recovery firmware images on the iLO Repository.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.UserConfigPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to add, edit, and delete local management processor user accounts. A user with this privilege can change privileges for all users.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.VirtualMediaPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to use the Virtual Media feature on the host system.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.VirtualPowerAndResetPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to power-cycle or reset the host system. These activities interrupt system availability. A user with this privilege can diagnose the system by using the Generate NMI to System button.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

**Oem.Hpe.Privileges.iLOConfigPriv**
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|This privilege enables a user to configure most management processor settings, including security settings, and to remotely update the management processor firmware. This privilege does not enable local user account administration.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.UserAccount
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|Login details of the user|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.UserDistinguishedName
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|LDAP user is identified by its distinguished name (DN).|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.UserExpires
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|User session expire time|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|
|Format|date-time|

### Oem.Hpe.UserIP
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|IP address of the user|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

### Oem.Hpe.UserTag
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|Session source|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```Web UI```|
|```RBSU```|
|```Remote Console```|
|```SSH```|
|```IPMI/RMCP```|
|```SM-CLP```|
|```RIBCL```|
|```RESTHost```|
|```RIBCLHost```|
|```WSMgmt```|
|```Telnet```|
|```Federation```|
|```USBFrontPort```|
|```REST```|
|```Unknown```|

### Oem.Hpe.UserType
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|User type|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

The following are the supported values:

|Value|
|---|
|```Local```|
|```Directory```|
|```Single Sign On```|
|```Kerberos```|
|```Trusted Key```|
|```Security Override```|
|```System```|
|```Federation```|

### UserName
Member of [Session.v1_0_0.Session](#session-v1_0_0-session)

| | |
|---|---|
|Description|Name to use to log in to the management processor.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.10|

## SessionCollection.SessionCollection
```@odata.type: "#SessionCollection.SessionCollection"```

A Collection of Session resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/sessionservice/sessions/```|GET POST |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[Session](#session-v1_0_0-session)|
|```Oem/Hpe/Links/MySession```|[Session](#session-v1_0_0-session)|

### Members (array)
Member of SessionCollection.SessionCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of SessionCollection.SessionCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of SessionCollection.SessionCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## SessionService.v1_0_0.SessionService
```@odata.type: "#SessionService.v1_0_0.SessionService"```

The SessionService resource describes the BMC Redfish Session Service.  It represents the properties for the service itself and has links to the actual list of sessions.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/sessionservice/```|GET PATCH |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Sessions```|Collection of [Session](#session-v1_0_0-session)|

### ServiceEnabled
Member of [SessionService.v1_0_0.SessionService](#sessionservice-v1_0_0-sessionservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.10|

### SessionTimeout
Member of [SessionService.v1_0_0.SessionService](#sessionservice-v1_0_0-sessionservice)

| | |
|---|---|
|Description|This is the number of seconds of inactivity that a session may have before the session service closes the session due to inactivity.|
|Type|integer|
|Read Only|False|
|Added|iLO 5 1.10|

### Sessions
This property references a Collection resource of Sessions.
Sessions is a link (```"@odata.id": URI```) to another resource.

### Status
Member of [SessionService.v1_0_0.SessionService](#sessionservice-v1_0_0-sessionservice)
See the Redfish standard schema and specification for information on common Status object.

## SoftwareInventoryCollection.SoftwareInventoryCollection
```@odata.type: "#SoftwareInventoryCollection.SoftwareInventoryCollection"```

A Collection of SoftwareInventory resource instances.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/updateservice/firmwareinventory/```|GET |
|```/redfish/v1/updateservice/softwareinventory/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Members[]```|[SoftwareInventory](#softwareinventory-v1_2_0-softwareinventory)|

### Members (array)
Member of SoftwareInventoryCollection.SoftwareInventoryCollection
```Members``` is an array containing elements of:

**Members[{item}].@odata.id**
Member of SoftwareInventoryCollection.SoftwareInventoryCollection

| | |
|---|---|
|Type|string|
|Read Only|True|
|Format|uri-reference|

### Members@odata.count
Member of SoftwareInventoryCollection.SoftwareInventoryCollection

| | |
|---|---|
|Description|The total number of collection members.|
|Type|integer|
|Read Only|True|

## TaskService.v1_1_1.TaskService
```@odata.type: "#TaskService.v1_1_1.TaskService"```

The TaskService resource describes the Task service. It represents the properties for the service itself and has links to the actual list of tasks.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/taskservice/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```Tasks```|TaskCollection|

### CompletedTaskOverWritePolicy
Member of [TaskService.v1_1_1.TaskService](#taskservice-v1_1_1-taskservice)

| | |
|---|---|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Manual```|Completed tasks are not automatically overwritten.|
|```Oldest```|Oldest completed tasks are overwritten.|

### DateTime
Member of [TaskService.v1_1_1.TaskService](#taskservice-v1_1_1-taskservice)

| | |
|---|---|
|Description|The current DateTime (with offset) setting that the task service is using.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|
|Format|date-time|

### LifeCycleEventOnTaskStateChange
Member of [TaskService.v1_1_1.TaskService](#taskservice-v1_1_1-taskservice)

| | |
|---|---|
|Description|Send an Event upon Task State Change.|
|Type|boolean|
|Read Only|True|
|Added|iLO 5 1.40|

### ServiceEnabled
Member of [TaskService.v1_1_1.TaskService](#taskservice-v1_1_1-taskservice)

| | |
|---|---|
|Description|This indicates whether this service is enabled.|
|Type|boolean or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Status
Member of [TaskService.v1_1_1.TaskService](#taskservice-v1_1_1-taskservice)
See the Redfish standard schema and specification for information on common Status object.

### Tasks
This property references a resource of type Collection with a MemberType of TaskCollection.
Tasks is a link (```"@odata.id": URI```) to another resource.

## TelemetryService.v1_0_0.TelemetryService
```@odata.type: "#TelemetryService.v1_0_0.TelemetryService"```

The TelemetryService resource describes the Metrics Service.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/telemetryservice/```|GET |

### Links to other Resources
|Link Name|Destination type
|---|---|
|```MetricDefinitions```|Collection of [MetricDefinition](#metricdefinition-v1_0_0-metricdefinition)|
|```MetricReportDefinitions```|Collection of [MetricReportDefinition](#metricreportdefinition-v1_0_0-metricreportdefinition)|
|```MetricReports```|Collection of [MetricReport](#metricreport-v1_0_0-metricreport)|
|```Triggers```|Collection of [Triggers](#triggers-v1_0_0-triggers)|

### MaxReports
Member of [TelemetryService.v1_0_0.TelemetryService](#telemetryservice-v1_0_0-telemetryservice)

| | |
|---|---|
|Description|The maximum number of metric reports supported by this service.|
|Type|integer or null|
|Read Only|True|
|Added|iLO 5 1.40|

### MetricDefinitions
A link to the collection of Metric Definitions.
MetricDefinitions is a link (```"@odata.id": URI```) to another resource.

### MetricReportDefinitions
A link to the collection of Metric Reports.
MetricReportDefinitions is a link (```"@odata.id": URI```) to another resource.

### MetricReports
A link to the collection of Metric Reports.
MetricReports is a link (```"@odata.id": URI```) to another resource.

### MinCollectionInterval
Member of [TelemetryService.v1_0_0.TelemetryService](#telemetryservice-v1_0_0-telemetryservice)

| | |
|---|---|
|Description|The minimum time interval between collections supported by this service.|
|Type|string or null|
|Read Only|True|
|Added|iLO 5 1.40|

### Status
Member of [TelemetryService.v1_0_0.TelemetryService](#telemetryservice-v1_0_0-telemetryservice)
See the Redfish standard schema and specification for information on common Status object.

### SupportedCollectionFunctions (array)
Member of [TelemetryService.v1_0_0.TelemetryService](#telemetryservice-v1_0_0-telemetryservice)
```SupportedCollectionFunctions``` is an array containing elements of:


| | |
|---|---|
|Description|An operation to perform over the sample.|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```Average```|An averaging function.|
|```Maximum```|A maximum function.|
|```Minimum```|A minimum function.|
|```Summation```|A summation function.|

### Triggers
A link to the collection of Triggers, which apply to metrics.
Triggers is a link (```"@odata.id": URI```) to another resource.

## Triggers.v1_0_0.Triggers
```@odata.type: "#Triggers.v1_0_0.Triggers"```

The Triggers resource describes the a metric trigger, which apply to metrics.
### Resource Instances
|Uri|HTTP Allow|
|---|---|
|```/redfish/v1/telemetryservice/triggers/cpuutiltriggers/```|GET PATCH |

### MetricProperties (array)
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)
```MetricProperties``` is an array containing elements of:


| | |
|---|---|
|Type|string or null|
|Read Only|True|

### MetricType
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|Specifies the type of metric for which the trigger is configured.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Numeric```|The trigger is for numeric sensor.|
|```Discrete```|The trigger is for a discrete sensor.|

### NumericThresholds
**NumericThresholds.LowerCritical**
**NumericThresholds.LowerCritical.Activation**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Increasing```|Value increases above the threshold.|
|```Decreasing```|Value decreases below the threshold.|
|```Either```|Value crosses the threshold in either direction.|

**NumericThresholds.LowerCritical.DwellTime**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.LowerCritical.Reading**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.LowerWarning**
**NumericThresholds.LowerWarning.Activation**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Increasing```|Value increases above the threshold.|
|```Decreasing```|Value decreases below the threshold.|
|```Either```|Value crosses the threshold in either direction.|

**NumericThresholds.LowerWarning.DwellTime**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.LowerWarning.Reading**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.UpperCritical**
**NumericThresholds.UpperCritical.Activation**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Increasing```|Value increases above the threshold.|
|```Decreasing```|Value decreases below the threshold.|
|```Either```|Value crosses the threshold in either direction.|

**NumericThresholds.UpperCritical.DwellTime**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.UpperCritical.Reading**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.UpperWarning**
**NumericThresholds.UpperWarning.Activation**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The direction of crossing that activates this threshold.|
|Type|string|
|Read Only|True|
|Added|iLO 5 1.40|

The following are the supported values:

|Value|Description|
|---|---|
|```Increasing```|Value increases above the threshold.|
|```Decreasing```|Value decreases below the threshold.|
|```Either```|Value crosses the threshold in either direction.|

**NumericThresholds.UpperWarning.DwellTime**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The time interval over which the sensor reading must have passed through this Threshold value before the threshold is considered to be violated.|
|Type|string or null|
|Read Only|False|
|Added|iLO 5 1.40|

**NumericThresholds.UpperWarning.Reading**
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)

| | |
|---|---|
|Description|The threshold value.|
|Type|number or null|
|Read Only|False|
|Added|iLO 5 1.40|

### Status
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)
See the Redfish standard schema and specification for information on common Status object.

### TriggerActions (array)
Member of [Triggers.v1_0_0.Triggers](#triggers-v1_0_0-triggers)
```TriggerActions``` is an array containing elements of:


| | |
|---|---|
|Type|string|
|Read Only|True|

The following are the supported values:

|Value|Description|
|---|---|
|```LogToLogService```|Upon a trigger, record in a log.|
|```RedfishEvent```|Upon a trigger, send a Redfish Event message of type MetricReport.|

