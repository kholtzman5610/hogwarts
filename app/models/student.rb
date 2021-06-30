class Student < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :house, presence: true

    belongs_to :house

    def full_name
        "#{first_name} #{last_name}"
    end
end
