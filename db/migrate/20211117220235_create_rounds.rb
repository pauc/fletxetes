# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table(:rounds) do
      primary_key :id,            type: :Bignum
      column      :punctuation,   Integer,  null: false, default: 0
      column      :max_batches,   Integer,  null: false, default: 0
      column      :batches_count, Integer,  null: false, default: 0
      column      :created_at,    DateTime, null: false
    end

    create_table(:batches_rounds) do
      primary_key :id, type: :Bignum
      foreign_key :batch_id, :batches, type: :Bignum, null: false, on_delete: :cascade, index: true
      foreign_key :round_id, :rounds,  type: :Bignum, null: false, on_delete: :cascade, index: true
    end
  end
end
