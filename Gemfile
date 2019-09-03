# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

group :test, :development do
  gem 'pry-byebug', '~> 3.7'

  gem 'simplecov', '~> 0.17.0'
end

group :test do
  gem 'rom-factory'
  gem 'rspec'
end

group :tools do
  gem 'solargraph', '~> 0.37'

  gem 'rubocop', '~> 0.74'
  gem 'rubocop-daemon', '~> 0.3'
  gem 'travis'
end

gem 'dry-system', '~> 0.12'

gem 'dry-events', '~> 0.2'

gem 'dry-monads', '~> 1.2', require: 'dry/monads/all'

gem 'pg'
gem 'rake'
gem 'rom'
gem 'rom-sql'
