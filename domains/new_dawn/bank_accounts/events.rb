# frozen_string_literal: true

require 'bank_accounts/handlers/user_registered'

module NewDawn
  module BankAccounts
    module Events
      def self.subscribe_to_events(event_bus)
        event_bus.subscribe('users.registered', &Handlers::UserRegistered.new)
      end

      def self.register_events(event_bus)
        event_bus.register_event('bank_accounts.created')
      end
    end
  end
end
