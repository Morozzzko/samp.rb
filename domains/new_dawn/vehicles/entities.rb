# frozen_string_literal: true

Dir[File.join(__dir__), 'entities/**/*.rb'] do |path|
  require_relative path
end

module NewDawn
  module Vehicles
    module Entities
    end
  end
end
