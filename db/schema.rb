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

ActiveRecord::Schema.define(:version => 20130117111020) do

  create_table "ankets", :force => true do |t|
    t.string   "answer"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
    t.integer  "userid"
    t.datetime "time"
  end

  create_table "classnames", :force => true do |t|
    t.string   "schoolname"
    t.string   "classname"
    t.string   "floor"
    t.datetime "examdate"
    t.string   "desk"
    t.integer  "totaldesk"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "identities", :force => true do |t|
    t.string   "name"
    t.string   "no"
    t.string   "schname"
    t.string   "clsname"
    t.string   "flat"
    t.datetime "exmdate"
    t.string   "exmdesk"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ttldesk"
  end

  create_table "passwords", :force => true do |t|
    t.string   "new_password"
    t.string   "new_password_confirmation"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "userid"
  end

  create_table "times", :force => true do |t|
    t.datetime "time_login"
    t.datetime "time_start"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
    t.string   "role",            :default => "guest"
    t.datetime "userlogin"
    t.string   "okulno"
  end

end
