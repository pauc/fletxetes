# frozen_string_literal: true

require "fletxetes/types"
require "hanami/application/settings"

module Fletxetes
  class Settings < Hanami::Application::Settings
    # Logging
    setting :log_to_stdout, constructor: Types::Params::Bool, default: false
    setting :log_level,     constructor: Types::String,       default: "info"

    # Database
    setting :database_url, constructor: Types::String

    # Application
    setting :session_secret, constructor: Types::String

    # Assets
    setting :precompiled_assets, constructor: Types::Params::Bool, default: false
    setting :assets_server_url, constructor: Types::String, default: "http://localhost:8080"
  end
end
