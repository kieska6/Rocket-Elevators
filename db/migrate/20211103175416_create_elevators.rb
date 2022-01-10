class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :columnid
      t.integer :serial_number
      t.string :model
      t.string :type_of_building
      t.string :status
      t.date :date_of_commissioning
      t.date :date_of_last_inspection
      t.string :certificate_of_inspection
      t.string :information
      t.string :notes

      t.timestamps
    end
  end
end
