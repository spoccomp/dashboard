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

ActiveRecord::Schema.define(version: 2018_10_01_190502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administrators", force: :cascade do |t|
    t.text "admin_username"
    t.text "admin_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cohorts", force: :cascade do |t|
    t.text "cohort_name"
    t.date "cohort_start_date"
    t.date "cohort_end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "teachers_id"
    t.bigint "students_id"
    t.bigint "cohorts_id"
    t.index ["cohorts_id"], name: "index_cohorts_on_cohorts_id"
    t.index ["students_id"], name: "index_cohorts_on_students_id"
    t.index ["teachers_id"], name: "index_cohorts_on_teachers_id"
  end

  create_table "courses", force: :cascade do |t|
    t.text "course_name"
    t.integer "course_hours"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "teachers_id"
    t.bigint "students_id"
    t.index ["students_id"], name: "index_courses_on_students_id"
    t.index ["teachers_id"], name: "index_courses_on_teachers_id"
  end

  create_table "education_levels", force: :cascade do |t|
    t.text "high_school"
    t.text "undergraduate"
    t.text "graduate"
    t.text "post_graduate"
    t.bigint "teachers_id"
    t.bigint "students_id"
    t.index ["students_id"], name: "index_education_levels_on_students_id"
    t.index ["teachers_id"], name: "index_education_levels_on_teachers_id"
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
    t.text "edu_level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "teachers_id"
    t.index ["teachers_id"], name: "index_students_on_teachers_id"
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

end
