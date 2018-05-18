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

ActiveRecord::Schema.define(version: 2018_05_18_111132) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "province_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["province_id"], name: "index_cities_on_province_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "distributor_allocations", force: :cascade do |t|
    t.integer "distributor_id"
    t.integer "country_id"
    t.integer "province_id"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_distributor_allocations_on_city_id"
    t.index ["country_id"], name: "index_distributor_allocations_on_country_id"
    t.index ["distributor_id"], name: "index_distributor_allocations_on_distributor_id"
    t.index ["province_id"], name: "index_distributor_allocations_on_province_id"
  end

  create_table "distributor_hierarchies", id: false, force: :cascade do |t|
    t.integer "ancestor_id", null: false
    t.integer "descendant_id", null: false
    t.integer "generations", null: false
    t.index ["ancestor_id", "descendant_id", "generations"], name: "distributor_anc_desc_idx", unique: true
    t.index ["descendant_id"], name: "distributor_desc_idx"
  end

  create_table "distributors", force: :cascade do |t|
    t.string "name"
    t.integer "parent_id"
    t.boolean "status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_provinces_on_country_id"
  end

end
