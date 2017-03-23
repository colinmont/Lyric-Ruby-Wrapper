module Lyric
  module Model
    class Device
      attr_accessor :name, :device_id

      def initialize(device_obj)
        @name = device_obj[:userDefinedDeviceName]
       
      end
    end
  end
end
