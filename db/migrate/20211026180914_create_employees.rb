class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :Userid
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :title
      t.boolean :admin

      t.timestamps
    end
  end
end
