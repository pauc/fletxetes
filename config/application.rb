# frozen_string_literal: true

ENV["TZ"] = "UTC"

begin
  require "break"
rescue LoadError => e
  raise unless e.path == "break"
end

require "hanami"

module Fletxetes
  class Application < Hanami::Application
    config.sessions = :cookie, {
      key: "fletxetes.session",
      secret: settings.session_secret,
      expire_after: 60 * 60 * 24 * 365 # 1 year
    }

    config.logger.options[:level] = settings.log_level
    config.logger.options[:stream] = settings.log_to_stdout ? $stdout : "log/#{Hanami.env}.log"
  end
end
