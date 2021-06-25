class Grade < ApplicationRecord
    belongs_to :cohort
    belongs_to :student
end
