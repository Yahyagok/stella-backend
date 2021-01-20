class AddPhotoToImageElements < ActiveRecord::Migration[6.0]
  def change
    add_column :image_elements, :photo, :string
  end
end
