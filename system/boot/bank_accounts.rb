# frozen_string_literal: true

module NewDawn
  Container.boot(:bank_accounts) do
    init do
      require 'new_dawn/bank_accounts/events'

      use :event_bus

      BankAccounts::Events.register_events(event_bus)
    end

    start do
      BankAccounts::Events.subscribe_to_events(event_bus)
    end
  end
end
