class BuildingsToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :building, foreign_key: true
  end
end
