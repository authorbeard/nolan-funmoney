# frozen_string_literal: true

FactoryBot.define do 
  factory :account do
    bank
    name { Faker::Business.name }

  end
end