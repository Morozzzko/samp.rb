# frozen_string_literal: true

require 'types'

module NewDawn
  module Users
    module Entities
      class User < Dry::Struct
        attribute :username, Types::Username
        attribute :email, Types::Email
      end
    end
  end
end
