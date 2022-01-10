class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.integer :batteryid
      t.string :type_of_building
      t.integer :number_of_floors_served
      t.string :status
      t.string :information
      t.string :notes

      t.timestamps
    end
  end
end
