# frozen_string_literal: true

module NewDawn
  module Vehicles
    module Services
      class PurchaseVehicle
        include Inject[
          'event_bus',
          repo: 'vehicles.repositories.vehicle_repo'
        ]

        def call(user_id)
          vehicle = Entities::Vehicle[
            identity: 'abcdef',
            owner: Entities::Individual[full_name: 'John Doe']
          ]
          owner =
            event_bus.publish(
              'vehicles.purchased',
              event: Events::VehiclePurchased[vehicle: vehicle]
            )

          repo.create!(**vehicle, user_id: user_id)
        end
      end
    end
  end
end
