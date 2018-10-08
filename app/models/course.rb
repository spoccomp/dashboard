class Course < ApplicationRecord
    # belongs_to :teacher
    # belongs_to :student
    # has_one :cohort
    validates_presence_of :course_name
    validates_numericality_of :course_hours, :message=>"Error Message - Enter hours"
end
