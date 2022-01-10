class RemoveAttachementFromSpeeches < ActiveRecord::Migration[5.2]
  def change
    remove_column :speeches, :attachement, :string
  end
end
