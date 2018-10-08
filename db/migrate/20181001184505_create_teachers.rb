class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.text :username 
      t.text :password 
      t.text :first_name 
      t.text :last_name 
      t.integer :age 
      t.money :salary 
      t.references :educations
      t.timestamp :created_at 
      t.timestamp :updated_at 
    end
  end
end
