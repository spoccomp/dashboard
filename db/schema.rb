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

ActiveRecord::Schema.define(version: 2018_10_10_212654) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.text "admin_username"
    t.text "admin_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cohort_students", force: :cascade do |t|
    t.bigint "cohort_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cohort_id"], name: "index_cohort_students_on_cohort_id"
    t.index ["student_id"], name: "index_cohort_students_on_student_id"
  end

  create_table "cohorts", force: :cascade do |t|
    t.text "cohort_name"
    t.date "cohort_start_date"
    t.date "cohort_end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "courses_id", limit: 2
    t.integer "teachers_id", limit: 2
    t.integer "class_size"
  end

  create_table "courses", force: :cascade do |t|
    t.text "course_name"
    t.integer "course_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "educations", id: :bigint, default: -> { "nextval('education_id_seq'::regclass)" }, force: :cascade do |t|
    t.text "education"
  end

  create_table "permissions", force: :cascade do |t|
    t.text "permission_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "roles_id"
    t.index ["roles_id"], name: "index_permissions_on_roles_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "teachers_id"
    t.bigint "students_id"
    t.index ["students_id"], name: "index_profiles_on_students_id"
    t.index ["teachers_id"], name: "index_profiles_on_teachers_id"
  end

  create_table "roles", force: :cascade do |t|
    t.text "role_name"
    t.datetime "created_at"
    t.datetime "update_at"
  end

  create_table "students", force: :cascade do |t|
    t.text "username"
    t.text "password"
    t.text "first_name"
    t.text "last_name"
    t.integer "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "education"
    t.integer "cohort_id", limit: 2
  end

  create_table "teachers", force: :cascade do |t|
    t.text "username"
    t.text "password"
    t.text "first_name"
    t.text "last_name"
    t.integer "age"
    t.money "salary", scale: 2
    t.text "edu_level"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_roles", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "teachers_id"
    t.bigint "students_id"
    t.bigint "administrators_id"
    t.bigint "roles_id"
    t.index ["administrators_id"], name: "index_user_roles_on_administrators_id"
    t.index ["roles_id"], name: "index_user_roles_on_roles_id"
    t.index ["students_id"], name: "index_user_roles_on_students_id"
    t.index ["teachers_id"], name: "index_user_roles_on_teachers_id"
  end

  add_foreign_key "cohort_students", "cohorts"
  add_foreign_key "cohort_students", "students"
  add_foreign_key "cohorts", "courses", column: "courses_id", name: "cohorts_courses_id_fkey"
  add_foreign_key "cohorts", "teachers", column: "teachers_id", name: "cohorts_teachers_id_fkey"
  add_foreign_key "students", "cohorts", name: "students_cohort_id_fkey"
end
