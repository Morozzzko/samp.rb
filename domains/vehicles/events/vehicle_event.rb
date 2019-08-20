# frozen_string_literal: true

require 'types'
require 'vehicles/entities/vehicle'

module Vehicles
  module Events
    class VehicleEvent < Dry::Struct
      attribute :vehicle, Types.Instance(Vehicles::Entities::Vehicle)
    end
  end
end
