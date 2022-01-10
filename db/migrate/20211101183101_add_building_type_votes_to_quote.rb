class AddBuildingTypeVotesToQuote < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :building_type, :string
    add_column :quotes, :string, :string
  end
end
