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

ActiveRecord::Schema.define(version: 20170922000741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id"
    t.string "screen_name"
    t.string "name"
    t.string "profile_image_url"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "rawresult_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rawresult_id"], name: "index_likes_on_rawresult_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "rawresults", force: :cascade do |t|
    t.bigint "searchquery_id"
    t.string "screen_name"
    t.string "name"
    t.string "profile_image_url"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchquery_id"], name: "index_rawresults_on_searchquery_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "info"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "searchkey"
    t.string "name"
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "searchqueries", force: :cascade do |t|
    t.bigint "user_id"
    t.string "searchword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_searchqueries_on_user_id"
  end

  create_table "tweets", force: :cascade do |t|
    t.bigint "user_id"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider"
    t.string "name"
    t.string "uid"
    t.string "token"
    t.string "secret"
    t.string "image_profile"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "favorites", "users"
  add_foreign_key "likes", "rawresults"
  add_foreign_key "likes", "users"
  add_foreign_key "rawresults", "searchqueries"
  add_foreign_key "searches", "users"
  add_foreign_key "searchqueries", "users"
  add_foreign_key "tweets", "users"
end
