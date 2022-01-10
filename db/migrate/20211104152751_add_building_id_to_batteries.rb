class AddBuildingIdToBatteries < ActiveRecord::Migration[5.2]
  def change
    add_column :batteries, :building_id, :integer
    add_index :batteries, :building_id
  end
end
