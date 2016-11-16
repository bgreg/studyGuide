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

ActiveRecord::Schema.define(version: 20161116050519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "examples", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "topic_id"
    t.string   "title"
    t.text     "pseudo"
    t.index ["topic_id"], name: "index_examples_on_topic_id", using: :btree
  end

  create_table "links", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "topic_id"
    t.string   "title"
    t.string   "url"
    t.integer  "example_id"
    t.index ["example_id"], name: "index_links_on_example_id", using: :btree
    t.index ["topic_id"], name: "index_links_on_topic_id", using: :btree
  end

  create_table "topics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.text     "summary"
  end

  add_foreign_key "examples", "topics"
  add_foreign_key "links", "examples"
  add_foreign_key "links", "topics"
end
