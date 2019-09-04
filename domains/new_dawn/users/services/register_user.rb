# frozen_string_literal: true

require 'new_dawn/service'
require 'new_dawn/users/events/user_registered'

module NewDawn
  module Users
    module Services
      class RegisterUser < Service
        include Inject[
          'users.repositories.user_repo',
          'event_bus'
        ]

        def call(username:, email:)
          user = user_repo.create!(username: username, email: email)

          event_bus.trigger('users.registered', build_event_payload(user))

          user
        end

        private

        def build_event_payload(user)
          Events::UserRegistered[
            user: user
          ]
        end
      end
    end
  end
end
