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

ActiveRecord::Schema.define(version: 2020_10_26_204207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
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

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "www"
    t.string "email"
    t.string "version"
    t.text "details"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "trans", force: :cascade do |t|
    t.bigint "translation_file_content_id", null: false
    t.bigint "user_id"
    t.text "value"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["translation_file_content_id"], name: "index_trans_on_translation_file_content_id"
    t.index ["user_id"], name: "index_trans_on_user_id"
  end

  create_table "translation_file_contents", force: :cascade do |t|
    t.bigint "translation_file_id", null: false
    t.string "key"
    t.text "value"
    t.datetime "created_at", precision: 6, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.datetime "updated_at", precision: 6, default: -> { "CURRENT_TIMESTAMP" }, null: false
    t.index ["key"], name: "index_translation_file_contents_on_key"
    t.index ["translation_file_id"], name: "index_translation_file_contents_on_translation_file_id"
    t.index ["value"], name: "index_translation_file_contents_on_value"
  end

  create_table "translation_files", force: :cascade do |t|
    t.bigint "upload_id", null: false
    t.string "file_name"
    t.string "file_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["file_name"], name: "index_translation_files_on_file_name"
    t.index ["upload_id"], name: "index_translation_files_on_upload_id"
  end

  create_table "translations", force: :cascade do |t|
    t.text "line", null: false
    t.integer "project_id", null: false
    t.string "language", null: false
    t.integer "original_id"
    t.string "file_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.string "file_name"
    t.string "file_ext"
    t.string "file_size"
    t.string "game_version"
    t.integer "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "translation"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email_backup"
    t.boolean "admin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "trans", "translation_file_contents"
  add_foreign_key "trans", "users"
  add_foreign_key "translation_file_contents", "translation_files"
  add_foreign_key "translation_files", "uploads"
end
