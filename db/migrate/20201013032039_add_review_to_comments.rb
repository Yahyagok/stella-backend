class AddReviewToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :review, :string
  end
end
