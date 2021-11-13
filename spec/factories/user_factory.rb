# frozen_string_literal: true

FactoryBot.define do  
  factory :user do 
    sequence(:email) { "user#_#{Time.current.to_i + rand(10)}@example.com" }
    password { 123456789012 }
    name { Faker::Name.name }
  end
end