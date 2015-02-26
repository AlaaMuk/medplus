json.array!(@medications) do |medication|
  json.extract! medication, :id, :user_id, :patient_id, :hcprof_id, :name, :description, :quantityMed, :units, :dosage, :units, :taken, :startDate, :endDate, :specialNotes
  json.url medication_url(medication, format: :json)
end
