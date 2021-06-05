class CreateConceptOperationsForeignKeysAndIncexes < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :concept_operations, :concept_operation_relationship_types
    add_foreign_key :concept_operations, :concepts
    add_foreign_key :concept_operations, :operations

    rename_column :concept_types, :names, :name

    add_index :concept_operation_relationship_types, :name, unique: true
    add_index :concept_operations, [:concept_id, :operation_id, :concept_operation_relationship_type_id], unique: true, name: 'index_contept_operations_unique'
    add_index :concept_types, :name, unique: true
    add_index :concept_relationship_types, :name, unique: true
    add_index :concept_relationships, [:parent_concept_id, :child_concept_id], unique: true, name: 'index_concept_relationships_unique'
  end
end
