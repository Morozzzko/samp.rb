# frozen_string_literal: true

Dir[File.join(__dir__, 'events/*.rb')].each do |path|
  require_relative path
end

module Vehicles
  Event = Events::VehiclePurchased |
          Events::VehicleDestroyed |
          Events::VehicleImpounded |
          Events::VehicleSold
end
