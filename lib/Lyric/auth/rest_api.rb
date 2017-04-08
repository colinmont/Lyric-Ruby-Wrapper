module Lyric
  module RestAPIMethods
    require 'json'
    require 'httparty'

  
    def user
     # api_address = 'https://api.honeywell.com/v2/'
      response = HTTParty.get("https://api.honeywell.com/v2/locations?apikey=H5lJQeAy7qJeOkhLWovSG1S2uNJIQkzM",
                              :headers => {"Authorizatiion" => "Bearer wcdr1qNFwat8pgJRCBDSwHE4zrBi"})
      
      #response = File.get('response.json')
      user = Lyric::Model::User.new(response)
    end
  end
end
