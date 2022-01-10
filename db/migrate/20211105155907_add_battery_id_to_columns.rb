class AddBatteryIdToColumns < ActiveRecord::Migration[5.2]
  def change
    add_column :columns, :battery_id, :integer
    add_index :columns, :battery_id
  end
end
