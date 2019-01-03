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

ActiveRecord::Schema.define(version: 2018_12_31_024549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.integer "PageNo"
    t.string "Type"
    t.string "name"
    t.string "replacename"
    t.string "image_name"
    t.integer "firstScore"
    t.integer "upScore"
    t.integer "maxScore"
    t.integer "SL1"
    t.integer "SL2"
    t.integer "SL3"
    t.integer "SL4"
    t.integer "SL5"
    t.integer "SL6"
    t.integer "SLFull"
    t.string "skillDetail"
    t.boolean "mustNumChangeFlg"
    t.integer "musNum1"
    t.integer "mustNum2"
    t.integer "mustNum3"
    t.integer "mustNum4"
    t.integer "mustNum5"
    t.integer "mustNum6"
    t.string "up_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", force: :cascade do |t|
    t.integer "no"
    t.string "type"
    t.string "content"
    t.integer "contentSortNo"
    t.string "up_date"
    t.boolean "deleteFlg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
