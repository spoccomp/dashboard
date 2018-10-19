class CreateCohorts < ActiveRecord::Migration[5.2]
  def change
    create_table :cohorts do |t|

      t.string :cohort_name 
      t.date :cohort_start_date 
      t.date :cohort_end_date 
      t.timestamp :created_at 
      t.timestamp :updated_at 
      # this is to create a foreign key
      t.references :teachers
      t.references :courses
     
    end
  end
end
