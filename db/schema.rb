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

ActiveRecord::Schema.define(version: 20151023171209) do

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name",    limit: 25, null: false
    t.string   "last_name",     limit: 25, null: false
    t.string   "email_address", limit: 50, null: false
    t.string   "phone_number",  limit: 25, null: false
    t.string   "company_name",  limit: 50, null: false
    t.boolean  "international"
    t.string   "extension"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "contacts", ["company_name"], name: "index_contacts_on_company_name"
  add_index "contacts", ["email_address"], name: "index_contacts_on_email_address"
  add_index "contacts", ["extension"], name: "index_contacts_on_extension"
  add_index "contacts", ["first_name"], name: "index_contacts_on_first_name"
  add_index "contacts", ["international"], name: "index_contacts_on_international"
  add_index "contacts", ["last_name"], name: "index_contacts_on_last_name"
  add_index "contacts", ["phone_number"], name: "index_contacts_on_phone_number"

end
