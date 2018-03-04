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

ActiveRecord::Schema.define(version: 20180225145918) do

  create_table "OKRs", primary_key: "Objects_num", force: :cascade do |t|
    t.string  "Objects",           limit: 40
    t.string  "KR1",               limit: 20
    t.string  "KR2",               limit: 20
    t.string  "KR3",               limit: 20
    t.integer "KR_COMPLETENESS",   limit: 4,                   null: false
    t.integer "WEIGHT",            limit: 4,                   null: false
    t.string  "COF_INDEX",         limit: 2
    t.string  "Objects_G",         limit: 20, default: "NULL"
    t.string  "KR1_G",             limit: 20, default: "NULL"
    t.string  "KR2_G",             limit: 20, default: "NULL"
    t.integer "KR_G_COMPLETENESS", limit: 4,                   null: false
    t.integer "KR_G_WEIGHT",       limit: 4,                   null: false
    t.string  "KR_G_COF_INDEX",    limit: 2
    t.string  "Objects_T",         limit: 20, default: "NULL"
    t.string  "KR1_T",             limit: 20, default: "NULL"
    t.string  "KR2_T",             limit: 20, default: "NULL"
    t.integer "KR_T_COMPLETENESS", limit: 4,                   null: false
    t.integer "KR_T_WEIGHT",       limit: 4,                   null: false
    t.string  "KR_T_COF_INDEX",    limit: 2
    t.string  "VISION",            limit: 20, default: "NULL"
    t.string  "MISSION",           limit: 20, default: "NULL"
    t.string  "STRATEGY",          limit: 20, default: "NULL"
  end

  create_table "okrs", force: :cascade do |t|
    t.integer  "Objects_num",       limit: 4
    t.string   "Objects",           limit: 255
    t.string   "KR1",               limit: 255
    t.string   "KR2",               limit: 255
    t.string   "KR3",               limit: 255
    t.integer  "KR_COMPLETENESS",   limit: 4
    t.integer  "WEIGHT",            limit: 4
    t.string   "COF_INDEX",         limit: 255
    t.string   "Objects_G",         limit: 255
    t.string   "KR1_G",             limit: 255
    t.string   "KR2_G",             limit: 255
    t.integer  "KR_G_COMPLETENESS", limit: 4
    t.integer  "KR_G_WEIGHT",       limit: 4
    t.string   "KR_G_COF_INDEX",    limit: 255
    t.string   "Objects_T",         limit: 255
    t.string   "KR1_T",             limit: 255
    t.string   "KR2_T",             limit: 255
    t.integer  "KR_T_COMPLETENESS", limit: 4
    t.integer  "KR_T_WEIGHT",       limit: 4
    t.string   "KR_T_COF_INDEX",    limit: 255
    t.string   "VISION",            limit: 255
    t.string   "MISSION",           limit: 255
    t.string   "STRATEGY",          limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

end
