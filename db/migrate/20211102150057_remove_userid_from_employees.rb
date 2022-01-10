class RemoveUseridFromEmployees < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :userid, :integer
  end
end
