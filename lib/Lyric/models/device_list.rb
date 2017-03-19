module Lyric
  module Model
    class DeviceList

      attr_accessor :location_list

      def initialize(locations_obj)
        @location_list = @location_list || {}
        locations_obj.each do |l|
          @location_list[l['locationID']] = Lyric::Model::Location.new(l)
        end
      end
    end
  end
end
