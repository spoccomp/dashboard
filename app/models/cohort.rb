class Cohort < ApplicationRecord
  has_one :teacher
  has_one :course
  # has_one :student
  has_many :students
  has_many :cohortstudents
  has_many :cohorts, through: :students
  validates_presence_of :cohort_name, :cohort_start_date, :cohort_end_date
end
