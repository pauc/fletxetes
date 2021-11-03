# frozen_string_literal: true

module Persistence
  module Relations
    class Batches < ROM::Relation[:sql]
      schema(:batches, infer: true) do
        associations do
          has_many :shots
        end
      end
    end
  end
end
