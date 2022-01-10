class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :user_id
      t.string :customer_creation_date
      t.string :company_name
      t.string :company_headquarter
      t.string :company_contact
      t.string :company_email
      t.string :company_description
      t.string :service_technical_authority_name
      t.string :technical_authority_phone
      t.string :service_technical_authority_email

      t.timestamps
    end
  end
end
