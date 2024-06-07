---
seo:
  title: Field-replaceable units
toc:
  enable: false
  maxDepth: 3
disableLastModified: false
---

## Compute node data

## Base Field-Replaceable Units (FRUs)

HPE iLO 6 features the ability to display the Field-Replaceable Unit (FRU)
data on server Synergy compute node boards.

### Accessing Base FRUs through Redfish

To access the Redfish Base FRUs resource, perform `GET` on
`/redfish/v1/Chassis/1/BaseFrus/`.
This resource includes a link to the collection of entries
`/redfish/v1/Chassis/1/BaseFrus/`. Individual FRUs can be accessed by
performing `GET` on `/redfish/v1/Chassis/1/BaseFrus/{@baseId}/Details`.

```shell cURL
curl --insecure --location         \
     --user ilo-user:password      \
     https://{iLO}/redfish/v1/Chassis/1/BaseFrus/{@baseId}/Details/
```

```json Response body
{
  "BladeInfo":{
    "Capabilities":{
      "BBCoordMap":["A"],
      "ChangesRequireReboot": true,
      "CurrentSenseSF":[195],
      "DynamicPower": true,
      "EkeyGroupMatchReq":[],
      "ILOHwReset": true,
      "StaticLowPowerMode": true,
      "TVSMechanicalFuse": true,
      "TempDeadlyDelayTime": 120,
      "UEFISupport": true
    },
    "PortMap":[
      {
        "BBCoord": "A",
        "BBMezzSlot":[
          {
            "LinkInfo":{"LType": "PCIe"},
            "MZ": 1,
            "Sys":[
              {
                "Cpu": 1,
                "Id": "1",
                "Pin":[
                  "0..15"
                ]
              }
            ]
          },
          {
            "LinkInfo":{
              "LType": "PCIe"
            },
            "MZ": 2,
            "Sys":[
              {
                "Cpu": 2,
                "Id": "1",
                "Pin":[
                  "0..15"
                ]
              }
            ]
          },
          {
            "LinkInfo":{"LType": "PCIe"},
            "MZ": 3,
            "Sys":[
              {
                "Cpu": 1,
                "Id": "1",
                "Pin":[
                  "0..15"
                ]
              }
            ]
          }
        ]
      }
    ],
    "Systems":[
      {
        "Components":[
          {
            "Count": 2,
            "DevType": "Processor",
            "Name": "CPU Slots"
          },
          {
            "Count": 32,
            "DevType": "DIMM",
            "Name": "Memory Module Slots"
          }
        ],
        "Id": "1"
      }
    ]
  },
  "IpmiProductInfo":{
    "AssemblyPartNumber": "<AssemblyPartNumber>",
    "BoardRevCode": "X3",
    "ChassisDepth": 572,
    "ChassisHeight": 213,
    "ChassisPartNumber": "<ChassisPartNumber>",
    "ChassisSerialNumber": "<ChassisSerialNumber>",
    "ChassisWidth": 64,
    "ManufacturedFor": "HPE",
    "Manufacturer": "HPE",
    "PCASerialNumber": "<PCASerialNumber>",
    "PCASparePartNumber": "<PCASparePartNumber>",
    "PartNumber": "<PartNumber>",
    "ProductVersion": "10P",
    "SerialNumber": "<SerialNumber>",
    "SlotsConsumedHeight": 1,
    "SlotsConsumedWidth": 1
  },
  "MgmtConfig":[
    {
      "ConnectType": "iLO",
      "CustomerVisible": true,
      "LinkRate": "1Gb",
      "ProtocolType": "Ethernet"
    }
  ],
  "PowerInfo":{
    "FullOn": 22,
    "LowMode": 16,
    "MaxPowerDuringAlert": 22,
    "Vaux": 10
  },
  "Preamble":{
    "CommType":[
      "iLO",
      "RIS"
    ],
    "EEPROMSize": 4096,
    "EfuseResetDuration": 4,
    "FactoryTimeStamp": "2020-08-13T04:08:02+0000",
    "FruSubType":[
      "Blade",
      "IpmiSegment"
    ],
    "FruType": "ServerBlade",
    "GreenFactor":[
      "Low Halogen"
    ],
    "HwCompliance":[],
    "Language": "en-US",
    "LastModified": "2020-07-10",
    "Model": "Synergy 480 Gen10 Plus Compute Module"
  },
  "Type": "HpServerFru.1.0.1"
}
```

