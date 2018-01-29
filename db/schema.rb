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

ActiveRecord::Schema.define(version: 20180129173012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coin_payment_transactions", force: :cascade do |t|
    t.decimal "estimated_value", precision: 24
    t.string "transaction_hash"
    t.string "block_hash"
    t.datetime "block_time"
    t.datetime "estimated_time"
    t.integer "coin_payment_id"
    t.decimal "coin_conversion", precision: 24
    t.integer "confirmations", default: 0
    t.index ["coin_payment_id"], name: "index_coin_payment_transactions_on_coin_payment_id"
  end

  create_table "coin_payments", force: :cascade do |t|
    t.string "payable_type"
    t.integer "coin_type"
    t.integer "payable_id"
    t.string "currency"
    t.string "reason"
    t.bigint "price"
    t.decimal "coin_amount_due", precision: 24, default: "0"
    t.string "address"
    t.string "state", default: "pending"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal "coin_conversion", precision: 24
    t.index ["payable_type", "payable_id"], name: "index_coin_payments_on_payable_type_and_payable_id"
  end

  create_table "currency_conversions", force: :cascade do |t|
    t.integer "currency"
    t.decimal "price", precision: 24
    t.integer "coin_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "homes", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payment_notifications", force: :cascade do |t|
    t.text "params"
    t.string "status"
    t.string "tx_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "barcode"
    t.string "grsaddress"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["slug"], name: "index_users_on_slug", unique: true
  end

end
