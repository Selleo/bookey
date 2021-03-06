# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_13_093420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartments", force: :cascade do |t|
    t.string "name", null: false
    t.string "uid", null: false
    t.bigint "hotel_id", null: false
    t.bigint "parent_apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hotel_id"], name: "index_apartments_on_hotel_id"
    t.index ["parent_apartment_id"], name: "index_apartments_on_parent_apartment_id"
  end

  create_table "blocked_dates", force: :cascade do |t|
    t.date "from", null: false
    t.date "to", null: false
    t.integer "reservation_ids", null: false, array: true
    t.bigint "apartment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_blocked_dates_on_apartment_id"
  end

  create_table "guest_reservations", force: :cascade do |t|
    t.bigint "reservation_id", null: false
    t.bigint "guest_id", null: false
    t.bigint "apartment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_guest_reservations_on_apartment_id"
    t.index ["guest_id"], name: "index_guest_reservations_on_guest_id"
    t.index ["reservation_id"], name: "index_guest_reservations_on_reservation_id"
  end

  create_table "guests", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string "name", null: false
    t.string "uid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "checkin_date", null: false
    t.date "checkout_date", null: false
    t.string "uid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "apartments", "apartments", column: "parent_apartment_id"
  add_foreign_key "apartments", "hotels"
  add_foreign_key "blocked_dates", "apartments"
  add_foreign_key "guest_reservations", "apartments"
  add_foreign_key "guest_reservations", "guests"
  add_foreign_key "guest_reservations", "reservations"
end
