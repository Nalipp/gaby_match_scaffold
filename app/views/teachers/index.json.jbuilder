json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :teacher_email, :password, :name, :skill_1, :skill_2, :skill_3, :description, :price, :availability
  json.url teacher_url(teacher, format: :json)
end
