class AddMovieToUsers < ActiveRecord::Migration
  def change
    add_column :users, :movie, :string
  end
end
