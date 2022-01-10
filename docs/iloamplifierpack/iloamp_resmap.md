---
seo:
  title: Resource map
disableLastModified: true
toc:
  enable: false
---

# Resource Map
|URI|Type|
|:---|:---|
|`/redfish/v1`|[ServiceRoot](/docs/iloamplifierpack/iloamp_resourcedefns/#serviceroot-1-3-1)|
|`/redfish/v1/AccountService`|[AccountService](/docs/iloamplifierpack/iloamp_resourcedefns/#accountservice-1-3-0)|
|`/redfish/v1/AccountService/Accounts`|Collection of [ManagerAccount](/docs/iloamplifierpack/iloamp_resourcedefns/#manageraccount-1-1-2)|
|`/redfish/v1/AccountService/Accounts/{item}`|[ManagerAccount](/docs/iloamplifierpack/iloamp_resourcedefns/#manageraccount-1-1-2)|
|`/redfish/v1/AccountService/PrivilegeRegistry`|[PrivilegeRegistry](/docs/iloamplifierpack/iloamp_resourcedefns/#privilegeregistry-1-1-1)|
|`/redfish/v1/AccountService/Roles`|Collection of [Role](/docs/iloamplifierpack/iloamp_resourcedefns/#role-1-2-1)|
|`/redfish/v1/AddOnServices`|Collection of [HpeWfmAddOnServices](#hpewfmaddonservices)|
|`/redfish/v1/AggregatorService`|[HpeWfmAggregatorService](#hpewfmaggregatorservice)|
|`/redfish/v1/AggregatorService/Dashboard/Alerts`|[HpeWfmDashboardAlerts](#hpewfmdashboardalerts)|
|`/redfish/v1/AggregatorService/Dashboard/Assets`|[HpeWfmDashboardAssets](#hpewfmdashboardassets)|
|`/redfish/v1/AggregatorService/Dashboard/Compliance`|[HpeWfmDashboardCompliance](#hpewfmdashboardcompliance)|
|`/redfish/v1/AggregatorService/Dashboard/InfoSightAlerts`|[HpeWfmDashboardInfoSightAlerts](/docs/iloamplifierpack/iloamp_resourcedefns/#hpewfmdashboardInfoSightalerts-v1_0_0-hpewfmdashboardInfoSightalerts)|
|`/redfish/v1/AggregatorService/Dashboard/ServerGroups`|[HpeWfmDashboardServerGroups](#hpewfmdashboardservergroups)|
|`/redfish/v1/AggregatorService/FederationGroups`|Collection of [HpeWfmFederationGroup](#hpewfmfederationgroup)|
|`/redfish/v1/AggregatorService/LicenseInfo`|[HpeWfmLicenseInfo](#hpewfmlicenseinfo)|
|`/redfish/v1/AggregatorService/LogServices`|Collection of [LogService](/docs/iloamplifierpack/iloamp_resourcedefns/#logservice-1-1-0)|
|`/redfish/v1/AggregatorService/LogServices/AlertLog`|[LogService](/docs/iloamplifierpack/iloamp_resourcedefns/#logservice-1-1-0)|
|`/redfish/v1/AggregatorService/LogServices/AlertLog/Entries`|Collection of [LogEntry](/docs/iloamplifierpack/iloamp_resourcedefns/#logentry-1-3-0)|
|`/redfish/v1/AggregatorService/ManagedGroups`|Collection of [HpeWfmManagedGroup](#hpewfmmanagedgroup)|
|`/redfish/v1/AggregatorService/ManagedServerGroups`|Collection of [HpeWfmManagedServerGroups](#hpewfmmanagedservergroups)|
|`/redfish/v1/AggregatorService/ManagedServerGroups/{item}`|[HpeWfmManagedServerGroups](#hpewfmmanagedservergroups)|
|`/redfish/v1/AggregatorService/ManagedServerGroups/{item}/ManagedSystems`|Collection of [HpeWfmManagedSystem](#hpewfmmanagedsystem)|
|`/redfish/v1/AggregatorService/ManagedServerGroups/{item}/ManagedSystems/{item}`|[HpeWfmManagedSystem](#hpewfmmanagedsystem)|
|`/redfish/v1/AggregatorService/ManagedServerGroups/{item}/ManagedSystems/{item}`|Collection of [HpeWfmSystemSummary](#hpewfmsystemsummary)|
|`/redfish/v1/AggregatorService/ManagedServerGroups/{item}/ManagedSystems/{item}/Summary`|[HpeWfmSystemSummary](#hpewfmsystemsummary)|
|`/redfish/v1/AggregatorService/ManagedSystems`|Collection of [HpeWfmManagedSystem](#hpewfmmanagedsystem)|
|`/redfish/v1/AggregatorService/ManagedSystems/{item}`|[HpeWfmManagedSystem](#hpewfmmanagedsystem)|
|`/redfish/v1/AggregatorService/ManagedSystems/{item}`|Collection of [HpeWfmSystemSummary](#hpewfmsystemsummary)|
|`/redfish/v1/AggregatorService/ManagedSystems/{item}/Summary`|[HpeWfmSystemSummary](#hpewfmsystemsummary)|
|`/redfish/v1/AggregatorService/Reports`|Collection of [HpeWfmManagedSystem](/docs/iloamplifierpack/iloamp_resourcedefns/#hpewfmmanagedsystem-v1_0_0-hpewfmmanagedsystem)|
|`/redfish/v1/AggregatorService/ServerGroups`|Collection of [HpeWfmServerGroups](#hpewfmservergroups)|
|`/redfish/v1/AggregatorService/ServerGroups/{item}`|[HpeWfmServerGroups](#hpewfmservergroups)|
|`/redfish/v1/AggregatorService/ServerGroups/{item}/Systems`|Collection of [ComputerSystem](/docs/iloamplifierpack/iloamp_resourcedefns/#computersystem-1-5-0)|
|`/redfish/v1/AggregatorService/Systems`|Collection of [ComputerSystem](/docs/iloamplifierpack/iloamp_resourcedefns/#computersystem-1-5-0)|
|`/redfish/v1/Chassis`|Collection of [Chassis](/docs/iloamplifierpack/iloamp_resourcedefns/#chassis-1-7-0)|
|`/redfish/v1/Chassis/{item}`|[Chassis](/docs/iloamplifierpack/iloamp_resourcedefns/#chassis-1-7-0)|
|`/redfish/v1/Chassis/{item}/Power`|[Power](/docs/iloamplifierpack/iloamp_resourcedefns/#power-1-5-0)|
|`/redfish/v1/Chassis/{item}/Thermal`|[Thermal](/docs/iloamplifierpack/iloamp_resourcedefns/#thermal-1-4-0)|
|`/redfish/v1/EventService`|[EventService](/docs/iloamplifierpack/iloamp_resourcedefns/#eventservice-1-0-6)|
|`/redfish/v1/EventService/Subscriptions`|Collection of [EventDestination](/docs/iloamplifierpack/iloamp_resourcedefns/#eventdestination-1-3-0)|
|`/redfish/v1/JobService`|[JobService](/docs/iloamplifierpack/iloamp_resourcedefns/#jobservice-1-0-0)|
|`/redfish/v1/JobService/Jobs`|Collection of [Job](/docs/iloamplifierpack/iloamp_resourcedefns/#job-1-0-1)|
|`/redfish/v1/JobService/Jobs/{item}`|[Job](/docs/iloamplifierpack/iloamp_resourcedefns/#job-1-0-1)|
|`/redfish/v1/JobService/Jobs/{item}/Steps`|Collection of [Job](/docs/iloamplifierpack/iloamp_resourcedefns/#job-1-0-1)|
|`/redfish/v1/JobService/Jobs/{item}/Steps/{item}`|[Job](/docs/iloamplifierpack/iloamp_resourcedefns/#job-v1_0_1-job)|
|`/redfish/v1/JobService/Results/BaselineComplianceJobs/{item}`|[HpeWfmSppComplianceJobResults](#hpewfmsppcompliancejobresults)|
|`/redfish/v1/JobService/Results/ServerUpdateJobs/{item}`|Collection of [HpeWfmUpdateJobResults](#hpewfmupdatejobresults)|
|`/redfish/v1/JobService/Results/ServerUpdateJobs/{item}/{item}`|[HpeWfmUpdateJobResults](#hpewfmupdatejobresults)|
|`/redfish/v1/Managers`|Collection of [Manager](/docs/iloamplifierpack/iloamp_resourcedefns/#manager-1-4-0)|
|`/redfish/v1/Managers/iLOAmplifier`|[Manager](/docs/iloamplifierpack/iloamp_resourcedefns/#manager-1-4-0)|
|`/redfish/v1/Managers/iLOAmplifier/AddOnServicesManager`|Collection of [HpeWfmAddOnServicesManager](/docs/iloamplifierpack/iloamp_resourcedefns/#hpewfmaddonservicesmanager-v1_0_0-hpewfmaddonservicesmanager)|
|`/redfish/v1/Managers/iLOAmplifier/AddOnServicesManager/hpehsm`|[HpeWfmAddOnServicesManager](/docs/iloamplifierpack/iloamp_resourcedefns/#hpewfmaddonservicesmanager-v1_0_0-hpewfmaddonservicesmanager)|
|`/redfish/v1/Managers/iLOAmplifier/BaselineService`|[HpeWfmBaselineService](#hpewfmbaselineservice)|
|`/redfish/v1/Managers/iLOAmplifier/BaselineService/Baselines`|Collection of [HpeWfmBaseline](#hpewfmbaseline)|
|`/redfish/v1/Managers/iLOAmplifier/BaselineService/Baselines/{item}`|[HpeWfmBaseline](#hpewfmbaseline)|
|`/redfish/v1/Managers/iLOAmplifier/DateTime`|[HpeWfmDateTime](#hpewfmdatetime)|
|`/redfish/v1/Managers/iLOAmplifier/EthernetInterfaces`|Collection of [EthernetInterface](/docs/iloamplifierpack/iloamp_resourcedefns/#ethernetinterface-1-4-0)|
|`/redfish/v1/Managers/iLOAmplifier/EthernetInterfaces/{item}`|[EthernetInterface](/docs/iloamplifierpack/iloamp_resourcedefns/#ethernetinterface-1-4-0)|
|`/redfish/v1/Managers/iLOAmplifier/InfoSightPolicy`|[HpeWfmInfoSightAggregation](#hpewfmInfoSightaggregation)|
|`/redfish/v1/Managers/iLOAmplifier/LicenseService`|Collection of [HpeWfmLicense](#hpewfmlicense)|
|`/redfish/v1/Managers/iLOAmplifier/LicenseService/{item}`|[HpeWfmLicense](#hpewfmlicense)|
|`/redfish/v1/Managers/iLOAmplifier/LogServices`|Collection of [LogService](/docs/iloamplifierpack/iloamp_resourcedefns/#logservice-1-1-0)|
|`/redfish/v1/Managers/iLOAmplifier/LogServices/DeviceAlertLog`|[LogService](/docs/iloamplifierpack/iloamp_resourcedefns/#logservice-1-1-0)|
|`/redfish/v1/Managers/iLOAmplifier/LogServices/DeviceAlertLog/Entries`|Collection of [LogEntry](/docs/iloamplifierpack/iloamp_resourcedefns/#logentry-1-3-0)|
|`/redfish/v1/Managers/iLOAmplifier/NetworkProtocol`|[ManagerNetworkProtocol](/docs/iloamplifierpack/iloamp_resourcedefns/#managernetworkprotocol-1-2-0)|
|`/redfish/v1/Managers/iLOAmplifier/SecurityService`|[HpeSecurityService](#hpesecurityservice)|
|`/redfish/v1/Managers/iLOAmplifier/SecurityService/HttpsCACerts`|Collection of [HpeWfmHttpsCert](#hpewfmhttpscert)|
|`/redfish/v1/Managers/iLOAmplifier/SecurityService/HttpsCert`|[HpeHttpsCert](#hpehttpscert)|
|`/redfish/v1/Registries`|Collection of [MessageRegistryFile](/docs/iloamplifierpack/iloamp_resourcedefns/#messageregistryfile-1-1-0)|
|`/redfish/v1/Registries/{item}`|[MessageRegistryFile](/docs/iloamplifierpack/iloamp_resourcedefns/#messageregistryfile-1-1-0)|
|`/redfish/v1/Schemas`|Collection of [JsonSchemaFile](/docs/iloamplifierpack/iloamp_resourcedefns/#jsonschemafile-1-1-0)|
|`/redfish/v1/Schemas/{item}`|[JsonSchemaFile](/docs/iloamplifierpack/iloamp_resourcedefns/#jsonschemafile-1-1-0)|
|`/redfish/v1/SessionService`|[SessionService](/docs/iloamplifierpack/iloamp_resourcedefns/#sessionservice-1-1-3)|
|`/redfish/v1/SessionService/Sessions`|Collection of [Session](/docs/iloamplifierpack/iloamp_resourcedefns/#session-1-1-0)|
|`/redfish/v1/SessionService/Sessions/{item}`|[Session](/docs/iloamplifierpack/iloamp_resourcedefns/#session-1-1-0)|
|`/redfish/v1/Systems`|Collection of [ComputerSystem](/docs/iloamplifierpack/iloamp_resourcedefns/#computersystem-1-5-0)|
|`/redfish/v1/Systems/{item}`|[ComputerSystem](/docs/iloamplifierpack/iloamp_resourcedefns/#computersystem-1-5-0)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces`|Collection of [EthernetInterface](/docs/iloamplifierpack/iloamp_resourcedefns/#ethernetinterface-1-4-0)|
|`/redfish/v1/Systems/{item}/EthernetInterfaces/{item}`|[EthernetInterface](/docs/iloamplifierpack/iloamp_resourcedefns/#ethernetinterface-1-4-0)|
|`/redfish/v1/Systems/{item}/FirmwareInventory`|Collection of [SoftwareInventory](/docs/iloamplifierpack/iloamp_resourcedefns/#softwareinventory-1-2-0)|
|`/redfish/v1/Systems/{item}/Memory`|Collection of [Memory](/docs/iloamplifierpack/iloamp_resourcedefns/#memory-1-5-0)|
|`/redfish/v1/Systems/{item}/Memory/{item}`|[Memory](/docs/iloamplifierpack/iloamp_resourcedefns/#memory-1-5-0)|
|`/redfish/v1/Systems/{item}/Processor`|Collection of [Processor](/docs/iloamplifierpack/iloamp_resourcedefns/#processor-1-3-0)|
|`/redfish/v1/Systems/{item}/Processor/{item}`|[Processor](/docs/iloamplifierpack/iloamp_resourcedefns/#processor-1-3-0)|
|`/redfish/v1/Systems/{item}/SoftwareInventory`|Collection of [SoftwareInventory](/docs/iloamplifierpack/iloamp_resourcedefns/#softwareinventory-1-2-0)|
|`/redfish/v1/Systems/{item}/Storage`|Collection of [Storage](/docs/iloamplifierpack/iloamp_resourcedefns/#storage-1-4-0)|
|`/redfish/v1/Systems/{item}/Storage/{item}`|[Storage](/docs/iloamplifierpack/iloamp_resourcedefns/#storage-1-4-0)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Drives/{item}`|[Drive](/docs/iloamplifierpack/iloamp_resourcedefns/#drive-1-4-0)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Volumes`|Collection of [Volume](/docs/iloamplifierpack/iloamp_resourcedefns/#volume-1-0-3)|
|`/redfish/v1/Systems/{item}/Storage/{item}/Volumes/{item}`|[Volume](/docs/iloamplifierpack/iloamp_resourcedefns/#volume-1-0-3)|
|`/redfish/v1/TaskService`|[TaskService](/docs/iloamplifierpack/iloamp_resourcedefns/#taskservice-1-1-1)|
|`/redfish/v1/TaskService/Tasks`|Collection of [Task](/docs/iloamplifierpack/iloamp_resourcedefns/#task-1-2-0)|
|`/redfish/v1/TaskService/Tasks/{item}`|[Task](/docs/iloamplifierpack/iloamp_resourcedefns/#task-1-2-0)|
|`/redfish/v1/UpdateService`|[UpdateService](/docs/iloamplifierpack/iloamp_resourcedefns/#updateservice-1-2-1)|
|`/redfish/v1/UpdateService/FirmwareInventory`|Collection of [SoftwareInventory](/docs/iloamplifierpack/iloamp_resourcedefns/#softwareinventory-1-2-0)|
|`/redfish/v1/UpdateService/FirmwareInventory/{item}`|[SoftwareInventory](/docs/iloamplifierpack/iloamp_resourcedefns/#softwareinventory-1-2-0)|
|`/redfish/v1/UpdateService/SoftwareInventory`|Collection of [SoftwareInventory](/docs/iloamplifierpack/iloamp_resourcedefns/#softwareinventory-1-2-0)|
|`/redfish/v1/UpdateService/SoftwareInventory/{item}`|[SoftwareInventory](/docs/iloamplifierpack/iloamp_resourcedefns/#softwareinventory-1-2-0)|
