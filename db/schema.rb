# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130708003643) do

  create_table "flavour_wheels", force: true do |t|
    t.integer  "linger"
    t.integer  "heat_proof"
    t.integer  "dark_fruit"
    t.integer  "citrus_punch"
    t.integer  "floral"
    t.integer  "spicy"
    t.integer  "herbal"
    t.integer  "malty"
    t.integer  "toffee"
    t.integer  "woody"
    t.integer  "tannic"
    t.integer  "char"
    t.integer  "sweet"
    t.integer  "body"
    t.integer  "legs"
    t.integer  "balance"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tasting_note_id"
  end

  add_index "flavour_wheels", ["tasting_note_id"], name: "index_flavour_wheels_on_tasting_note_id"

  create_table "producers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasting_notes", force: true do |t|
    t.string   "notes"
    t.integer  "rating"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "whisky_id"
    t.integer  "flavour_wheel_id"
  end

  add_index "tasting_notes", ["flavour_wheel_id"], name: "index_tasting_notes_on_flavour_wheel_id"
  add_index "tasting_notes", ["user_id"], name: "index_tasting_notes_on_user_id"
  add_index "tasting_notes", ["whisky_id"], name: "index_tasting_notes_on_whisky_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "whiskies", force: true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "region"
    t.float    "ABV"
    t.string   "producer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "producer_id"
    t.integer  "age"
  end

  add_index "whiskies", ["producer_id"], name: "index_whiskies_on_producer_id"

end
