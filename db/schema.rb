# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_30_210153) do
  create_table "calendar_trackings", force: :cascade do |t|
    t.date "day"
    t.time "hour"
    t.text "comments", default: ""
    t.integer "action"
    t.integer "calendar_id", null: false
    t.integer "type_customer"
    t.integer "type_scheduled"
    t.integer "agent_id"
    t.string "observation", limit: 300
    t.decimal "budget", precision: 36, scale: 6, default: "0.0"
    t.integer "status", limit: 1, default: 0
    t.boolean "stated_at", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["calendar_id"], name: "index_calendar_trackings_on_calendar_id"
  end

  create_table "calendars", force: :cascade do |t|
    t.string "company", limit: 200, default: ""
    t.string "contact", limit: 200, default: ""
    t.integer "job_title"
    t.integer "type_customer"
    t.integer "type_scheduled"
    t.integer "assigned_by_id"
    t.integer "agent_id"
    t.date "day"
    t.time "hour"
    t.string "address", limit: 300, default: ""
    t.string "phone", default: ""
    t.string "observation", limit: 500, default: ""
    t.integer "status", limit: 1, default: 0
    t.boolean "stated_at", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendars_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "calendar_id", null: false
    t.index ["product_id", "calendar_id"], name: "index_calendars_products_on_product_id_and_calendar_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "code", limit: 20
    t.string "name_of", limit: 200
    t.integer "type_product"
    t.integer "user_id", null: false
    t.boolean "stated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name_of", default: "Admin", null: false
    t.boolean "stated_at", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "full_name"
    t.integer "role_id", null: false
    t.boolean "stated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "calendar_trackings", "calendars"
  add_foreign_key "products", "users"
  add_foreign_key "users", "roles"
end
