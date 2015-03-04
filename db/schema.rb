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

ActiveRecord::Schema.define(version: 20150304193416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "receipts", force: :cascade do |t|
    t.string   "business_name"
    t.decimal  "sub_total",     precision: 8, scale: 2
    t.decimal  "tax_total",     precision: 8, scale: 2
    t.decimal  "total",         precision: 8, scale: 2
    t.string   "tax_type"
    t.integer  "report_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "image"
    t.string   "category"
    t.string   "comment"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
  end

  add_index "receipts", ["report_id"], name: "index_receipts_on_report_id", using: :btree

  create_table "reports", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "searches", force: :cascade do |t|
    t.string   "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.string   "category"
    t.string   "not_name"
    t.string   "between"
  end

  add_foreign_key "receipts", "reports"
end
