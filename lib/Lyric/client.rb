require_relative 'auth/rest_api'

module Lyric
  class Client

    def initialize(access_token = nil)
      @access_token = access_token
    end

    attr_reader :access_token

    include RestAPIMethods

  end
end
