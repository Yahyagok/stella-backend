class RemoveImageFromActors < ActiveRecord::Migration[6.0]
  def change
    remove_column :actors, :image, :string
  end
end
