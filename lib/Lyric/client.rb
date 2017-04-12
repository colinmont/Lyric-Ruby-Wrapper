require_relative 'auth/rest_api'

module Lyric
  class Client

    def initialize(access_token = nil, refresh_token = nil)
      @access_token = access_token
      @refresh_token = refresh_token
    end

    attr_reader :access_token, :refresh_token
    include RestAPIMethods
  end
end
