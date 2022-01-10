class AddCustomerIdToBuildings < ActiveRecord::Migration[5.2]
  def change
    add_column :buildings, :customer_id, :integer
  end
end
