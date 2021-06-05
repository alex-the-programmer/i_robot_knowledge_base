class CreateConceptForeignKeys < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :concepts, :concept_types
    add_foreign_key :concepts, :ml_models
    add_foreign_key :concept_relationships, :concepts, column: :parent_concept_id
    add_foreign_key :concept_relationships, :concepts, column: :child_concept_id
    add_foreign_key :concept_relationships, :concept_relationship_types
  end
end
