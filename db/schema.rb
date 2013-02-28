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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130227210121) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "adventures", :force => true do |t|
    t.string   "name"
    t.integer  "activity_id"
    t.integer  "family_crest_id"
    t.integer  "cost_id"
    t.integer  "location_id"
    t.integer  "family_id"
    t.integer  "review_id"
    t.text     "tips"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "avatars", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "awards", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "costs", :force => true do |t|
    t.integer  "amount"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "crests", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "enlightenments", :force => true do |t|
    t.integer  "adventure_id"
    t.integer  "goal_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "families", :force => true do |t|
    t.string   "tribe_name"
    t.integer  "family_crest_id"
    t.integer  "adventure_id"
    t.integer  "person_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "family_blogs", :force => true do |t|
    t.integer  "family_id"
    t.text     "blog"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "family_crests", :force => true do |t|
    t.integer  "crest_id"
    t.integer  "family_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genders", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goals", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "people", :force => true do |t|
    t.string   "trail_name"
    t.string   "age"
    t.integer  "gender_id"
    t.integer  "role_id"
    t.integer  "sash_id"
    t.integer  "person_avatar_id"
    t.integer  "family_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "person_avatars", :force => true do |t|
    t.integer  "avatar_id"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "personal_blogs", :force => true do |t|
    t.integer  "person_id"
    t.text     "blog"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "reviews", :force => true do |t|
    t.text     "good"
    t.text     "bad"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sashes", :force => true do |t|
    t.integer  "award_id"
    t.integer  "person_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
