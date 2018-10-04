class UserRole < ApplicationRecord
  has_one :teacher
  has_one :student
  has_one :administrator
  has_many :roles
end
