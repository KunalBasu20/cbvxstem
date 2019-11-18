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

ActiveRecord::Schema.define(version: 2019_11_18_224504) do

  create_table "documentations", force: :cascade do |t|
    t.string "patient"
    t.string "doctype"
    t.string "attachment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.integer "user_holder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_holder_id"], name: "index_documents_on_user_holder_id"
  end

  create_table "medications", force: :cascade do |t|
    t.string "provider"
    t.string "directions"
    t.string "days"
    t.text "description"
    t.integer "user_holder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_holder_id"], name: "index_medications_on_user_holder_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "sender_name"
    t.string "sender_email"
    t.string "receiver_email"
    t.string "subject"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.integer "user_holder_id"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "country"
    t.string "postal_code"
    t.string "phone"
    t.string "reached_through"
    t.date "birthday"
    t.string "sex"
    t.string "health_plan"
    t.string "contacts"
    t.string "weight"
    t.string "height"
    t.boolean "smoke"
    t.integer "smoke_a_day"
    t.boolean "alcohol"
    t.string "alcohol_use"
    t.string "current_job"
    t.string "exercise"
    t.string "doctor"
    t.string "whatsapp"
  end

  create_table "treatments", force: :cascade do |t|
    t.string "provider"
    t.string "location"
    t.string "status"
    t.string "name"
    t.text "description"
    t.integer "user_holder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_holder_id"], name: "index_treatments_on_user_holder_id"
  end

  create_table "user_activities", force: :cascade do |t|
    t.string "actor"
    t.string "action"
    t.string "category"
    t.string "original_val"
    t.string "new_val"
    t.string "description"
    t.integer "user_holder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "field"
    t.index ["user_holder_id"], name: "index_user_activities_on_user_holder_id"
  end

  create_table "user_holders", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "user_id"
    t.index ["user_id"], name: "index_user_holders_on_user_id"
  end

  create_table "user_settings", force: :cascade do |t|
    t.integer "user_holder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_holder_id"], name: "index_user_settings_on_user_holder_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_doctor"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
