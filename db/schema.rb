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

ActiveRecord::Schema.define(version: 20150802173323) do

  create_table "attributes", force: :cascade do |t|
    t.string   "attribute_01"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "attribute_02"
    t.string   "attribute_03"
    t.string   "attribute_04"
    t.string   "attribute_05"
  end

  create_table "candidates", force: :cascade do |t|
    t.integer  "scorecard_id"
    t.integer  "score_01"
    t.datetime "interview_date"
    t.string   "name"
    t.string   "interviewer"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "score_02"
    t.integer  "score_03"
    t.integer  "score_04"
    t.integer  "score_05"
  end

  create_table "questions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scorecards", force: :cascade do |t|
    t.string   "attribute_name"
    t.string   "position"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "industry"
    t.string   "name"
  end

end
