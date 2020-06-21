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

ActiveRecord::Schema.define(version: 2020_06_21_092001) do

  create_table "balls", force: :cascade do |t|
    t.integer "ball_no"
    t.integer "striker_id"
    t.integer "non_striker_id"
    t.integer "runs"
    t.boolean "wide"
    t.boolean "no_ball"
    t.integer "bye"
    t.integer "leg_bye"
    t.boolean "wicket"
    t.string "how_out"
    t.string "field"
    t.integer "batter_out_id"
    t.integer "over_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["over_id"], name: "index_balls_on_over_id"
  end

  create_table "batters", force: :cascade do |t|
    t.string "name"
    t.string "history"
    t.integer "balls_faced"
    t.integer "zero"
    t.integer "one"
    t.integer "two"
    t.integer "three"
    t.integer "four"
    t.integer "five"
    t.integer "six"
    t.string "how_out"
    t.integer "bowler_id"
    t.string "fielder"
    t.integer "runs"
    t.integer "batting_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["batting_id"], name: "index_batters_on_batting_id"
  end

  create_table "battings", force: :cascade do |t|
    t.string "batting_team"
    t.string "overs"
    t.integer "runs"
    t.integer "wickets"
    t.integer "byes"
    t.integer "leg_byes"
    t.integer "inning_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inning_id"], name: "index_battings_on_inning_id"
  end

  create_table "bowlers", force: :cascade do |t|
    t.string "name"
    t.string "overs"
    t.integer "wickets"
    t.integer "maidens"
    t.integer "runs"
    t.integer "wides"
    t.integer "no_balls"
    t.integer "bowling_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bowling_id"], name: "index_bowlers_on_bowling_id"
  end

  create_table "bowlings", force: :cascade do |t|
    t.string "bowling_team"
    t.string "overs"
    t.integer "runs"
    t.integer "wickets"
    t.integer "wides"
    t.integer "no_balls"
    t.integer "inning_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inning_id"], name: "index_bowlings_on_inning_id"
  end

  create_table "innings", force: :cascade do |t|
    t.string "home"
    t.string "away"
    t.string "ground"
    t.date "start_date"
    t.date "end_date"
    t.string "competition"
    t.string "round"
    t.string "umpire_01"
    t.string "umpire_02"
    t.string "batting_team"
    t.string "bowling_team"
    t.integer "inning_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "overs", force: :cascade do |t|
    t.integer "over_no"
    t.integer "bowler_id"
    t.integer "runs"
    t.integer "wides"
    t.integer "no_balls"
    t.integer "byes"
    t.integer "leg_byes"
    t.integer "inning_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inning_id"], name: "index_overs_on_inning_id"
  end

  add_foreign_key "balls", "overs"
  add_foreign_key "batters", "battings"
  add_foreign_key "battings", "innings"
  add_foreign_key "bowlers", "bowlings"
  add_foreign_key "bowlings", "innings"
  add_foreign_key "overs", "innings"
end
