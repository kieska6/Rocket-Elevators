class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.string :Type
      t.string :Status
      t.string :EmployeeId
      t.string :Operation_Certificate
      t.string :Information
      t.string :Notes
      t.timestamp :Informations_Date

      t.timestamps
    end
  end
end
