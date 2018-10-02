class Teacher < ApplicationRecord
    has_one role
    has_one education_level
    has_one profile
    has_one cohort
    has_many students
    has_many courses
end
