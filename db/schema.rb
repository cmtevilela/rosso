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

ActiveRecord::Schema.define(version: 20160609142318) do

  create_table "cash_flows", force: :cascade do |t|
    t.string   "description", limit: 255
    t.decimal  "value",                   precision: 9, scale: 2
    t.date     "date",                                            null: false
    t.integer  "kind_id",     limit: 4
    t.integer  "popo_id",     limit: 4
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "cash_flows", ["kind_id"], name: "fk_rails_c5c7800a33", using: :btree
  add_index "cash_flows", ["popo_id"], name: "fk_rails_7d35c9486d", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "kinds", force: :cascade do |t|
    t.string   "name",        limit: 255, null: false
    t.integer  "category_id", limit: 4,   null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.boolean  "default"
  end

  add_index "kinds", ["category_id"], name: "index_kinds_on_category_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.boolean  "is_married",             null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "email",      limit: 255, null: false
  end

  add_foreign_key "cash_flows", "kinds"
  add_foreign_key "cash_flows", "users", column: "popo_id"
  add_foreign_key "kinds", "categories"
end
