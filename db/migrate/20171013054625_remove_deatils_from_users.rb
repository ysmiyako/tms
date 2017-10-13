class RemoveDeatilsFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :mail
    remove_column :users, :phone
  end
  
  def down
    add_column :users, :mail, string
    add_column :users, :phone, string
  end
end
