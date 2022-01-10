class CreateSpeeches < ActiveRecord::Migration[5.2]
  def change
    create_table :speeches do |t|
      t.string :attachment
      t.string :result

      t.timestamps
    end
  end
end
