class AddDataToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :data, :hstore
  end
end
