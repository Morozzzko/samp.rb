# frozen_string_literal: true

require 'dry-monads'
require 'dry/monads/result'

module NewDawn
  class Service
    include Dry::Monads[:result]

    def to_proc
      method(:call).to_proc
    end
  end
end
