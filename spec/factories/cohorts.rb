require 'faker'

FactoryBot.define do
  factory :cohort do 
    name { Faker::Name.name }
    association :professor
    association :course
  end
end