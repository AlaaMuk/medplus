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

ActiveRecord::Schema.define(version: 20150226041741) do

  create_table "hcprofs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "title"
    t.integer  "phoneNumber"
    t.string   "email"
    t.string   "shiftHours"
    t.string   "location"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "hcprofs", ["email"], name: "index_hcprofs_on_email", unique: true
  add_index "hcprofs", ["user_id"], name: "index_hcprofs_on_user_id"

  create_table "medications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "patient_id"
    t.integer  "hcprof_id"
    t.string   "name"
    t.text     "description"
    t.integer  "quantityMed"
    t.string   "units"
    t.integer  "dosage"
    t.boolean  "taken"
    t.datetime "startDate"
    t.datetime "endDate"
    t.text     "specialNotes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "medications", ["hcprof_id"], name: "index_medications_on_hcprof_id"
  add_index "medications", ["patient_id"], name: "index_medications_on_patient_id"
  add_index "medications", ["user_id"], name: "index_medications_on_user_id"

  create_table "patients", force: :cascade do |t|
    t.integer  "hcprof_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.string   "gender"
    t.integer  "phoneNumber"
    t.string   "emergencyContactName"
    t.integer  "emergencyContactNum"
    t.text     "specialNotes"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "patients", ["email"], name: "index_patients_on_email", unique: true
  add_index "patients", ["hcprof_id"], name: "index_patients_on_hcprof_id"
  add_index "patients", ["user_id"], name: "index_patients_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "provider"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
