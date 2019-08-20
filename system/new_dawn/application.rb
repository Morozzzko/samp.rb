# frozen_string_literal: true

require 'dry/system/container'
require 'dry/inflector'

require_relative 'event_bus'

module NewDawn
  class Application < Dry::System::Container
    config.root = File.join(__dir__, '../..')

    config.name = :new_dawn

    config.auto_register = %w[domains lib]

    config.inflector = Dry::Inflector.new do |inflections|
      inflections.acronym('API')
      inflections.acronym('SAMP')
    end

    load_paths!('lib', 'domains', 'system')

    Events = EventBus.new
    register('event_bus') { Events }
  end

  Inject = Application.injector
end

Inject = NewDawn::Inject
