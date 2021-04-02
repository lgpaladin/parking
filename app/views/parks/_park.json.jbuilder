json.extract! park, :id, :title, :address, :coordinates, :place_count, :free_place_count, :car_type, :building_type, :created_at, :updated_at
json.url park_url(park, format: :json)
