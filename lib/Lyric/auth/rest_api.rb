module Lyric
  module RestAPIMethods
    require 'json'
    require 'httparty'

  
    def user
     # api_address = 'https://api.honeywell.com/v2/'
      response = HTTParty.get("https://api.honeywell.com/v2/locations?apikey=H5lJQeAy7qJeOkhLWovSG1S2uNJIQkzM",
                              :headers => {"Authorization" => "Bearer #{self.access_token}"})

      Lyric::Model::User.new(response)
    end
  end
end
