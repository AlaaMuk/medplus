json.array!(@patients) do |patient|
  json.extract! patient, :id, :hcprof_id, :user_id, :name, :email, :age, :gender, :phoneNumber, :emergencyContactName, :emergencyContactNum, :specialNotes
  json.url patient_url(patient, format: :json)
end
