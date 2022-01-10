class AddColumnIdToElevators < ActiveRecord::Migration[5.2]
  def change
    add_column :elevators, :column_id, :integer
    add_index :elevators, :column_id
  end
end
