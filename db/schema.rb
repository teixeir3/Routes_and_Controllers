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

ActiveRecord::Schema.define(:version => 20140121193600) do

  create_table "contact_shares", :force => true do |t|
    t.integer  "contact_id", :null => false
    t.integer  "user_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contact_shares", ["contact_id"], :name => "index_contact_shares_on_contact_id"
  add_index "contact_shares", ["user_id"], :name => "index_contact_shares_on_user_id"

  create_table "contacts", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "email",      :null => false
    t.string   "user_id",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "contacts", ["email"], :name => "index_contacts_on_email"

  create_table "users", :force => true do |t|
    t.string   "username",   :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
