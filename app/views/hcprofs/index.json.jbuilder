json.array!(@hcprofs) do |hcprof|
  json.extract! hcprof, :id, :user_id, :name, :title, :phoneNumber, :email, :shiftHours, :location, :notes
  json.url hcprof_url(hcprof, format: :json)
end
