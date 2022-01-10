class RemoveTypeFromBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :building_details, :type, :string
  end
end
