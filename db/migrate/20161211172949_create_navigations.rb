class CreateNavigations < ActiveRecord::Migration[5.0]
  def change
    create_table :navigations do |t|
      t.string :name
      t.string :controller
      t.integer :priority

      t.timestamps
    end
  end
end
