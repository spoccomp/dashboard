class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :username 
      t.string :password 
      t.string :first_name 
      t.string :last_name 
      t.integer :age 
      t.money :salary 
      t.string :education
      t.timestamp :created_at 
      t.timestamp :updated_at 
    end
  end
end
