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

ActiveRecord::Schema.define(:version => 20140323173301) do

  create_table "activities", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "animal_id"
  end

  create_table "addresses", :force => true do |t|
    t.string   "street"
    t.string   "street_number"
    t.string   "zip_code"
    t.string   "town"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "practice_id"
  end

  create_table "animals", :force => true do |t|
    t.string   "name"
    t.string   "specie"
    t.string   "owner_last_name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "visit_id"
  end

  create_table "practices", :force => true do |t|
    t.string   "name"
    t.string   "telephone"
    t.string   "vat_number"
    t.string   "email_address"
    t.string   "bank_account_number"
    t.string   "owner_first_name"
    t.string   "owner_last_name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "visits", :force => true do |t|
    t.datetime "date"
    t.integer  "practice_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
