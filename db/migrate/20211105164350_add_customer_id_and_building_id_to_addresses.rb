class AddCustomerIdAndBuildingIdToAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :building_id, :integer
    add_index :addresses, :building_id
    add_column :addresses, :customer_id, :integer
    add_index :addresses, :customer_id

  end
end
