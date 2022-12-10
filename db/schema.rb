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

ActiveRecord::Schema.define(version: 2022_12_10_214620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "despesas", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.string "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "email"
    t.string "site"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pedido_produtos", force: :cascade do |t|
    t.bigint "pedido_id", null: false
    t.bigint "produto_id", null: false
    t.float "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pedido_id"], name: "index_pedido_produtos_on_pedido_id"
    t.index ["produto_id"], name: "index_pedido_produtos_on_produto_id"
  end

  create_table "pedidos", force: :cascade do |t|
    t.bigint "cliente_id", null: false
    t.float "valor_total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_pedidos_on_cliente_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.integer "quantidade"
    t.datetime "vencimento"
    t.float "preco_compra"
    t.float "preco_venda"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "receita", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.string "valor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pedido_produtos", "pedidos"
  add_foreign_key "pedido_produtos", "produtos"
  add_foreign_key "pedidos", "clientes"
end
