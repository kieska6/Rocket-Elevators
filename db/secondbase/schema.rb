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

ActiveRecord::Schema.define(version: 2021_11_25_202554) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dim_customers", force: :cascade do |t|
    t.datetime "Creation_Date"
    t.string "Company_Name"
    t.string "Contact_Full_Name"
    t.string "Contact_Email"
    t.integer "NbElevators"
    t.string "Customer_City"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dim_times", force: :cascade do |t|
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.string "form_type"
  end

  create_table "fact_contacts", force: :cascade do |t|
    t.integer "ContactId"
    t.datetime "Creation_Date"
    t.string "Company_Name"
    t.string "Email"
    t.string "Project_Name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dim_time_id"
  end

  create_table "fact_elevators", force: :cascade do |t|
    t.integer "SerialNumber"
    t.datetime "Date_of_Commissioning"
    t.integer "BuildingId"
    t.integer "CustomerId"
    t.string "Building_City"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dim_customer_id"
  end

  create_table "fact_interventions", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "building_id"
    t.integer "battery_id"
    t.integer "column_id"
    t.integer "elevator_id"
    t.datetime "intervention_start_date_time"
    t.datetime "intervention_end_date_time"
    t.string "result"
    t.string "report"
    t.string "status_opt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fact_quotes", force: :cascade do |t|
    t.integer "QuoteId"
    t.datetime "Creation_Date"
    t.string "Company_Name"
    t.string "Email"
    t.integer "NbElevator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dim_time_id"
  end

end
