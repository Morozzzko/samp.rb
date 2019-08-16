# frozen_string_literal: true

require_relative 'individual'
require_relative 'organization'

module Vehicles
  module Entities
    Owner = Individual | Organization
  end
end
