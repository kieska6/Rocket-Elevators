class AddBuildingTypeToBuildingDetails < ActiveRecord::Migration[5.2]
  def change
    add_column :building_details, :building_type, :string
  end
end
