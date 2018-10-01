class Student < ApplicationRecord
    create_table :students do |t|
        t.username :text
        t.password :text
        t.first_name :text
        t.last_name :text
        t.age :integer
        t.created_at :timestamp
        t.updated_at :timestamp
        # this is to create a foreign key
        t.references :teachers
    end
end
