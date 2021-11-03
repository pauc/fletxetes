# frozen_string_literal: true

module Fletxetes
  module Contexts
    class Shots
      include Deps[repo: "repos.shots"]

      def create_one(**attributes)
        repo.create(**attributes)
      end
    end
  end
end
