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

ActiveRecord::Schema.define(version: 20170909060840) do

  create_table "investors", force: :cascade do |t|
    t.string   "first_name",   limit: 255
    t.string   "last_name",    limit: 255
    t.string   "phone_number", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "l_surveys", force: :cascade do |t|
    t.datetime "data"
    t.integer  "street_num",             limit: 4
    t.string   "street_ord",             limit: 255
    t.string   "street_name",            limit: 255
    t.string   "city",                   limit: 255
    t.string   "zip",                    limit: 255
    t.string   "state",                  limit: 255
    t.integer  "size",                   limit: 4
    t.integer  "deposit",                limit: 4
    t.integer  "minimum_occupancy_time", limit: 4
    t.string   "restrictions",           limit: 255
    t.boolean  "rented"
    t.integer  "rent",                   limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "motivations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "value",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "p_scales", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "value",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "prospects", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "street_num",     limit: 4
    t.string   "street_name",    limit: 255
    t.string   "street_ord",     limit: 255
    t.string   "city",           limit: 255
    t.integer  "zip",            limit: 4
    t.string   "state",          limit: 255
    t.integer  "purchase_price", limit: 4
    t.integer  "repair_cost",    limit: 4
    t.integer  "investor_id",    limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "active"
    t.integer  "motivation_id",  limit: 4
    t.integer  "l_surv_ID",      limit: 4
  end

end
