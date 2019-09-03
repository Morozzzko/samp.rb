# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :vehicles do
      primary_key :id, type: :bigserial

      foreign_key :user_id, :users, null: false
    end
  end
end
