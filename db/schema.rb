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

ActiveRecord::Schema.define(version: 20150802193310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string  "picture_url",        null: false
    t.string  "caption",            null: false
    t.string  "cost",               null: false
    t.integer "min_age",            null: false
    t.integer "max_age",            null: false
    t.string  "venue",              null: false
    t.string  "activity_level",     null: false
    t.boolean "holiday_activity",   null: false
    t.text    "description",        null: false
    t.string  "venue_url",          null: false
    t.string  "detail_picture_url", null: false
    t.string  "int_page_header"
    t.string  "detail_page_header"
    t.string  "detail_url"
    t.string  "detail_url_text"
    t.boolean "home"
  end

  create_table "comments", force: :cascade do |t|
    t.string  "title",       null: false
    t.text    "body",        null: false
    t.integer "rating"
    t.integer "user_id"
    t.integer "activity_id"
  end

  add_index "comments", ["activity_id"], name: "index_comments_on_activity_id", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "token",           null: false
    t.string   "name",            null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "comments", "activities"
  add_foreign_key "comments", "users"
end
