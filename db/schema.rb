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

ActiveRecord::Schema.define(version: 20151205185150) do

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "category_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "device_authentications", force: :cascade do |t|
    t.integer  "user_id",              limit: 4
    t.string   "authentication_token", limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "districts", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "state_id",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "municipalities", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "district_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.integer  "district_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "service_categories", force: :cascade do |t|
    t.string   "category_type", limit: 255
    t.integer  "category_id",   limit: 4
    t.integer  "service_id",    limit: 4
    t.text     "process",       limit: 65535
    t.decimal  "fee",                         precision: 10
    t.text     "contact_info",  limit: 65535
    t.string   "website",       limit: 255
    t.text     "req_documents", limit: 65535
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "service_offices", force: :cascade do |t|
    t.decimal  "lat",                           precision: 10
    t.decimal  "lng",                           precision: 10
    t.text     "address",         limit: 65535
    t.integer  "state_id",        limit: 4
    t.integer  "district_id",     limit: 4
    t.integer  "municipality_id", limit: 4
    t.integer  "service_id",      limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "place_id",        limit: 4
  end

  create_table "services", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.text     "description",   limit: 65535
    t.integer  "department_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
