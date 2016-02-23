# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160223055712) do

  create_table "addresses", force: true do |t|
    t.text     "permanant_addr"
    t.text     "office_addr"
    t.text     "temparary_addr"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.integer  "pin_code"
    t.integer  "user_id"
    t.integer  "order_id"
  end

  add_index "addresses", ["customer_id"], name: "index_addresses_on_customer_id", using: :btree
  add_index "addresses", ["order_id"], name: "index_addresses_on_order_id", using: :btree
  add_index "addresses", ["user_id"], name: "index_addresses_on_user_id", using: :btree

  create_table "customers", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.integer  "contact_no"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "product_id"
    t.integer  "line_item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  add_index "items", ["order_id"], name: "index_items_on_order_id", using: :btree

  create_table "line_items", force: true do |t|
    t.string   "name"
    t.integer  "sku"
    t.integer  "quantity"
    t.integer  "price"
    t.integer  "order_id"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "line_items", ["order_id"], name: "index_line_items_on_order_id", using: :btree
  add_index "line_items", ["product_id"], name: "index_line_items_on_product_id", using: :btree

  create_table "orders", force: true do |t|
    t.integer  "order_no"
    t.integer  "tracking_no"
    t.date     "delivery_date"
    t.decimal  "order_value",         precision: 10, scale: 0
    t.boolean  "is_express_delivery"
    t.boolean  "is_customer_pickup"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "customer_id"
    t.integer  "product_id"
    t.integer  "address_id"
  end

  add_index "orders", ["address_id"], name: "index_orders_on_address_id", using: :btree
  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["product_id"], name: "index_orders_on_product_id", using: :btree

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "sku"
    t.integer  "quantity"
    t.integer  "width"
    t.integer  "height"
    t.decimal  "price",      precision: 10, scale: 0
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  add_index "products", ["order_id"], name: "index_products_on_order_id", using: :btree

end
