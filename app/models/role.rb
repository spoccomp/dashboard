class Role < ApplicationRecord
    create_table :roles do |t|
        t.role_name :text
        t.created_at :timestamp
        t.update_at :timestamp
    end
end
