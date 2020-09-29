class ChangeIntegerLimitInActors < ActiveRecord::Migration[6.0]
  def change
    change_column :actors, :contact_info, :integer, limit: 8
  end
end
