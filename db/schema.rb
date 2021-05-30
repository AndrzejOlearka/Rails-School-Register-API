# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_29_062721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parents", force: :cascade do |t|
    t.integer "user_id"
    t.string "firstname"
    t.string "lastname"
    t.integer "sex"
    t.string "phone"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_parents_on_user_id", unique: true
  end

  create_table "parents_students", id: false, force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "parent_id", null: false
    t.index ["parent_id"], name: "index_parents_students_on_parent_id"
    t.index ["student_id"], name: "index_parents_students_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.integer "user_id"
    t.string "firstname"
    t.string "lastname"
    t.date "birthday"
    t.integer "sex"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_students_on_user_id", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.integer "user_id"
    t.string "firstname"
    t.string "lastname"
    t.integer "sex"
    t.datetime "deleted_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_teachers_on_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
