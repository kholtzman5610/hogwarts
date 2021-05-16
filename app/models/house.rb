class House < ApplicationRecord
    has_many :professor
    has_many :students
end
