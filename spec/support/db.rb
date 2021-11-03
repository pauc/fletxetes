# require_with_metadata: true

require_relative "db/helpers"

RSpec.configure do |config|
  config.before :suite do
    Hanami.application.start_bootable :persistence
  end

  database = Hanami.application["persistence.db"]

  config.around do |example|
    database.transaction(auto_savepoint: true, savepoing: true, rollback: :always, &example)
  end

  config.include Test::DB::Helpers, :db
end
