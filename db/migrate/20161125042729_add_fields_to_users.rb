class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    # General
    add_column :member, :username, :string
    add_column :member, :firstname, :string
    add_column :member, :lastname, :string
    add_column :member, :doc_type, :string, :limit => 3
    add_column :member, :doc_number, :string
    add_column :member, :phone_number, :string
    # Normal User
    add_column :member, :gender, :string, :limit => 2
    add_column :member, :date_of_birth, :date
    # Company
    add_column :member, :fullname, :string
    add_column :member, :company, :string
    add_column :member, :website, :string
    add_column :member, :logo, :string
    add_column :member, :cover, :string
  end
end
