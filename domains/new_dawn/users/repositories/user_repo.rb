# frozen_string_literal: true

require 'new_dawn/repository'
require 'new_dawn/users/entities/user'

module NewDawn
  module Users
    module Repositories
      class UserRepo < Repository[:users]
        struct_namespace Entities

        def create!(**params)
          users.changeset(:create, **params).commit
        end

        def count
          users.count
        end
      end
    end
  end
end
