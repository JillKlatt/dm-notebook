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

ActiveRecord::Schema.define(version: 2021_06_17_234514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adventures", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "character_id"
    t.bigint "campaign_id"
    t.index ["campaign_id"], name: "index_adventures_on_campaign_id"
    t.index ["character_id"], name: "index_adventures_on_character_id"
  end

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.string "schedule"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "trait"
    t.string "jills_opinion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "character_weapons", force: :cascade do |t|
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "character_id"
    t.bigint "weapon_id"
    t.index ["character_id"], name: "index_character_weapons_on_character_id"
    t.index ["weapon_id"], name: "index_character_weapons_on_weapon_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "race_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_characters_on_category_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.string "trait"
    t.string "jills_opinion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.string "uid"
    t.string "provider"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "damage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_weapons_on_user_id"
  end

  add_foreign_key "adventures", "campaigns"
  add_foreign_key "adventures", "characters"
  add_foreign_key "campaigns", "users"
  add_foreign_key "character_weapons", "characters"
  add_foreign_key "character_weapons", "weapons"
  add_foreign_key "characters", "categories"
  add_foreign_key "characters", "races"
  add_foreign_key "characters", "users"
  add_foreign_key "weapons", "users"
end
