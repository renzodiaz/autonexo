class CreateVehicles < ActiveRecord::Migration[5.0]
  def change
    create_table :vehicles do |t|
      t.string :vehicle, null: false, default: ''
      t.string :summary, null: false, default: ''
      t.decimal :price, precision: 8, scale: 2
      t.integer :image_id
      t.integer :user_id
      t.integer :category_id
      t.timestamps
    end
  end
end
