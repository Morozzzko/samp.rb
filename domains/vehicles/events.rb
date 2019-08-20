# frozen_string_literal: true

Dir[File.join(__dir__, 'events/*.rb')].each do |path|
  require_relative path
end

module Vehicles
  Event = Events::VehiclePurchased |
          Events::VehicleDestroyed |
          Events::VehicleImpounded |
          Events::VehicleSold

  module Events
    def self.register_events(event_bus)
      event_bus.register_event('vehicle_purchased')
      event_bus.register_event('vehicle_destroyed')
      event_bus.register_event('vehicle_impounded')
      event_bus.register_event('vehicle_sold')
    end

    def self.subscribe_to_events(event_bus); end
  end
end
