# frozen_string_literal: true

module Fletxetes
  module Contexts
    class Batches
      include Deps[repo: "repos.batches"]

      def create_one
        batches_repo.create({})
      end
    end
  end
end
