class AddCoordinatesToMovieSets < ActiveRecord::Migration[5.2]
  def change
    add_column :movie_sets, :latitude, :float
    add_column :movie_sets, :longitude, :float
  end
end
