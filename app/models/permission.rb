class Permission < ApplicationRecord
    create_table :permissions do |t|
         t.permission_name :text
         t.created_at :timestamp
         t.updated_at :timestamp
         # this is to create a foreign key
         t.references :roles
    end
end
