require 'faker'

FactoryBot.define do
  factory :professor do 
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    association :house
  end
end