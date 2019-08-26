# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :vehicles do
      column :id, :bigint, primary_key: true

      foreign_key :user_id, :users, null: false
    end
  end
end
