class Profile < ApplicationRecord
    has_one teacher
    has_one student
    has_one administrator
end
