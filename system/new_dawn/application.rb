# frozen_string_literal: true

require 'dry/system/container'

# FIXME: it should be loaded by NewDawn::Application
require_relative '../../lib/types'

require_relative 'event_bus'

module NewDawn
  class Application < Dry::System::Container
    config.root = File.join(__dir__, '../..')

    config.name = :new_dawn

    config.auto_register = %w[domains lib]

    load_paths!('lib', 'domains', 'system')

    Events = EventBus.new
    register('event_bus') { Events }
  end

  Inject = Application.injector
end

Inject = NewDawn::Inject
