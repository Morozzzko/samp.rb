# frozen_string_literal: true

module NewDawn
  class EventHandler
    def to_proc
      method(:call).to_proc
    end
  end
end
