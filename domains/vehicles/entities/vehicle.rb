# frozen_string_literal: true

module Vehicles
  module Entities
    class Vehicle < Dry::Struct
      attribute :id, Types::Integer.constrained(gt: 0)
    end
  end
end
