module Lyric
  module RestAPIMethods
    require 'json'
    require 'httparty'

  
    def user
      api_address = 'https://api.honeywell.com/v2/'
      response = HTTParty.get("#{api_address}locations?apikey=H5lJQeAy7qJeOkhLWovSG1S2uNJIQkzM",
                              :headers => {"Authorizatiion" => "Bearer #{self.access_token}"})
      
      #response = File.get('response.json')
      user = Lyric::Model::User.new(response)
    end
  end
end
