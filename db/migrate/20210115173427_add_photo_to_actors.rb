class AddPhotoToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :photo, :string
  end
end
