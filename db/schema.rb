# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_28_213704) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "interactions", force: :cascade do |t|
    t.integer "lessor_id"
    t.integer "renter_id"
    t.boolean "application"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lessor_id"], name: "index_interactions_on_lessor_id"
    t.index ["renter_id"], name: "index_interactions_on_renter_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "lessor_id"
    t.integer "renter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["lessor_id"], name: "index_matches_on_lessor_id"
    t.index ["renter_id"], name: "index_matches_on_renter_id"
  end

  create_table "rents", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "address"
    t.string "town"
    t.string "city"
    t.float "latitude"
    t.float "longitude"
    t.string "title"
    t.string "photos"
    t.string "price"
    t.string "description"
    t.string "kind_of"
    t.integer "rooms"
    t.string "period"
    t.string "bath"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "gender"
    t.string "smoker"
    t.boolean "pets"
    t.boolean "lgtb"
    t.string "parties"
    t.index ["user_id"], name: "index_rents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.string "about_me"
    t.string "rut"
    t.integer "age"
    t.string "phone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "interactions", "users", column: "lessor_id"
  add_foreign_key "interactions", "users", column: "renter_id"
  add_foreign_key "matches", "users", column: "lessor_id"
  add_foreign_key "matches", "users", column: "renter_id"
  add_foreign_key "rents", "users"
end
