class CreateAdministrators < ActiveRecord::Migration[5.2]
  def change
    create_table :administrators do |t|

      t.text :admin_username 
      t.text :admin_password 
      t.timestamp :created_at 
      t.timestamp :updated_at 
    end
  end
end
