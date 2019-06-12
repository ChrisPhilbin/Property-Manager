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

ActiveRecord::Schema.define(version: 2019_06_12_224048) do

  create_table "landlords", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_landlords_on_email", unique: true
    t.index ["reset_password_token"], name: "index_landlords_on_reset_password_token", unique: true
  end

  create_table "properties", force: :cascade do |t|
    t.string "propertytype"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "street"
    t.integer "landlord_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tenants", force: :cascade do |t|
    t.integer "landlord_id"
    t.integer "property_id"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.integer "rent"
    t.index ["landlord_id"], name: "index_tenants_on_landlord_id"
    t.index ["property_id"], name: "index_tenants_on_property_id"
  end

end
