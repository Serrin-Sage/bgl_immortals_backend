class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :guardian
      t.string :immortal_house
      t.integer :level
      t.string :merit_array

      t.timestamps
    end
  end
end
