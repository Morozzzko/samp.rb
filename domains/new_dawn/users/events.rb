# frozen_string_literal: true

module NewDawn
  module Users
    module Events
      def self.register_events(event_bus)
        event_bus.register_event('users.registered')
      end

      def self.subscribe_to_events(event_bus); end
    end
  end
end
