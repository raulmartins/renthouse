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

ActiveRecord::Schema.define(version: 20150731135437) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.string   "zip"
    t.integer  "number"
    t.integer  "lodger_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "house_id"
  end

  add_index "addresses", ["house_id"], name: "index_addresses_on_house_id"
  add_index "addresses", ["lodger_id"], name: "index_addresses_on_lodger_id"

  create_table "contracts", force: :cascade do |t|
    t.float    "monthlyPayment"
    t.float    "bail"
    t.date     "startDate"
    t.date     "finalDate"
    t.integer  "house_id"
    t.integer  "lodger_id"
    t.text     "obs"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "contracts", ["house_id"], name: "index_contracts_on_house_id"
  add_index "contracts", ["lodger_id"], name: "index_contracts_on_lodger_id"

  create_table "houses", force: :cascade do |t|
    t.string   "typehouse"
    t.integer  "compartment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "obs"
    t.string   "status"
  end

  create_table "lodgers", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "sex"
    t.string   "cpf"
    t.string   "rg"
    t.string   "maritalstatus"
    t.string   "occupation"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
