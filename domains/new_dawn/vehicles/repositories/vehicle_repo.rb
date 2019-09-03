# frozen_string_literal: true

require 'new_dawn/vehicles/entities'

module NewDawn
  module Vehicles
    module Repositories
      class VehicleRepo < Repository[:vehicles]
        struct_namespace Entities

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
