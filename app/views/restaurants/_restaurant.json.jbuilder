json.extract! restaurant, :id, :name, :street, :city, :state, :country, :phone, :user_id, :created_at, :updated_at
json.url restaurant_url(restaurant, format: :json)
