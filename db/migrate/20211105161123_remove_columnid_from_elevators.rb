class RemoveColumnidFromElevators < ActiveRecord::Migration[5.2]
  def change
    remove_column :elevators, :columnid, :integer
  end
end
