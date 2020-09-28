class CreateActors < ActiveRecord::Migration[6.0]
  def change
    create_table :actors do |t|
      t.string :name
      t.string :image
      t.integer :contact_info
      t.integer :city_id
      t.integer :agency_id
      t.text :movies
      t.string :description

      t.timestamps
    end
  end
end
