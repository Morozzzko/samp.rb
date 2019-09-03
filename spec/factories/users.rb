# frozen_string_literal: true

Factory.define(:user) do |f|
  f.username { Faker::Internet.username }
  f.email { Faker::Internet.email }
end
