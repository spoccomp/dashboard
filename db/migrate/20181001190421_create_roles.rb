class CreateRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :roles do |t|

      t.text :role_name 
      t.timestamp :created_at 
      t.timestamp :update_at 
    end
  end
end
