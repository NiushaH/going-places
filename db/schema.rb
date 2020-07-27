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

ActiveRecord::Schema.define(version: 2020_07_27_214725) do

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "address"
    t.string "cellphone"
    t.string "birthdate"
    t.string "profile_photo"
    t.string "payment_info"
    t.string "music_preferences"
    t.string "conversation_type"
    t.string "hobbies"
    t.string "profession"
    t.string "alma_mater"
    t.integer "user_role"
    t.integer "trips"
    t.integer "drives"
    t.integer "cars"
    t.integer "mvr_rating"
    t.integer "rating_received"
    t.integer "ratings_given"
    t.string "comments_received"
    t.string "comments_given"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
