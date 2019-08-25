# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :vehicles do
      column :uuid, :uuid, default: Sequel.function(:uuid_generate_v4), primary_key: true
      column :user_uuid, :uuid, null: false
    end
  end
end
