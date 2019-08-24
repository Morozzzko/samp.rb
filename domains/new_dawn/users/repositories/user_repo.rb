# frozen_string_literal: true

require 'new_dawn/repository'
require 'new_dawn/users/entities/user'

module NewDawn
  module Users
    module Repositories
      class UserRepo < Repository
        @@count = 0

        def create!(**params)
          @@count += 1

          Entities::User[**params]
        end

        def count
          @@count
        end
      end
    end
  end
end
