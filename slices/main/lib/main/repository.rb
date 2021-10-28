# frozen_string_literal: true

require "fletxetes/repository"
require_relative "entities"

module Main
  class Repository < Fletxetes::Repository
    struct_namespace Entities
  end
end
