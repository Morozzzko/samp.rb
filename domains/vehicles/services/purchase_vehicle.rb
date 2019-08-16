# frozen_string_literal: true

module Vehicles
  module Services
    class PurchaseVehicle
      include Inject[
        'event_bus',
        repo: 'vehicles.repositories.vehicle_repository'
      ]

      def call
        vehicle = Entities::Vehicle[
          identity: 'abcdef',
          owner: Entities::Individual[full_name: 'John Doe']
        ]
        event_bus.publish('vehicles.purchased', vehicle: vehicle)

        repo.create!(vehicle)
      end
    end
  end
end
