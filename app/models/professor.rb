class Professor < ApplicationRecord
    belongs_to :courses
    belongs_to :house

    def full_name
        "#{first_name} #{last_name}"
    end
end
