class Cohort < ApplicationRecord
  has_one :teacher
  # belongs_to :course
  has_one :course
  has_many :students
  has_many :cohort_students
  has_many :students, through: :cohort_students
  validates_presence_of :cohort_name, :cohort_start_date, :cohort_end_date
end
