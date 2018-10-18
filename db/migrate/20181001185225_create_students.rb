class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
        t.text :username 
        t.text :password 
        t.text :first_name 
        t.text :last_name 
        t.integer :age 
        t.text :education
        t.timestamp :created_at 
        t.timestamp :updated_at 
        # this is to create a foreign key
        # t.references :teachers
    end
  end
end
