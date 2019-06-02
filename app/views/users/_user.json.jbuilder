json.extract! user, :id, :name, :profile, :created_at, :updated_at
json.url user_url(user, format: :json)
