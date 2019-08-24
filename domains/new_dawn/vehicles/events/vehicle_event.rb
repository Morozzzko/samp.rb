# frozen_string_literal: true

require 'new_dawn/event'
require 'new_dawn/vehicles/entities/vehicle'

module NewDawn
  module Vehicles
    module Events
      class VehicleEvent < Event
        attribute :vehicle, Types.Instance(Vehicles::Entities::Vehicle)
      end
    end
  end
end
