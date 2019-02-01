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

ActiveRecord::Schema.define(version: 2019_01_31_165835) do

  create_table "day_bodies", force: :cascade do |t|
    t.integer "day_id"
    t.integer "part_of_the_body_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_day_bodies_on_day_id"
    t.index ["part_of_the_body_id"], name: "index_day_bodies_on_part_of_the_body_id"
  end

  create_table "days", force: :cascade do |t|
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "exercise_name"
    t.string "description"
    t.integer "base_reps"
    t.integer "base_sets"
    t.integer "base_weight"
    t.string "picture1_url"
    t.string "picture2_url"
    t.integer "part_of_the_body_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["part_of_the_body_id"], name: "index_exercises_on_part_of_the_body_id"
  end

  create_table "part_of_the_bodies", force: :cascade do |t|
    t.string "body_name"
    t.string "picture_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "day_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day_id"], name: "index_schedules_on_day_id"
    t.index ["user_id"], name: "index_schedules_on_user_id"
  end

  create_table "user_exercises", force: :cascade do |t|
    t.integer "reps"
    t.integer "sets"
    t.integer "weight"
    t.integer "user_id"
    t.integer "exercise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_user_exercises_on_exercise_id"
    t.index ["user_id"], name: "index_user_exercises_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "picture_url"
    t.string "email"
    t.integer "age"
    t.integer "weight"
    t.string "height"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
