class Student < ApplicationRecord
    # has_one :role
    # has_one :education
    has_one :profile
    # has_one :education
    has_one :cohort
    has_many :cohortstudents
    has_many :students, :through => :cohorts
    validates_presence_of :username, :password, :first_name, :last_name, :age, :education
    validates_numericality_of :age, :message=>"Error Message - Enter your age"
end 
