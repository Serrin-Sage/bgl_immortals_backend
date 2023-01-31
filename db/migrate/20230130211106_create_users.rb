class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.integer :parent_code
      t.string :name
      t.string :email
      t.string :password
      t.string :username

      t.timestamps
    end
  end
end