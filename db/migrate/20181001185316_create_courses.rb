class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.text :course_name 
      t.integer :course_hours 
      t.timestamp :created_at 
      t.timestamp :updated_at 
      # this is to create a foreign key
      # t.references :teachers
      # t.references :students
      
    end
  end
end
