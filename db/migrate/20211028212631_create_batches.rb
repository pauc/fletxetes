# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table(:batches) do
      primary_key :id,          type: :Bignum
      column      :distance,    Float
      column      :punctuation, Integer,  null: false, default: 0
      column      :max_shots,   Integer,  null: false, default: 0
      column      :shots_count, Integer,  null: false, default: 0
      column      :created_at,  DateTime, null: false
    end
  end
end
