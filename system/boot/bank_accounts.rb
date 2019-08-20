# frozen_string_literal: true

module NewDawn
  Application.boot(:bank_accounts) do
    init do
      require 'bank_accounts/events'

      BankAccounts::Events.register_events(event_bus)
    end

    start do
      BankAccounts::Events.subscribe_to_events(event_bus)
    end
  end
end
