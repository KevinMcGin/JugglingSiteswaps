json.extract! request, :id, :name, :description, :difficulty, :ball_count, :created_at, :updated_at
json.url request_url(request, format: :json)
