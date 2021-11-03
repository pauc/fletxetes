module Test
  module DB
    module Helpers
      module_function

      def relations
        rom.relations
      end

      def rom
        Hanami.application["persistence.rom"]
      end

      def db
        Hanami.application["persistence.db"]
      end
    end
  end
end
