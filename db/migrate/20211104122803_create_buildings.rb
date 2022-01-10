class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :address_building
      t.string :name_administrator_building
      t.string :email_administrator_building
      t.string :phone_administrator_building
      t.string :name_technical_building
      t.string :email_technical_building
      t.string :phone_technical_building

      t.timestamps
    end
  end
end
