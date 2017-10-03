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

ActiveRecord::Schema.define(version: 20171003130201) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string   "header"
    t.string   "subheader"
    t.text     "introduction"
    t.date     "publishing_date"
    t.string   "medium_link"
    t.integer  "user_id"
    t.string   "picture"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_blogs_on_user_id", using: :btree
  end

  create_table "clients", force: :cascade do |t|
    t.string   "company_name"
    t.string   "country"
    t.string   "city"
    t.string   "street"
    t.string   "logo_url"
    t.string   "website_url"
    t.boolean  "partner"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "headers", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "section_id"
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_headers_on_section_id", using: :btree
  end

  create_table "image_media", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "section_id"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_image_media_on_section_id", using: :btree
  end

  create_table "pages", force: :cascade do |t|
    t.string   "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_images", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_project_images_on_project_id", using: :btree
  end

  create_table "project_resources", force: :cascade do |t|
    t.string   "website_url"
    t.integer  "project_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["project_id"], name: "index_project_resources_on_project_id", using: :btree
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "resource_links", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "section_id"
    t.string   "display_text"
    t.string   "website_url"
    t.string   "fontawesome"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["section_id"], name: "index_resource_links_on_section_id", using: :btree
  end

  create_table "sections", force: :cascade do |t|
    t.integer  "page_id"
    t.string   "identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["page_id"], name: "index_sections_on_page_id", using: :btree
  end

  create_table "text_areas", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "section_id"
    t.text     "text_introduction"
    t.text     "content"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["section_id"], name: "index_text_areas_on_section_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "video_media", force: :cascade do |t|
    t.string   "identifier"
    t.integer  "section_id"
    t.string   "video_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_video_media_on_section_id", using: :btree
  end

  add_foreign_key "blogs", "users"
  add_foreign_key "headers", "sections"
  add_foreign_key "image_media", "sections"
  add_foreign_key "project_images", "projects"
  add_foreign_key "project_resources", "projects"
  add_foreign_key "resource_links", "sections"
  add_foreign_key "sections", "pages"
  add_foreign_key "text_areas", "sections"
  add_foreign_key "video_media", "sections"
end
