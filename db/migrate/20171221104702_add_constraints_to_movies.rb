class AddConstraintsToMovies < ActiveRecord::Migration[5.1]
  def change
    change_column_null :movies, :title, false
  end
end
