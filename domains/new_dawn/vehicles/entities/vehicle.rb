# frozen_string_literal: true

require_relative 'owner'

module NewDawn
  module Vehicles
    module Entities
      class Vehicle < Dry::Struct
        attribute :identity, Types::String
        attribute :owner, Owner
      end
    end
  end
end
