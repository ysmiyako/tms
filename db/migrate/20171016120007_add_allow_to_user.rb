class AddAllowToUser < ActiveRecord::Migration
  def change
    add_column :users, :allow, :boolean
  end
end
