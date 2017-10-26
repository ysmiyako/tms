class AddBestLapToUser < ActiveRecord::Migration
  def change
    add_column :users, :bestlap, :string
  end
end
