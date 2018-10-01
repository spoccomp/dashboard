class UserRole < ApplicationRecord
    create_table :users_roles do |t|
        t.created_at :timestamp
        t.updated_at :timestamp
        # this is to create a foreign key
        t.references :teachers
        t.references :students
        t.references :administrators
        t.references :roles
    end
end
