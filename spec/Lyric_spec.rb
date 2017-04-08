require 'spec_helper'
require 'Lyric/auth/rest_api'


describe Lyric::Model::User do
  
  before :each do
    response =  
    [
     {
      "locationID": 86889,
      "name": "24 Somerset",
      "streetAddress": "24 Somerset St ",
      "city": "Kinkora",
      "state": "PE",
      "country": "Canada",
      "zipcode": "C0B 1N0",
      "devices": [
        {
          "settings": {
            "homeSetPoints": {
              "homeHeatSP": 22,
              "homeCoolSP": 25.5,
              "units": "Celsius"
            },
            "awaySetPoints": {
              "awayHeatSP": 16.5,
              "awayCoolSP": 29.5,
              "smartCoolSP": 26.5,
              "smartHeatSP": 13,
              "useAutoSmart": true,
              "units": "Celsius"
            },
            "hardwareSettings": {
              "volume": 10,
              "maxBrightness": 255,
              "maxVolume": 10
            },
            "fan": {
              "allowedModes": [
                "Auto",
                "On",
                "Circulate"
              ],
              "changeableValues": {
                "mode": "Auto"
              },
              "fanRunning": false
            },
            "temperatureMode": {
              "feelsLike": true,
              "air": true
            },
            "specialMode": {
              "autoChangeoverActive": true
            }
          },
          "isAlive": true,
          "isUpgrading": false,
          "macID": "00D02D5A8B3A",
          "thermostatVersion": "01.03.12.00",
          "scheduleStatus": "Resume",
          "allowedTimeIncrements": 15,
          "deviceClass": "Thermostat",
          "deviceType": "Thermostat",
          "deviceID": "TCC-1330475",
          "userDefinedDeviceName": "DreamStat",
          "name": "DreamStat",
          "schedule": {
            "scheduleType": "Timed",
            "scheduleSubType": "NA"
          },
          "isProvisioned": false,
          "deviceSettings": {},
          "units": "Celsius",
          "indoorTemperature": 16.5,
          "outdoorTemperature": 2,
          "allowedModes": [
            "Cool",
            "Heat",
            "Off"
          ],
          "deadband": 0,
          "hasDualSetpointStatus": false,
          "minHeatSetpoint": 4.5,
          "maxHeatSetpoint": 32,
          "minCoolSetpoint": 10,
          "maxCoolSetpoint": 37,
          "changeableValues": {
            "mode": "Heat",
            "autoChangeoverActive": true,
            "heatSetpoint": 16.5,
            "coolSetpoint": 29.5,
            "heatCoolMode": "Heat"
          },
          "operationStatus": {
            "mode": "EquipmentOff"
          },
          "smartAway": {
            "active": false,
            "timeOfDay": "00:00:00",
            "durationInHours": 5,
            "durationInDays": 0,
            "lastUsedFormat": "DurationInHours",
            "endsIn": "2017-03-20T23:04:00-03:00"
          },
          "indoorHumidity": 32,
          "indoorHumidityStatus": "Measured"
        }
      ],
      "users": [
        {
          "userID": 107067,
          "username": "colinmmontgomery@gmail.com",
          "firstname": "Colin",
          "lastname": "Montgomery",
          "created": 1476910225,
          "deleted": -62135596800,
          "activated": true,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        },
        {
          "userID": 107586,
          "username": "plnkpan7h3r@gmail.com",
          "firstname": "Sarah",
          "lastname": "Montgomery",
          "created": 1476998221,
          "deleted": -62135596800,
          "activated": true,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        },
        {
          "userID": 168442,
          "username": "montgomery.sarahm@gmail.com",
          "firstname": "Sarah",
          "lastname": "Montgomery",
          "created": 1482782995,
          "deleted": -62135596800,
          "activated": false,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        }
      ],
      "timeZone": "Atlantic",
      "daylightSavingTimeEnabled": true,
      "geoFences": [
        {
          "geoFenceID": 87270,
          "latitude": 46.3263855,
          "longitude": -63.6048164,
          "radius": 1836,
          "geoOccupancy": {
            "withinFence": 0,
            "outsideFence": 1
          }
        }
      ],
      "geoFenceEnabled": true
        },
      {
        "locationID": 29769,
        "name": "Home",
        "streetAddress": "1985 Douglas drive",
        "city": "Minneapolis",
        "state": "MN",
        "country": "Usa",
        "zipcode": "55422",
        "devices": [
          {
            "firmwareVer": "0.5.16A4",
            "waterPresent": false,
            "currentSensorReadings": {
              "time": "2016-09-26T08:43:18",
              "temperature": 19.71,
              "humidity": 52.2
            },
            "currentAlarms": [],
            "lastCheckin": "2016-09-26T08:43:19",
            "lastDeviceSettingUpdatedOn": "0001-01-01T00:00:00",
            "batteryRemaining": 90,
            "isRegistered": true,
            "hasDeviceCheckedIn": true,
            "isDeviceOffline": false,
            "firstFailedAttemptTime": "0001-01-01T00:00:00",
            "failedConnectionAttempts": 0,
            "wifiSignalStrength": -53,
            "isFirmwareUpdateRequired": false,
            "time": "2016-09-26T08:43:18",
            "deviceClass": "LeakDetector",
            "deviceType": "Water Leak Detector",
            "deviceID": "31aae686-6b4a-476e-8cbc-da4a1cab2cd5",
            "userDefinedDeviceName": "Basement",
            "backend": {
              "id": "31aae686-6b4a-476e-8cbc-da4a1cab2cd5"
            },
            "isAlive": true,
            "isUpgrading": false,
            "isProvisioned": true,
            "deviceSettings": {
              "temp": {
                "high": {
                  "limit": 36.6666679
                },
                "low": {
                  "limit": 6.666667
                }
              },
              "humidity": {
                "high": {
                  "limit": 70
                },
                "low": {
                  "limit": 20
                }
              },
              "userDefinedName": "Basement",
              "buzzerMuted": false,
              "checkinPeriod": 8,
              "currentSensorReadPeriod": 60
            }
          },
          {
            "displayedOutdoorHumidity": 61,
            "vacationHold": {
              "enabled": false
            },
            "currentSchedulePeriod": {
              "day": "Monday",
              "period": "Away"
            },
            "scheduleCapabilities": {
              "availableScheduleTypes": [
                "None",
                "Geofenced",
                "TimedNorthAmerica"
              ],
              "schedulableFan": false
            },
            "scheduleType": {
              "scheduleType": "Timed",
              "scheduleSubType": "NA"
            },
            "isAlive": true,
            "isUpgrading": false,
            "macID": "00D02DAB5CBE",
            "scheduleStatus": "Resume",
            "allowedTimeIncrements": 15,
            "deviceClass": "Thermostat",
            "deviceType": "Thermostat",
            "deviceID": "LCC-00D02DAB5CBE",
            "userDefinedDeviceName": "T6",
            "name": "T6",
            "isProvisioned": true,
            "settings": {
              "hardwareSettings": {
                "brightness": 5,
                "maxBrightness": 5
              },
              "fan": {
                "allowedModes": [
                  "On",
                  "Auto",
                  "Circulate"
                ],
                "changeableValues": {
                  "mode": "Auto"
                }
              },
              "temperatureMode": {
                "air": true
              },
              "specialMode": {}
            },
            "deviceSettings": {},
            "units": "Fahrenheit",
            "indoorTemperature": 75,
            "outdoorTemperature": 52,
            "allowedModes": [
              "Heat",
              "Off",
              "Cool"
            ],
            "deadband": 0,
            "hasDualSetpointStatus": false,
            "minHeatSetpoint": 50,
            "maxHeatSetpoint": 90,
            "minCoolSetpoint": 50,
            "maxCoolSetpoint": 90,
            "changeableValues": {
              "mode": "Cool",
              "heatSetpoint": 61.7,
              "coolSetpoint": 85.1,
              "thermostatSetpointStatus": "NoHold",
              "nextPeriodTime": "18:00:00",
              "endHeatSetpoint": 61.7,
              "endCoolSetpoint": 85.1,
              "heatCoolMode": "Cool"
            },
            "operationStatus": {
              "mode": "EquipmentOff",
              "fanRequest": false,
              "circulationFanRequest": false
            }
          },
          {
            "settings": {
              "homeSetPoints": {
                "homeHeatSP": 70,
                "homeCoolSP": 78,
                "units": "Fahrenheit"
              },
              "awaySetPoints": {
                "awayHeatSP": 62,
                "awayCoolSP": 85,
                "smartCoolSP": 80,
                "smartHeatSP": 55,
                "useAutoSmart": true,
                "units": "Fahrenheit"
              },
              "hardwareSettings": {
                "brightness": 6,
                "volume": 10,
                "maxBrightness": 10,
                "maxVolume": 10
              },
              "fan": {
                "allowedModes": [
                  "Auto",
                  "On",
                  "Circulate"
                ],
                "changeableValues": {
                  "mode": "Auto"
                },
                "fanRunning": false
              },
              "temperatureMode": {
                "feelsLike": true,
                "air": true
              },
              "specialMode": {
                "autoChangeoverActive": false
              }
            },
            "isAlive": true,
            "isUpgrading": false,
            "macID": "00D02D7E33D4",
            "thermostatVersion": "02.02.10.00",
            "scheduleStatus": "Resume",
            "allowedTimeIncrements": 15,
            "deviceClass": "Thermostat",
            "deviceType": "Thermostat",
            "deviceID": "TCC-1275737",
            "userDefinedDeviceName": "Round",
            "name": "Round",
            "schedule": {
              "scheduleType": "None"
            },
            "isProvisioned": false,
            "deviceSettings": {},
            "units": "Fahrenheit",
            "indoorTemperature": 75,
            "outdoorTemperature": 52,
            "allowedModes": [
              "Cool",
              "Heat",
              "Off"
            ],
            "deadband": 0,
            "hasDualSetpointStatus": false,
            "minHeatSetpoint": 40,
            "maxHeatSetpoint": 99,
            "minCoolSetpoint": 40,
            "maxCoolSetpoint": 99,
            "changeableValues": {
              "mode": "Cool",
              "autoChangeoverActive": false,
              "heatSetpoint": 50,
              "coolSetpoint": 79,
              "heatCoolMode": "Cool"
            },
            "operationStatus": {
              "mode": "EquipmentOff"
            },
            "smartAway": {
              "active": false,
              "timeOfDay": "00:00:00",
              "durationInHours": 0,
              "durationInDays": 0,
              "lastUsedFormat": "TimeOfDay",
              "endsIn": "2000-01-01T00:00:00-05:00"
            },
            "indoorHumidity": 48,
            "indoorHumidityStatus": "Measured"
          }
        ],
        "user": [
          {
            "userID": 45798,
            "username": "honeywellapisupport@honeywell.com",
            "firstname": "Honeywell",
            "lastname": "Support",
            "created": 1430860456,
            "deleted": -62135596800,
            "activated": true,
            "connectedHomeAccountExists": true,
            "locationRoleMapping": [
              {
                "locationID": 29769,
                "role": "Adult",
                "locationName": "home",
                "status": 1
              }
            ]
          }
        ],
        "timeZone": "Eastern",
        "daylightSavingTimeEnabled": true,
        "geoFenceEnabled": false
      }
    ]
    @lyric = Lyric::Model::User.new(response)
  end
  
  describe "#initialize"
    it "creates a new user" do
      expect(@lyric).not_to be nil
    end
    
    it 'creates two locations' do
      expect(@lyric.location.count).to eq(2)
    end
    
    it 'gives a specific userid' do
      expect(@lyric.user_id).to eq(107067)
    end
    
    it 'gives a specific username' do
      expect(@lyric.username).to eq('colinmmontgomery@gmail.com')
    end
