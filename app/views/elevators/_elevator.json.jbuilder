json.extract! elevator, :id, :columnid, :serial_number, :model, :type_of_building, :status, :date_of_commissioning, :date_of_last_inspection, :certificate_of_inspection, :information, :notes, :created_at, :updated_at
json.url elevator_url(elevator, format: :json)
