# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_05_153521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lines", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "poem_lines", force: :cascade do |t|
    t.bigint "poem_id"
    t.bigint "line_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["line_id"], name: "index_poem_lines_on_line_id"
    t.index ["poem_id"], name: "index_poem_lines_on_poem_id"
  end

  create_table "poem_tags", force: :cascade do |t|
    t.bigint "poem_id"
    t.bigint "tag_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["poem_id"], name: "index_poem_tags_on_poem_id"
    t.index ["tag_id"], name: "index_poem_tags_on_tag_id"
  end

  create_table "poems", force: :cascade do |t|
    t.string "author"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "poem_lines", "lines"
  add_foreign_key "poem_lines", "poems"
  add_foreign_key "poem_tags", "poems"
  add_foreign_key "poem_tags", "tags"
end
