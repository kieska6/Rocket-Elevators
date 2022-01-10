class AddBuildingAddressIdToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :building_address_id, :integer
    add_index :buildings, :building_address_id
  end
end
