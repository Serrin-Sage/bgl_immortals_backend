class CreateCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :codes do |t|
      t.string :number
      t.integer :instructor_id, null: true
      t.integer :user_id, null: true

      t.timestamps
    end
  end
end
