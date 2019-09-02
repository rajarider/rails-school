json.extract! student, :id, :rollNo, :name, :created_at, :updated_at
json.url student_url(student, format: :json)
