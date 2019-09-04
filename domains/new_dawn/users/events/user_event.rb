# frozen_string_literal: true

require 'new_dawn/event'
require 'new_dawn/users/entities/user'

module NewDawn
  module Users
    module Events
      class UserEvent < Event
        attribute :user do
          attribute :id, Types::ID
          attribute :username, Types::Username
          attribute :email, Types::Email
        end
      end
    end
  end
end
