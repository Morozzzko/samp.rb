# frozen_string_literal: true

require 'dry/events/publisher'

module NewDawn
  class EventBus
    include Dry::Events::Publisher[:new_dawn]
  end
end
