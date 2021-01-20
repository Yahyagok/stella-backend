class RemovePhotoFromActors < ActiveRecord::Migration[6.0]
  def change
    remove_column :actors, :photo, :string
  end
end
