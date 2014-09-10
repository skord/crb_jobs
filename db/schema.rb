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

ActiveRecord::Schema.define(version: 20140910024930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidates", force: true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "email"
    t.text    "about_me"
    t.string  "experience_level"
    t.string  "github_name"
    t.string  "twitter_name"
    t.text    "looking_for"
    t.boolean "receive_updates",  default: true
    t.string  "token"
  end

  add_index "candidates", ["receive_updates"], name: "index_candidates_on_receive_updates", using: :btree
  add_index "candidates", ["token"], name: "index_candidates_on_token", using: :btree

  create_table "jobs", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.boolean  "is_open"
    t.string   "experience_level"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description_markdown"
    t.string   "position_type"
    t.string   "location"
    t.boolean  "remote_potential"
    t.string   "company_name"
    t.string   "company_url"
  end

  add_index "jobs", ["is_open"], name: "index_jobs_on_is_open", using: :btree

end
