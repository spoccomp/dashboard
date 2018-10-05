class Student < ApplicationRecord
    has_one :role
    has_one :education_level
    has_one :profile
    # belongs_to :cohort
    # belongs_to :teacher
    has_one :courses
    validates_presence_of :username, :password, :first_name, :last_name, :age, :edu_level
    validates_numericality_of :age, :message=>"Error Message - Enter your age"
end 
