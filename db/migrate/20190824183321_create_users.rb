# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :users do
      primary_key :id, type: :bigserial
      column :username, String, null: false
      column :email, String, null: false, unique: true
    end
  end
end
