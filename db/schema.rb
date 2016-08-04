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

ActiveRecord::Schema.define(version: 20160803222159) do

  create_table "candidates", force: :cascade do |t|
    t.string   "name"
    t.string   "company"
    t.integer  "phone"
    t.text     "description"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "investments", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "project_id"
    t.decimal  "request_amount"
    t.decimal  "deposit_amount"
    t.date     "deposit_date"
    t.string   "status"
    t.binary   "bond_document"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["project_id"], name: "index_investments_on_project_id"
    t.index ["user_id", "project_id", "created_at"], name: "index_investments_on_user_id_and_project_id_and_created_at"
    t.index ["user_id"], name: "index_investments_on_user_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.string   "project_type"
    t.decimal  "offering_value"
    t.decimal  "rate"
    t.text     "description"
    t.decimal  "funded"
    t.string   "location"
    t.string   "developer"
    t.date     "deadline"
    t.integer  "term"
    t.string   "file"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.string   "cpf_file"
    t.string   "cpf"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
