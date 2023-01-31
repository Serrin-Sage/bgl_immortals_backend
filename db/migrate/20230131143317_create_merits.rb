class CreateMerits < ActiveRecord::Migration[7.0]
  def change
    create_table :merits do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :color
      t.string :category

      t.timestamps
    end
  end
end
