module Lyric
  module Model
    class Location
      attr_accessor :device_id, :name, :location_id

      def initialize(location_obj)
        @location_id = location_obj['locationID']
        location_obj.each do |l|
          @device_id = Lyric::Model::DeviceList.new(l['device_id'])
        end
      end
    end
  end
end
