class AddAttachedFileToLead < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :file, :binary
  end
end
