# frozen_string_literal: true

source "https://rubygems.org/"

# Core gems
gem "rake", "~> 13.0"

# Application framework
gem "hanami", "~> 2.0.alpha", require: false, git: "https://github.com/hanami/hanami.git", branch: "main"
gem "hanami-cli", "~> 2.0.0.alpha"
gem "hanami-controller", "~> 2.0.alpha", require: false, git: "https://github.com/hanami/controller.git", branch: "main"
gem "hanami-router", "~> 2.0.0.alpha"
gem "hanami-utils", "~> 2.0.0.alpha"
gem "hanami-view", "~> 2.0.0.alpha"

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
