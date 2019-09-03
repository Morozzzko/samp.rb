# frozen_string_literal: true

require 'rom/factory'

Factory = ROM::Factory.configure do |config|
  config.rom = NewDawn::Container['persistence.rom']
end

Dir[File.join(__dir__, './factories/**/*.rb')].each(&method(:require))
