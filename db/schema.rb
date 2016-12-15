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

ActiveRecord::Schema.define(version: 20161126131346) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projects", force: :cascade do |t|
    t.text     "reference"
    t.text     "added_by",              default: "Unknown"
    t.text     "job_type"
    t.integer  "stage",                 default: 1
    t.decimal  "quote"
    t.date     "start_date"
    t.integer  "team_id"
    t.boolean  "pif",                   default: false
    t.boolean  "contract_present",      default: false
    t.text     "handled"
    t.boolean  "q_sent",                default: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.text     "email"
    t.integer  "user_id"
    t.text     "first_name"
    t.text     "last_name"
    t.text     "telephone"
    t.text     "post_code"
    t.integer  "budget"
    t.integer  "when"
    t.text     "notes"
    t.boolean  "design"
    t.boolean  "complete"
    t.boolean  "deposit"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "contract_date"
    t.text     "contract_file_name"
    t.text     "contract_content_type"
    t.integer  "contract_file_size"
    t.datetime "contract_updated_at"
  end

  create_table "teams", force: :cascade do |t|
    t.text     "team_name"
    t.integer  "team_no"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "lastname"
    t.text     "email"
    t.text     "password_digest"
    t.text     "reference"
    t.integer  "role"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "guest"
  end

end
