# frozen_string_literal: true

require 'dry/system/container'
require 'dry/inflector'

require_relative 'event_bus'

module NewDawn
  class Application < Dry::System::Container
    config.root = File.join(__dir__, '../..')

    config.name = :new_dawn
    config.default_namespace = 'new_dawn'

    config.auto_register = %w[domains]

    config.inflector = Dry::Inflector.new do |inflections|
      inflections.acronym('API')
      inflections.acronym('SAMP')
    end

    load_paths! 'lib/new_dawn', 'domains', 'domains/new_dawn'

    Events = EventBus.new
    register('event_bus') { Events }
  end
end
