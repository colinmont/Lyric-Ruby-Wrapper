module Lyric
  module Model
    class Location
      attr_accessor :name, :location_id, :steet_address, :city, :state, :country, :zipcode, :device

      def initialize(location_obj)
        @location_id = location_obj[:locationID]
        @name = location_obj[:name]
        @street_address = location_obj[:streetAddress]
        @city  = location_obj[:city]
        @state = location_obj[:state]
        @country = location_obj[:country]
        @zipcode = location_obj[:zipcode]
        @device = []
        
        location_obj[:devices].each do |d|
          @device = Lyric::Model::Device.new(d)
        end
        
      end
    end
  end
end
