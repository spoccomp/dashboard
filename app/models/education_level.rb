class EducationLevel < ApplicationRecord
   has_one teacher
   has_one student
end
