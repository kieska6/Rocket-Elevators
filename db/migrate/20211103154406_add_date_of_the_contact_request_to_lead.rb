class AddDateOfTheContactRequestToLead < ActiveRecord::Migration[5.2]
  def change
    add_column :leads, :request_date, :timestamp
  end
end
