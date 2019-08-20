# frozen_string_literal: true

require 'types'

module NewDawn
  module Vehicles
    module Entities
      class Individual < Dry::Struct
        attribute :full_name, Types::String
      end
    end
  end
end
