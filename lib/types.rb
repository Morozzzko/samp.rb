# frozen_string_literal: true

module Types
  include Dry.Types

  Username = Types::String.constrained(min_size: 3)
  Email = Types::String.constrained(min_size: 3)
end
