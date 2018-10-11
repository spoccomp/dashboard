class Teacher < ApplicationRecord
    # has_one :role
    # has_one :education
    # has_one :cohort
    # has_one :education_level
    # has_one :profile
    belongs_to :cohort, optional: true

    validates_presence_of :username, :password, :first_name, :last_name, :age, :salary, :education
    # validates_numericality_of :salary, :message=>"Error Message - Enter your Salary"
    validates :salary, numericality: { less_than: 0}
    # , message: "Error Message - Enter your Salary greater than $0"
    validates :age, numericality: { only_integer: true, greater_than: 0, less_than: 150}
    # , message: "Error Message - Enter your age"
    # validates_numericality_of :age, :message=>"Error Message - Enter your Age"
end
