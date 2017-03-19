module Lyric
  module Model
    class LocationList
      attr_accessor :locations, :devices

      @locations

      def initialize(location_list)
        @locations = @locations || {}
        location_list.each do |l|
          @locations[l["locationID"]] = Lyric::Model::Location.new(l)
        end
      end
    end
  end
end
