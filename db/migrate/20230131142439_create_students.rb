class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :pronoun
      t.integer :age
      t.string :immortal_house
      t.integer :level
      t.jsonb :merit_array, default: {merits: []}
      t.integer :instructor_id
      t.integer :user_id, null: true
      
      t.timestamps
    end
  end
end
