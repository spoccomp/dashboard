class Administrator < ApplicationRecord
    create_table :administrators do |t|
        t.admin_username :text
        t.admin_password :text
        t.created_at :timestamp
        t.updated_at :timestamp
    end
end
