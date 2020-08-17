# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_17_064708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "license_plate"
    t.integer "user_id"
    t.index ["user_id"], name: "index_cars_on_user_id"
  end

  create_table "rides", force: :cascade do |t|
    t.string "ride_photos"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "pickup"
    t.string "dropoff"
    t.bigint "hitchhiker_id", null: false
    t.bigint "driver_id", null: false
    t.index ["driver_id"], name: "index_rides_on_driver_id"
    t.index ["hitchhiker_id"], name: "index_rides_on_hitchhiker_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "waypoint_departure"
    t.string "waypoint_destination"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "hitchhiker_id", null: false
    t.index ["hitchhiker_id"], name: "index_trips_on_hitchhiker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "rides", "users", column: "driver_id"
  add_foreign_key "rides", "users", column: "hitchhiker_id"
  add_foreign_key "trips", "users", column: "hitchhiker_id"
end
