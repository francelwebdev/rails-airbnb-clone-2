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

ActiveRecord::Schema.define(version: 20170222133459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amenities", force: :cascade do |t|
    t.string   "name"
    t.integer  "treehouse_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["treehouse_id"], name: "index_amenities_on_treehouse_id", using: :btree
  end

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "renter_id"
    t.integer  "treehouse_id"
    t.string   "start_date"
    t.string   "end_date"
    t.float    "price"
    t.integer  "guest_count"
    t.integer  "rating"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "state"
    t.index ["renter_id"], name: "index_bookings_on_renter_id", using: :btree
    t.index ["treehouse_id"], name: "index_bookings_on_treehouse_id", using: :btree
  end

  create_table "space_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.string   "name"
    t.integer  "treehouse_id"
    t.integer  "space_type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["space_type_id"], name: "index_spaces_on_space_type_id", using: :btree
    t.index ["treehouse_id"], name: "index_spaces_on_treehouse_id", using: :btree
  end

  create_table "treehouses", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "capacity"
    t.integer  "bed_count"
    t.string   "location"
    t.string   "tree_type"
    t.integer  "owner_id"
    t.string   "description"
    t.float    "rate"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
    t.index ["owner_id"], name: "index_treehouses_on_owner_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "birth_date"
    t.boolean  "contact",                default: true
    t.boolean  "terms_of_service",       default: false
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "amenities", "treehouses"
  add_foreign_key "bookings", "treehouses"
  add_foreign_key "spaces", "space_types"
  add_foreign_key "spaces", "treehouses"
end
