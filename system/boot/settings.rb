# frozen_string_literal: true

module NewDawn
  Container.boot(:settings, from: :system) do
    before(:init) do
      require 'types'
    end

    settings do
      key :database_url, ::Types::FilledString
    end
  end
end
