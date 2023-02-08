class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.integer :instructor_code
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :username, null: true
      t.string :site

      t.timestamps
    end
    # add_index :instructors, :username, unique: true
    # add_index :instructors, :email, unique: true
  end
end
