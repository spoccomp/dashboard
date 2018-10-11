class Teacher < ApplicationRecord
    # has_one :role
    # has_one :education
    # has_one :cohort
    # has_one :education_level
    # has_one :profile
    belongs_to :cohort, optional: true

    validates_presence_of :username, :password, :first_name, :last_name, :age, :salary, :education
    validates :age, numericality: { only_integer: true, greater_than: 0, less_than: 150, message: "Listen sucka, you ain't older than 150 years old. So make it right!"}
    validates :salary, numericality: { greater_than: 0, message: "Please enter an amount greater than %{value} dollars, Sucka!"}
    
end
