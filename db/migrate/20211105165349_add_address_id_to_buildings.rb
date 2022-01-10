class AddAddressIdToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :address_id, :integer
  end
end
