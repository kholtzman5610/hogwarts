class Course < ApplicationRecord
    has_many :professor 
    has_many :students
end
