class AddLastInspectToBatteries < ActiveRecord::Migration[5.2]
  def change
    add_column :batteries, :Last_Inspect, :datetime
  end
end
