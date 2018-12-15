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

ActiveRecord::Schema.define(version: 2018_12_14_205439) do

  create_table "coworking_spaces", force: :cascade do |t|
    t.integer "user_id"
    t.float "price"
    t.float "area"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coworkingfilters", force: :cascade do |t|
    t.string "city"
    t.date "beginDate"
    t.date "finishDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coworkingspaces", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "description"
    t.float "price"
    t.string "city"
    t.string "address"
    t.datetime "beginDate"
    t.datetime "finishDate"
    t.boolean "hasKitchen"
    t.boolean "hasMeetroom"
    t.boolean "hasFreeWiFi"
    t.boolean "hasFreeCookies"
    t.integer "peopleNumber"
    t.float "area"
    t.string "image"
  end

  create_table "orderspaces", force: :cascade do |t|
    t.string "coworkingspace_id"
    t.integer "peopleNumber"
    t.date "beginDate"
    t.date "finishDate"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggestionspaces", force: :cascade do |t|
    t.integer "coworkingspace_id"
    t.date "beginDate"
    t.date "finishDate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "userparams", force: :cascade do |t|
    t.integer "user_id"
    t.string "firstname"
    t.string "lastname"
    t.string "hometown"
    t.string "occupation"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
