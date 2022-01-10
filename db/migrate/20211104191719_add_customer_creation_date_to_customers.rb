class AddCustomerCreationDateToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :customer_creation_date, :string
  end
end
