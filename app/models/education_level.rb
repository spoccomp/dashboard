class EducationLevel < ApplicationRecord
    create_table :education_level do |t|
        t.high_school :text
        t.undergraduate :text
        t.graduate :text
        t.post_graduate :text
        # this is to create a foreign key
        t.references :teachers
        t.references :students
    end
end
