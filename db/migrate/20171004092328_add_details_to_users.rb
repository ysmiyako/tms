class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mail, :string
    add_column :users, :phone, :integer
  end
end
