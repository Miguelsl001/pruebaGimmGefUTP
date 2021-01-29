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

ActiveRecord::Schema.define(version: 2021_01_29_192711) do

  create_table "users", force: :cascade do |t|
    t.string "description"
    t.string "cvlac"
    t.string "nombre", default: "", null: false
    t.string "apellido", default: "", null: false
    t.string "username", default: "", null: false
    t.string "cargo", default: "", null: false
    t.string "carrera", default: "", null: false
    t.string "telefono", default: "", null: false
    t.date "bdate"
    t.string "genero", default: "", null: false
    t.string "codigo", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["apellido"], name: "index_users_on_apellido"
    t.index ["bdate"], name: "index_users_on_bdate"
    t.index ["cargo"], name: "index_users_on_cargo"
    t.index ["carrera"], name: "index_users_on_carrera"
    t.index ["codigo"], name: "index_users_on_codigo", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["genero"], name: "index_users_on_genero"
    t.index ["nombre"], name: "index_users_on_nombre"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["telefono"], name: "index_users_on_telefono", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

end
