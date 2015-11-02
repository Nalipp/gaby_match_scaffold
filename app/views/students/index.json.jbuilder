json.array!(@students) do |student|
  json.extract! student, :id, :student_name, :email, :description
  json.url student_url(student, format: :json)
end
