# frozen_string_literal: true

module Persistence
  module Relations
    class Shots < ROM::Relation[:sql]
      schema(:shots, infer: true) do

        attribute :position, Fletxetes::Types::Strict::Nil | (ROM::SQL::Types.define(ROM::SQL::Postgres::Values::Point) do
          input do |point|
            x, y = if point.is_a?(Hash)
                     point.values_at(:x, :y)
                   else
                     [point.x, point.y]
                   end

            "(#{ x },#{ y })"
          end

          output do |point|
            x, y = point.to_s[1...-1].split(',', 2)

            ROM::SQL::Postgres::Values::Point.new(Float(x), Float(y))
          end
        end)

        associations do
          belongs_to :batch
        end
      end
    end
  end
end
