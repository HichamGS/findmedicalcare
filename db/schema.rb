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

ActiveRecord::Schema.define(version: 2020_02_08_183330) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.bigint "specialty_id"
    t.bigint "location_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_doctors_on_location_id"
    t.index ["specialty_id"], name: "index_doctors_on_specialty_id"
  end

  create_table "doctors_specialties", force: :cascade do |t|
    t.bigint "doctor_id"
    t.bigint "specialty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_doctors_specialties_on_doctor_id"
    t.index ["specialty_id"], name: "index_doctors_specialties_on_specialty_id"
  end

  create_table "hospital_has_specialties", force: :cascade do |t|
    t.bigint "specialty_id"
    t.bigint "hospital_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hospital_id"], name: "index_hospital_has_specialties_on_hospital_id"
    t.index ["specialty_id"], name: "index_hospital_has_specialties_on_specialty_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.bigint "location_id"
    t.string "name"
    t.text "description"
    t.string "type_hospital"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_hospitals_on_location_id"
  end

  create_table "hours", force: :cascade do |t|
    t.string "Day"
    t.time "start"
    t.time "end"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_hours_on_location_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "path"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_images_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.float "lat"
    t.float "lng"
    t.text "address"
    t.string "zipcode"
    t.string "city"
    t.string "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pharmacies", force: :cascade do |t|
    t.string "type"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_pharmacies_on_location_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rating"
    t.text "comment"
    t.bigint "doctor_id"
    t.bigint "hospital_id"
    t.bigint "pharmacy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_reviews_on_doctor_id"
    t.index ["hospital_id"], name: "index_reviews_on_hospital_id"
    t.index ["pharmacy_id"], name: "index_reviews_on_pharmacy_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "price"
    t.bigint "doctor_id"
    t.bigint "hospital_id"
    t.bigint "specialty_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_services_on_doctor_id"
    t.index ["hospital_id"], name: "index_services_on_hospital_id"
    t.index ["specialty_id"], name: "index_services_on_specialty_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "doctors", "locations"
  add_foreign_key "doctors", "specialties"
  add_foreign_key "doctors_specialties", "doctors"
  add_foreign_key "doctors_specialties", "specialties"
  add_foreign_key "hospital_has_specialties", "hospitals"
  add_foreign_key "hospital_has_specialties", "specialties"
  add_foreign_key "hospitals", "locations"
  add_foreign_key "hours", "locations"
  add_foreign_key "images", "locations"
  add_foreign_key "pharmacies", "locations"
  add_foreign_key "reviews", "doctors"
  add_foreign_key "reviews", "pharmacies"
  add_foreign_key "services", "doctors"
  add_foreign_key "services", "specialties"
end
