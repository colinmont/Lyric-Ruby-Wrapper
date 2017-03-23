module Lyric
  module Model
    class Device
      require 'httparty'
      require 'json'
      attr_accessor :name, :device_id, :units, :mac_id, :settings, :indoor_temp, :indoor_humidity, :outdoor_temp, :device_type, :date_updated

      def initialize(device_obj)
        @name = device_obj[:userDefinedDeviceName]
        @device_id = device_obj[:deviceID]
        @device_type = device_obj[:deviceType]
        @units = device_obj[:units]
        @mac_id = device_obj[:macID]
        @settings= device_obj[:settings]
        @indoor_temp = device_obj[:indoorTemperature]
        @indoor_humidity = device_obj[:indoorHumidity]
        @outdoor_temp  = device_obj[:outdoorTemperature]
      end
      
      def update
        api_address = "https://api.honeywell.com/v2/devices/"
        device_obj = HTTParty.get("#{api_address}#{@device_type}/#{@device_id}")
        #device_obj = JSON.parse(response)
        
        @name = device_obj[:userDefinedDeviceName]
        @device_id = device_obj[:deviceID]
        @units = device_obj[:units]
        @mac_id = device_obj[:macID]
        @settings= device_obj[:settings]
        @indoor_temp = device_obj[:indoorTemperature]
        @indoor_humidity = device_obj[:indoorHumidity]
        @outdoor_temp  = device_obj[:outdoorTemperature]
        @date_updated = Time.now
      end
    end
  end
end
