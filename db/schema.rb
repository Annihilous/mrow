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

ActiveRecord::Schema[7.2].define(version: 2024_12_23_234531) do
  create_table "educations", force: :cascade do |t|
    t.integer "worksheet_id", null: false
    t.integer "ews", default: 0, null: false
    t.integer "cns", default: 0, null: false
    t.integer "war_college", default: 0, null: false
    t.integer "graduate_degree", default: 0, null: false
    t.integer "self_study", default: 0, null: false
    t.integer "jpm_phase_i", default: 0, null: false
    t.integer "jpm_phase_ii", default: 0, null: false
    t.integer "other", default: 0, null: false
    t.string "other_school_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["worksheet_id"], name: "index_educations_on_worksheet_id"
  end

  create_table "worksheets", force: :cascade do |t|
    t.string "mro_rank"
    t.string "mro_name"
    t.string "mro_billet"
    t.string "mro_unit"
    t.string "mro_component"
    t.string "mro_status"
    t.string "reporting_occasion"
    t.datetime "mmsb_due_date"
    t.datetime "from_date"
    t.datetime "to_date"
    t.string "rs_rank"
    t.string "rs_name"
    t.string "rs_billet"
    t.string "ro_rank"
    t.string "ro_name"
    t.string "ro_billet"
    t.boolean "commendatory", default: false, null: false
    t.string "commendatory_description"
    t.string "recommended_comments"
    t.string "amplifying_information"
    t.string "recommended_comparative_assessment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "educations", "worksheets"
end
