# auto_register: false
# frozen_string_literal: true

module Fletxetes
  module Entities
  end
end

Dir[File.join(__dir__, "entities", "*.rb")].each(&method(:require))
