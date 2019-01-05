class ChangeIntegerLimit < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :measured_at, :integer, limit: 8
  end
end
