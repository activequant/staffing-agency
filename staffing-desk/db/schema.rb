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

ActiveRecord::Schema.define(version: 20170307200653) do

  create_table "contacts", force: :cascade do |t|
    t.string   "full_name"
    t.string   "greeting"
    t.string   "email"
    t.string   "phone"
    t.string   "likes"
    t.string   "dislikes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "position_statuses", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string   "upsa_project"
    t.text     "description"
    t.string   "profile"
    t.string   "client_ref_id"
    t.string   "sales_level"
    t.integer  "priority"
    t.date     "fill_by"
    t.binary   "job_desc"
    t.integer  "contact_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "status_id"
    t.integer  "positionStatus_id"
    t.string   "location"
    t.index ["contact_id"], name: "index_positions_on_contact_id"
    t.index ["positionStatus_id"], name: "index_positions_on_positionStatus_id"
    t.index ["status_id"], name: "index_positions_on_status_id"
  end

  create_table "proposal_statuses", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proposition_updates", force: :cascade do |t|
    t.datetime "timestamp"
    t.string   "comment"
    t.integer  "proposalStatus_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["proposalStatus_id"], name: "index_proposition_updates_on_proposalStatus_id"
  end

  create_table "propositions", force: :cascade do |t|
    t.integer  "position_id"
    t.integer  "resource_id"
    t.date     "proposal_date"
    t.integer  "proposalStatus_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "comment"
    t.index ["position_id"], name: "index_propositions_on_position_id"
    t.index ["proposalStatus_id"], name: "index_propositions_on_proposalStatus_id"
    t.index ["resource_id"], name: "index_propositions_on_resource_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string   "full_name"
    t.string   "phone"
    t.string   "gender"
    t.string   "main_skill"
    t.string   "notice_period"
    t.string   "salary_expectation"
    t.string   "verbal_description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "email"
  end

end
