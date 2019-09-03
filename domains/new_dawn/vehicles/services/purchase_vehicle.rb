# frozen_string_literal: true

module NewDawn
  module Vehicles
    module Services
      class PurchaseVehicle
        include Inject[
          'event_bus',
          'vehicles.repositories.user_repo',
          repo: 'vehicles.repositories.vehicle_repo'
        ]

        def call(_owner_id)
          vehicle = Entities::Vehicle[
            identity: 'abcdef',
            owner: Entities::Individual[full_name: 'John Doe']
          ]
          owner =
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