end

describe Lyric::Model::Location do
    before :each do
    response =  
    [
     {
      "locationID": 86889,
      "name": "24 Somerset",
      "streetAddress": "24 Somerset St ",
      "city": "Kinkora",
      "state": "PE",
      "country": "Canada",
      "zipcode": "C0B 1N0",
      "devices": [
        {
          "settings": {
            "homeSetPoints": {
              "homeHeatSP": 22,
              "homeCoolSP": 25.5,
              "units": "Celsius"
            },
            "awaySetPoints": {
              "awayHeatSP": 16.5,
              "awayCoolSP": 29.5,
              "smartCoolSP": 26.5,
              "smartHeatSP": 13,
              "useAutoSmart": true,
              "units": "Celsius"
            },
            "hardwareSettings": {
              "volume": 10,
              "maxBrightness": 255,
              "maxVolume": 10
            },
            "fan": {
              "allowedModes": [
                "Auto",
                "On",
                "Circulate"
              ],
              "changeableValues": {
                "mode": "Auto"
              },
              "fanRunning": false
            },
            "temperatureMode": {
              "feelsLike": true,
              "air": true
            },
            "specialMode": {
              "autoChangeoverActive": true
            }
          },
          "isAlive": true,
          "isUpgrading": false,
          "macID": "00D02D5A8B3A",
          "thermostatVersion": "01.03.12.00",
          "scheduleStatus": "Resume",
          "allowedTimeIncrements": 15,
          "deviceClass": "Thermostat",
          "deviceType": "Thermostat",
          "deviceID": "TCC-1330475",
          "userDefinedDeviceName": "DreamStat",
          "name": "DreamStat",
          "schedule": {
            "scheduleType": "Timed",
            "scheduleSubType": "NA"
          },
          "isProvisioned": false,
          "deviceSettings": {},
          "units": "Celsius",
          "indoorTemperature": 16.5,
          "outdoorTemperature": 2,
          "allowedModes": [
            "Cool",
            "Heat",
            "Off"
          ],
          "deadband": 0,
          "hasDualSetpointStatus": false,
          "minHeatSetpoint": 4.5,
          "maxHeatSetpoint": 32,
          "minCoolSetpoint": 10,
          "maxCoolSetpoint": 37,
          "changeableValues": {
            "mode": "Heat",
            "autoChangeoverActive": true,
            "heatSetpoint": 16.5,
            "coolSetpoint": 29.5,
            "heatCoolMode": "Heat"
          },
          "operationStatus": {
            "mode": "EquipmentOff"
          },
          "smartAway": {
            "active": false,
            "timeOfDay": "00:00:00",
            "durationInHours": 5,
            "durationInDays": 0,
            "lastUsedFormat": "DurationInHours",
            "endsIn": "2017-03-20T23:04:00-03:00"
          },
          "indoorHumidity": 32,
          "indoorHumidityStatus": "Measured"
        }
      ],
      "users": [
        {
          "userID": 107067,
          "username": "colinmmontgomery@gmail.com",
          "firstname": "Colin",
          "lastname": "Montgomery",
          "created": 1476910225,
          "deleted": -62135596800,
          "activated": true,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        },
        {
          "userID": 107586,
          "username": "plnkpan7h3r@gmail.com",
          "firstname": "Sarah",
          "lastname": "Montgomery",
          "created": 1476998221,
          "deleted": -62135596800,
          "activated": true,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        },
        {
          "userID": 168442,
          "username": "montgomery.sarahm@gmail.com",
          "firstname": "Sarah",
          "lastname": "Montgomery",
          "created": 1482782995,
          "deleted": -62135596800,
          "activated": false,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        }
      ],
      "timeZone": "Atlantic",
      "daylightSavingTimeEnabled": true,
      "geoFences": [
        {
          "geoFenceID": 87270,
          "latitude": 46.3263855,
          "longitude": -63.6048164,
          "radius": 1836,
          "geoOccupancy": {
            "withinFence": 0,
            "outsideFence": 1
          }
        }
      ],
      "geoFenceEnabled": true
        },
      {
        "locationID": 29769,
        "name": "Home",
        "streetAddress": "1985 Douglas drive",
        "city": "Minneapolis",
        "state": "MN",
        "country": "Usa",
        "zipcode": "55422",
        "devices": [
          {
            "firmwareVer": "0.5.16A4",
            "waterPresent": false,
            "currentSensorReadings": {
              "time": "2016-09-26T08:43:18",
              "temperature": 19.71,
              "humidity": 52.2
            },
            "currentAlarms": [],
            "lastCheckin": "2016-09-26T08:43:19",
            "lastDeviceSettingUpdatedOn": "0001-01-01T00:00:00",
            "batteryRemaining": 90,
            "isRegistered": true,
            "hasDeviceCheckedIn": true,
            "isDeviceOffline": false,
            "firstFailedAttemptTime": "0001-01-01T00:00:00",
            "failedConnectionAttempts": 0,
            "wifiSignalStrength": -53,
            "isFirmwareUpdateRequired": false,
            "time": "2016-09-26T08:43:18",
            "deviceClass": "LeakDetector",
            "deviceType": "Water Leak Detector",
            "deviceID": "31aae686-6b4a-476e-8cbc-da4a1cab2cd5",
            "userDefinedDeviceName": "Basement",
            "backend": {
              "id": "31aae686-6b4a-476e-8cbc-da4a1cab2cd5"
            },
            "isAlive": true,
            "isUpgrading": false,
            "isProvisioned": true,
            "deviceSettings": {
              "temp": {
                "high": {
                  "limit": 36.6666679
                },
                "low": {
                  "limit": 6.666667
                }
              },
              "humidity": {
                "high": {
                  "limit": 70
                },
                "low": {
                  "limit": 20
                }
              },
              "userDefinedName": "Basement",
              "buzzerMuted": false,
              "checkinPeriod": 8,
              "currentSensorReadPeriod": 60
            }
          },
          {
            "displayedOutdoorHumidity": 61,
            "vacationHold": {
              "enabled": false
            },
            "currentSchedulePeriod": {
              "day": "Monday",
              "period": "Away"
            },
            "scheduleCapabilities": {
              "availableScheduleTypes": [
                "None",
                "Geofenced",
                "TimedNorthAmerica"
              ],
              "schedulableFan": false
            },
            "scheduleType": {
              "scheduleType": "Timed",
              "scheduleSubType": "NA"
            },
            "isAlive": true,
            "isUpgrading": false,
            "macID": "00D02DAB5CBE",
            "scheduleStatus": "Resume",
            "allowedTimeIncrements": 15,
            "deviceClass": "Thermostat",
            "deviceType": "Thermostat",
            "deviceID": "LCC-00D02DAB5CBE",
            "userDefinedDeviceName": "T6",
            "name": "T6",
            "isProvisioned": true,
            "settings": {
              "hardwareSettings": {
                "brightness": 5,
                "maxBrightness": 5
              },
              "fan": {
                "allowedModes": [
                  "On",
                  "Auto",
                  "Circulate"
                ],
                "changeableValues": {
                  "mode": "Auto"
                }
              },
              "temperatureMode": {
                "air": true
              },
              "specialMode": {}
            },
            "deviceSettings": {},
            "units": "Fahrenheit",
            "indoorTemperature": 75,
            "outdoorTemperature": 52,
            "allowedModes": [
              "Heat",
              "Off",
              "Cool"
            ],
            "deadband": 0,
            "hasDualSetpointStatus": false,
            "minHeatSetpoint": 50,
            "maxHeatSetpoint": 90,
            "minCoolSetpoint": 50,
            "maxCoolSetpoint": 90,
            "changeableValues": {
              "mode": "Cool",
              "heatSetpoint": 61.7,
              "coolSetpoint": 85.1,
              "thermostatSetpointStatus": "NoHold",
              "nextPeriodTime": "18:00:00",
              "endHeatSetpoint": 61.7,
              "endCoolSetpoint": 85.1,
              "heatCoolMode": "Cool"
            },
            "operationStatus": {
              "mode": "EquipmentOff",
              "fanRequest": false,
              "circulationFanRequest": false
            }
          },
          {
            "settings": {
              "homeSetPoints": {
                "homeHeatSP": 70,
                "homeCoolSP": 78,
                "units": "Fahrenheit"
              },
              "awaySetPoints": {
                "awayHeatSP": 62,
                "awayCoolSP": 85,
                "smartCoolSP": 80,
                "smartHeatSP": 55,
                "useAutoSmart": true,
                "units": "Fahrenheit"
              },
              "hardwareSettings": {
                "brightness": 6,
                "volume": 10,
                "maxBrightness": 10,
                "maxVolume": 10
              },
              "fan": {
                "allowedModes": [
                  "Auto",
                  "On",
                  "Circulate"
                ],
                "changeableValues": {
                  "mode": "Auto"
                },
                "fanRunning": false
              },
              "temperatureMode": {
                "feelsLike": true,
                "air": true
              },
              "specialMode": {
                "autoChangeoverActive": false
              }
            },
            "isAlive": true,
            "isUpgrading": false,
            "macID": "00D02D7E33D4",
            "thermostatVersion": "02.02.10.00",
            "scheduleStatus": "Resume",
            "allowedTimeIncrements": 15,
            "deviceClass": "Thermostat",
            "deviceType": "Thermostat",
            "deviceID": "TCC-1275737",
            "userDefinedDeviceName": "Round",
            "name": "Round",
            "schedule": {
              "scheduleType": "None"
            },
            "isProvisioned": false,
            "deviceSettings": {},
            "units": "Fahrenheit",
            "indoorTemperature": 75,
            "outdoorTemperature": 52,
            "allowedModes": [
              "Cool",
              "Heat",
              "Off"
            ],
            "deadband": 0,
            "hasDualSetpointStatus": false,
            "minHeatSetpoint": 40,
            "maxHeatSetpoint": 99,
            "minCoolSetpoint": 40,
            "maxCoolSetpoint": 99,
            "changeableValues": {
              "mode": "Cool",
              "autoChangeoverActive": false,
              "heatSetpoint": 50,
              "coolSetpoint": 79,
              "heatCoolMode": "Cool"
            },
            "operationStatus": {
              "mode": "EquipmentOff"
            },
            "smartAway": {
              "active": false,
              "timeOfDay": "00:00:00",
              "durationInHours": 0,
              "durationInDays": 0,
              "lastUsedFormat": "TimeOfDay",
              "endsIn": "2000-01-01T00:00:00-05:00"
            },
            "indoorHumidity": 48,
            "indoorHumidityStatus": "Measured"
          }
        ],
        "user": [
          {
            "userID": 45798,
            "username": "honeywellapisupport@honeywell.com",
            "firstname": "Honeywell",
            "lastname": "Support",
            "created": 1430860456,
            "deleted": -62135596800,
            "activated": true,
            "connectedHomeAccountExists": true,
            "locationRoleMapping": [
              {
                "locationID": 29769,
                "role": "Adult",
                "locationName": "home",
                "status": 1
              }
            ]
          }
        ],
        "timeZone": "Eastern",
        "daylightSavingTimeEnabled": true,
        "geoFenceEnabled": false
      }
    ]
    @location = Lyric::Model::User.new(response)
  end
  
  describe "#initialize"
    it "creates a new location" do
      expect(@location.location).not_to be nil
    end
    
    it "sets the correct location id" do
      expect(@location.location[0].location_id).to eq(86889)
      expect(@location.location[1].location_id).to eq(29769)
    end
    
    it "sets the correct names" do
      expect(@location.location[0].name).to eq("24 Somerset")
      expect(@location.location[1].name).to eq("Home")
    end
    
