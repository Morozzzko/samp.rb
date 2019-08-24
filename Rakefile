# frozen_string_literal: true

require 'bundler/setup'

require 'rom/sql/rake_task'

require_relative 'system/new_dawn/container'

namespace :db do
  task :setup do
    NewDawn::Container.init :persistence
  end
end
