class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.string :amount_of_elevator
      t.string :price_per_elevator
      t.string :total_price_of_elevator
      t.string :installation
      t.string :total_price

      t.timestamps
    end
  end
end
