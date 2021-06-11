require 'faker'
FactoryBot.define do
  factory :student do 
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    house
  end
  factory :house do
    student
  end
end