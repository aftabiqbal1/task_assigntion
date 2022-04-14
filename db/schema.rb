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

ActiveRecord::Schema[7.0].define(version: 2022_04_14_100031) do
  create_table "assigneds", force: :cascade do |t|
    t.integer "complete_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "task_id"
    t.integer "user_id"
    t.index ["task_id"], name: "index_assigneds_on_task_id"
    t.index ["user_id"], name: "index_assigneds_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.string "files"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "task_id"
    t.integer "comment_id"
    t.index ["comment_id"], name: "index_comments_on_comment_id"
    t.index ["task_id"], name: "index_comments_on_task_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "files"
    t.string "description"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
