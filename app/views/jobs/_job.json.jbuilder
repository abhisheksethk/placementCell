json.extract! job, :id, :package, :location, :critria, :created_at, :updated_at ,:name
json.url job_url(job, format: :json)
