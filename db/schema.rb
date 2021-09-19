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

ActiveRecord::Schema.define(version: 2021_09_19_033615) do

  create_table "battle_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_sets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "pokemon_id"
    t.bigint "r_skill_id"
    t.bigint "zr_skill_id"
    t.bigint "battle_item_id"
    t.bigint "tool_1_id"
    t.bigint "tool_2_id"
    t.bigint "tool_3_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["battle_item_id"], name: "index_my_sets_on_battle_item_id"
    t.index ["pokemon_id"], name: "index_my_sets_on_pokemon_id"
    t.index ["r_skill_id"], name: "index_my_sets_on_r_skill_id"
    t.index ["tool_1_id"], name: "index_my_sets_on_tool_1_id"
    t.index ["tool_2_id"], name: "index_my_sets_on_tool_2_id"
    t.index ["tool_3_id"], name: "index_my_sets_on_tool_3_id"
    t.index ["user_id"], name: "index_my_sets_on_user_id"
    t.index ["zr_skill_id"], name: "index_my_sets_on_zr_skill_id"
  end

  create_table "pokemons", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.integer "attack_type"
    t.integer "role"
    t.integer "attack_category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "pokemon_id"
    t.integer "button"
    t.string "name"
    t.string "image"
    t.integer "attack_category"
    t.integer "level"
    t.integer "cool_time"
    t.string "attack_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pokemon_id"], name: "index_skills_on_pokemon_id"
  end

  create_table "stages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tools", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "my_sets", "battle_items"
  add_foreign_key "my_sets", "pokemons"
  add_foreign_key "my_sets", "skills", column: "r_skill_id"
  add_foreign_key "my_sets", "skills", column: "zr_skill_id"
  add_foreign_key "my_sets", "tools", column: "tool_1_id"
  add_foreign_key "my_sets", "tools", column: "tool_2_id"
  add_foreign_key "my_sets", "tools", column: "tool_3_id"
  add_foreign_key "my_sets", "users"
  add_foreign_key "skills", "pokemons"
end
