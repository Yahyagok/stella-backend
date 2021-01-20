class AddImageUrlToActors < ActiveRecord::Migration[6.0]
  def change
    add_column :actors, :image_url, :string
  end
end
