# frozen_string_literal: true

require 'dry/system/container'
require 'dry/system/components'
require 'dry/inflector'

module NewDawn
  class Container < Dry::System::Container
    use :env,
        inferrer: lambda {
                    if defined?(RSpec)
                      :test
                    else
                      ENV.fetch('ENV', :development).to_sym
                    end
                  }

    config.root = File.join(__dir__, '../..')

    config.name = :new_dawn
    config.default_namespace = 'new_dawn'

    config.auto_register = %w[domains]

    config.inflector = Dry::Inflector.new do |inflections|
      inflections.acronym('API')
      inflections.acronym('SAMP')
    end

    load_paths! 'lib', 'domains', 'system'
  end

  Inject = Container.injector
end
