# frozen_string_literal: true

NewDawn::Application.boot(:vehicles) do
  init do
    require 'vehicles/events'
  end

  start do
    Vehicles::Events.register_events(event_bus)
    Vehicles::Events.subscribe_to_events(event_bus)
  end
end
