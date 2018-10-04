class Role < ApplicationRecord
   has_many :permissions
   belongs_to :user_role
   
end
