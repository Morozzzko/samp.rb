# frozen_string_literal: true

require 'types'

module NewDawn
  module Users
    class User < Dry::Struct
      attribute :username, Types::Username
      attribute :email, Types::Email
    end
  end
end
