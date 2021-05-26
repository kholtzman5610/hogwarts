class CreateCohorts < ActiveRecord::Migration[6.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.integer :professor_id
      t.integer :course_id

      t.timestamps
    end
  end
end
