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

ActiveRecord::Schema.define(version: 20150312193612) do

  create_table "piece10s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece1s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pnameform_id"
  end

  create_table "piece2s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece3s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece4s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece5s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece6s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece7s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece8s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piece9s", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pnameforms", force: true do |t|
    t.string   "pname1"
    t.string   "pname2"
    t.string   "pname3"
    t.string   "pname4"
    t.string   "pname5"
    t.string   "pname6"
    t.string   "pname7"
    t.string   "pname8"
    t.string   "pname9"
    t.string   "pname10"
    t.string   "pname11"
    t.string   "pname12"
    t.string   "pname13"
    t.string   "pname14"
    t.string   "pname15"
    t.string   "pname16"
    t.string   "pname17"
    t.string   "pname18"
    t.string   "pname19"
    t.string   "pname20"
    t.string   "pname21"
    t.string   "pname22"
    t.string   "pname23"
    t.string   "pname24"
    t.string   "pname25"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pname1"
    t.string   "pname2"
    t.string   "pname3"
    t.string   "pname4"
    t.string   "pname5"
    t.string   "pname6"
    t.string   "pname7"
    t.string   "pname8"
    t.string   "pname9"
    t.string   "pname10"
    t.string   "pname11"
    t.string   "pname12"
    t.string   "pname13"
    t.string   "pname14"
    t.string   "pname15"
    t.string   "pname16"
    t.string   "pname17"
    t.string   "pname18"
    t.string   "pname19"
    t.string   "pname20"
    t.string   "pname21"
    t.string   "pname22"
    t.string   "pname23"
    t.string   "pname24"
    t.string   "pname25"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
