class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|

      t.text :content 
      t.timestamp :created_at 
      t.timestamp :updated_at 
      # this is to create a foreign key
      t.references :teachers
      t.references :students
    end
  end
end
