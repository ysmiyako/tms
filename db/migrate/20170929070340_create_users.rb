class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :name
      t.decimal :time

      t.timestamps null: false
    end
  end
end
