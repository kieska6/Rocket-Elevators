class AddCreationDateToBatteries < ActiveRecord::Migration[5.2]
  def change
    add_column :batteries, :Creation_Date, :datetime
  end
end
