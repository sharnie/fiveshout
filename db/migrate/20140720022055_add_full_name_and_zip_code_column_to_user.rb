class AddFullNameAndZipCodeColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :zip_code, :integer
    add_index :users, :zip_code
  end
end
