# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :users do
      column :uuid, :uuid, default: Sequel.function(:uuid_generate_v4), primary_key: true
      column :username, String, null: false
      column :email, String, null: false, unique: true
    end
  end
end
