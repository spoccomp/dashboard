class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|

      t.timestamp :created_at 
      t.timestamp :updated_at 
      # this is to create a foreign key
      t.references :teachers
      t.references :students
      t.references :administrators
      t.references :roles
    end
  end
end
