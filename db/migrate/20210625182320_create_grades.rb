class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.integer :student_id
      t.integer :cohort_id
      t.string :mark

      t.timestamps
    end
  end
end
