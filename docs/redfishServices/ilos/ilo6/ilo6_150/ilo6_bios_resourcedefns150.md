---
excludeFromSearch: true
seo:
  title: Bios resource definitions
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# Bios resource definitions of iLO 6 v1.50

For each data type provided by the HPE ilO Redfish service, find below its description including the list of possible instances (URIs), links to related other resources, described properties and many other details. 

Refer to the [data types and collection](/docs/concepts/dataTypesAndCollections.md) section for more information on Redfish data types and collections.


## Bios

`@odata.type: "#Bios.v1_0_5.Bios"`

The Bios schema contains properties related to the BIOS Attribute Registry.  The Attribute Registry describes the system-specific BIOS attributes and Actions for changing to BIOS settings.  Changes to the BIOS typically require a system reset before they take effect.  It is likely that a client will find the @Redfish.Settings term in this resource, and if it is found, the client makes requests to change BIOS settings by modifying the resource identified by the @Redfish.Settings term.

### Resource Instances

|Uri|HTTP Allow|
|---|---|
|`/redfish/v1/systems/{item}/bios`|GET |
|`/redfish/v1/systems/{item}/bios/settings`|GET POST PATCH |

### Links to other Resources

|Link Name|Destination type
|---|---|
|`Oem/Hpe/Links/Boot`|[HpeServerBootSettings](../ilo6_hpe_resourcedefns150/#hpeserverbootsettings)|
|`@Redfish.Settings/SettingsObject`|[Bios](../ilo6_bios_resourcedefns150/#bios)|
|`Oem/Hpe/Links/TlsConfig`|[HpeTlsConfig](../ilo6_hpe_resourcedefns150/#hpetlsconfig)|
|`Oem/Hpe/Links/BaseConfigs`|[HpeBaseConfigs](../ilo6_hpe_resourcedefns150/#hpebaseconfigs)|
|`Oem/Hpe/Links/Mappings`|[HpeBiosMapping](../ilo6_hpe_resourcedefns150/#hpebiosmapping)|
|`Oem/Hpe/Links/iScsi`|[HpeiSCSISoftwareInitiator](../ilo6_hpe_resourcedefns150/#hpeiscsisoftwareinitiator)|

### @Redfish.Settings

Member of [Bios.v1\_0\_5.Bios](#bios)
See the Redfish standard schema and specification for information on common @Redfish properties.

### AttributeRegistry

Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|The Resource ID of the Attribute Registry that has the system-specific information about a BIOS resource.|
|Type|string or null|
|Read Only|True|
|Added|iLO6 1.05|

### Attributes

**AMDPerformanceWorkloadProfile (AMD Performance Workload Profile)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Provide feature sets for specific performance requirement. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`CPUIntensive`|CPU Intensive|
|`JavaThroughput`|Java Throughput|
|`JavaLatency`|Java Latency|
|`PowerEfficiency`|Power Efficiency|
|`MemoryThroughputIntensive`|Memory Throughput Intensive|
|`StorageIOIntensive`|Storage IO Intensive|
|`NICThroughputIntensive`|NIC Throughput Intensive|
|`NICLatencySensitive`|NIC Latency Sensitive|
|`VMwareVSphereOptimized`|VMware vSphere Optimized|
|`LinuxKVMOptimized`|Linux KVM Optimized|
|`ContainerOptimized`|Container Optimized|
|`RDBMSOptimized`|RDBMS Optimized|
|`BigDataAnalyticsOptimized`|Big Data Analytics Optimized|
|`IOTGateway`|IOT Gateway|
|`HPCOptimized`|HPC Optimized|
|`OpenStackNFV`|OpenStack NFV|
|`OpenStackForRealTimeKernel`|OpenStack for RealTime Kernel|

**AccessControlService (Access Control Service)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|If enabled, Access Control Service is enabled for the downstream port.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AcpiHpet (High Precision Event Timer (HPET) ACPI Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|The ACPI SLIT (System Locality Information Table) defines the relative access times between processors, memory subsystems, and I/O subsystems. Operating systems that support the SLIT can use this information to improve performance by allocating resources and workloads more efficiently.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AdminEmail (Administrator E-mail Address)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter the server administrator's e-mail address.|
|Type|String|
|Read Only|False|

**AdminName (Administrator Name)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter the server administrator's name text.|
|Type|String|
|Read Only|False|

**AdminOtherInfo (Administrator Other Information)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter the server administrator's information text.|
|Type|String|
|Read Only|False|

**AdminPhone (Administrator Phone Number)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter the server administrator's phone number text.|
|Type|String|
|Read Only|False|

**AdvCrashDumpMode (Advanced Crash Dump Mode)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable the Advanced Crash Dump Mode. When enabled, the system will be configured to log additional debug information to the Active Health System logs when an unexpected system crash is experienced. This option should only be enabled when directed by qualified service personnel|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**AllowLoginWithIlo (Allow login with %s accounts)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Allows users to login with an iLO account with the CONFIGURE_BIOS privilege.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Amd5LevelPage (AMD 5-Level Page)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Support 5-Level Page to extend the size of virtual addresses from 48 bits to 57 bits, increasing the addressable virtual memory up to 128 PB.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AmdCdma (AMD Cacheable Direct Memory Access)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enable or disable AMD CDMA (Cacheable Direct Memory Access), which allows PCIe I/O devices to write directly to cache bypassing DRAM. This may improve performance for some PCIe devices with TLP Processing Hint capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**AmdCstC2Latency (ACPI CST C2 Latency)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select 800us for Linux kernel prior to version 6.0, 18us for version 6.0 or later|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`800us`|800 microsecond|
|`18us`|18 microsecond|

**AmdDmaRemapping (AMD DMA Remapping)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This configures the DMA Remapping setting. DMA Remapping protects against memory corruption and malicious DMA attacks.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AmdL1Prefetcher (L1 Stream HW Prefetcher)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable L1 Stream HW prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AmdL2Prefetcher (L2 Stream HW Prefetcher)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to disable L2 Stream HW prefetch feature. In some cases, setting this option to disabled can improve performance. Typically, setting this option to enabled provides better performance. Only disable this option after performing application benchmarking to verify improved performance in the environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AmdMemPStates (Memory PStates)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This setting enables memory pstates|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**AmdMemoryBurstRefresh (DRAM Burst Refresh Mode)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable DRAM Burst/Postponed Refresh mode|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AmdPeriodicDirectoryRinse (AMD Periodic Directory Rinse)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enable Periodic Directory Rinse which may help manage directory capacity more efficiently. In workloads with significant system-wide sharing, like databases and HPC applications, using a shorter period for a directory rinse operation may improve performance.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**AmdSecureMemoryEncryption (AMD Secure Memory Encryption)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable SME|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AmdSecureNestedPaging (AMD Secure Nested Paging)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable AMD SEV-SNP. When enabled, SEV-SNP adds strong memory integrity protection to help prevent malicious hypervisor-based attacks like data replay, memory re-mapping, and more in order to create an isolated execution environment.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AmdVirtualDrtmDevice (AMD Virtual DRTM Device)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the AMD Virtual DRTM Device.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**AmdXGMILinkSpeed (AMD xGMI Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Configure xGMI link speed between two processors, Auto will use the platform defined setting. Other options will force the speed to user selected. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`AmdXGMILinkSpeed16`|16 Gbps|
|`AmdXGMILinkSpeed18`|18 Gbps|
|`AmdXGMILinkSpeed25`|25 Gbps|
|`AmdXGMILinkSpeed32`|32 Gbps|

**ApplicationPowerBoost (Infinity Fabric Power Management)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When this feature is enabled, the EPYC processor will dynamically vary the clock frequency of the Infinity Fabric based on activity level. For NUMA optimized workloads, allowing the Infinity Fabric to run slower can lead to increased overall performance due to an increase in CPU boost. Disabling this feature may be necessary for latency sensitive workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**AssetTagProtection (Asset Tag Protection)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**BootOrderPolicy (Boot Order Policy)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**CollabPowerControl (Collaborative Power Control)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|For operating systems that support the Processor Clocking Control (PCC) Interface, enabling this option enables the Operating System to request processor frequency changes. For Operating Systems that do not support the PCC Interface this option has no effect on system operation.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**ConsistentDevNaming (Consistent Device Naming)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**CustomPostMessage (Custom POST Message)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter a message to be displayed on POST screen during system startup. This feature limits POST screen messaging to 62 characters, special characters are also accepted.|
|Type|String|
|Read Only|False|

**CustomPstate0 (Custom Pstate0)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure Pstate0 Frequency. Auto uses the processor fused values.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Manual`|Manual|

**DataFabricCStateEnable (Data Fabric C-State Enable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Data Fabric C-States|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`ForceEnabled`|Force Enabled|
|`Disabled`|Disabled|

**DaylightSavingsTime (Daylight Savings Time)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This option controls the Daylight Savings Time (DST) adjustment to the displayed local time.  If this option is disabled, the displayed local time will not be adjusted for DST.  If this option is enabled, the displayed local time will be advanced by one hour.  if this option is set to BMC control, the BMC will determine whether DST should be applied for the current time zone.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`DaylightSavingsTimeDisabled`|Daylight Savings Time is disabled|
|`DaylightSavingsTimeEnabled`|Daylight Savings Time is enabled|

**DeterminismControl (Determinism Control)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure AMD determinism control. Auto uses the processor fused values.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`DeterminismCtrlAuto`|Auto|
|`DeterminismCtrlManual`|Manual|

**Dhcpv4 (DHCPv4)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When enabled, this option enables obtaining the pre-boot network IPv4 configuration from a DHCP server. Individual settings are not available. When disabled, you must configure static IP address settings individually.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**DramControllerPowerDown (DRAM Controller Power Down)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable DRAM Controller power down|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**DynamicPowerCapping (Dynamic Power Capping Functionality)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**EmbSata1Aspm (SATA Power Management(SALP))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbSata3Aspm (SATA Power Management(SALP))**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Aggressive Link Power Management(SALP).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**EmbSata3Enable (SATA Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable SATA devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**EmbSata3PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbSata4Aspm (SATA Power Management(SALP))**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Aggressive Link Power Management(SALP).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**EmbSata4Enable (SATA Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable SATA devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**EmbSata4PCIeOptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Embedded Diagnostics functionality. If disabled, you cannot launch Embedded Diagnostics. Enable this option to use the Embedded Diagnostics functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbeddedIpxe (Embedded iPXE)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Embedded iPXE. When enabled, you can launch the Embedded iPXE from the pre-boot environment. When enabled, you can add the Embedded iPXE can to the UEFI Boot Order by selecting the option entitled 'Add Embedded iPXE to Boot Order'. When disabled, the Embedded iPXE is not available in the pre-boot environment, and you cannot add it to the UEFI boot order. The Embedded iPXE is an open source network boot application embedded in system BIOS that you can use to perform network boot.This option also enables the UEFI shell command 'ipxe' and an entry in Embedded Application list, both can be used to launch the Embedded iPXE.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmbeddedSerialPort (Embedded Serial Port)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to assign the logical COM port address and associated default resources to the selected physical serial port. The operating system can overwrite this setting.Note: Embedded Serial Port and Virtual Seral Port (VSP) cannot be set to the same port. If Embedded Serial Port is changed to the same port as VSP, the VSP will automatically be reassigned.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Com1Irq4`|COM 1; IRQ4; I/O: 3F8h-3FFh|
|`Com2Irq3`|COM 2; IRQ3; I/O: 2F8h-2FFh|
|`Disabled`|Disabled|

**EmbeddedUefiShell (Embedded UEFI Shell)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Embedded UEFI Shell. If enabled, you can launch the Embedded UEFI Shell from the pre-boot environment. When enabled, you can add the Embedded UEFI Shell to the UEFI Boot Order by selecting the option entitled 'Add Embedded UEFI Shell to Boot Order'. When disabled, the Embedded UEFI Shell is not available in the pre-boot environment, and you cannot add it to the UEFI boot order. The Embedded UEFI Shell is a pre-boot command line environment that you can use for scripting and running UEFI applications. It provides CLI-based commands to configure the server, update the System BIOS and other firmware, and obtain system information and error logs.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**EmsConsole (EMS Console)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This option enables limiting the number of enabled processor cores per physical processor. You can set the number of enabled cores to a value supported by the physical processor. Setting the value to 0 or a value larger than the number of supported cores of the installed processor will result in all processor cores in the socket being enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`CoresPerProc0`|0|
|`CoresPerProc2`|2|
|`CoresPerProc4`|4|
|`CoresPerProc6`|6|
|`CoresPerProc8`|8|
|`CoresPerProc12`|12|
|`CoresPerProc16`|16|
|`CoresPerProc20`|20|
|`CoresPerProc24`|24|
|`CoresPerProc28`|28|
|`CoresPerProc32`|32|
|`CoresPerProc36`|36|
|`CoresPerProc40`|40|
|`CoresPerProc48`|48|
|`CoresPerProc56`|56|
|`CoresPerProc60`|60|
|`CoresPerProc64`|64|
|`CoresPerProc72`|72|
|`CoresPerProc80`|80|
|`CoresPerProc84`|84|
|`CoresPerProc96`|96|
|`CoresPerProc112`|112|

**EraseUserDefaults (Erase User Defaults)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure how the server reacts when all required fans are not installed. When configured for Enable Messaging, the server displays messages and log events to the Integrated Management Log (IML) when required fans are not installed. The server can still boot and operate. When configured for Disable Messaging, the server does not display messages and log events when required fans are not installed. All indications that the server is operating without required fans are removed. It is recommended that you leave Fan Installation Requirements in the default state of Enable Messaging. Operating without the required fans can result in damage to hardware components.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`EnableMessaging`|Enable Messaging|
|`DisableMessaging`|Disable Messaging|

**HourFormat (Hour Format)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Hour format, 24 Hours/12 Hours.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`24Hours`|24 Hours|
|`12Hours`|12 Hours|

**HttpSupport (HTTP Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**InfinityFabricPstate (Infinity Fabric Performance State)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This feature allows for customizing the performance state (P-state) of the Infinity Fabric when Infinity Fabric Power Management is disabled. The default is Auto when Infinity Fabric Power Management is Enabled. P0 is ideal for latency sensitive or I/O centric workloads, P3 is ideal for achieving best core boost frequencies.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`P0`|P0|
|`P1`|P1|
|`P2`|P2|
|`P3`|P3|
|`Auto`|Auto|

**IntelligentProvisioning (Intelligent Provisioning (F10 Prompt))**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Intelligent Provisioning functionality. When disabled, you are prevented from entering the Intelligent Provisioning environment by pressing F10 during server boot. You must set this option to enabled to use Intelligent Provisioning functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IpmiWatchdogTimerAction (IPMI Watchdog Timer Action)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the timeout action upon expiration of the watchdog timer due to a server lockup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`PowerCycle`|Power Cycle|
|`PowerDown`|Power Down|
|`WarmBoot`|Warm Boot|

**IpmiWatchdogTimerStatus (IPMI Watchdog Timer)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable a Boot Time (POST) IPMI compliant Watchdog Timer (WDT) that is disabled when an IPMI command is issued to the system by the user and will not automatically be disabled. The WDT will be stopped when F9 or F10 hotkey is pressed during POST.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`IpmiWatchdogTimerOff`|Disabled|
|`IpmiWatchdogTimerOn`|Enabled|

**IpmiWatchdogTimerTimeout (IPMI Watchdog Timer Timeout)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the wait timer before performing the desired timeout action on the server in the event of a server lockup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Timeout10Min`|10 Minutes|
|`Timeout15Min`|15 Minutes|
|`Timeout20Min`|20 Minutes|
|`Timeout30Min`|30 Minutes|

**Ipv4Address (IPv4 Address)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4Gateway (IPv4 Gateway)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network gateway IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4PrimaryDNS (IPv4 Primary DNS)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Primary DNS Server IPv4 address. Enter a static IP address using dotted-decimal notation (for example, 127.0.0.1). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv4SubnetMask (IPv4 Subnet Mask)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network subnet mask. Enter a static IP address using dotted-decimal notation (for example, 255.255.255.0). If DHCP is used (the DHCPv4 option is enabled), this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6Address (IPv6 Address)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6ConfigPolicy (IPv6 Config Policy)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network gateway IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**Ipv6PrimaryDNS (IPv6 Primary DNS)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to specify the pre-boot network Primary DNS Server IPv6 address. Enter a static IP address in the standard colon seperated format (for example, 1234::1000). If IPv6 Config Policy is set to Automatic, this setting is unavailable because the value is supplied automatically.|
|Type|String|
|Read Only|False|

**IpxeAutoStartScriptLocation (iPXE Auto-Start Script Location)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the location of the Embedded iPXE startup script. For the 'File Systems on Attached Media' option, you must name the script file "startup.ipxe" and place it on a UEFI accessible local file system, such as a FAT32 partition on a USB disk or HDD. For the 'Network Location' option, the file must end with a .ipxe extension, and must be placed at an HTTP/HTTPS location accessible to the system. When you select the 'Auto' option, the system attempts to retrieve the startup script from the network location first, followed by locally attached media.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`AttachedMedia`|File Systems on Attached Media|
|`NetworkLocation`|Network Location|

**IpxeBootOrder (Add Embedded iPXE to Boot Order)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When enabled, this option adds the Embedded iPXE as an entry in the UEFI Boot Order list. This option is only available when the Embedded iPXE is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IpxeScriptAutoStart (iPXE Script Auto-Start)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable execution of the user supplied startup script for the Embedded iPXE. when enabled, you can configure Embedded iPXE to execute the startup script from a local media or a network location. When disable, Embedded iPXE will perform an auto discovery of startup script. You must name the script file "startup.ipxe"|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IpxeScriptVerification (iPXE Script Verification)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enable this option to allow verification of iPXE script files when Secure Boot is enabled. For successful execution of script, make sure that iPXE scripts are enrolled in the Secure Boot database (db).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**IpxeStartupUrl (Network Location for iPXE Auto-Start Script)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a iPXE startup script. This option is available and used only when the Auto-Start Script Location is set to 'Network Location', or 'Auto', and the iPXE Auto-Start Script discovery.URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/file.ipxe, http://example.com/file/file.ipxe, https://example.com/file/file.ipxe, http://[1234::1000]/file.ipxe. The file must end with an .ipxe extension. When configured, the Embedded iPXE attempts to load and execute the startup script from the network location pointed to by this URL. When an HTTPS URL is configured, you must enroll the respective HTTPS server's TLS certificate under Server Security > TLS(HTTPS) Options.|
|Type|String|
|Read Only|False|

**LastLevelCacheAsNUMANode (Last-Level Cache (LLC) As NUMA Node)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When enabled, LLC As NUMA Node divides the processor's cores into an additional NUMA domain based on the L3 cache. Enabling this feature can increase performance for workloads that are NUMA aware and optimized.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**MaxMemBusFreqMHz (Maximum Memory Bus Frequency)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the memory system to run memory at a lower maximum speed than that supported by the installed processor and DIMM configuration. Setting this option to Auto configures the system to run memory at the maximum speed supported.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`MaxMemBusFreq4800`|4800 MHz|
|`MaxMemBusFreq4400`|4400 MHz|
|`MaxMemBusFreq4000`|4000 MHz|
|`MaxMemBusFreq3600`|3600 MHz|
|`MaxMemBusFreq3200`|3200 MHz|

**MaxPcieSpeed (Maximum PCI Express Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|If a PCI Express device does not run properly at its optimal speed, lowering the speed at which the device is running can address this issue. This option enables you to lower the maximum PCI Express speed at which the server allows PCI Express devices to operate. You can also use it to address issues with problematic PCI Express devices. Setting this value to Maximum Supported configures the platform to run at the maximum speed supported by the platform or the PCIe device, whichever is lower.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`PerPortCtrl`|Per Port Control|
|`PcieGen1`|PCIe Generation 1.0|
|`PcieGen2`|PCIe Generation 2.0|
|`PcieGen3`|PCIe Generation 3.0|
|`PcieGen4`|PCIe Generation 4.0|

**MemPatrolScrubbing (Memory Patrol Scrubbing)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This option controls the refresh rate of the memory controller and might affect the performance and resiliency of the server memory. It is recommended that you leave this setting in the default state unless indicated in other documentation for this server.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Refreshx1`|1x Refresh|
|`Refreshx2`|2x Refresh|

**MicrosoftSecuredCoreSupport (Microsoft(R) Secured-core Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the server for Microsoft(R) Secured-core Support. When enabled, various virtualization and security settings will be automatically enabled. Please consult operating system documentation for more details.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**MinProcIdlePower (Minimum Processor Idle Power Core C-State)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|You can only configure this option if Workload Profile is set to Custom. Use this option to select the lowest idle power state (C-state) of the processor that the operating system uses. The higher the C-state, the lower the power usage of that idle state. (C6 is the lowest power idle state supported by the processor).|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`C6`|C6 State|
|`C1`|C1 State|
|`NoCStates`|No C-states|

**MinimumSevAsid (Minimum SEV ASID)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This configures the minimum address space identifier (ASID) that can be used for AMD Secure Encrypted Virtualization (SEV) enabled guests. ASID below this number are only available to SEV enable guest that also enable SEV-ES (Encrypted State)|
|Type|Integer|
|Read Only|False|

**MixedPowerSupplyReporting (Mixed Power Supply Reporting)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the number of times the system BIOS attempts to boot a network device. The valid range is from 0 to 20.|
|Type|Integer|
|Read Only|False|

**NicBoot1 (Embedded NIC 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot10 (Embedded NIC 10 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot11 (Embedded NIC 11 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot12 (Embedded NIC 12 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot2 (Embedded NIC 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot3 (Embedded NIC 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot4 (Embedded NIC 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot5 (Embedded NIC 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot6 (Embedded NIC 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot7 (Embedded NIC 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot8 (Embedded NIC 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NicBoot9 (Embedded NIC 9 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**NumaGroupSizeOpt (NUMA Group Size Optimization)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure how the System BIOS reports the size of a NUMA node (number of logical processors), which assists the Operating System in grouping processors for application use (referred to as Kgroups). The default setting of Clustered provides better performance due to optimizing the resulting groups along NUMA boundaries. However, some applications might not be optimized to take advantage of processors spanning multiple groups. In such cases, selecting the Flat option might be necessary in order for those applications to utilize more logical processors.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Flat`|Flat|
|`Clustered`|Clustered|

**NumaMemoryDomainsPerSocket (NUMA memory domains per socket)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to configure the number of NUMA memory domains per socket.If LLC As NUMA Node is enabled, total NUMA node number depends on total CCX number.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`OneMemoryDomainPerSocket`|One memory domain per socket|
|`TwoMemoryDomainsPerSocket`|Two memory domains per socket|
|`FourMemoryDomainsPerSocket`|Four memory domains per socket|
|`Auto`|Auto|

**NvmeOptionRom (Embedded NVM Express Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable embedded NVM Express Option ROM. When enabled, the system loads the NVM Express Option ROM provided by the system BIOS. When disabled, the system loads the NVM Express Option ROM provided by the adapter.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Ocp1AuxiliaryPower (OCP Slot 1 Auxiliary Power)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This option can be used to control if the PCIe device is granted auxiliary power. When enabled, the device is granted auxiliary power and is capable of operation however system fans may run to ensure appropriate cooling. When disabled, the device will not be able to respond to any transactions such as Wake On LAN when the server is in a auxiliary power state.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Ocp2AuxiliaryPower (OCP Slot 2 Auxiliary Power)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This option can be used to control if the PCIe device is granted auxiliary power. When enabled, the device is granted auxiliary power and is capable of operation however system fans may run to ensure appropriate cooling. When disabled, the device will not be able to respond to any transactions such as Wake On LAN when the server is in a auxiliary power state.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**OmitBootDeviceEvent (Omit Boot Device Event)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to record Omit Boot Device Event. If enabled, PCR Boot Attempt Measurements will be disabled and measurement in PCR[4] will not be recorded.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PackagePowerLimitControlMode (Package Power Limit Control Mode)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This is a per processor Package Power Limit value applicable for all populated processors in the system. AUTO uses the default processor value. Modify the power limit in watts, as instructed by qualified personnel.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Manual`|Manual|

**PackagePowerLimitValue (Package Power Limit value)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This options control the package power limit allowed in Watts|
|Type|Integer|
|Read Only|False|

**PatrolScrubDuration (Patrol Scrub Duration)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to configure the duration interval of when to run the patrol scrubber if patrol scrub is enabled.Value is in hours.|
|Type|Integer|
|Read Only|False|

**PciSlot10Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot10Bifurcation (PCIe Slot 10 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot10Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot10LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot10OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot11Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot11Bifurcation (PCIe Slot 11 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot11Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot11LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot11OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot12Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot12Bifurcation (PCIe Slot 12 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot12Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot12LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot12OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot13Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot13Bifurcation (PCIe Slot 13 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot13Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot13LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot13OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot14Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot14Bifurcation (PCIe Slot 14 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot14Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot14LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot14OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot15Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot15Bifurcation (PCIe Slot 15 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot15Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot15LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot15OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot16Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot16Bifurcation (PCIe Slot 16 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot16Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot16LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot16OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot17Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot17Bifurcation (PCIe Slot 17 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot17Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot17LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot17OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot18Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot18Bifurcation (PCIe Slot 18 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot18Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot18LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot18OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot19Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot19Bifurcation (PCIe Slot 19 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot19Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot19LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot19OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot1Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot1Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`PcieGen3`|PCIe Generation 3.0|

**PciSlot1OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot20Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot20Bifurcation (PCIe Slot 20 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot20Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot20LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot20OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot21Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot21Bifurcation (PCIe Slot 21 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot21Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot21LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot21OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot22Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot22Bifurcation (PCIe Slot 22 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot22Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot22LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot22OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot23Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot23Bifurcation (PCIe Slot 23 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot23Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot23LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot23OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot2Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`PcieGen3`|PCIe Generation 3.0|

**PciSlot2OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot3Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`PcieGen3`|PCIe Generation 3.0|

**PciSlot3OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot4Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`PcieGen3`|PCIe Generation 3.0|

**PciSlot4OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot5Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`PcieGen3`|PCIe Generation 3.0|

**PciSlot5OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot6Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`PcieGen3`|PCIe Generation 3.0|

**PciSlot6OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot7Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`PcieGen3`|PCIe Generation 3.0|

**PciSlot7OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot8Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`PcieGen3`|PCIe Generation 3.0|

**PciSlot8OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PciSlot9Aspm (PCIe Power Management(ASPM))**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot9Bifurcation (PCIe Slot 9 Bifurcation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to bifurcate the selected PCIe slot. When No Bifurcation is selected, the PCIe slot will train a single link at the maximum width supported by the slot and end point. When Slot Bifurcated is selected, the PCIe slot will be bifurcated into two equal width slots. When Slot Dual Bifurcate (quadfurcate) is selected, the PCIe slot will be bifurcated into four equal width slots.Note: Only change this option if the device installed in the slot supports this capability.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoBifurcation`|No Bifurcation|
|`SlotBifurcated`|Bifurcate|
|`SlotDualBifurcated`|Dual Bifurcate|

**PciSlot9Enable (PCIe Device Disable)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to enable or disable PCI devices.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`Disabled`|Disabled|

**PciSlot9LinkSpeed (PCIe Link Speed)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PciSlot9OptionROM (PCIe Option ROM)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable Device Option ROM |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PerformanceDeterminism (Performance Determinism)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure the AMD Processor for Performance or Power Determinism.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`PerformanceDeterministic`|Performance Deterministic|
|`PowerDeterministic`|Power Deterministic|

**PlatformCertificate (Platform Certificate Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enable/Disable Platform Certificate Support.NOTE: This feature will only build the certificate data when a TPM 2.0 device is enabled and visible.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**PlatformRASPolicy (Platform RAS Policy)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This option controls the platform Resiliency and Serviceability (RAS) policy. When in Firmware First mode (default), the BIOS will monitor corrected errors and log an event for any cases where the customer needs to take action on corrected errors. The OS will not monitor and log corrected errors. In OS First mode, corrected errors are unmasked to the OS and the OS will control the policy for logging corrected errors. With some operating systems, the OS will log all corrected errors. Corrected errors are an expected and natural occurrence and there is typically no action is required based on OS logging of corrected errors. Note there is no guarantee that the BIOS can properly log corrected error events when in OS First mode. It is recommended that this option is left in its default configuration. Warranty support will only be provided for memory errors that have exceeded correctable error thresholds as determined by Customer Support.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`FirmwareFirst`|Firmware First|
|`OSFirst`|OS First|

**PostAsr (POST ASR)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure POST Automatic Server Recovery (ASR).When Automatic Server Recovery is enabled, you can use this option to set the time to wait before rebooting the server in the event of a server lockup This timer is only avaiable during POST and is not enabled at operating system boot.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`PostAsrOff`|POST ASR Off|
|`PostAsrOn`|POST ASR On|

**PostAsrDelay (POST ASR Timer)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the wait timer before rebooting the server in the event of a server lockup.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Delay30Min`|30 Minute Timer|
|`Delay20Min`|20 Minute Timer|
|`Delay15Min`|15 Minute Timer|
|`Delay10Min`|10 Minute Timer|

**PostBootProgress (POST Verbose Boot Progress)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**PostScreenMode (POST Screen Mode)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select the display mode during boot up. When set to quiet mode, only the logo and progress bar are displayed. All informational messages and boot up graphics are hidden. When set to verbose mode, all boot up messages and graphics are displayed. You can also change the display mode from quiet to verbose while booting by pressing the TAB key when hotkeys are enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`QuietMode`|Quiet Mode|
|`VerboseMode`|Verbose Mode|

**PostVideoSupport (POST Video Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|You can only configure this option if the Workload Profile is set to Custom. Use this option to configure the following Power Regulator support:  - Static High Performance Mode: Processors run in their maximum power/performance state at all times, regardless of the OS power management policy.  - OS Control Mode: Processors run in their maximum power/performance state at all times unless the OS enables a power management policy.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`StaticHighPerf`|Static High Performance Mode|
|`OsControl`|OS Control Mode|

**PreBootNetwork (Pre-Boot Network Interface)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the network interface used for pre-boot network connections. When the selection is Auto, the system uses the first available port with a network connection.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
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
|`Slot9NicPort1`|Slot 9 NIC Port 1|
|`Slot9NicPort2`|Slot 9 NIC Port 2|
|`Slot9NicPort3`|Slot 9 NIC Port 3|
|`Slot9NicPort4`|Slot 9 NIC Port 4|
|`Slot9NicPort5`|Slot 9 NIC Port 5|
|`Slot9NicPort6`|Slot 9 NIC Port 6|
|`Slot9NicPort7`|Slot 9 NIC Port 7|
|`Slot9NicPort8`|Slot 9 NIC Port 8|
|`Slot10NicPort1`|Slot 10 NIC Port 1|
|`Slot10NicPort2`|Slot 10 NIC Port 2|
|`Slot10NicPort3`|Slot 10 NIC Port 3|
|`Slot10NicPort4`|Slot 10 NIC Port 4|
|`Slot10NicPort5`|Slot 10 NIC Port 5|
|`Slot10NicPort6`|Slot 10 NIC Port 6|
|`Slot10NicPort7`|Slot 10 NIC Port 7|
|`Slot10NicPort8`|Slot 10 NIC Port 8|
|`Slot11NicPort1`|Slot 11 NIC Port 1|
|`Slot11NicPort2`|Slot 11 NIC Port 2|
|`Slot11NicPort3`|Slot 11 NIC Port 3|
|`Slot11NicPort4`|Slot 11 NIC Port 4|
|`Slot11NicPort5`|Slot 11 NIC Port 5|
|`Slot11NicPort6`|Slot 11 NIC Port 6|
|`Slot11NicPort7`|Slot 11 NIC Port 7|
|`Slot11NicPort8`|Slot 11 NIC Port 8|
|`Slot12NicPort1`|Slot 12 NIC Port 1|
|`Slot12NicPort2`|Slot 12 NIC Port 2|
|`Slot12NicPort3`|Slot 12 NIC Port 3|
|`Slot12NicPort4`|Slot 12 NIC Port 4|
|`Slot12NicPort5`|Slot 12 NIC Port 5|
|`Slot12NicPort6`|Slot 12 NIC Port 6|
|`Slot12NicPort7`|Slot 12 NIC Port 7|
|`Slot12NicPort8`|Slot 12 NIC Port 8|
|`Slot13NicPort1`|Slot 13 NIC Port 1|
|`Slot13NicPort2`|Slot 13 NIC Port 2|
|`Slot13NicPort3`|Slot 13 NIC Port 3|
|`Slot13NicPort4`|Slot 13 NIC Port 4|
|`Slot13NicPort5`|Slot 13 NIC Port 5|
|`Slot13NicPort6`|Slot 13 NIC Port 6|
|`Slot13NicPort7`|Slot 13 NIC Port 7|
|`Slot13NicPort8`|Slot 13 NIC Port 8|
|`Slot14NicPort1`|Slot 14 NIC Port 1|
|`Slot14NicPort2`|Slot 14 NIC Port 2|
|`Slot14NicPort3`|Slot 14 NIC Port 3|
|`Slot14NicPort4`|Slot 14 NIC Port 4|
|`Slot14NicPort5`|Slot 14 NIC Port 5|
|`Slot14NicPort6`|Slot 14 NIC Port 6|
|`Slot14NicPort7`|Slot 14 NIC Port 7|
|`Slot14NicPort8`|Slot 14 NIC Port 8|
|`Slot15NicPort1`|Slot 15 NIC Port 1|
|`Slot15NicPort2`|Slot 15 NIC Port 2|
|`Slot15NicPort3`|Slot 15 NIC Port 3|
|`Slot15NicPort4`|Slot 15 NIC Port 4|
|`Slot15NicPort5`|Slot 15 NIC Port 5|
|`Slot15NicPort6`|Slot 15 NIC Port 6|
|`Slot15NicPort7`|Slot 15 NIC Port 7|
|`Slot15NicPort8`|Slot 15 NIC Port 8|
|`Slot16NicPort1`|Slot 16 NIC Port 1|
|`Slot16NicPort2`|Slot 16 NIC Port 2|
|`Slot16NicPort3`|Slot 16 NIC Port 3|
|`Slot16NicPort4`|Slot 16 NIC Port 4|
|`Slot16NicPort5`|Slot 16 NIC Port 5|
|`Slot16NicPort6`|Slot 16 NIC Port 6|
|`Slot16NicPort7`|Slot 16 NIC Port 7|
|`Slot16NicPort8`|Slot 16 NIC Port 8|
|`Slot17NicPort1`|Slot 17 NIC Port 1|
|`Slot17NicPort2`|Slot 17 NIC Port 2|
|`Slot17NicPort3`|Slot 17 NIC Port 3|
|`Slot17NicPort4`|Slot 17 NIC Port 4|
|`Slot17NicPort5`|Slot 17 NIC Port 5|
|`Slot17NicPort6`|Slot 17 NIC Port 6|
|`Slot17NicPort7`|Slot 17 NIC Port 7|
|`Slot17NicPort8`|Slot 17 NIC Port 8|
|`Slot18NicPort1`|Slot 18 NIC Port 1|
|`Slot18NicPort2`|Slot 18 NIC Port 2|
|`Slot18NicPort3`|Slot 18 NIC Port 3|
|`Slot18NicPort4`|Slot 18 NIC Port 4|
|`Slot18NicPort5`|Slot 18 NIC Port 5|
|`Slot18NicPort6`|Slot 18 NIC Port 6|
|`Slot18NicPort7`|Slot 18 NIC Port 7|
|`Slot18NicPort8`|Slot 18 NIC Port 8|
|`Slot19NicPort1`|Slot 19 NIC Port 1|
|`Slot19NicPort2`|Slot 19 NIC Port 2|
|`Slot19NicPort3`|Slot 19 NIC Port 3|
|`Slot19NicPort4`|Slot 19 NIC Port 4|
|`Slot19NicPort5`|Slot 19 NIC Port 5|
|`Slot19NicPort6`|Slot 19 NIC Port 6|
|`Slot19NicPort7`|Slot 19 NIC Port 7|
|`Slot19NicPort8`|Slot 19 NIC Port 8|
|`Slot20NicPort1`|Slot 20 NIC Port 1|
|`Slot20NicPort2`|Slot 20 NIC Port 2|
|`Slot20NicPort3`|Slot 20 NIC Port 3|
|`Slot20NicPort4`|Slot 20 NIC Port 4|
|`Slot20NicPort5`|Slot 20 NIC Port 5|
|`Slot20NicPort6`|Slot 20 NIC Port 6|
|`Slot20NicPort7`|Slot 20 NIC Port 7|
|`Slot20NicPort8`|Slot 20 NIC Port 8|
|`Slot21NicPort1`|Slot 21 NIC Port 1|
|`Slot21NicPort2`|Slot 21 NIC Port 2|
|`Slot21NicPort3`|Slot 21 NIC Port 3|
|`Slot21NicPort4`|Slot 21 NIC Port 4|
|`Slot21NicPort5`|Slot 21 NIC Port 5|
|`Slot21NicPort6`|Slot 21 NIC Port 6|
|`Slot21NicPort7`|Slot 21 NIC Port 7|
|`Slot21NicPort8`|Slot 21 NIC Port 8|
|`Slot22NicPort1`|Slot 22 NIC Port 1|
|`Slot22NicPort2`|Slot 22 NIC Port 2|
|`Slot22NicPort3`|Slot 22 NIC Port 3|
|`Slot22NicPort4`|Slot 22 NIC Port 4|
|`Slot22NicPort5`|Slot 22 NIC Port 5|
|`Slot22NicPort6`|Slot 22 NIC Port 6|
|`Slot22NicPort7`|Slot 22 NIC Port 7|
|`Slot22NicPort8`|Slot 22 NIC Port 8|

**PrebootNetworkEnvPolicy (Pre-Boot Network Environment)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a pre-boot network proxy. When set, network operations for 'Pre-Boot Network Interface' are attempted through the configured proxy. The proxy must be in an HTTP URL format, and can be specified as http://IPv4_address:port, http://IPv6 address:port or http://FQDN:port.|
|Type|String|
|Read Only|False|

**ProcAMDBoost (AMD Core Performance Boost)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|AMD Core Performance Boost enables the processor to transition to a higher frequency than the processor's rated speed if the processor has available power and is within temperature specifications. Disabling this option reduces power usage and also reduces the system's maximum achievable performance under some workloads.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**ProcAMDBoostControl (AMD Fmax Boost Limit Control)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|AMD Fmax Boost Limit setting sets the maximum processor boost frequency. Auto will allow the processor to run at the highest possible boost frequencies. Manual will allow the user to configure a lower maximum boost frequency. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AmdFmaxBoostAuto`|Auto|
|`AmdFmaxBoostManual`|Manual|

**ProcAes (Processor AES-NI Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the Advanced Encryption Standard Instruction Set (AES-NI) in the processor.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ProcAmdFmax (AMD Fmax Boost Limit)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|AMD Fmax Boost Limit setting sets the maximum processor boost frequency.|
|Type|Integer|
|Read Only|False|

**ProcAmdIoVt (AMD I/O Virtualization Technology)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This option enables or disables capabilities provided by AMD I/O Virtualization (IOMMU) functionality. This option can be left enabled for all operating environments, including those that do not make use of this capability. When this option is enabled on systems containing 1TB or more of installed memory, 4GB of memory will be reserved near the 1TB address boundary and will not be available to the operating system. When this option is enabled on systems with less than 1TB of installed memory, the memory mapped I/O address range will begin at the 1TB address boundary which should have no impact to system operation and would not impact the memory available to the operating system.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ProcSMT (AMD SMT Option)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable AMD SMT. When enabled, each physical processor core operates as two logical processor cores. When disabled, each physical processor core operates as only one logical processor core. Enabling this option can improve overall performance for applications that benefit from a higher processor core count.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ProcX2Apic (Processor x2APIC Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|x2APIC support enables operating systems to run more efficiently on high core count configurations. It also optimizes interrupt distribution in virtualized environments. In most cases, set this option to Auto. This configures the operating system to enable x2APIC support depending on the processor and chipset design. When this setting is greyed-out, X2Apic was automatically enabled. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`ForceEnabled`|Force Enabled|

**ProductId (Product ID)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the system product ID. This value must always match the product ID sticker located on the chassis.|
|Type|String|
|Read Only|False|

**Pstate0Frequency (Pstate0 Frequency (MHz))**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Specifies core frequency (MHz)|
|Type|Integer|
|Read Only|False|

**RedundantPowerSupplyGpuDomain (Redundant Power Supply Mode - GPU Domain)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**RedundantPowerSupplySystemDomain (Redundant Power Supply Mode - System Domain)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**RestoreDefaults (Restore Default System Settings)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to revert the server to a previous BIOS ROM image. The backup image is the BIOS ROM image that was used prior to the last flash event.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`CurrentRom`|Use Current ROM|
|`BackupRom`|Switch to Backup ROM|

**SataSanitize (SATA Sanitize)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control whether sanitize functionality is supported. When enabled, the Sanitize Freeze Lock command is not sent to supported SATA hard drives, enabling sanitize operation to function (the Sanitize command is supported). This option is only supported when the SATA controller is in AHCI mode. Sanitize operation only operates with hard drives that support the sanitize command.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**SataSecureErase (SATA Secure Erase)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to save the current settings as the system defaults.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`No`|No, Cancel|
|`Yes`|Yes, Save|

**SciRasSupport (SCI RAS Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to select the System Control Interrupt (SCI) signaling mode of operation. This setting can be used to allow how the system will signal the Operating System for certain error conditions. Certain resiliency features, such as Page Retire, require this setting to be set properly to allow the Operating System to properly react to the error event. Please consult documentation for which Operating Systems support which modes of SCI operation. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Ghesv1Support`|GHES v1 Support|
|`Ghesv2Support`|GHES v2 Support|

**SecStartBackupImage (Backup ROM Image Authentication)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the system serial number. This value must always match the serial number sticker located on the chassis.|
|Type|String|
|Read Only|False|

**ServerAssetTag (Server Asset Tag)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to modify the Server Asset Tag text line.|
|Type|String|
|Read Only|False|

**ServerConfigLockStatus (Server Configuration Lock Status)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Select this option to modify the server name text line.|
|Type|String|
|Read Only|False|

**ServerOtherInfo (Server Other Information)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to modify the Other Server text line.|
|Type|String|
|Read Only|False|

**ServerPrimaryOs (Server Primary OS)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to modify the Server Primary OS text line.|
|Type|String|
|Read Only|False|

**ServiceEmail (Service Contact E-mail Address)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter the server service contact e-mail address.|
|Type|String|
|Read Only|False|

**ServiceName (Service Contact Name)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter the server service contact name text.|
|Type|String|
|Read Only|False|

**ServiceOtherInfo (Service Contact Other Information)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter the other server service contact information text.|
|Type|String|
|Read Only|False|

**ServicePhone (Service Contact Phone Number)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Enter the server service contact phone number text.|
|Type|String|
|Read Only|False|

**SetupBrowserSelection (Setup Browser Selection)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**Slot10MctpBroadcastSupport (PCIe Slot 10 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot10NicBoot1 (Slot 10 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot10NicBoot2 (Slot 10 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot10NicBoot3 (Slot 10 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot10NicBoot4 (Slot 10 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot10NicBoot5 (Slot 10 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot10NicBoot6 (Slot 10 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot10NicBoot7 (Slot 10 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot10NicBoot8 (Slot 10 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot10StorageBoot (PCIe Slot 10)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot11MctpBroadcastSupport (PCIe Slot 11 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot11NicBoot1 (Slot 11 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot11NicBoot2 (Slot 11 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot11NicBoot3 (Slot 11 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot11NicBoot4 (Slot 11 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot11NicBoot5 (Slot 11 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot11NicBoot6 (Slot 11 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot11NicBoot7 (Slot 11 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot11NicBoot8 (Slot 11 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot11StorageBoot (PCIe Slot 11)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot12MctpBroadcastSupport (PCIe Slot 12 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot12NicBoot1 (Slot 12 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot12NicBoot2 (Slot 12 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot12NicBoot3 (Slot 12 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot12NicBoot4 (Slot 12 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot12NicBoot5 (Slot 12 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot12NicBoot6 (Slot 12 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot12NicBoot7 (Slot 12 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot12NicBoot8 (Slot 12 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot12StorageBoot (PCIe Slot 12)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot13MctpBroadcastSupport (PCIe Slot 13 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot13NicBoot1 (Slot 13 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot13NicBoot2 (Slot 13 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot13NicBoot3 (Slot 13 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot13NicBoot4 (Slot 13 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot13NicBoot5 (Slot 13 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot13NicBoot6 (Slot 13 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot13NicBoot7 (Slot 13 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot13NicBoot8 (Slot 13 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot13StorageBoot (PCIe Slot 13)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot14MctpBroadcastSupport (PCIe Slot 14 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot14NicBoot1 (Slot 14 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot14NicBoot2 (Slot 14 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot14NicBoot3 (Slot 14 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot14NicBoot4 (Slot 14 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot14NicBoot5 (Slot 14 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot14NicBoot6 (Slot 14 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot14NicBoot7 (Slot 14 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot14NicBoot8 (Slot 14 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot14StorageBoot (PCIe Slot 14)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot15MctpBroadcastSupport (PCIe Slot 15 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot15NicBoot1 (Slot 15 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot15NicBoot2 (Slot 15 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot15NicBoot3 (Slot 15 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot15NicBoot4 (Slot 15 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot15NicBoot5 (Slot 15 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot15NicBoot6 (Slot 15 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot15NicBoot7 (Slot 15 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot15NicBoot8 (Slot 15 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot15StorageBoot (PCIe Slot 15)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot16MctpBroadcastSupport (PCIe Slot 16 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot16NicBoot1 (Slot 16 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot16NicBoot2 (Slot 16 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot16NicBoot3 (Slot 16 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot16NicBoot4 (Slot 16 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot16NicBoot5 (Slot 16 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot16NicBoot6 (Slot 16 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot16NicBoot7 (Slot 16 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot16NicBoot8 (Slot 16 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot16StorageBoot (PCIe Slot 16)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot17MctpBroadcastSupport (PCIe Slot 17 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot17NicBoot1 (Slot 17 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot17NicBoot2 (Slot 17 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot17NicBoot3 (Slot 17 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot17NicBoot4 (Slot 17 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot17NicBoot5 (Slot 17 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot17NicBoot6 (Slot 17 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot17NicBoot7 (Slot 17 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot17NicBoot8 (Slot 17 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot17StorageBoot (PCIe Slot 17)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot18MctpBroadcastSupport (PCIe Slot 18 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot18NicBoot1 (Slot 18 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot18NicBoot2 (Slot 18 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot18NicBoot3 (Slot 18 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot18NicBoot4 (Slot 18 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot18NicBoot5 (Slot 18 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot18NicBoot6 (Slot 18 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot18NicBoot7 (Slot 18 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot18NicBoot8 (Slot 18 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot18StorageBoot (PCIe Slot 18)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot19MctpBroadcastSupport (PCIe Slot 19 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot19NicBoot1 (Slot 19 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot19NicBoot2 (Slot 19 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot19NicBoot3 (Slot 19 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot19NicBoot4 (Slot 19 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot19NicBoot5 (Slot 19 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot19NicBoot6 (Slot 19 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot19NicBoot7 (Slot 19 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot19NicBoot8 (Slot 19 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot19StorageBoot (PCIe Slot 19)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot1MctpBroadcastSupport (PCIe Slot 1 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot1NicBoot1 (Slot 1 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot2 (Slot 1 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot3 (Slot 1 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot4 (Slot 1 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot5 (Slot 1 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot6 (Slot 1 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot7 (Slot 1 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1NicBoot8 (Slot 1 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot1StorageBoot (PCIe Slot 1)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot20MctpBroadcastSupport (PCIe Slot 20 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot20NicBoot1 (Slot 20 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot20NicBoot2 (Slot 20 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot20NicBoot3 (Slot 20 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot20NicBoot4 (Slot 20 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot20NicBoot5 (Slot 20 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot20NicBoot6 (Slot 20 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot20NicBoot7 (Slot 20 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot20NicBoot8 (Slot 20 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot20StorageBoot (PCIe Slot 20)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot21MctpBroadcastSupport (PCIe Slot 21 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot21NicBoot1 (Slot 21 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot21NicBoot2 (Slot 21 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot21NicBoot3 (Slot 21 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot21NicBoot4 (Slot 21 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot21NicBoot5 (Slot 21 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot21NicBoot6 (Slot 21 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot21NicBoot7 (Slot 21 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot21NicBoot8 (Slot 21 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot21StorageBoot (PCIe Slot 21)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot22MctpBroadcastSupport (PCIe Slot 22 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot22NicBoot1 (Slot 22 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot22NicBoot2 (Slot 22 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot22NicBoot3 (Slot 22 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot22NicBoot4 (Slot 22 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot22NicBoot5 (Slot 22 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot22NicBoot6 (Slot 22 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot22NicBoot7 (Slot 22 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot22NicBoot8 (Slot 22 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot22StorageBoot (PCIe Slot 22)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot23MctpBroadcastSupport (PCIe Slot 23 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot23StorageBoot (PCIe Slot 23)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot2MctpBroadcastSupport (PCIe Slot 2 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot2NicBoot1 (Slot 2 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot2 (Slot 2 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot3 (Slot 2 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot4 (Slot 2 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot5 (Slot 2 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot6 (Slot 2 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot7 (Slot 2 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2NicBoot8 (Slot 2 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot2StorageBoot (PCIe Slot 2)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot3MctpBroadcastSupport (PCIe Slot 3 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot3NicBoot1 (Slot 3 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot2 (Slot 3 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot3 (Slot 3 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot4 (Slot 3 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot5 (Slot 3 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot6 (Slot 3 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot7 (Slot 3 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3NicBoot8 (Slot 3 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot3StorageBoot (PCIe Slot 3)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot4MctpBroadcastSupport (PCIe Slot 4 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot4NicBoot1 (Slot 4 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot2 (Slot 4 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot3 (Slot 4 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot4 (Slot 4 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot5 (Slot 4 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot6 (Slot 4 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot7 (Slot 4 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4NicBoot8 (Slot 4 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot4StorageBoot (PCIe Slot 4)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot5MctpBroadcastSupport (PCIe Slot 5 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot5NicBoot1 (Slot 5 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot2 (Slot 5 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot3 (Slot 5 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot4 (Slot 5 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot5 (Slot 5 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot6 (Slot 5 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot7 (Slot 5 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5NicBoot8 (Slot 5 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot5StorageBoot (PCIe Slot 5)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot6MctpBroadcastSupport (PCIe Slot 6 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot6NicBoot1 (Slot 6 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot2 (Slot 6 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot3 (Slot 6 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot4 (Slot 6 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot5 (Slot 6 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot6 (Slot 6 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot7 (Slot 6 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6NicBoot8 (Slot 6 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot6StorageBoot (PCIe Slot 6)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot7MctpBroadcastSupport (PCIe Slot 7 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot7NicBoot1 (Slot 7 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot7NicBoot2 (Slot 7 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot7NicBoot3 (Slot 7 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot7NicBoot4 (Slot 7 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot7StorageBoot (PCIe Slot 7)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot8MctpBroadcastSupport (PCIe Slot 8 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot8NicBoot1 (Slot 8 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot8NicBoot2 (Slot 8 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot8NicBoot3 (Slot 8 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot8NicBoot4 (Slot 8 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot8StorageBoot (PCIe Slot 8)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**Slot9MctpBroadcastSupport (PCIe Slot 9 MCTP Broadcast Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to control the PCIe Management Component Transport Protocol (MCTP) Support for a given slot. This option can be used to disable MCTP support to a given PCIe endpoint that may not properly support this protocol. It is recommended that this option remain enabled for full system functionality.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Slot9NicBoot1 (Slot 9 NIC Port 1 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot9NicBoot2 (Slot 9 NIC Port 2 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot9NicBoot3 (Slot 9 NIC Port 3 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot9NicBoot4 (Slot 9 NIC Port 4 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot9NicBoot5 (Slot 9 NIC Port 5 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot9NicBoot6 (Slot 9 NIC Port 6 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot9NicBoot7 (Slot 9 NIC Port 7 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot9NicBoot8 (Slot 9 NIC Port 8 Boot)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable network boot (PXE, iSCSI or UEFI HTTP) for the selected NIC. You might need to configure the NIC firmware for the boot option to be active. This is applicable only in UEFI Boot Mode.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NetworkBoot`|Network Boot|
|`Disabled`|Disabled|

**Slot9StorageBoot (PCIe Slot 9)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When Boot All Targets is selected, all valid boot targets attached to the storage controller are made available in the UEFI Boot Order list. If Boot No Targets is selected, no boot targets from this storage controller are made available in the UEFI Boot Order.If Boot Limit to 32 Targets is selected, 32 boot targets attached to the storage controller are made available in the UEFI Boot Order.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`AllTargets`|Boot All Targets|
|`ThirtyTwoTargets`|Boot Limit to 32 Targets|
|`NoTargets`|Boot No Targets|

**SpeculativeLockScheduling (Page Table Entry Speculative Lock Scheduling )**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Disabling this forces Page Table Entry locks to only be scheduled non-speculatively. Disabling this feature will impact performance|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**Sriov (SR-IOV)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|If enabled, SR-IOV support enables a hypervisor to create virtual instances of a PCI-express device, potentially increasing performance. If enabled, the BIOS allocates additional resources to PCI-express devices. You can leave this option set to enabled even if you are not using a hypervisor.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**TPM2EndorsementDisable (TPM 2.0 Endorsement Hierarchy)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable/disable the TPM 2.0 Endorsement Hierarchy. When the TPM 2.0 Endorsement Hierarchy is disabled, certain TPM functionality under the operating system may not operate properly.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**TPM2StorageDisable (TPM 2.0 Storage Hierarchy)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable/disable the TPM 2.0 Storage Hierarchy. When the TPM 2.0 Storage Hierarchy is disabled, certain TPM functionality under the operating system may not operate properly.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**ThermalConfig (Thermal Configuration)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|This option controls how the system time is stored in the hardware Real Time Clock (RTC). When configured to 'Coordinated Universal Time (UTC)' (default) the local time is calculated from the associated time zone value. When configured to 'Local Time' the time is stored directly as local time and the time zone option does not have meaning.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Local`|Local Time|
|`Utc`|Coordinated Universal Time (UTC)|

**TimeZone (Time Zone)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
|`UtcM930`|UTC-09:30, Marquesas|
|`UtcM9`|UTC-09:00, Alaska|
|`UtcM8`|UTC-08:00, Pacific Time(US & Canada), Tijuana, Portland|
|`UtcM7`|UTC-07:00, Arizona, Chihuahua, La Paz, Mazatlan, Mountain Time (US & Canada)|
|`UtcM6`|UTC-06:00, Central America, Central Time(US & Canada)|
|`UtcM5`|UTC-05:00, Bogota, Lima, Quito, Eastern Time(US & Canada)|
|`UtcM4`|UTC-04:00, Atlantic Time(Canada), Caracas, Santiago, Georgetown|
|`UtcM330`|UTC-03:30, Newfoundland|
|`UtcM3`|UTC-03:00, Brasilia, Buenos Aires, Greenland|
|`UtcM2`|UTC-02:00, Mid-Atlantic|
|`UtcM1`|UTC-01:00, Azores, Cape Verde Is.|
|`Utc0`|UTC-00:00, Greenwich Mean Time, Casablanca, Monrovia, Dublin, London|
|`UtcP1`|UTC+01:00, Amsterdam, Berlin, Bern, Rome, Paris, West Central Africa|
|`UtcP2`|UTC+02:00, Athens, Bucharest, Cairo, Jerusalem|
|`UtcP3`|UTC+03:00, Baghdad, Kuwait, Riyadh, Moscow, Nairobi, Istanbul|
|`UtcP330`|UTC+03:30, Tehran|
|`UtcP4`|UTC+04:00, Abu Dhabi, Muscat, Baku, Tbilisi, Yerevan|
|`UtcP430`|UTC+04:30, Kabul|
|`UtcP5`|UTC+05:00, Ekaterinburg, Islamabad, Karachi, Tashkent|
|`UtcP530`|UTC+05:30, Chennai, Kolkata, Mumbai, New Delhi|
|`UtcP545`|UTC+05:45, Kathmandu|
|`UtcP6`|UTC+06:00, Almaty, Astana, Dhaka, Sri Jayawardenepura|
|`UtcP630`|UTC+06:30, Rangoon|
|`UtcP7`|UTC+07:00, Bangkok, Hanoi, Jakarta, Krasnoyarsk, Novosibirsk|
|`UtcP8`|UTC+08:00, Beijing, Chongqing, Hong Kong, Urumqi, Taipei, Perth|
|`UtcP845`|UTC+08:45, Eucla|
|`UtcP9`|UTC+09:00, Osaka, Sapporo, Tokyo, Seoul, Yakutsk|
|`UtcP930`|UTC+09:30, Adelaide, Darwin|
|`UtcP10`|UTC+10:00, Canberra, Melbourne, Sydney, Guam, Hobart, Vladivostok|
|`UtcP1030`|UTC+10:30, Lord Howe|
|`UtcP1045`|UTC+10:45, Chatham|
|`UtcP11`|UTC+11:00, Magadan, Solomon Is., New Caledonia|
|`UtcP12`|UTC+12:00, Auckland, Wellington, Fiji, Kamchatka, Marshall Is.|
|`UtcP13`|UTC+13:00, Nuku'alofa|
|`UtcP14`|UTC+14:00, Line Islands|
|`Unspecified`|Unspecified Time Zone|

**Tpm20SoftwareInterfaceStatus (Current TPM 2.0 Software Interface Status)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Current TPM 2.0 Software Interface Status: FIFO or CRB.|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`Fifo`|FIFO interface|

**Tpm2Operation (TPM 2.0 Operation)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to perform a clear operation on the TPM. Clearing the TPM can prevent the server from booting to a TPM-aware operating system if the operating system uses TPM's measurements. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NoAction`|No Action|
|`Clear`|Clear|

**TpmActivePcrs (Current TPM 2.0 Active PCRs)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Current TPM 2.0 Active PCRs: SHA1, SHA256, SHA384, SHA1_SHA256, or SHA256_SHA384|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`NotSpecified`|Not specified|
|`Sha1`|SHA1 only|
|`Sha256`|SHA256 only|
|`Sha384`|SHA384 only|
|`Sha1Sha256`|SHA1 and SHA256|
|`Sha256Sha384`|SHA256 and SHA384|

**TpmChipId (Current TPM Chip ID)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Current TPM Chip|
|Type|Enumeration|
|Read Only|True|

|Value|Description|
|---|---|
|`None`|None|
|`StMicroGen10`|ST Micro Gen10|
|`STMicroGen10Plus`|ST Micro Gen10 Plus|
|`STMicroGen11`|ST Micro Gen11|

**TpmState (Current TPM State)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**TpmUefiOpromMeasuring (TPM UEFI Option ROM Measurement)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to hide the TPM from the operating system. When the TPM is hidden, BIOS secure startup is disabled, and the TPM does not respond to any commands. Intended use is for removing the TPM option from the system without removing the actual hardware.This option will also disable the TPM 2.0 (if active) Platform, Storage and Endorsement Hierarchies. This option is grayed out when Platform Certificate Support is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Hidden`|Hidden|
|`Visible`|Visible|

**TransparentSecureMemoryEncryption (Transparent Secure Memory Encryption)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable TSME|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UefiSerialDebugLevel (UEFI Serial Debug Message Level)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable UEFI Serial Debug output and verbosity level. Selecting Verbose can impact server boot time significantly. |
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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|When enabled, this option adds the Embedded UEFI Shell as an entry in the UEFI Boot Order list. This option is only available when the Embedded UEFI Shell is enabled.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UefiShellPhysicalPresenceKeystroke (Physical Presence with Keystroke)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use the option to enable or disable Physical Presence with Keystroke. If enabled, a countdown starts after entering Embedded UEFI Shell and stops when a keystroke is detected. If no keystroke is detected by the end of the countdown, or if the option is disabled, certain configuration actions are prevented.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UefiShellScriptVerification (Shell Script Verification)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a UEFI Shell startup script. This option is available and used only when the Auto-Start Script Location is set to 'Network Location', or 'Auto', and the Shell Auto-Start Script discovery using DHCP is set to 'Disabled'. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. FTP formats are accepted using either an IPv4 server address or a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/file.nsh, http://example.com/file/file.nsh, https://example.com/file/file.nsh, http://[1234::1000]/file.nsh. The file must end with an .nsh extension. When configured, the Embedded UEFI Shell attempts to load and execute the startup script from the network location pointed to by this URL. When an HTTPS URL is configured, you must enroll the respective HTTPS server's TLS certificate under Server Security > TLS(HTTPS) Options.|
|Type|String|
|Read Only|False|

**UefiShellStartupUrlFromDhcp (Discover Shell Auto-Start Script using DHCP)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to let the Shell discover its startup script URL using DHCP. This option is available only if the 'HTTP Support' policy is not set to 'Disabled' and Auto-Start Script Location is set to 'Network Location', or 'Auto'. When set to 'Enabled', the Shell sends DHCP requests with the DHCP User Class option set to the string 'UEFIShell'. The DHCP server must be configured to provide HTTP/HTTPS or FTP URLs when this DHCP User Class string is present in the DHCP request. The User Class option is Option 77 when using DHCP over IPv4, and Option 15 when using DHCP over IPv6. URLs in HTTP/HTTPS must use either an IPv4 or IPv6 server address, or a host name. FTP formats are accepted using either an IPv4 server address or a host name. The URL provided by the DHCP server should match the 'HTTP Support' policy. When 'HTTP Support' policy is set to 'Auto', any HTTP/HTTPS or FTP URL provided by the DHCP server is used. When policy is set to 'HTTPS only', only HTTPS URLs are used, and other URLs are ignored. When policy is set to 'HTTP only', only HTTP or FTP URLs are used, and other URLs are ignored. When policy is set to 'Disabled', the Shell does not send any DHCP request.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UefiVariableAccessFwControl (UEFI Variable Access Firmware Control)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to allow the system BIOS to completely control certain UEFI variables from being written to by other software such as an Operating System. When Disabled is selected, all UEFI variables are writable. When Enabled is selected, all changes made by software other than the system BIOS to critical UEFI variables will be blocked. For instance, new boot options the Operating System attempt to add to the top of BootOrder will actually be placed at the bottom of the BootOrder. Note: When UEFI Variable Access Firmware Control is Enabled, some Operating System functionality may not work as expected. Errors may occur while installing a new Operating System.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Disabled`|Disabled|
|`Enabled`|Enabled|

**UrlBootFile (Boot from URL 1)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso.  When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu.  This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When an HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  This option uses the IP address settings configured in this page. This is only applicable in UEFI Mode.  Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile2 (Boot from URL 2)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso.  When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu.  This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When an HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  This option uses the IP address settings configured in this page. This is only applicable in UEFI Mode.  Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile3 (Boot from URL 3)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso.  When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu.  This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When an HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  This option uses the IP address settings configured in this page. This is only applicable in UEFI Mode.  Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UrlBootFile4 (Boot from URL 4)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to configure a network URL to a bootable ISO or EFI file. URLs in HTTP/HTTPS are accepted using either an IPv4 or IPv6 server address, or using a host name. For example, the URLs can be in any of the following formats: http://192.168.0.1/file/image.iso, http://example.com/file/image.efi, https://example.com/file/image.efi, http://[1234::1000]/image.iso.  When configured, this URL is listed as a boot option in the UEFI boot menu. Selecting this boot option downloads the file to the system memory, and configures the system to attempt to boot from it. There is no specific ordering on this option. It can be independently ordered in the boot menu.  This setting requires configuring the 'Pre-Boot Network Interface' option if you want to access the URL location through a specific network interface. When an HTTPS URL is configured, this setting requires enrolling the respective TLS certificate of the HTTPS server under Server Security > TLS(HTTPS) Options.  This option uses the IP address settings configured in this page. This is only applicable in UEFI Mode.  Note: Booting from an ISO file can involve only booting a preliminary OS environment image, such as WinPE or a mini Linux, or a complete OS install image if the OS supports the HTTP Boot feature (Old OS versions may not support this). Please check your OS documentation for the HTTP Boot feature support.|
|Type|String|
|Read Only|False|

**UsbBoot (USB Boot Support)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Set this option to disabled to prevent the system from booting to any USB devices connected to the server. This includes preventing boot to virtual media devices, and the embedded SD or uSD card (if supported). If this option is disabled, firmware updates from OneView will not work.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

**UsbControl (USB Control)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to assign the logical COM port address and associated default resources used by the Virtual Serial Port (VSP). VSP enables the Management Processor to present an emulated serial port to support the BIOS Serial Console and operating system serial console. Note: VSP and Embedded Serial Port cannot be set to the same port. If VSP is changed to the same port as Embedded Serial Port, the Embedded Serial Port will automatically be reassigned.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Com1Irq4`|COM 1; IRQ4; I/O: 3F8h-3FFh|
|`Com2Irq3`|COM 2; IRQ3; I/O: 2F8h-2FFh|
|`Disabled`|Disabled|

**VlanControl (VLAN Control)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the global VLAN ID for all enabled network interfaces. Valid values are 0 to 4094.A value of 0 sets the device to send untagged frames.|
|Type|Integer|
|Read Only|False|

**VlanPriority (VLAN Priority)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to set the priority for the VLAN tagged frames. Valid values are 0 to 7.|
|Type|Integer|
|Read Only|False|

**WakeOnLan (Wake-On LAN)**
Member of [Bios.v1\_0\_5.Bios](#bios)

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
Member of [Bios.v1\_0\_5.Bios](#bios)

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

**XGMIForceLinkWidth (XGMI Force Link Width)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|XGMI Force Link Width setting forces the XGMI link width to a value set by the user. Auto will use the system default setting. Other options will force the user setting to be used. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`x4`|x4|
|`x8`|x8|
|`x16`|x16|

**XGMIMaxLinkWidth (XGMI Max Link Width)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|XGMI Max Link Width setting sets the maximum XGMI link width to a value set by the user. Auto will use the system default setting. Other options will force the user setting to be used. |
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Auto`|Auto|
|`x4`|x4|
|`x8`|x8|
|`x16`|x16|

**iSCSISoftwareInitiator (iSCSI Software Initiator)**
Member of [Bios.v1\_0\_5.Bios](#bios)

| | |
|---|---|
|Description|Use this option to enable or disable the iSCSI Software Initiator. When enabled, the system's iSCSI Software Initiator will be used to access iSCSI targets on any configured NIC ports. When disabled, the system's iSCSI Software Initiator will not attempt to access any configured iSCSI targets.|
|Type|Enumeration|
|Read Only|False|

|Value|Description|
|---|---|
|`Enabled`|Enabled|
|`Disabled`|Disabled|

