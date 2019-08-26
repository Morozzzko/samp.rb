# frozen_string_literal: true

require 'rom/repository'

module NewDawn
  class Repository
    class << self
      def [](*args)
        ROM::Repository[*args].include Inject.args['persistence.rom']
      end
    end
  end
end
