# frozen_string_literal: true

FactoryBot.define do 
  factory :bank do 
    name { Faker::Company.name }
  end
end