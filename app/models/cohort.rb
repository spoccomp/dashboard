class Cohort < ApplicationRecord
  has_one :teacher
  has_many :students
  validates_presence_of :cohort_name
end
