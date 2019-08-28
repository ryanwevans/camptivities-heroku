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

ActiveRecord::Schema.define(version: 2019_02_13_004702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "camp_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_id"], name: "index_activities_on_camp_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.integer "rating"
    t.boolean "filled", default: false
    t.bigint "camp_counselor_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "camp_id"
    t.index ["activity_id"], name: "index_assignments_on_activity_id"
    t.index ["camp_counselor_id"], name: "index_assignments_on_camp_counselor_id"
    t.index ["camp_id"], name: "index_assignments_on_camp_id"
  end

  create_table "camp_counselors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "age"
    t.boolean "admin"
    t.string "uid"
    t.string "provider"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "camps", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.bigint "camp_counselor_id"
    t.bigint "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["activity_id"], name: "index_comments_on_activity_id"
    t.index ["camp_counselor_id"], name: "index_comments_on_camp_counselor_id"
  end

end
