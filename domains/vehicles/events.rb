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
      event_bus.register_event('vehicle.purchased')
      event_bus.register_event('vehicle.destroyed')
      event_bus.register_event('vehicle.impounded')
      event_bus.register_event('vehicle.sold')
    end

    def self.subscribe_to_events(event_bus); end
  end
end
