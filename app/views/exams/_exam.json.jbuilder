json.extract! exam, :id, :examtype, :date, :time, :result, :created_at, :updated_at
json.url exam_url(exam, format: :json)
