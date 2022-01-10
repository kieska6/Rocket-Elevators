class AddDetailsToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :residential, :bool
    add_column :quotes, :commercial, :bool
    add_column :quotes, :corporate, :bool
    add_column :quotes, :hybrid, :bool
  end
end
