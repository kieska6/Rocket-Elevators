class RemoveEmployeeIdFromBatteries < ActiveRecord::Migration[5.2]
  def change
    remove_column :batteries, :EmployeeId, :string
  end
end
