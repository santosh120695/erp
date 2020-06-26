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

ActiveRecord::Schema.define(version: 2020_06_26_125039) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cost_heads", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cost_sheet_items", force: :cascade do |t|
    t.string "name"
    t.bigint "raw_material_id"
    t.bigint "cost_head_id"
    t.float "quantity"
    t.float "cost"
    t.float "value"
    t.bigint "cost_sheet_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tag"
    t.index ["cost_head_id"], name: "index_cost_sheet_items_on_cost_head_id"
    t.index ["cost_sheet_id"], name: "index_cost_sheet_items_on_cost_sheet_id"
    t.index ["raw_material_id"], name: "index_cost_sheet_items_on_raw_material_id"
  end

  create_table "cost_sheets", force: :cascade do |t|
    t.string "name"
    t.bigint "product_id", null: false
    t.string "item_type"
    t.integer "item_id"
    t.boolean "active"
    t.string "version"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_cost_sheets_on_product_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "address"
    t.string "gst_no"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "iron_stage_transition_logs", force: :cascade do |t|
    t.integer "from_iron_stage_id"
    t.integer "to_iron_stage_id"
    t.bigint "order_detail_id", null: false
    t.bigint "user_id", null: false
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_detail_id"], name: "index_iron_stage_transition_logs_on_order_detail_id"
    t.index ["user_id"], name: "index_iron_stage_transition_logs_on_user_id"
  end

  create_table "iron_stages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.bigint "pi_id"
    t.bigint "product_id", null: false
    t.float "quantity"
    t.float "rate"
    t.float "discount_percentage"
    t.float "amount"
    t.float "tax"
    t.float "total_amount"
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "code"
    t.integer "delivery_week"
    t.string "program"
    t.bigint "order_state_id"
    t.bigint "wooden_stage_id"
    t.bigint "iron_stage_id"
    t.string "packing_size"
    t.string "buyer_reference"
    t.index ["iron_stage_id"], name: "index_order_details_on_iron_stage_id"
    t.index ["order_state_id"], name: "index_order_details_on_order_state_id"
    t.index ["pi_id"], name: "index_order_details_on_pi_id"
    t.index ["product_id"], name: "index_order_details_on_product_id"
    t.index ["wooden_stage_id"], name: "index_order_details_on_wooden_stage_id"
  end

  create_table "order_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pis", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.string "uuid"
    t.date "order_date"
    t.string "reference"
    t.bigint "user_id", null: false
    t.integer "sales_person"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.date "buyer_order_date"
    t.string "destination"
    t.string "loading_location"
    t.string "unloading_location"
    t.string "terms_of_payment"
    t.string "terms_of_delivery"
    t.string "country_of_origin"
    t.string "place_of_receipt_by_shipper"
    t.string "delivery_weeks"
    t.boolean "pi_frozen", default: false
    t.float "total"
    t.index ["customer_id"], name: "index_pis_on_customer_id"
    t.index ["user_id"], name: "index_pis_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.string "dimension"
    t.string "finish"
    t.text "notes"
    t.string "packing_size"
    t.string "cbm"
    t.string "range"
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "description"
    t.string "wooden_finish"
    t.string "iron_finish"
  end

  create_table "raw_material_prices", force: :cascade do |t|
    t.bigint "raw_material_id", null: false
    t.float "price"
    t.date "price_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["raw_material_id"], name: "index_raw_material_prices_on_raw_material_id"
  end

  create_table "raw_materials", force: :cascade do |t|
    t.string "name"
    t.string "material_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stage_masters", force: :cascade do |t|
    t.string "name"
    t.string "department"
    t.string "responsible"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_stage_masters_on_user_id"
  end

  create_table "state_transitions", force: :cascade do |t|
    t.integer "from"
    t.integer "to"
    t.text "comment"
    t.bigint "user_id", null: false
    t.bigint "order_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_detail_id"], name: "index_state_transitions_on_order_detail_id"
    t.index ["user_id"], name: "index_state_transitions_on_user_id"
  end

  create_table "stock_levels", force: :cascade do |t|
    t.string "item_type"
    t.integer "item_id"
    t.date "as_on"
    t.float "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transition_logs", force: :cascade do |t|
    t.integer "from_order_state_id"
    t.integer "to_order_state_id"
    t.integer "user_id"
    t.text "comment"
    t.bigint "order_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_detail_id"], name: "index_transition_logs_on_order_detail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "employee_id"
    t.string "department"
    t.string "location"
    t.string "designation"
    t.string "reporting_to"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wooden_stage_transition_logs", force: :cascade do |t|
    t.integer "from_wooden_stage_id"
    t.integer "to_wooden_stage_id"
    t.bigint "order_detail_id", null: false
    t.bigint "user_id", null: false
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_detail_id"], name: "index_wooden_stage_transition_logs_on_order_detail_id"
    t.index ["user_id"], name: "index_wooden_stage_transition_logs_on_user_id"
  end

  create_table "wooden_stages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cost_sheet_items", "cost_heads"
  add_foreign_key "cost_sheet_items", "raw_materials"
  add_foreign_key "cost_sheets", "products"
  add_foreign_key "iron_stage_transition_logs", "order_details"
  add_foreign_key "iron_stage_transition_logs", "users"
  add_foreign_key "order_details", "iron_stages"
  add_foreign_key "order_details", "order_states"
  add_foreign_key "order_details", "pis"
  add_foreign_key "order_details", "products"
  add_foreign_key "order_details", "wooden_stages"
  add_foreign_key "pis", "customers"
  add_foreign_key "pis", "users"
  add_foreign_key "raw_material_prices", "raw_materials"
  add_foreign_key "stage_masters", "users"
  add_foreign_key "state_transitions", "order_details"
  add_foreign_key "state_transitions", "users"
  add_foreign_key "transition_logs", "order_details"
  add_foreign_key "wooden_stage_transition_logs", "order_details"
  add_foreign_key "wooden_stage_transition_logs", "users"
end
