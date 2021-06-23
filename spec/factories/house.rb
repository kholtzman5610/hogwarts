require 'faker'
FactoryBot.define do
  factory :house do |f|
    f.name { Faker::Name.name }
  end
end