class Cohort < ApplicationRecord
    create_table :cohorts do |t|
        t.cohort_name :text
        t.cohort_start_date :date
        t.cohort_end_date :date
        t.created_at :timestamp
        t.updated_at :timestamp
        # this is to create a foreign key
        t.references :teachers
        t.references :students
        t.references :cohorts
    end
end
