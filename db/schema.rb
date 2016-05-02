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

ActiveRecord::Schema.define(version: 20160502011054) do

  create_table "articles", force: :cascade do |t|
    t.string   "article_name"
    t.text     "description"
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "articles", ["category_id"], name: "index_articles_on_category_id"
  add_index "articles", ["subcategory_id"], name: "index_articles_on_subcategory_id"

  create_table "banners", force: :cascade do |t|
    t.boolean  "active",           default: false
    t.integer  "order"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "video"
    t.text     "image"
    t.text     "background_image"
    t.text     "text"
    t.boolean  "master"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type"

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "department_models", force: :cascade do |t|
    t.string   "department_name"
    t.text     "description"
    t.integer  "surface"
    t.integer  "roof"
    t.integer  "total_surface"
    t.boolean  "suite_bath",      default: false
    t.boolean  "active",          default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "bathroom"
    t.integer  "bedroom"
    t.integer  "since_uf"
  end

  create_table "offers", force: :cascade do |t|
    t.string   "image"
    t.text     "text"
    t.boolean  "active"
    t.integer  "order"
    t.boolean  "master"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_pictures", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "project_pictures", ["project_id"], name: "index_project_pictures_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "project_name"
    t.text     "description"
    t.string   "location"
    t.boolean  "highlighted"
    t.boolean  "active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "first_video"
    t.string   "second_video"
    t.string   "third_video"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "name"
    t.text     "answer"
    t.boolean  "active",     default: false
    t.integer  "order"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "master"
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "subcategory_name"
    t.integer  "category_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "subcategories", ["category_id"], name: "index_subcategories_on_category_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
    t.boolean  "active",                 default: false
    t.text     "image"
    t.string   "username"
    t.string   "fullname"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