end

describe Lyric::Model::Device do
  
  before :each do
    response =  
    [
     {
      "locationID": 86889,
      "name": "24 Somerset",
      "streetAddress": "24 Somerset St ",
      "city": "Kinkora",
      "state": "PE",
      "country": "Canada",
      "zipcode": "C0B 1N0",
      "devices": [
        {
          "settings": {
            "homeSetPoints": {
              "homeHeatSP": 22,
              "homeCoolSP": 25.5,
              "units": "Celsius"
            },
            "awaySetPoints": {
              "awayHeatSP": 16.5,
              "awayCoolSP": 29.5,
              "smartCoolSP": 26.5,
              "smartHeatSP": 13,
              "useAutoSmart": true,
              "units": "Celsius"
            },
            "hardwareSettings": {
              "volume": 10,
              "maxBrightness": 255,
              "maxVolume": 10
            },
            "fan": {
              "allowedModes": [
                "Auto",
                "On",
                "Circulate"
              ],
              "changeableValues": {
                "mode": "Auto"
              },
              "fanRunning": false
            },
            "temperatureMode": {
              "feelsLike": true,
              "air": true
            },
            "specialMode": {
              "autoChangeoverActive": true
            }
          },
          "isAlive": true,
          "isUpgrading": false,
          "macID": "00D02D5A8B3A",
          "thermostatVersion": "01.03.12.00",
          "scheduleStatus": "Resume",
          "allowedTimeIncrements": 15,
          "deviceClass": "Thermostat",
          "deviceType": "Thermostat",
          "deviceID": "TCC-1330475",
          "userDefinedDeviceName": "DreamStat",
          "name": "DreamStat",
          "schedule": {
            "scheduleType": "Timed",
            "scheduleSubType": "NA"
          },
          "isProvisioned": false,
          "deviceSettings": {},
          "units": "Celsius",
          "indoorTemperature": 16.5,
          "outdoorTemperature": 2,
          "allowedModes": [
            "Cool",
            "Heat",
            "Off"
          ],
          "deadband": 0,
          "hasDualSetpointStatus": false,
          "minHeatSetpoint": 4.5,
          "maxHeatSetpoint": 32,
          "minCoolSetpoint": 10,
          "maxCoolSetpoint": 37,
          "changeableValues": {
            "mode": "Heat",
            "autoChangeoverActive": true,
            "heatSetpoint": 16.5,
            "coolSetpoint": 29.5,
            "heatCoolMode": "Heat"
          },
          "operationStatus": {
            "mode": "EquipmentOff"
          },
          "smartAway": {
            "active": false,
            "timeOfDay": "00:00:00",
            "durationInHours": 5,
            "durationInDays": 0,
            "lastUsedFormat": "DurationInHours",
            "endsIn": "2017-03-20T23:04:00-03:00"
          },
          "indoorHumidity": 32,
          "indoorHumidityStatus": "Measured"
        }
      ],
      "users": [
        {
          "userID": 107067,
          "username": "colinmmontgomery@gmail.com",
          "firstname": "Colin",
          "lastname": "Montgomery",
          "created": 1476910225,
          "deleted": -62135596800,
          "activated": true,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        },
        {
          "userID": 107586,
          "username": "plnkpan7h3r@gmail.com",
          "firstname": "Sarah",
          "lastname": "Montgomery",
          "created": 1476998221,
          "deleted": -62135596800,
          "activated": true,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        },
        {
          "userID": 168442,
          "username": "montgomery.sarahm@gmail.com",
          "firstname": "Sarah",
          "lastname": "Montgomery",
          "created": 1482782995,
          "deleted": -62135596800,
          "activated": false,
          "connectedHomeAccountExists": true,
          "locationRoleMapping": [
            {
              "locationID": 86889,
              "role": "Adult",
              "locationName": "24 Somerset",
              "status": 1
            }
          ]
        }
      ],
      "timeZone": "Atlantic",
      "daylightSavingTimeEnabled": true,
      "geoFences": [
        {
          "geoFenceID": 87270,
          "latitude": 46.3263855,
          "longitude": -63.6048164,
          "radius": 1836,
          "geoOccupancy": {
            "withinFence": 0,
            "outsideFence": 1
          }
        }
      ],
      "geoFenceEnabled": true
        },
      {
        "locationID": 29769,
        "name": "Home",
        "streetAddress": "1985 Douglas drive",
        "city": "Minneapolis",
        "state": "MN",
        "country": "Usa",
        "zipcode": "55422",
        "devices": [
          {
            "firmwareVer": "0.5.16A4",
            "waterPresent": false,
            "currentSensorReadings": {
              "time": "2016-09-26T08:43:18",
              "temperature": 19.71,
              "humidity": 52.2
            },
            "currentAlarms": [],
            "lastCheckin": "2016-09-26T08:43:19",
            "lastDeviceSettingUpdatedOn": "0001-01-01T00:00:00",
            "batteryRemaining": 90,
            "isRegistered": true,
            "hasDeviceCheckedIn": true,
            "isDeviceOffline": false,
            "firstFailedAttemptTime": "0001-01-01T00:00:00",
            "failedConnectionAttempts": 0,
            "wifiSignalStrength": -53,
            "isFirmwareUpdateRequired": false,
            "time": "2016-09-26T08:43:18",
            "deviceClass": "LeakDetector",
            "deviceType": "Water Leak Detector",
            "deviceID": "31aae686-6b4a-476e-8cbc-da4a1cab2cd5",
            "userDefinedDeviceName": "Basement",
            "backend": {
              "id": "31aae686-6b4a-476e-8cbc-da4a1cab2cd5"
            },
            "isAlive": true,
            "isUpgrading": false,
            "isProvisioned": true,
            "deviceSettings": {
              "temp": {
                "high": {
                  "limit": 36.6666679
                },
                "low": {
                  "limit": 6.666667
                }
              },
              "humidity": {
                "high": {
                  "limit": 70
                },
                "low": {
                  "limit": 20
                }
              },
              "userDefinedName": "Basement",
              "buzzerMuted": false,
              "checkinPeriod": 8,
              "currentSensorReadPeriod": 60
            }
          },
          {
            "displayedOutdoorHumidity": 61,
            "vacationHold": {
              "enabled": false
            },
            "currentSchedulePeriod": {
              "day": "Monday",
              "period": "Away"
            },
            "scheduleCapabilities": {
              "availableScheduleTypes": [
                "None",
                "Geofenced",
                "TimedNorthAmerica"
              ],
              "schedulableFan": false
            },
            "scheduleType": {
              "scheduleType": "Timed",
              "scheduleSubType": "NA"
            },
            "isAlive": true,
            "isUpgrading": false,
            "macID": "00D02DAB5CBE",
            "scheduleStatus": "Resume",
            "allowedTimeIncrements": 15,
            "deviceClass": "Thermostat",
            "deviceType": "Thermostat",
            "deviceID": "LCC-00D02DAB5CBE",
            "userDefinedDeviceName": "T6",
            "name": "T6",
            "isProvisioned": true,
            "settings": {
              "hardwareSettings": {
                "brightness": 5,
                "maxBrightness": 5
              },
              "fan": {
                "allowedModes": [
                  "On",
                  "Auto",
                  "Circulate"
                ],
                "changeableValues": {
                  "mode": "Auto"
                }
              },
              "temperatureMode": {
                "air": true
              },
              "specialMode": {}
            },
            "deviceSettings": {},
            "units": "Fahrenheit",
            "indoorTemperature": 75,
            "outdoorTemperature": 52,
            "allowedModes": [
              "Heat",
              "Off",
              "Cool"
            ],
            "deadband": 0,
            "hasDualSetpointStatus": false,
            "minHeatSetpoint": 50,
            "maxHeatSetpoint": 90,
            "minCoolSetpoint": 50,
            "maxCoolSetpoint": 90,
            "changeableValues": {
              "mode": "Cool",
              "heatSetpoint": 61.7,
              "coolSetpoint": 85.1,
              "thermostatSetpointStatus": "NoHold",
              "nextPeriodTime": "18:00:00",
              "endHeatSetpoint": 61.7,
              "endCoolSetpoint": 85.1,
              "heatCoolMode": "Cool"
            },
            "operationStatus": {
              "mode": "EquipmentOff",
              "fanRequest": false,
              "circulationFanRequest": false
            }
          },
          {
            "settings": {
              "homeSetPoints": {
                "homeHeatSP": 70,
                "homeCoolSP": 78,
                "units": "Fahrenheit"
              },
              "awaySetPoints": {
                "awayHeatSP": 62,
                "awayCoolSP": 85,
                "smartCoolSP": 80,
                "smartHeatSP": 55,
                "useAutoSmart": true,
                "units": "Fahrenheit"
              },
              "hardwareSettings": {
                "brightness": 6,
                "volume": 10,
                "maxBrightness": 10,
                "maxVolume": 10
              },
              "fan": {
                "allowedModes": [
                  "Auto",
                  "On",
                  "Circulate"
                ],
                "changeableValues": {
                  "mode": "Auto"
                },
                "fanRunning": false
              },
              "temperatureMode": {
                "feelsLike": true,
                "air": true
              },
              "specialMode": {
                "autoChangeoverActive": false
              }
            },
            "isAlive": true,
            "isUpgrading": false,
            "macID": "00D02D7E33D4",
            "thermostatVersion": "02.02.10.00",
            "scheduleStatus": "Resume",
            "allowedTimeIncrements": 15,
            "deviceClass": "Thermostat",
            "deviceType": "Thermostat",
            "deviceID": "TCC-1275737",
            "userDefinedDeviceName": "Round",
            "name": "Round",
            "schedule": {
              "scheduleType": "None"
            },
            "isProvisioned": false,
            "deviceSettings": {},
            "units": "Fahrenheit",
            "indoorTemperature": 75,
            "outdoorTemperature": 52,
            "allowedModes": [
              "Cool",
              "Heat",
              "Off"
            ],
            "deadband": 0,
            "hasDualSetpointStatus": false,
            "minHeatSetpoint": 40,
            "maxHeatSetpoint": 99,
            "minCoolSetpoint": 40,
            "maxCoolSetpoint": 99,
            "changeableValues": {
              "mode": "Cool",
              "autoChangeoverActive": false,
              "heatSetpoint": 50,
              "coolSetpoint": 79,
              "heatCoolMode": "Cool"
            },
            "operationStatus": {
              "mode": "EquipmentOff"
            },
            "smartAway": {
              "active": false,
              "timeOfDay": "00:00:00",
              "durationInHours": 0,
              "durationInDays": 0,
              "lastUsedFormat": "TimeOfDay",
              "endsIn": "2000-01-01T00:00:00-05:00"
            },
            "indoorHumidity": 48,
            "indoorHumidityStatus": "Measured"
          }
        ],
        "user": [
          {
            "userID": 45798,
            "username": "honeywellapisupport@honeywell.com",
            "firstname": "Honeywell",
            "lastname": "Support",
            "created": 1430860456,
            "deleted": -62135596800,
            "activated": true,
            "connectedHomeAccountExists": true,
            "locationRoleMapping": [
              {
                "locationID": 29769,
                "role": "Adult",
                "locationName": "home",
                "status": 1
              }
            ]
          }
        ],
        "timeZone": "Eastern",
        "daylightSavingTimeEnabled": true,
        "geoFenceEnabled": false
      }
    ]
    @lyric = Lyric::Model::User.new(response)
  end
  describe '#initialize'
    it 'sets correct the device name' do
      expect(@lyric.location[1].device[1].name).not_to be nil
    end
    it 'creates an array with all the settings' do
      #add something to test here
    end
  
  describe '#update'
    it 'sends a call to the devices api and updates the variables' do
      @lyric.location[0].device[0].update(token)
      expect(@lyric.location[0].device[0].response).to be nil
    end
  
  
describe Lyric::RestAPIMethods do
  
  describe '#user'
  it 'gets a response from Honeywell' do
    lyric = Lyric::User.new(response)
    l = lyric.user
    expect(l.user_obj).to be nil
  end
  
end

  
end