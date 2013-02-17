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

ActiveRecord::Schema.define(:version => 20130217213746) do

  create_table "administrators", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "linked_in"
    t.string   "twitter"
    t.string   "github"
    t.string   "city"
    t.string   "phone"
    t.text     "bio"
  end

  add_index "administrators", ["email"], :name => "index_administrators_on_email", :unique => true

  create_table "comments", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.boolean  "approved",   :default => false
    t.integer  "post_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "approved"
    t.integer  "administrator_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "slug"
  end

  add_index "posts", ["slug"], :name => "index_posts_on_slug"

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "github_link"
    t.string   "website_link"
    t.string   "photo_link"
    t.integer  "administrator_id"
    t.boolean  "approved",         :default => false
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

end
