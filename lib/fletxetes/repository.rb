# auto_register: false
# frozen_string_literal: true

require "rom-repository"
require_relative "entities"

module Fletxetes
  class Repository < ROM::Repository::Root
    include Deps[container: "persistence.rom"]

    commands :create, update: :by_pk, delete: :by_pk

    struct_namespace Entities
  end
end
