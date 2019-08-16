# frozen_string_literal: true

module Vehicles
  module Entities
    class Individual < Dry::Struct
      attribute :full_name, Types::String
    end
  end
end
