# frozen_string_literal: true

require 'new_dawn/event_bus'

module NewDawn
  Container.boot(:event_bus) do
    init do
      register('event_bus') { EventBus.new }
    end
  end
end
