# frozen_string_literal: true

module Persistence
  module Relations
    class Users < ROM::Relation[:sql]
      schema(:users) do
        attribute :id, ::Types::ID
        attribute :username, ::Types::Username
        attribute :email, ::Types::Email

        primary_key :id
      end
    end
  end
end
