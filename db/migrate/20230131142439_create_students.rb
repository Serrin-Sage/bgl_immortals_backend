class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :age
      t.string :immortal_house
      t.integer :level
      t.string :merit_array, array: true, default: []
      t.integer :instructor_id
      t.integer :user_id, null: true
      
      t.timestamps
    end
  end
end
