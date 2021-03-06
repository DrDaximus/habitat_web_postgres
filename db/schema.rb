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

ActiveRecord::Schema.define(version: 20161221142802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "portfolios", force: :cascade do |t|
    t.string   "title"
    t.string   "desc1"
    t.string   "desc2"
    t.string   "desc3"
    t.string   "desc4"
    t.string   "desc5"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "image1_file_name"
    t.string   "image1_content_type"
    t.integer  "image1_file_size"
    t.datetime "image1_updated_at"
    t.string   "image2_file_name"
    t.string   "image2_content_type"
    t.integer  "image2_file_size"
    t.datetime "image2_updated_at"
    t.string   "image3_file_name"
    t.string   "image3_content_type"
    t.integer  "image3_file_size"
    t.datetime "image3_updated_at"
    t.string   "image4_file_name"
    t.string   "image4_content_type"
    t.integer  "image4_file_size"
    t.datetime "image4_updated_at"
    t.string   "image5_file_name"
    t.string   "image5_content_type"
    t.integer  "image5_file_size"
    t.datetime "image5_updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "reference"
    t.string   "added_by",              default: "Unknown"
    t.string   "job_type"
    t.integer  "stage",                 default: 1
    t.decimal  "quote"
    t.date     "start_date"
    t.integer  "team_id"
    t.boolean  "pif",                   default: false
    t.boolean  "contract_present",      default: false
    t.string   "handled"
    t.boolean  "q_sent",                default: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.string   "email"
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "telephone"
    t.string   "post_code"
    t.integer  "budget"
    t.integer  "when"
    t.text     "notes"
    t.boolean  "design"
    t.boolean  "complete"
    t.boolean  "deposit"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "contract_date"
    t.string   "contract_file_name"
    t.string   "contract_content_type"
    t.integer  "contract_file_size"
    t.datetime "contract_updated_at"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "team_name"
    t.integer  "team_no"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "password_digest"
    t.string   "reference"
    t.integer  "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "guest"
  end

end
