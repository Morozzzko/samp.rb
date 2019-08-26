# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :bank_accounts do
      column :id, :bigint, primary_key: true
      column :amount_cents, Integer, null: false
      column :amount_currency, String, null: false

      foreign_key :user_id, :users, null: false
    end
  end
end
