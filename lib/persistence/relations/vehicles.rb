# frozen_string_literal: true

module Persistence
  module Relations
    class Vehicles < ROM::Relation[:sql]
      schema(:vehicles) do
        attribute :uuid, ::Types::UUID
        attribute :user_uuid, ::Types::UUID

        primary_key :uuid

        associations do
          belongs_to :user
        end
      end
    end
  end
end
