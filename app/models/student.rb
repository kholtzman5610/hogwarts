class Student < ApplicationRecord
    belongs_to :course
    belongs_to :house
    belongs_to :cohort

    def full_name
        "#{first_name} #{last_name}"
    end
end
