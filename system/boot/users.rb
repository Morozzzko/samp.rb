# frozen_string_literal: true

module NewDawn
  Container.boot(:users) do
    init do
      require 'new_dawn/users/events'

      use :event_bus

      Users::Events.register_events(event_bus)
    end

    start do
      Users::Events.subscribe_to_events(event_bus)
    end
  end
end
