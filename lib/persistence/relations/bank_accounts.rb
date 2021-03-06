# frozen_string_literal: true

module Persistence
  module Relations
    class BankAccounts < ROM::Relation[:sql]
      schema(:bank_accounts) do
        attribute :id, ::Types::ID
        attribute :user_id, ::Types::ID
        attribute :amount_cents, ::Types::Integer
        attribute :amount_currecy, ::Types::Coercible::Symbol

        primary_key :id

        associations do
          belongs_to :user
        end
      end
    end
  end
end
