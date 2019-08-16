# frozen_string_literal: true

require 'dry/system/container'

# FIXME: it should be loaded by NewDawn::Application
require_relative '../../lib/types'

module NewDawn
  class Application < Dry::System::Container
    config.root = File.join(__dir__, '../..')

    config.name = :new_dawn

    config.auto_register = %w[domains lib]

    load_paths!('lib', 'domains', 'system')
  end

  Inject = Application.injector
end

Inject = NewDawn::Inject
