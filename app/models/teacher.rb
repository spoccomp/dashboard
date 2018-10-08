class Teacher < ApplicationRecord
    # has_one :role
    has_one :education
    # has_one :cohort
    # has_one :education_level
    # has_one :profile
    # belongs_to :cohort

    validates_presence_of :username, :password, :first_name, :last_name, :age, :salary, :edu_level
    validates_numericality_of :salary, :message=>"Error Message - Enter your Salary"
    validates_numericality_of :age, :message=>"Error Message - Enter your Age"
end
