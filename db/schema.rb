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

ActiveRecord::Schema.define(version: 20140404161503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "abv"
    t.decimal  "total_rating"
    t.integer  "region_id"
    t.integer  "type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price"
    t.string   "slug"
  end

  create_table "beers_ratings", force: true do |t|
    t.integer "beer_id"
    t.integer "rating_id"
  end

  create_table "ratings", force: true do |t|
    t.integer "score"
    t.string  "review"
  end

  create_table "regions", force: true do |t|
    t.string "name"
    t.string "slug"
  end

  create_table "types", force: true do |t|
    t.string "name"
    t.string "slug"
  end

end
