# frozen_string_literal: true

RSpec.configure do |config|
  config.around(:each) do |example|
    NewDawn::Container['persistence.db'].transaction do
      example.run
    ensure
      raise Sequel::Rollback
    end
  end
end
