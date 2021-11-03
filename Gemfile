# frozen_string_literal: true

source "https://rubygems.org/"

# Core gems
gem "rake", "~> 13.0"

# Application framework
gem "hanami", github: "hanami/hanami", branch: :main
%w[hanami-cli hanami-router hanami-utils].each do |name|
  gem name, "~> 2.0.0.alpha"
end
gem "hanami-view", github: "hanami/view", branch: :main
gem "hanami-controller", github: "hanami/controller", branch: :main

# HTTP
gem "down", "~> 5.1"
gem "puma", "~> 4.3"

# Database
gem "pg"
gem "rom", "~> 5.2"
gem "rom-sql", "~> 3.2"
gem "sequel", "~> 5.32"
gem "sequel_pg"

# Application
gem "dry-configurable", "~> 0.13"
gem "dry-matcher", "~> 0.8"
gem "dry-monads", "~> 1.2"
gem "dry-struct", "~> 1.0"
gem "dry-transformer", "~> 0.1"
gem "dry-types", "~> 1.0"
gem "dry-validation", "~> 1.4"
gem "erbse", "~> 0.1"
gem "i18n", "~> 1.8"

# Development/test
group :development, :test do
  gem "break", "~> 0.21"
  gem "dotenv", "~> 2.7"
  gem "guard-rack", "~> 2.2"
  gem "pry"
  gem "pry-byebug"
  gem "rubocop"
  gem "rubocop-performance"
  gem "rubocop-rake"
  gem "rubocop-rspec"
  gem "rubocop-sequel"
end

# Test
group :test do
  gem "rspec", "~> 3.9"
end
