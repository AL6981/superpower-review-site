require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
  end

  factory :superpower do
    name 'flying'
    description 'It is awesome to fly'
    association :user, factory: :user
  end
end
