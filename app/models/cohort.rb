class Cohort < ApplicationRecord
  has_many :teacher
  has_many :students
  has_many :courses
  validates_presence_of :cohort_name
end
