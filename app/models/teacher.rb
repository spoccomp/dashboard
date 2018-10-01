class Teacher < ApplicationRecord
    create_table :teachers do |t|
        t.username :text
        t.password :text
        t.first_name :text
        t.last_name :text
        t.age :integer
        t.salary :money
        t.created_at :timestamp
        t.updated_at :timestamp
    end
end
