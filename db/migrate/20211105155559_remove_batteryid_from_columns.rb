class RemoveBatteryidFromColumns < ActiveRecord::Migration[5.2]
  def change
    remove_column :columns, :batteryid, :integer
  end
end
