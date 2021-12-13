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

ActiveRecord::Schema.define(version: 2021_12_12_215406) do

  create_table "lights", force: :cascade do |t|
    t.string "color"
    t.string "style"
  end

  create_table "tree_lights", force: :cascade do |t|
    t.integer "tree_id"
    t.integer "light_ids"
  end

  create_table "trees", force: :cascade do |t|
    t.string "name"
    t.string "height"
    t.float "price"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.text "email"
    t.string "password_digest"
  end

end
