class CreateProfessors < ActiveRecord::Migration[6.0]
  def change
    create_table :professors do |t|
      t.string :first_name
      t.string :last_name
      t.integer :house_id

      t.timestamps
    end
  end
end
