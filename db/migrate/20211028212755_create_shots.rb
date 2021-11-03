# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table(:shots) do
      primary_key :id,          type: :Bignum
      foreign_key :batch_id,    :batches, type: :Bignum, null: false, on_delete: :cascade, index: true
      column      :number,      Integer,  null: false
      column      :punctuation, Integer,  null: false
      column      :position,    :point,   null: true
      column      :created_at,  DateTime, null: false
    end
  end
end
