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

ActiveRecord::Schema.define(version: 20170221023100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "state"
  end

  create_table "menu_items", force: :cascade do |t|
    t.integer "restaurant_id"
    t.string  "description"
    t.integer "price"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string  "name"
    t.integer "city_id"
    t.boolean "delivery"
    t.boolean "cash_only"
  end

  create_table "shows", force: :cascade do |t|
    t.integer "theater_id"
    t.string  "description"
    t.integer "price"
  end

  create_table "theaters", force: :cascade do |t|
    t.string  "name"
    t.integer "city_id"
  end

end
