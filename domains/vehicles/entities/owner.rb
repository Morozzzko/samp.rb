# frozen_string_literal: true

require_relative 'individual'
require_relative 'organization'

module NewDawn
  module Vehicles
    module Entities
      Owner = Individual | Organization
    end
  end
end
