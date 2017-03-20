module Lyric
  module RestAPIMethods
    require 'json'
    require 'httparty'

    api_address = 'https://api.honeywell.com/v2/'
    def locations
      #response = HTTParty.get("#{api_address}locations",
      #                        :headers => {"Authorizatiion" => "Bearer #{self.access_token}"})

      response = File.get('response.json')
      Lyric::Model::LocationList.new(JSON.parse(response))
    end
  end
end
