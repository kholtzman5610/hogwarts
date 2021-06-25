FactoryBot.define do
  factory :grade do
    student_id { 1 }
    cohort_id { 1 }
    mark { "MyString" }
  end
end
