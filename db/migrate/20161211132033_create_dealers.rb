class CreateDealers < ActiveRecord::Migration[5.0]
  def change
    create_table :dealers do |t|
      t.string :name
      t.text :fulladdress
      t.integer :places_id

      t.timestamps
    end
  end
end
