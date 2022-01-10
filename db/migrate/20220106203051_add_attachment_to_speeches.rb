class AddAttachmentToSpeeches < ActiveRecord::Migration[5.2]
  def change
    add_column :speeches, :attachment, :binary
  end
end
