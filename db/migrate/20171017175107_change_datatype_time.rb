class ChangeDatatypeTime < ActiveRecord::Migration
  def change
    change_column :users, :time, :string
  end
end
