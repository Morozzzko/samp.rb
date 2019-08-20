# frozen_string_literal: true

module NewDawn
  Application.boot(:vehicles) do
    init do
      require 'vehicles/events'

      Vehicles::Events.register_events(event_bus)
    end

    start do
      Vehicles::Events.subscribe_to_events(event_bus)
    end
  end
end
