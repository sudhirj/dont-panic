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

ActiveRecord::Schema.define(:version => 20120811063130) do

  create_table "addresses", :force => true do |t|
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "admins", :force => true do |t|
    t.integer  "office_id"
    t.integer  "contact_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.integer  "country_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "name"
    t.string   "phone_number"
    t.string   "email"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hotspots", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "type"
    t.string   "reviews"
    t.integer  "address_id"
    t.integer  "location_id"
    t.integer  "contact_id"
    t.integer  "city_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "offices", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "company_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
