class AddUserTypeToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :member, :type, :string
  end
end
