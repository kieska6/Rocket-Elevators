class RemoveBuildingAddressIdFromBuildings < ActiveRecord::Migration[5.2]
  def change
    remove_column :buildings, :building_address_id, :integer
  end
end
