json.extract! patient, :id, :first_name, :last_name, :email, :dob, :phone, :email, :active, :created_at, :updated_at
json.url patient_url(patient, format: :json)
