# frozen_string_literal: true

module NewDawn
  Container.boot(:vehicles) do
    init do
      require 'new_dawn/vehicles/events'

      use :event_bus

      Vehicles::Events.register_events(event_bus)
    end

    start do
      Vehicles::Events.subscribe_to_events(event_bus)
    end
  end
end
