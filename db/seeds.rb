# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin_user   = AdminUser.find_by(email: 'admin@example.com')
admin_user ||= AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

p1 = Park.find_or_create_by(title: 'Моя первая стоянка',
													  address: 'Мой город, недалеко',
														coordinates: '47.793615583027886, 35.22030645770737',
														place_count: 20,
														free_place_count: 20,
														car_type: 2,
														building_type: 2)

Park.find_or_create_by(title: 'Вторая стоянка',
													  address: 'Мой родной город',
														coordinates: '47.793615583027886, 35.22030645770737',
														place_count: 20,
														free_place_count: 20,
														car_type: 2,
														building_type: 2)

Park.find_or_create_by(title: 'Крайняя стоянка',
													  address: 'Мой город, недалеко',
														coordinates: '47.793615583027886, 35.22030645770737',
														place_count: 20,
														free_place_count: 20,
														car_type: 2,
														building_type: 2)
