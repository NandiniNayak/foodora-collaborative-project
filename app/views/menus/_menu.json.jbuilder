json.extract! menu, :id, :name, :picture, :ingredients, :quantity, :price, :restaurant_id, :created_at, :updated_at
json.url menu_url(menu, format: :json)
