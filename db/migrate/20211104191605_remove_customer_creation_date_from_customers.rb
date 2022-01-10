class RemoveCustomerCreationDateFromCustomers < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :customer_creation_date, :string
  end
end
