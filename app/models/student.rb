class Student < ApplicationRecord
    has_one role
    has_one education_level
    has_one profile
    belongs_to cohort
    belongs_to teacher
    has_many courses
end 
