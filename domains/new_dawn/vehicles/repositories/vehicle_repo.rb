# frozen_string_literal: true

module NewDawn
  module Vehicles
    module Repositories
      class VehicleRepo < Repository[:vehicles]
        def create!(**params)
          vehicles.changeset(
            :create,
            **params
          ).commit
        end
      end
    end
  end
end
