# frozen_string_literal: true

require 'new_dawn/service'

module NewDawn
  module Users
    module Services
      class RegisterUser < Service
        include Inject[
          'users.repositories.user_repo'
        ]

        def call(username:, email:)
          user_repo.create!(username: username, email: email)
        end
      end
    end
  end
end
