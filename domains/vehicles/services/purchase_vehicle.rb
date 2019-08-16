# frozen_string_literal: true

module Vehicles
  module Services
    class PurchaseVehicle
      include Inject['event_bus']

      def call
        event_bus.publish('vehicles.purchased', id: 1)

        Entities::Vehicle[
          id: 1
        ]
      end
    end
  end
end
