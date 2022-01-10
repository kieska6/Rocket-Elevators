class RemoveAddressBuildingFromBuildings < ActiveRecord::Migration[5.2]
  def change
    remove_column :buildings, :address_building, :string
  end
end
