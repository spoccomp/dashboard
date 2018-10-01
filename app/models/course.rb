class Course < ApplicationRecord
    create_table :courses do |t|
        t.course_name :text
        t.course_hours :integer
        t.created_at :timestamp
        t.updated_at :timestamp
        # this is to create a foreign key
        t.references :teachers
        t.references :students
    end
end
