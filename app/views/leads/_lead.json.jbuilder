json.extract! lead, :id, :full_name_contact, :company_name, :email, :phone, :project_name, :project_description, :department, :message, :created_at, :updated_at
json.url lead_url(lead, format: :json)
