class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    # General
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :doc_type, :string, :limit => 3
    add_column :users, :doc_number, :string
    add_column :users, :phone_number, :string
    # Normal User
    add_column :users, :gender, :string, :limit => 2
    add_column :users, :date_of_birth, :date
    # Company
    add_column :users, :fullname, :string
    add_column :users, :company, :string
    add_column :users, :website, :string
    add_column :users, :logo, :string
    add_column :users, :cover, :string
  end
end
