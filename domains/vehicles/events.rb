# frozen_string_literal: true

module NewDawn
  module Vehicles
    module Events
      def self.register_events(event_bus)
        event_bus.register_event('vehicles.purchased')
        event_bus.register_event('vehicles.destroyed')
        event_bus.register_event('vehicles.impounded')
        event_bus.register_event('vehicles.sold')
      end

      def self.subscribe_to_events(event_bus); end
    end
  end
end
