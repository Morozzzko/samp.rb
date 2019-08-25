# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :bank_accounts do
      column :uuid, :uuid, default: Sequel.function(:uuid_generate_v4), primary_key: true
      column :user_uuid, :uuid, null: false
      column :amount_cents, Integer, null: false
      column :amount_currency, String, null: false
    end
  end
end
