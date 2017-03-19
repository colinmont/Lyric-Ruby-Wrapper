module Lyric
  module Model
    class Device
      attr_accessor :name, :device_id

      def initialize(device_obj)
        device_obj.each do |d|
          @name = d['name']
          @device_id = d['deviceID']
        end
      end
    end
  end
end
