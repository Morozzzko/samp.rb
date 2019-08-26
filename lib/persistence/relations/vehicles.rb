# frozen_string_literal: true

module Persistence
  module Relations
    class Vehicles < ROM::Relation[:sql]
      schema(:vehicles) do
        attribute :id, ::Types::ID
        attribute :user_id, ::Types::ID

        primary_key :id

        associations do
          belongs_to :user
        end
      end
    end
  end
end
