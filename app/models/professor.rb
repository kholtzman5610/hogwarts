class Professor < ApplicationRecord
    belongs_to :cohort
    belongs_to :course
    belongs_to :house

    def full_name
        "#{first_name} #{last_name}"
    end
end
