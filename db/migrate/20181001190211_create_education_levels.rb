class CreateEducation< ActiveRecord::Migration[5.2]
  def change
    create_table :education_levels do |t|
      t.text :education
      # t.text :undergraduate 
      # t.text :graduate 
      # t.text :post_graduate 
      # # this is to create a foreign key
      # t.references :teachers
      # t.references :students
    end
  end
end
