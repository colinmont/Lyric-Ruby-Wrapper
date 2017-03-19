module Lyric
  class Locations
    attr_accessor :location_id, :name, :country, :postal_code, :devices

    def initialize(location_obj)
      @location_id = location_obj['locationID']
      @name = location_obj['name']
      @country = location_obj['country']
      @postal_code = location_obj['postal_code']
      @devices = location_obj['devices']
  end
end
