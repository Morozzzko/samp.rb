# frozen_string_literal: true

module Persistence
  module Relations
    class Users < ROM::Relation[:sql]
      schema(:users) do
        attribute :user_uuid, ::Types::UUID
        attribute :username, ::Types::Username
        attribute :email, ::Types::Email

        primary_key :user_uuid
      end
    end
  end
end
