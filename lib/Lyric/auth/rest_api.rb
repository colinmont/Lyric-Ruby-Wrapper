module Lyric
  module RestAPIMethods
    require 'json'
    require 'httparty'

  
    def locations
      api_address = 'https://api.honeywell.com/v2/'
      #response = HTTParty.get("#{api_address}locations",
      #                        :headers => {"Authorizatiion" => "Bearer #{self.access_token}"})

      response = File.get('response.json')
      location_list = Lyric::Model::LocationList.new(JSON.parse(response))
    end
  end
end
