# frozen_string_literal: true

module Persistence
  module Relations
    class BankAccounts < ROM::Relation[:sql]
      schema(:bank_accounts) do
        attribute :uuid, ::Types::UUID
        attribute :user_uuid, ::Types::UUID
        attribute :amount_cents, ::Types::Integer
        attribute :amount_currecy, ::Types::Coercible::Symbol

        primary_key :uuid

        associations do
          belongs_to :user
        end
      end
    end
  end
end
