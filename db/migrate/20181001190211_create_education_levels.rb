class CreateEducationLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :education_levels do |t|

      t.timestamps
    end
  end
end
