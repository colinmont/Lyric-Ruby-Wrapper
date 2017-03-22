module Lyric
  module Model
    class LocationList
      attr_accessor :locations

      def initialize(location_list)
        i=0
        location_list.each do |l|
          @locations = l[0]["locationID"]
          i = i+1
        end
      end
    end
  end
end