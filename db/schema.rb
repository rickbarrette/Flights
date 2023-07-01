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

ActiveRecord::Schema[7.0].define(version: 2023_07_01_165157) do
  create_table "aircrafts", force: :cascade do |t|
    t.string "tail"
    t.string "make"
    t.string "model"
    t.integer "year"
    t.string "serial"
    t.float "tt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "annuals", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.float "tt"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_annuals_on_aircraft_id"
  end

  create_table "elts", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.float "tt"
    t.date "date"
    t.date "inspected"
    t.float "inspected_tach"
    t.string "serial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_elts_on_aircraft_id"
  end

  create_table "engines", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.integer "number"
    t.float "tt"
    t.float "start"
    t.date "date"
    t.integer "oil_change_interval"
    t.integer "tbo"
    t.string "make"
    t.string "model"
    t.string "serial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_engines_on_aircraft_id"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.date "date"
    t.string "from"
    t.string "to"
    t.integer "oil"
    t.float "fuel"
    t.float "tach"
    t.float "hobbs"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_flights_on_aircraft_id"
  end

  create_table "hobbs", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.float "tt"
    t.float "start"
    t.date "date"
    t.float "current"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_hobbs_on_aircraft_id"
  end

  create_table "hundred_hours", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.float "tt"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_hundred_hours_on_aircraft_id"
  end

  create_table "major_overhauls", force: :cascade do |t|
    t.integer "engine_id", null: false
    t.float "tach"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engine_id"], name: "index_major_overhauls_on_engine_id"
  end

  create_table "oil_changes", force: :cascade do |t|
    t.integer "engine_id", null: false
    t.float "tach"
    t.date "date"
    t.integer "amount"
    t.integer "added"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engine_id"], name: "index_oil_changes_on_engine_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.float "tt"
    t.date "date"
    t.float "hobbs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_purchases_on_aircraft_id"
  end

  create_table "taches", force: :cascade do |t|
    t.integer "engine_id", null: false
    t.float "start"
    t.float "current"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engine_id"], name: "index_taches_on_engine_id"
  end

  create_table "top_overhauls", force: :cascade do |t|
    t.integer "engine_id", null: false
    t.float "tach"
    t.date "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engine_id"], name: "index_top_overhauls_on_engine_id"
  end

  create_table "vors", force: :cascade do |t|
    t.integer "aircraft_id", null: false
    t.date "date"
    t.string "location"
    t.string "type"
    t.integer "bearing_error_vor_1"
    t.integer "bearing_error_for_2"
    t.string "pilot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aircraft_id"], name: "index_vors_on_aircraft_id"
  end

  add_foreign_key "annuals", "aircrafts"
  add_foreign_key "elts", "aircrafts"
  add_foreign_key "engines", "aircrafts"
  add_foreign_key "flights", "aircrafts"
  add_foreign_key "hobbs", "aircrafts"
  add_foreign_key "hundred_hours", "aircrafts"
  add_foreign_key "major_overhauls", "engines"
  add_foreign_key "oil_changes", "engines"
  add_foreign_key "purchases", "aircrafts"
  add_foreign_key "taches", "engines"
  add_foreign_key "top_overhauls", "engines"
  add_foreign_key "vors", "aircrafts"
end
