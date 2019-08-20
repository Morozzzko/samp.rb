# frozen_string_literal: true

require 'types'

module NewDawn
  module Vehicles
    module Entities
      class Organization < Dry::Struct
        attribute :name, Types::String
      end
    end
  end
end
