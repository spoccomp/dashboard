class Student < ApplicationRecord
    # has_one :role
    # has_one :education
    has_one :profile
    # has_one :education
    # has_one :cohort
    has_many :cohorts
    has_many :cohort_students
    has_many :cohorts, through: :cohort_students
    validates_presence_of :username, :password, :first_name, :last_name, :age, :education
    validates :age, numericality: { only_integer: true, greater_than: 0, less_than: 150}
    # , message: "Error Message - Enter your age"
    # validates_numericality_of :age, 
end 
