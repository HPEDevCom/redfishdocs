---
seo:
  title: Smart NICs
toc:
  enable: true
  maxDepth: 3
disableLastModified: false
---

# DPUs and SmartNICs

This section provides detail and specificities of Data Processing Units (DPUs) and SmartNICs
as introduced by the DMTF in this <a href="https://www.dmtf.org/sites/default/files/standards/documents/DSP2063_1.0.0.pdf"
target="_blank">document</a>.

## Nokia Cloud RAN SmartNIC

The data model of the <a href="https://www.nokia.com/networks/mobile-networks/airscale-radio-access/cloud-ran/"
target="_blank">Nokia Cloud RAN SmartNIC</a> card, as well as examples of requests and responses
are presented in this paragraph.

### Properties

The Nokia Cloud RAN SmartNIC card is modeled in the Redfish tree as a
[Network Adapter](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_network_resourcedefns{{process.env.LATEST_FW_VERSION}}/#networkadapter)
contained in the main Chassis subsystem (`/redfish/v1/Chassis/1`).

#### Getting properties

The following example retrieves the properties of a
Nokia Cloud RAN SmartNIC card from the `NetworkAdapter` subsystem, including `Status/Health`
and `BootStage`.

```text GET Nokia Network Adapter properties
GET '/redfish/v1/Chassis/1/NetworkAdapters/?$expand=.' | \
     jq '.Members[] | select (.Name | contains("RAN Inline"))'
```

```json Nokia Network Adapter output
{
    "@odata.context": "/redfish/v1/$metadata#NetworkAdapter.NetworkAdapter",
    "@odata.etag": "W/"50C7F594"",
    "@odata.id": "/redfish/v1/Chassis/1/NetworkAdapters/DA000000",
    "@odata.type": "#NetworkAdapter.v1_9_0.NetworkAdapter",
    "Id": "DA000000",
    "@Redfish.Settings": {
        "SettingsObject": {
            "@odata.id": "/redfish/v1/Chassis/1/NetworkAdapters/DA000000/Settings"
        }
    },
    "Controllers": [
        {
            "ControllerCapabilities": {},
            "FirmwarePackageVersion": "N/A",
            "Location": {
                "PartLocation": {
                    "LocationOrdinalValue": 1,
                    "LocationType": "Slot",
                    "ServiceLabel": "PCI-E Slot 1"
                }
            }
        }
    ],
    "Location": {
        "PartLocation": {
            "LocationOrdinalValue": 1,
            "LocationType": "Slot",
            "ServiceLabel": "PCI-E Slot 1"
        }
    },
    "Manufacturer": "Nokia Solutions and Networks",
    "Model": "RAN Inline Accelerator type 2",
    "Name": "RAN Inline Accelerator type 2",
    "Oem": {
        "Hpe": {
            "@odata.context": "/redfish/v1/$metadata#HpeNetworkAdapter.HpeNetworkAdapter",
            "@odata.type": "#HpeNetworkAdapter.v1_10_1.HpeNetworkAdapter",
            "Actions": {
                "#HpeNetworkAdapter.ColdReset": {
                    "target": "/redfish/v1/Chassis/1/NetworkAdapters/DA000000/Actions/Oem/Hpe/HpeNetworkAdapter.ColdReset",
                    "title": "Cold Reset the network adapter "
                },
                "#HpeNetworkAdapter.PowerSaveOff": {
                    "target": "/redfish/v1/Chassis/1/NetworkAdapters/DA000000/Actions/Oem/Hpe/HpeNetworkAdapter.PowerSaveOff",
                    "title": "Enable Power Save off the Network Adapter "
                },
                "#HpeNetworkAdapter.PowerSaveOn": {
                    "target": "/redfish/v1/Chassis/1/NetworkAdapters/DA000000/Actions/Oem/Hpe/HpeNetworkAdapter.PowerSaveOn",
                    "title": "Enable Power Save on the Network Adapter "
                },
                "#HpeNetworkAdapter.WarmReset": {
                    "target": "/redfish/v1/Chassis/1/NetworkAdapters/DA000000/Actions/Oem/Hpe/HpeNetworkAdapter.WarmReset",
                    "title": "Warm Reset the network adapter "
                }
            },
            "BaseMACAddress": "28:74:f5:07:83:66",
            "BootStageSensors": [
                {
                    "BootStage": "U-Boot Boot State - SUCCESS",
                    "Name": "RNIC_BOOT_STATE"
                }
            ],
            "Controllers": [],
            "FlashBankCSControl": 2,
            "FlashBankMuxControl": 0,
            "NextBootFlashBank": "SPI0_CS0_FLASH1",
            "PowerSensors": [
                {
                    "Name": "PCI 1-Power_RNIC_Chip",
                    "PowerCapacityWatts": 29,
                    "SensorId": 0,
                    "Status": {
                        "Health": "OK",
                        "State": "Enabled"
                    }
                },
                {
                    "Name": "PCI 1-Power_RNIC_A12V",
                    "PowerCapacityWatts": 0,
                    "SensorId": 1,
                    "Status": {
                        "Health": "OK",
                        "State": "Enabled"
                    }
                },
                {
                    "Name": "PCI 1-Power_RNIC_P12V",
                    "PowerCapacityWatts": 40,
                    "SensorId": 2,
                    "Status": {
                        "Health": "OK",
                        "State": "Enabled"
                    }
                }
            ],
            "StructuredName": "NIC.Slot.1.1",
            "UEFIDevicePath": "PciRoot(0x1)/Pci(0x1,0x0)/Pci(0x0,0x0)"
        }
    },
    "PartNumber": "A-RINLINE2-B/AF1791.01",
    "Ports": {
        "@odata.id": "/redfish/v1/Chassis/1/NetworkAdapters/DA000000/Ports"
    },
    "SerialNumber": "L1232905899",
    "Status": {
        "Health": "OK",
        "State": "Enabled"
    }
}
```

As a PCIe device, the Nokia Cloud RAN SmartNIC card is a member of the
[PCIeDevice Collection](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#pciedevicecollection)
of the main chassis.

The following example retrieves the PCIe properties of a Nokia Cloud RAN SmartNIC card.

```text GET Nokia PICe properties
GET /redfish/v1/Chassis/1/PCieDevices/?$expand=.' | \
    jq '.Members[] | select (.Name | contains("RAN Inline"))'  
```

```json Nokia PCIe properties output
{
    "@odata.context": "/redfish/v1/$metadata#PCIeDevice.PCIeDevice",
    "@odata.etag": "W/"4DA55F10"",
    "@odata.id": "/redfish/v1/Chassis/1/PCIeDevices/115",
    "@odata.type": "#PCIeDevice.v1_5_0.PCIeDevice",
    "Id": "115",
    "FirmwareVersion": "N/A",
    "Manufacturer": "Nokia Solutions and Networks",
    "Model": "A-RINLINE2-B/AF1791.01",
    "Name": "RAN Inline Accelerator type 2",
    "PCIeFunctions": {
        "@odata.id": "/redfish/v1/chassis/1/PCIedevices/115/PCIeFunctions"
    },
    "PartNumber": "A-RINLINE2-B/AF1791.01",
    "SKU": "A-RINLINE2-B/AF1791.01",
    "SerialNumber": "L1232905899",
    "Status": {
        "Health": "OK",
        "State": "Enabled"
    }
}
```

The firmware properties of the Nokia Cloud RAN SmartNIC card can be retrieved from the
Firmware Inventory URI of the `SoftwareInventory` [schema](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_other_resourcedefns{{process.env.LATEST_FW_VERSION}}/#softwareinventory)
as shown in the following example.

``` text GET firmware properties
GET /redfish/v1/UpdateService/FirmwareInventory/?$expand=. | \
    jq '.Members[] | select(.Name | contains("Nokia Cloud"))'
```

```json firmware output
  {
    "@odata.context": "/redfish/v1/$metadata#SoftwareInventory.SoftwareInventory",
    "@odata.id": "/redfish/v1/UpdateService/FirmwareInventory/14/",
    "@odata.type": "#SoftwareInventory.v1_2_0.SoftwareInventory",
    "Id": "14",
    "Description": "177dbc00177dbc00",
    "Name": "Nokia Cloud RAN SmartNIC 4403",
    "Oem": {
    "Hpe": {
        "@odata.context": "/redfish/v1/$metadata#HpeiLOSoftwareInventory.HpeiLOSoftwareInventory",
        "@odata.type": "#HpeiLOSoftwareInventory.v2_1_0.HpeiLOSoftwareInventory",
        "DeviceClass": null,
        "DeviceContext": "PCI-E Slot 3",
        "DeviceInstance": "PciRoot(0x4)/Pci(0x1,0x0)/Pci(0x0,0x0)",
        "Targets": [
        "a6b1a447-382a-5a4f-177d-bc00177dbc00"
          ]
        }
      },
    "Updateable": false,
    "Version": "SDK12.24.06"
  }
```

#### Setting properties

Writeable properties can be modified with a PATCH request
against the `NetworkAdapter/{item}`
[URI](/docs/redfishservices/ilos/{{process.env.LATEST_ILO_GEN_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_{{process.env.LATEST_FW_VERSION}}/{{process.env.LATEST_ILO_GEN_VERSION}}_network_resourcedefns{{process.env.LATEST_FW_VERSION}}/#resource-instances-1).
The following example configures the Nokia SmartNIC card to boot from a specific Bank.

:::success TIP
Property modification are effective immediately after
a successful PATCH request (no server restart required).
:::

The `BootBankSelected` property supports the following values:

- `Bank1`
- `Bank2`

```text Generic request
PATCH /redfish/v1/Chassis/1/NetworkAdapters/{item}/
```

```json Boot Bank Payload
{
  "Oem":
  {
    "Hpe":
      {
      "BootBankSelected":"Bank1"
      }
  }
}
```

```json Body response
{
  "error": {
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information.",
    "@Message.ExtendedInfo": [
      {
      "MessageId": "Base.1.17.Success"
      }
    ]
  }
}
```

The following example configures two OEM specific properties with
a PATCH request.

```text Generic request
PATCH /redfish/v1/Chassis/1/NetworkAdapters/{item}
```

```json Oem payload
{
  "Oem":
    {
    "Hpe":
      {
      "FlashBankCSControl":3
      "FlashBankMuxControl":1
      }
    }
}
```

```json BodyResponse
{
  "error": {
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information.",
      "@Message.ExtendedInfo": [
        {
        "MessageId": "Base.1.17.Success"
        }
      ]
    }
}
```

### Sensors

Power information can be retrieved from the `Power` subsystem, under the main
chassis, as shown in the following example.

```text GET Nokia Power
GET /redfish/v1/Chassis/1/Power | jq '.Voltages'
```

```json Nokia Power output
{
    "Voltages": [
        {
            "@odata.id": "/redfish/v1/Chassis/1/Power#Voltages/1",
            "LowerThresholdCritical": 0.6750,
            "LowerThresholdFatal": 0.650,
            "LowerThresholdNonCritical": 0.70,
            "MemberId": "1",
            "Name": "PCI 1-Volt_RNIC_VSYS",
            "ReadingVolts": 0.7210,
            "Status": {
                "Health": "OK",
                "State": "Enabled"
            },
            "UpperThresholdCritical": 0.9750,
            "UpperThresholdFatal": 1.0,
            "UpperThresholdNonCritical": 0.950
        },
        {
            "@odata.id": "/redfish/v1/Chassis/1/Power#Voltages/2",
            "LowerThresholdCritical": 10.0,
            "LowerThresholdFatal": 0.0,
            "LowerThresholdNonCritical": 0.0,
            "MemberId": "2",
            "Name": "PCI 1-Volt_RNIC_A12V",
            "ReadingVolts": 0.0,
            "Status": {
                "Health": "OK",
                "State": "Enabled"
            },
            "UpperThresholdCritical": 13.0,
            "UpperThresholdFatal": 0.0,
            "UpperThresholdNonCritical": 0.0
        },
        {
            "@odata.id": "/redfish/v1/Chassis/1/Power#Voltages/3",
            "LowerThresholdCritical": 10.0,
            "LowerThresholdFatal": 0.0,
            "LowerThresholdNonCritical": 0.0,
            "MemberId": "3",
            "Name": "PCI 1-Volt_RNIC_P12V",
            "ReadingVolts": 12.0,
            "Status": {
                "Health": "OK",
                "State": "Enabled"
            },
            "UpperThresholdCritical": 13.0,
            "UpperThresholdFatal": 0.0,
            "UpperThresholdNonCritical": 0.0
        }
    ]
}
```

Temperature information can be retrieved from the `Thermal` subsystem, under the main chassis,
as shown in the following example.

```text GET Nokia Temperatures
GET  /redfish/v1/Chassis/1/Thermal | \
     jq '.Temperatures[] | select(.Name | contains("RNIC"))'
```

```json Nokia Temp output
    {
        "@odata.id": "/redfish/v1/Chassis/1/Thermal#Temperatures/23",
        "MemberId": "23",
        "Name": "20.2-PCI 1-Temp_RNIC_Front",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeSeaOfSensors.HpeSeaOfSensors",
                "@odata.type": "#HpeSeaOfSensors.v2_1_0.HpeSeaOfSensors",
                "LocationXmm": 2,
                "LocationYmm": 4,
                "MainSensorName": "20-PCI 1"
            }
        },
        "PhysicalContext": "SystemBoard",
        "ReadingCelsius": 37,
        "SensorNumber": 23,
        "Status": {
            "Health": "OK",
            "State": "Enabled"
        },
        "UpperThresholdCritical": 70,
        "UpperThresholdFatal": null,
        "UpperThresholdNonCritical": 65
    },
    {
        "@odata.id": "/redfish/v1/Chassis/1/Thermal#Temperatures/24",
        "MemberId": "24",
        "Name": "20.3-PCI 1-Temp_RNIC_Rear",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeSeaOfSensors.HpeSeaOfSensors",
                "@odata.type": "#HpeSeaOfSensors.v2_1_0.HpeSeaOfSensors",
                "LocationXmm": 2,
                "LocationYmm": 4,
                "MainSensorName": "20-PCI 1"
            }
        },
        "PhysicalContext": "SystemBoard",
        "ReadingCelsius": 55,
        "SensorNumber": 23,
        "Status": {
            "Health": "OK",
            "State": "Enabled"
        },
        "UpperThresholdCritical": 80,
        "UpperThresholdFatal": null,
        "UpperThresholdNonCritical": 75
    },
    {
        "@odata.id": "/redfish/v1/Chassis/1/Thermal#Temperatures/25",
        "MemberId": "25",
        "Name": "24.1-PCI 3-chip_temp",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeSeaOfSensors.HpeSeaOfSensors",
                "@odata.type": "#HpeSeaOfSensors.v2_1_0.HpeSeaOfSensors",
                "LocationXmm": 6,
                "LocationYmm": 3,
                "MainSensorName": "24-PCI 3"
            }
        },
        "PhysicalContext": "SystemBoard",
        "ReadingCelsius": 90,
        "SensorNumber": 24,
        "Status": {
            "Health": "OK",
            "State": "Enabled"
        },
        "UpperThresholdCritical": 110,
        "UpperThresholdFatal": 130,
        "UpperThresholdNonCritical": 100
    },
    {
        "@odata.id": "/redfish/v1/Chassis/1/Thermal#Temperatures/26",
        "MemberId": "26",
        "Name": "24.2-PCI 3-Temp_RNIC_Front",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeSeaOfSensors.HpeSeaOfSensors",
                "@odata.type": "#HpeSeaOfSensors.v2_1_0.HpeSeaOfSensors",
                "LocationXmm": 6,
                "LocationYmm": 3,
                "MainSensorName": "24-PCI 3"
            }
        },
        "PhysicalContext": "SystemBoard",
        "ReadingCelsius": 39,
        "SensorNumber": 24,
        "Status": {
            "Health": "OK",
            "State": "Enabled"
        },
        "UpperThresholdCritical": 70,
        "UpperThresholdFatal": null,
        "UpperThresholdNonCritical": 65
    },
    {
        "@odata.id": "/redfish/v1/Chassis/1/Thermal#Temperatures/27",
        "MemberId": "27",
        "Name": "24.3-PCI 3-Temp_RNIC_Rear",
        "Oem": {
            "Hpe": {
                "@odata.context": "/redfish/v1/$metadata#HpeSeaOfSensors.HpeSeaOfSensors",
                "@odata.type": "#HpeSeaOfSensors.v2_1_0.HpeSeaOfSensors",
                "LocationXmm": 6,
                "LocationYmm": 3,
                "MainSensorName": "24-PCI 3"
            }
        },
        "PhysicalContext": "SystemBoard",
        "ReadingCelsius": 68,
        "SensorNumber": 24,
        "Status": {
            "Health": "OK",
            "State": "Enabled"
        },
        "UpperThresholdCritical": 80,
        "UpperThresholdFatal": null,
        "UpperThresholdNonCritical": 75
    }
```

### Actions

The Nokia Cloud RAN SmartNIC card supports several
OEM extension actions listed in the Network Adapter [properties](#properties).

Among them are `ColdReset` and `WarmReset`. Send a POST request to
their respective target with a `null` payload. You should receive a Success
message in return.  

```text POST ColdReset
POST /redfish/v1/Chassis/1/NetworkAdapters/DA000000/Actions/Oem/Hpe/HpeNetworkAdapter.ColdReset
```

```text POST WarmReset
POST /redfish/v1/Chassis/1/NetworkAdapters/DA000000/Actions/Oem/Hpe/HpeNetworkAdapter.WarmReset
```

```json Body response
  {
    "error": {
    "code": "iLO.0.10.ExtendedInfo",
    "message": "See @Message.ExtendedInfo for more information.",
    "@Message.ExtendedInfo": [
        {
          "MessageId": "Base.1.17.Success"
        }
      ]
    }
  }
```
