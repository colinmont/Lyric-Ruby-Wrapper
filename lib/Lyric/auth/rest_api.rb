module Lyric
  module RestAPIMethods
    require 'json'
    require 'httparty'

  
    def user
     # api_address = 'https://api.honeywell.com/v2/'
     
        headers = {
            "Authorization" => "Bearer #{self.access_token}"
        }
        query = {
            "apikey" => H5lJQeAy7qJeOkhLWovSG1S2uNJIQkzM
        }
        
        response = HTTParty.get("https://api.honeywell.com/v2/locations",
                              :headers => headers, :query => query)
        
        if response.key?("code")
            response['message']
        else
            Lyric::Model::User.new(response)
        end
    end
    
    def refresh_token
        
        headers = {
            "Authorization" => "Basic SDVsSlFlQXk3cUplT2toTFdvdlNHMVMydU5KSVFrek06SGlwclp0YnRzYTh2WkJkZA=="
        }
        
        body = {
            "grant_type" => "refresh_token",
            "refresh_token" => self.refresh_token
        }

        
        HTTParty.get("https://api.honeywell.com/oauth2/token",
                              :headers => headers, :body => body)
    end
    
  end
end