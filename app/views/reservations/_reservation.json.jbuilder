json.extract! reservation, :id, :user_id, :parking_space_id, :schedule_id, :paid, :price, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
