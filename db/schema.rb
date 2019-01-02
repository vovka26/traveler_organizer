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

ActiveRecord::Schema.define(version: 2018_12_21_195203) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "activities_categories", id: false, force: :cascade do |t|
    t.integer "activity_id", null: false
    t.integer "category_id", null: false
    t.index ["activity_id", "category_id"], name: "index_activities_categories_on_activity_id_and_category_id"
    t.index ["category_id", "activity_id"], name: "index_activities_categories_on_category_id_and_activity_id"
  end

  create_table "activities_places", id: false, force: :cascade do |t|
    t.integer "place_id", null: false
    t.integer "activity_id", null: false
    t.index ["activity_id", "place_id"], name: "index_activities_places_on_activity_id_and_place_id"
    t.index ["place_id", "activity_id"], name: "index_activities_places_on_place_id_and_activity_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "city"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
