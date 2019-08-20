# frozen_string_literal: true

module ApplicationHelper
  require_relative '../../system/boot'

  def container
    NewDawn::Application
  end

  def event_bus
    container['event_bus']
  end
end

RSpec.configure do |config|
  config.include ApplicationHelper
end
