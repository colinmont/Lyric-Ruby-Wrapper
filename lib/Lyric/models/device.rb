module Lyric
  module Model
    class Device
      require 'httparty'
      require 'json'
      attr_accessor :name, :device_id, :units, :mac_id, :settings, :indoor_temp, :indoor_humidity, :outdoor_temp, :device_type, :date_updated, :response

      def initialize(device_obj)
        @name =             device_obj['userDefinedDeviceName']
        @device_id =        device_obj['deviceID']
        @device_type =      device_obj['deviceType']
        @units =            device_obj['units']
        @mac_id =           device_obj['macID']
        @settings=          device_obj['settings']
        @indoor_temp =      device_obj['indoorTemperature']
        @indoor_humidity =  device_obj['indoorHumidity']
        @outdoor_temp  =    device_obj['outdoorTemperature']
      end
      
      def update(access_token)
        api_address = "https://api.honeywell.com/v2/devices/"
        
        
        @response = HTTParty.get("#{api_address}#{@device_type}/#{@device_id}?apikey=H5lJQeAy7qJeOkhLWovSG1S2uNJIQkzM",
                        :headers => {"Authorizatiion" => "Bearer #{access_token}"})
      
        device_obj = JSON.parse(@response.body)
      
        
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
