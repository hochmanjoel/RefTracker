json.extract! index, :id, :name, :email, :major, :created_at, :updated_at
json.url user_url(user, format: :json)