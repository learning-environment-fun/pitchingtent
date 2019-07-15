class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.boolean :is_host
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
