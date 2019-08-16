# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

group :test, :development do
  gem 'pry-byebug', '~> 3.7'
end

group :test do
  gem 'rspec'
end

group :tools do
  gem 'solargraph', '~> 0.36.0'

  gem 'rubocop', '~> 0.74.0'
  gem 'rubocop-daemon', '~> 0.3.1'
end

gem 'dry-system', '~> 0.12.0'

gem 'dry-events', '~> 0.2.0'
