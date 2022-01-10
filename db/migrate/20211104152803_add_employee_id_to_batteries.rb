class AddEmployeeIdToBatteries < ActiveRecord::Migration[5.2]
  def change
    add_column :batteries, :employee_id, :integer
    add_index :batteries, :employee_id
  end
end
