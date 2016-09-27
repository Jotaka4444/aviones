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

ActiveRecord::Schema.define(version: 20160908185920) do

  create_table "airplanes", force: :cascade do |t|
    t.string   "matricula",   limit: 255
    t.string   "fabricante",  limit: 255
    t.string   "modelo",      limit: 255
    t.integer  "capacidad",   limit: 4
    t.integer  "autonomia",   limit: 4
    t.string   "descripcion", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "flights", force: :cascade do |t|
    t.string   "origen",      limit: 255
    t.string   "destino",     limit: 255
    t.date     "fecha"
    t.integer  "airplane_id", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "flights", ["airplane_id"], name: "index_flights_on_airplane_id", using: :btree

  create_table "passenger_flights", force: :cascade do |t|
    t.string   "clase",        limit: 255
    t.string   "asiento",      limit: 255
    t.integer  "passenger_id", limit: 4
    t.integer  "flight_id",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "passenger_flights", ["flight_id"], name: "index_passenger_flights_on_flight_id", using: :btree
  add_index "passenger_flights", ["passenger_id"], name: "index_passenger_flights_on_passenger_id", using: :btree

  create_table "passengers", force: :cascade do |t|
    t.string   "rut",          limit: 255
    t.string   "nombre",       limit: 255
    t.string   "correo",       limit: 255
    t.integer  "telefono",     limit: 4
    t.date     "f_nacimiento"
    t.string   "nacionalidad", limit: 255
    t.string   "descripcion",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "personal_flights", force: :cascade do |t|
    t.integer  "personal_id", limit: 4
    t.integer  "flight_id",   limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "personal_flights", ["flight_id"], name: "index_personal_flights_on_flight_id", using: :btree
  add_index "personal_flights", ["personal_id"], name: "index_personal_flights_on_personal_id", using: :btree

  create_table "personals", force: :cascade do |t|
    t.string   "rut",          limit: 255
    t.string   "nombre",       limit: 255
    t.string   "cargo",        limit: 255
    t.string   "n_inlges",     limit: 255
    t.string   "correo",       limit: 255
    t.integer  "telefono",     limit: 4
    t.date     "f_nacimiento"
    t.string   "nacionalidad", limit: 255
    t.string   "descripcion",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "flights", "airplanes"
  add_foreign_key "passenger_flights", "flights"
  add_foreign_key "passenger_flights", "passengers"
  add_foreign_key "personal_flights", "flights"
  add_foreign_key "personal_flights", "personals"
end
