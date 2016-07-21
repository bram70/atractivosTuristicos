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

ActiveRecord::Schema.define(version: 20160721164725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "atractivos", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "parr_id"
    t.integer  "cant_id"
    t.integer  "prov_id"
    t.integer  "subtipo_id"
    t.integer  "tipo_id"
    t.integer  "categ_id"
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.string   "calle_principal"
    t.string   "numero_direccion"
    t.string   "transversal_direccion"
    t.string   "barrio_direccion"
    t.string   "sitio_cercano"
    t.decimal  "latitud",               precision: 10, scale: 6
    t.decimal  "longitud",              precision: 10, scale: 6
    t.string   "altura"
    t.integer  "step",                                           default: 0
    t.string   "codigo"
    t.integer  "climate_id"
    t.string   "jerarquia"
  end

  create_table "avatar_atractivos", force: :cascade do |t|
    t.integer  "atractivo_id"
    t.string   "avatar"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "cants", force: :cascade do |t|
    t.string   "name"
    t.integer  "prov_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cants", ["prov_id"], name: "index_cants_on_prov_id", using: :btree

  create_table "categs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "climates", force: :cascade do |t|
    t.string   "name"
    t.string   "temperature"
    t.string   "precipitation"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "encabezados", force: :cascade do |t|
    t.integer  "categ_id"
    t.string   "seccion_name"
    t.string   "encabezado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "max_puntaje_seccions", force: :cascade do |t|
    t.float    "max"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "seccion"
    t.integer  "categ"
  end

  create_table "parrs", force: :cascade do |t|
    t.string   "name"
    t.integer  "cant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "parrs", ["cant_id"], name: "index_parrs_on_cant_id", using: :btree

  create_table "pregunts", force: :cascade do |t|
    t.string   "texto"
    t.string   "tipo"
    t.integer  "orden"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "text_adicional", default: false
  end

  create_table "provs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puntaje_atractivos", force: :cascade do |t|
    t.float    "puntos"
    t.integer  "atractivo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "puntaje_atractivos", ["atractivo_id"], name: "index_puntaje_atractivos_on_atractivo_id", using: :btree

  create_table "respuests", force: :cascade do |t|
    t.boolean  "rpta"
    t.text     "especifique"
    t.integer  "pregunt_id"
    t.integer  "atractivo_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "respuests", ["atractivo_id"], name: "index_respuests_on_atractivo_id", using: :btree
  add_index "respuests", ["pregunt_id"], name: "index_respuests_on_pregunt_id", using: :btree

  create_table "seccions", force: :cascade do |t|
    t.string   "name"
    t.integer  "pregunt_id"
    t.integer  "categ_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "subseccion"
    t.decimal  "puntaje",    precision: 3, scale: 1
  end

  add_index "seccions", ["categ_id"], name: "index_seccions_on_categ_id", using: :btree
  add_index "seccions", ["pregunt_id"], name: "index_seccions_on_pregunt_id", using: :btree

  create_table "subencabezados", force: :cascade do |t|
    t.integer  "categ_id"
    t.string   "seccion_name"
    t.string   "subseccion_name"
    t.string   "subencabezado"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "subtipos", force: :cascade do |t|
    t.string   "name"
    t.integer  "tipo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "subtipos", ["tipo_id"], name: "index_subtipos_on_tipo_id", using: :btree

  create_table "tipos", force: :cascade do |t|
    t.string   "name"
    t.integer  "categ_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tipos", ["categ_id"], name: "index_tipos_on_categ_id", using: :btree

  add_foreign_key "atractivos", "climates"
  add_foreign_key "cants", "provs"
  add_foreign_key "parrs", "cants"
  add_foreign_key "puntaje_atractivos", "atractivos"
  add_foreign_key "respuests", "atractivos"
  add_foreign_key "respuests", "pregunts"
  add_foreign_key "subtipos", "tipos"
  add_foreign_key "tipos", "categs"
end
