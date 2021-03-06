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

ActiveRecord::Schema.define(version: 20140502153812) do

  create_table "blog_comments", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comment"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blogs", force: true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "blog_image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "cars", force: true do |t|
    t.string   "make"
    t.string   "model"
    t.integer  "year"
    t.string   "color"
    t.integer  "user_id",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "car_image"
    t.string   "engine_disp"
    t.integer  "horsepower"
    t.integer  "torque"
    t.string   "transmission"
    t.string   "drivetrain"
  end

  create_table "comments", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "car_id"
  end

  create_table "users", force: true do |t|
    t.string   "full_name"
    t.string   "username"
    t.string   "email"
    t.string   "profileImgUrl"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_confirmation"
    t.boolean  "is_online",             default: false
    t.string   "avatar"
  end

end
