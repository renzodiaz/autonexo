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

ActiveRecord::Schema.define(version: 20161213050206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_dealerships", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "navigations", force: :cascade do |t|
    t.string   "name"
    t.string   "controller"
    t.integer  "priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "promos", force: :cascade do |t|
    t.string   "name"
    t.datetime "firstDate"
    t.datetime "dueDate"
    t.string   "image"
    t.text     "description"
    t.integer  "vehicle_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "type"
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "doc_type",               limit: 3
    t.string   "doc_number"
    t.string   "phone_number"
    t.string   "gender",                 limit: 2
    t.date     "date_of_birth"
    t.string   "fullname"
    t.string   "company"
    t.string   "website"
    t.string   "logo"
    t.string   "cover"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "vehicle",                              default: "", null: false
    t.string   "summary",                              default: "", null: false
    t.decimal  "price",       precision: 10, scale: 2
    t.string   "cover"
    t.integer  "user_id"
    t.integer  "category_id"
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

end
