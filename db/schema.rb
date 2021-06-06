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

ActiveRecord::Schema.define(version: 2021_06_06_002601) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "concept_operation_relationship_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_concept_operation_relationship_types_on_name", unique: true
  end

  create_table "concept_operations", force: :cascade do |t|
    t.bigint "concept_id", null: false
    t.bigint "operation_id", null: false
    t.bigint "concept_operation_relationship_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["concept_id", "operation_id", "concept_operation_relationship_type_id"], name: "index_contept_operations_unique", unique: true
    t.index ["concept_id"], name: "index_concept_operations_on_concept_id"
    t.index ["concept_operation_relationship_type_id"], name: "index_concept_operations_on_c_o_r_t_id"
    t.index ["operation_id"], name: "index_concept_operations_on_operation_id"
  end

  create_table "concept_relationship_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_concept_relationship_types_on_name", unique: true
  end

  create_table "concept_relationships", force: :cascade do |t|
    t.bigint "parent_concept_id", null: false
    t.bigint "child_concept_id", null: false
    t.bigint "concept_relationship_type_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["child_concept_id"], name: "index_concept_relationships_on_child_concept_id"
    t.index ["concept_relationship_type_id"], name: "index_concept_relationships_on_concept_relationship_type_id"
    t.index ["parent_concept_id", "child_concept_id"], name: "index_concept_relationships_unique", unique: true
    t.index ["parent_concept_id"], name: "index_concept_relationships_on_parent_concept_id"
  end

  create_table "concept_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_concept_types_on_name", unique: true
  end

  create_table "concepts", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "concept_type_id"
    t.bigint "ml_model_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["concept_type_id"], name: "index_concepts_on_concept_type_id"
    t.index ["ml_model_id"], name: "index_concepts_on_ml_model_id"
  end

  create_table "ml_models", force: :cascade do |t|
    t.string "name", null: false
    t.string "filename", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "operations", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "concept_operations", "concept_operation_relationship_types"
  add_foreign_key "concept_operations", "concepts"
  add_foreign_key "concept_operations", "operations"
  add_foreign_key "concept_relationships", "concept_relationship_types"
  add_foreign_key "concept_relationships", "concepts", column: "child_concept_id"
  add_foreign_key "concept_relationships", "concepts", column: "parent_concept_id"
  add_foreign_key "concepts", "concept_types"
  add_foreign_key "concepts", "ml_models"
end
