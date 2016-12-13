class CreatePromos < ActiveRecord::Migration[5.0]
  def change
    create_table :promos do |t|
      t.string :name
      t.datetime :firstDate
      t.datetime :dueDate
      t.string :image
      t.text :description
      t.integer :vehicle_id
      t.integer :user_id

      t.timestamps
    end
  end
end
