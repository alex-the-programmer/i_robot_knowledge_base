class CreateConceptRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :concept_relationships do |t|
      t.belongs_to :parent_concept, null: false 
      t.belongs_to :child_concept, null: false 
      t.belongs_to :concept_relationship_type, null: true

      t.timestamps
    end
  end
end
