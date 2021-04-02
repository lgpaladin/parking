# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_02_162318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_spaces", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.integer "space_type"
    t.integer "status"
    t.boolean "pending"
    t.string "uid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_parking_spaces_on_park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "title"
    t.string "address"
    t.string "coordinates"
    t.integer "place_count"
    t.integer "free_place_count"
    t.integer "car_type"
    t.integer "building_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "parking_space_id", null: false
    t.bigint "schedule_id", null: false
    t.boolean "paid"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parking_space_id"], name: "index_reservations_on_parking_space_id"
    t.index ["schedule_id"], name: "index_reservations_on_schedule_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.bigint "park_id", null: false
    t.bigint "parking_space_id", null: false
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_schedules_on_park_id"
    t.index ["parking_space_id"], name: "index_schedules_on_parking_space_id"
  end

  create_table "tariffs", force: :cascade do |t|
    t.float "day"
    t.float "night"
    t.float "morning"
    t.float "evening"
    t.float "track"
    t.float "big_track"
    t.bigint "park_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["park_id"], name: "index_tariffs_on_park_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.string "logo"
    t.string "phone"
    t.string "last_name"
    t.string "first_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "parking_spaces", "parks"
  add_foreign_key "reservations", "parking_spaces"
  add_foreign_key "reservations", "schedules"
  add_foreign_key "reservations", "users"
  add_foreign_key "schedules", "parking_spaces"
  add_foreign_key "schedules", "parks"
  add_foreign_key "tariffs", "parks"
end
