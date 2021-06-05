class CreateConceptRelationshipTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :concept_relationship_types do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
