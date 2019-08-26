# frozen_string_literal: true

require 'securerandom'
module NewDawn
  module Vehicles
    module Repositories
      class VehicleRepo < Repository[:vehicles]
        def create!(**params)
          vehicles.changeset(
            :create,
            uuid: SecureRandom.uuid,
            user_uuid: SecureRandom.uuid,
            **params
          ).commit
        end
      end
    end
  end
end
