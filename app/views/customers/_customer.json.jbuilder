json.extract! customer, :id, :user_id, :customer_creation_date, :company_name, :company_headquarter, :company_contact, :company_email, :company_description, :service_technical_authority_name, :technical_authority_phone, :service_technical_authority_email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
