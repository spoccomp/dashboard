class CreatePermissions < ActiveRecord::Migration[5.2]
  def change
    create_table :permissions do |t|

      t.text :permission_name 
      t.timestamp :created_at 
      t.timestamp :updated_at 
      # this is to create a foreign key
      t.references :roles
    end
  end
end
