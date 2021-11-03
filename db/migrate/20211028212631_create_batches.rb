# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table(:batches) do
      primary_key :id, type: :Bignum
      column :distance, Float
      column :created_at, DateTime, null: false
    end
  end
end
