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

ActiveRecord::Schema[7.2].define(version: 2024_09_16_204413) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.float "saldo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipamentos", force: :cascade do |t|
    t.string "nome"
    t.string "modelo"
    t.string "numero_serie"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_equipamentos_on_cliente_id"
  end

  create_table "historicos", force: :cascade do |t|
    t.date "data_recebe"
    t.string "descricao"
    t.bigint "tarefa_id"
    t.bigint "equipamento_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipamento_id"], name: "index_historicos_on_equipamento_id"
    t.index ["tarefa_id"], name: "index_historicos_on_tarefa_id"
  end

  create_table "tarefas", force: :cascade do |t|
    t.string "descricao"
    t.date "data_recebe"
    t.float "valor"
    t.date "data_entrega"
    t.bigint "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_tarefas_on_cliente_id"
  end

  add_foreign_key "equipamentos", "clientes"
  add_foreign_key "historicos", "equipamentos"
  add_foreign_key "historicos", "tarefas"
  add_foreign_key "tarefas", "clientes"
end
