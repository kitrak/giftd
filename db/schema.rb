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

ActiveRecord::Schema.define(version: 20160708175748) do

  create_table "products", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.text     "description", limit: 65535, null: false
    t.string   "url",         limit: 255
    t.string   "image_url",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",   limit: 255,                 null: false
    t.string   "first_name", limit: 255,                 null: false
    t.string   "last_name",  limit: 255,                 null: false
    t.string   "email",      limit: 255,                 null: false
    t.boolean  "active",                 default: true
    t.boolean  "deleted",                default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wants", force: :cascade do |t|
    t.integer  "user_id",    limit: 4,                 null: false
    t.integer  "product_id", limit: 4,                 null: false
    t.integer  "sort_order", limit: 4,                 null: false
    t.boolean  "acquired",             default: false, null: false
    t.boolean  "deleted",              default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "wants", ["product_id"], name: "fk_rails_f311393b0d", using: :btree
  add_index "wants", ["user_id"], name: "fk_rails_f82cc7d80f", using: :btree

  add_foreign_key "wants", "products"
  add_foreign_key "wants", "users"
end
