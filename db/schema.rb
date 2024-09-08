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

ActiveRecord::Schema[7.2].define(version: 2024_09_08_033937) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.integer "kind", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "wallet_id", null: false
    t.index ["wallet_id"], name: "index_categories_on_wallet_id"
  end

  create_table "expenses", force: :cascade do |t|
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "USD", null: false
    t.string "name"
    t.text "description"
    t.bigint "category_id", null: false
    t.boolean "paid"
    t.datetime "paid_on", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "wallet_id", null: false
    t.index ["category_id"], name: "index_expenses_on_category_id"
    t.index ["wallet_id"], name: "index_expenses_on_wallet_id"
  end

  create_table "incomes", force: :cascade do |t|
    t.integer "amount_cents", default: 0, null: false
    t.string "amount_currency", default: "USD", null: false
    t.string "name"
    t.text "description"
    t.bigint "category_id", null: false
    t.datetime "received_on", precision: nil
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "wallet_id", null: false
    t.index ["category_id"], name: "index_incomes_on_category_id"
    t.index ["wallet_id"], name: "index_incomes_on_wallet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wallets", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wallets_on_user_id"
  end

  add_foreign_key "expenses", "categories"
  add_foreign_key "incomes", "categories"
  add_foreign_key "wallets", "users"
end
