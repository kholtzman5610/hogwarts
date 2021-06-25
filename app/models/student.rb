class Student < ApplicationRecord
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :house, presence: true

    belongs_to :house
    has_many :grades, dependent: :destroy
    has_many :cohorts, through: :grades
    
    def full_name
        "#{first_name} #{last_name}"
    end
end
