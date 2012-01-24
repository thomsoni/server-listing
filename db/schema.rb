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

ActiveRecord::Schema.define(:version => 20120124145524) do

  create_table "servers", :force => true do |t|
    t.string   "name"
    t.string   "ip"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "osver"
    t.string   "sqlver"
    t.string   "function"
    t.string   "dependencies"
    t.string   "supported_by"
    t.integer  "test_server"
    t.string   "rebootinstruct"
    t.string   "cryptinfo"
    t.string   "authenticated"
    t.string   "hw_cpu"
    t.string   "hw_ram"
    t.string   "hw_serial"
    t.string   "hw_drivecap"
    t.integer  "vm_server"
    t.integer  "assetno"
    t.string   "updated_by"
    t.string   "wsus_date"
  end

end
