require 'oauth2'



module Lyric
  module RestAPIMethods
    require 'json'
    require httparty

    api_address = 'https://api.honeywell.com/v2/'
    def locations
      response = HTTParty.get("#{api_address}locations",
                              :headers => {"Authorizatiion" => "Bearer #{self.access_token}"})
      Lyric::Model::Locations.new(JSON.parse(response.body))
    end

  end
end
