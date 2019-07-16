class CreateTents < ActiveRecord::Migration[5.2]
  def change
    create_table :tents do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.integer :capacity
      t.text :description
      t.string :location
      t.integer :price
      t.text :wildlife
      t.string :photo

      t.timestamps
    end
  end
end
