class RemoveMoviesFromActors < ActiveRecord::Migration[6.0]
  def change
    remove_column :actors, :movies, :text
  end
end
