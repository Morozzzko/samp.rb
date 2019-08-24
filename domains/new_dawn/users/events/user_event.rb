# frozen_string_literal: true

require 'new_dawn/event'
require 'new_dawn/users/entities/user'

module NewDawn
  module Users
    module Events
      class UserEvent < Event
        attribute :user, Types.Instance(Entities::User)
      end
    end
  end
end
