# frozen_string_literal: true

module NewDawn
  Application.boot(:users) do
    init do
      require 'users/events'

      Users::Events.register_events(event_bus)
    end

    start do
      Users::Events.subscribe_to_events(event_bus)
    end
  end
end
