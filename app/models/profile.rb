class Profile < ApplicationRecord
    create_table :profiles do |t|
        t.content :text
        t.created_at :timestamp
        t.updated_at :timestamp
        # this is to create a foreign key
        t.references :teachers
        t.references :students
    end
end
