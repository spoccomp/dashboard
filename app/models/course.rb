class Course < ApplicationRecord
    # belongs_to :teacher
    # belongs_to :student
    # has_one :cohort
    belongs_to :cohort, optional: true
    validates_presence_of :course_name
    validates :course_hours, numericality: { only_integer: true, greater_than: 0, message: "A course has to have at leat 1 hour, nothing less. Sucka!"}
    # validates_numericality_of :course_hours, :message=>"Error Message - Enter hours"
end
