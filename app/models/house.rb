class House < ApplicationRecord
    has_many :professors
    has_many :students
end
