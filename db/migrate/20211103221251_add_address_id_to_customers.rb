class AddAddressIdToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :address_id, :integer
  end
end
