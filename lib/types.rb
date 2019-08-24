# frozen_string_literal: true

module Types
  include Dry.Types

  Username = Types::String.constrained(min_size: 3)
  Email = Types::String.constrained(min_size: 3)

  FilledString = Types::String.constrained(filled: true)
  UUID = Types::String.constrained(size: 36)
end
