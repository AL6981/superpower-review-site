require 'factory_bot'

FactoryBot.define do
  factory :user do
    sequence(:email) {|n| "user#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    role "member"
  end

  factory :superpower do
    name 'flying'
    description 'It is awesome to fly'
    association :user, factory: :user
  end
  #
  # factory :review do
  #   rating 3
  #   body 'this is a review'
  #   association :superpower, factory: :superpower
  # end
end
