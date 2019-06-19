json.extract! student, :id, :photo, :studentName,:registration, :Dob, :branch, :cgpa, :subject, :language, :contact, :email, :address, :created_at, :updated_at
json.url student_url(student, format: :json)
