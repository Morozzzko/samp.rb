# frozen_string_literal: true

module NewDawn
  module Vehicles
    module Services
      class PurchaseVehicle
        include Inject[
          'event_bus',
          repo: 'vehicles.repositories.vehicle_repo'
        ]

        def call
          vehicle = Entities::Vehicle[
            identity: 'abcdef',
            owner: Entities::Individual[full_name: 'John Doe']
          ]
          event_bus.publish(
            'vehicles.purchased',
            event: Events::VehiclePurchased[vehicle: vehicle]
          )

          repo.create!(vehicle)
        end
      end
    end
  end
end
