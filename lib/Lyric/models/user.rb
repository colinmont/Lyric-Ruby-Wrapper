module Lyric
  module Model
    class User
      attr_accessor :user_id, :username, :first_name, :last_name, :date_created, :date_deleted, :location, :user_obj

      def initialize(user)
        user_obj = user[0]['users'][0]
        @user_id =      user_obj['userID']
        @username =     user_obj['username']
        @first_name =   user_obj['firstname']
        @last_name =    user_obj['lastname']
        @date_created = user_obj['created']
        @date_deleted = user_obj['deleted']
        @location = []
        if user.count > 1
          user.each do |u|
            @location << Lyric::Model::Location.new(u)
          end
        else
          @location << Lyric::Model::Location.new(user[0])
        end
      end
    end
  end
end