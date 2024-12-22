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

ActiveRecord::Schema[7.2].define(version: 2024_12_22_000733) do
  create_table "worksheets", force: :cascade do |t|
    t.integer "mro_rank", default: 1, null: false
    t.string "mro_name"
    t.string "mro_billet"
    t.string "mro_unit"
    t.string "mro_component"
    t.integer "mro_status", default: 1, null: false
    t.integer "reporting_occasion", default: 1, null: false
    t.datetime "mmsb_due_date"
    t.datetime "from_date"
    t.datetime "to_date"
    t.integer "rs_rank", default: 1, null: false
    t.string "rs_name"
    t.string "rs_billet"
    t.integer "ro_rank", default: 1, null: false
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
end