## Mezzanine FRUs

The NIC and Mezzanine (Mezz) option FRU information informs Onboard
Administrator of the type of interconnects each server requires. Before
power is provided to a server blade, Onboard Administrator compares this
information with the FRU EEPROMs on installed interconnect modules to
check for electronic keying errors.

iLO features the ability to display the FRU data on the cards in
the Mezzanine slots.

### Accessing MEZZ FRUs through Redfish

To access the Redfish MEZZ FRUs resource, perform `GET` on
`/redfish/v1/Chassis/1/MezzFrus/`. This resource includes a link to
the collection of entries `/redfish/v1/Chassis/1/MezzFrus/`. Individual
FRUs can be accessed by performing `GET` on
`/redfish/v1/Chassis/1/MezzFrus/{@mezzId}/Details/`.

```shell cURL
curl --insecure --location      \
     --user ilo-user:password   \
https://{iLO}/redfish/v1/Chassis/1/MezzFrus/{@mezzId}/Details/ 
```

```json Response body
{
  "Type": "HpMezzFru.1.0.1",
  "Preamble":{
    "Model": "Synergy 4820C 10/20/25Gb CNA",
    "LastModified": "2018-03-29",
    "FactoryTimeStamp": "2019-11-29T02:04:57+0000",
    "EEPROMSize": 16384,
    "Language": "en-US",
    "HwCompliance":[
      "PCI"
    ],
    "GreenFactor":[],
    "FruType": "Mezz",
    "FruSubType":[
      "Ethernet",
      "IpmiSegment"
    ],
    "CommType":[
      "DCI",
      "RIS",
      "iLO"
    ]
  },
  "IpmiProductInfo":{
    "Manufacturer": "HPE",
    "ManufacturedFor": "HPE",
    "SerialNumber": "<SerialNumber>",
    "PartNumber": "<PartNumber>",
    "PCASerialNumber": "<PCASerialNumber>",
    "PCASparePartNumber": "<PCASparePartNumber>",
    "AssemblyPartNumber": "<AssemblyPartNumber>",
    "BoardRevCode": "0A"
  },
  "PowerInfo":{
    "FullOn": 13,
    "LowMode": 11,
    "Vaux": 6
  },
  "MezzInfo":{
    "CardType": "C",
    "Capabilities":{
      "EkeyMismatch": "DisableOnReboot",
      "EkeyGroupMatchReq":[],
      "EkeyPortToAirIsOk": true,
      "ScanChainSupport": true,
      "PortSwap": true,
      "LLSupport": false,
      "LinkInfo":{"LType": "PCIe", "LWidth":["16x" ], "LReverse": true},
      "ESwitchSupport": false,
      "CLPSupport": false
    },
    "PortMap":[
      {
        "ConnName": "System",
        "ConnType":[
          "Copper"
        ],
        "SysToPort":[
          {
            "PrName": "Flex10",
            "PrSp": 10,
            "PinSp": 10,
            "Capabilities":[
              {"Pin":["0..15" ], "PrName": "Flex10-1"},
              {"Pin":["0..15" ], "PrName": "Flex10-3"}
            ]
          },
          {
            "PrName": "Flex20",
            "PrSp": 20,
            "PinSp": 10,
            "Capabilities":[
              {"Pin":["0..15" ], "PrName": "Flex20-1:2"},
              {"Pin":["0..15" ], "PrName": "Flex20-3:4"}
            ]
          },
          {
            "PrName": "Flex25",
            "PrSp": 25,
            "PinSp": 25,
            "Capabilities":[
              {"Pin":["0..15" ], "PrName": "Flex25-1"},
              {"Pin":["0..15" ], "PrName": "Flex25-3"}
            ]
          }
        ]
      },
      {
        "ConnName": "Fabric",
        "ConnType":["Copper"],
        "MediaInfo":[
          {"MediaId": 1, "MAC": "94:40:c9:5b:34:76"},
          {"MediaId": 2, "WwpnPrefix": "20:00:"},
          {"MediaId": 3, "WwnnPrefix": "10:00:"}
        ],
        "PortToFabric":[
          {
            "PortId": 1,
            "Personality":[
              {
                "TechType": "Ethernet",
                "SubType":["Ethernet", "iSCSI", "FCoE"],
                "SerdesType": "FF",
                "Capabilities":[
                  {"PrType": "Ethernet", "PrName": "Flex10-1", "PrSp": 10, "PinSp": 10},
                  {"PrType": "Ethernet", "PrName": "Flex20-1:2", "PrSp": 20, "PinSp": 10},
                  {"PrType": "Ethernet", "PrName": "Flex25-1", "PrSp": 25, "PinSp": 25},
                  {"PrType": "iSCSI", "PrName": "Flex10-1", "PrSp": 10, "PinSp": 10},
                  {"PrType": "iSCSI", "PrName": "Flex20-1:2", "PrSp": 20, "PinSp": 10},
                  {"PrType": "iSCSI", "PrName": "Flex25-1", "PrSp": 25, "PinSp": 25},
                  {"PrType": "FCoE", "PrName": "Flex10-1", "PrSp": 10, "PinSp": 10},
                  {"PrType": "FCoE", "PrName": "Flex20-1:2", "PrSp": 20, "PinSp": 10},
                  {"PrType": "FCoE", "PrName": "Flex25-1", "PrSp": 25, "PinSp": 25}
                ]
              }
            ]
          },
          {
            "PortId": 2,
            "Personality":[
              {
                "TechType": "Ethernet",
                "SubType":["Ethernet", "iSCSI", "FCoE"],
                "SerdesType": "FF",
                "Capabilities":[
                  {"PrType": "Ethernet", "PrName": "Flex10-3", "PrSp": 10, "PinSp": 10},
                  {"PrType": "Ethernet", "PrName": "Flex20-3:4", "PrSp": 20, "PinSp": 10},
                  {"PrType": "Ethernet", "PrName": "Flex25-3", "PrSp": 25, "PinSp": 25},
                  {"PrType": "iSCSI", "PrName": "Flex10-3", "PrSp": 10, "PinSp": 10},
                  {"PrType": "iSCSI", "PrName": "Flex20-3:4", "PrSp": 20, "PinSp": 10},
                  {"PrType": "iSCSI", "PrName": "Flex25-3", "PrSp": 25, "PinSp": 25},
                  {"PrType": "FCoE", "PrName": "Flex10-3", "PrSp": 10, "PinSp": 10},
                  {"PrType": "FCoE", "PrName": "Flex20-3:4", "PrSp": 20, "PinSp": 10},
                  {"PrType": "FCoE", "PrName": "Flex25-3", "PrSp": 25, "PinSp": 25}
                ]
              }
            ]
          }
        ],
        "PortToFabricSwap":[
          {
            "PortId": 1,
            "Personality":[
              {"TechType": "Ethernet", "SubType":["Ethernet", "iSCSI", "FCoE" ], "SerdesType": "FF"}
            ]
          },
          {
            "PortId": 2,
            "Personality":[
              {
                "TechType": "Ethernet",
                "SubType":["Ethernet", "iSCSI", "FCoE"],
                "SerdesType": "FF",
                "Capabilities":[
                  {"PrType": "Ethernet", "PrName": "Flex10-3", "PrSp": 10, "PinSp": 10},
                  {"PrType": "Ethernet", "PrName": "Flex20-3:4", "PrSp": 20, "PinSp": 10},
                  {"PrType": "Ethernet", "PrName": "Flex25-3", "PrSp": 25, "PinSp": 25},
                  {"PrType": "iSCSI", "PrName": "Flex10-3", "PrSp": 10, "PinSp": 10},
                  {"PrType": "iSCSI", "PrName": "Flex20-3:4", "PrSp": 20, "PinSp": 10},
                  {"PrType": "iSCSI", "PrName": "Flex25-3", "PrSp": 25, "PinSp": 25},
                  {"PrType": "FCoE", "PrName": "Flex10-3", "PrSp": 10, "PinSp": 10},
                  {"PrType": "FCoE", "PrName": "Flex20-3:4", "PrSp": 20, "PinSp": 10},
                  {"PrType": "FCoE", "PrName": "Flex25-3", "PrSp": 25, "PinSp": 25}
                ]
              }
            ]
          }
        ]
      }
    ]
  }
}
```
