module Lyric
  module Model
    class User
      attr_accessor :user_id, :username, :first_name, :last_name, :date_created, :date_deleted, :location

      def initialize(user)
        user_obj = user[0]
        @user_id =      user_obj[:users][0][:userID]
        @username =     user_obj[:users][0][:username]
        @first_name =   user_obj[:users][0][:firstname]
        @last_name =    user_obj[:users][0][:lastname]
        @date_created = user_obj[:users][0][:created]
        @date_deleted = user_obj[:users][0][:deleted]
        @location = []
        
        user.each do |u|
          @location << Lyric::Model::Location.new(u)
        end
      end
    end
  end
end